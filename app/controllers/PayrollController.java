package controllers;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.avaje.ebean.Page;

import play.mvc.*;
import play.data.*;
import static play.data.Form.*;
import views.html.*;
import models.*;

public class PayrollController extends Controller{
	
    @SuppressWarnings("deprecation")
	public static Result index() {
    	if(session("user_role") == null || session("user_role") == "-1") 
    		return Application.index();
    	
    	long employee_id = Long.parseLong(session("employee_id"));
    	long user_role = Long.parseLong(session("user_role"));
    	
    	//get employee, payroll
    	Page<Employee> emp = Employee.payroll(session("employee_id"), 0, 10, "name", "asc", "");    	
    	Page<Role> role = Role.payroll(session("user_role"), 0, 10, "name", "asc", "");
    	
    	//get date;
    	String pay_date = "2015-08-21";
    	String pay_date_past_week = "2015-08-14";
    	String pay_date_past_2_weeks = "2015-08-07";
    	
    	int hours_worked = 0;
    	int total_pay = 0;
    	//DIRECTOR, ADMIN
    	if (user_role == 1 || user_role == 2 || user_role == 4 || user_role == 5 || user_role == 6){
    		
    		//get shift
    		Page<Shift> page_shift = Shift.find.where()
            .ilike("employee_id", session("employee_id")).gt("end_date", pay_date_past_2_weeks).lt("end_date", pay_date).findPagingList(100).getPage(0);
    		
    		List<Shift> shift = page_shift.getList();
    		
    		hours_worked = 0;
    		
    		for (Shift s : shift){
    			hours_worked += ((s.end_date.getTime() - s.start_date.getTime()) / (1000 * 3600 ));
    		}
    		
    		int hourly_pay = 0;
    		int hourly_increase = 0;
    		int years_increased = 0;
    		
    		for (Role r : role.getList()){
    			hourly_pay = r.pay.hourly_base;
    		}
    		
    		total_pay = hourly_pay * hours_worked;
    		
    		//get a list of shift
    		//calculate info;
        	return ok(
        			payroll.render(Long.parseLong(session("user_role")), emp, role, page_shift, null, "name", "asc", "", hours_worked, total_pay, pay_date_past_2_weeks, pay_date)
        			);    	  		
    	} 
    	
    	//DOCTOR
    	else if (user_role == 3){
    		//get list of tasks performed
    		Page<Task> task_page = Task.payroll(session("employee_id"), pay_date_past_week, pay_date);
    		
    		List<Task> task = task_page.getList();
    		
    		int service_cost = 0;
    		for (Task t : task){
    			service_cost += t.service.cost;
    			
    		}
        	return ok(
                		payroll.render(Long.parseLong(session("user_role")), emp, role, null, task_page, "name", "asc", "", 0, service_cost, pay_date_past_week, pay_date)
                	);    
	
    	}
    	
    	return Application.index();
    }
}
