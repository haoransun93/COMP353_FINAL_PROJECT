package controllers;

import play.mvc.*;
import play.data.*;
import static play.data.Form.*;

import views.html.*;
//import views.admin.*;

import models.*;

public class AdminController extends Controller{
	
    public static Result index() {
    	return service_index();

    }	
    public static Result service_index() {
    	return service(0, "name", "asc", "");

    }
    
    public static Result service(int page, String sortBy, String order, String filter) {
        return ok( //ok is to display
        		service.render(Service.page(page, 10, sortBy, order, filter),sortBy, order, filter)
                );
    }
    
    public static Result create_service(){
        Form<Service> serviceForm = form(Service.class);
        return ok(
            create_service.render(serviceForm)
        );
    }
    
    public static Result edit_service(long id){
        Form<Service> serviceForm = form(Service.class).fill(
        		Service.find.byId(id)
            );        
        return ok(
                edit_service.render(id, serviceForm)
            );
    }
    
    public static Result save_service() {
        Form<Service> serviceForm = form(Service.class).bindFromRequest();
        if(serviceForm.hasErrors()) {
            return badRequest(create_service.render(serviceForm));
        }
        serviceForm.get().save();
        return service_index();
    }
    
    
    public static Result update_service(long id) {
        Form<Service> serviceForm = form(Service.class).bindFromRequest();
        if(serviceForm.hasErrors()) {
            return badRequest(create_service.render(serviceForm));
        }
        serviceForm.get().update(id);
        return service_index();
    }
    
    public static Result delete_service(long id) {
        Service.find.ref(id).delete();
        flash("success", "Computer has been deleted");
        return service_index();
    }
    
    
    
    
    
    public static Result supplies() {
        return TODO;
    }
    
    public static Result schedules() {
        return TODO;
    }
    
    public static Result report_unit_service() {
        return TODO;
        //query the task table, and get a breakdown of the tasks by unit, service, and year
    }
    
    public static Result report_doctor_service() {
        return TODO;
        //query the 
    }
}
