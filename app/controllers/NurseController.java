package controllers;

import play.mvc.*;
import views.html.*;

import models.*;

public class NurseController extends Controller{
	
    public static Result index() {
    	return ok(
    			nurse_index.render()
    			);
    }	



    //------------------------------- Tasks -----------------------------------//
    public static Result task_index() {
        return task(0, "id", "asc", Long.parseLong(session("employee_id")));
    }
    
    public static Result task(int page, String sortBy, String order, Long filter) {
        return ok( //ok is to display
                nurse_tasks.render(Task.page(page, 10, sortBy, order, filter),sortBy, order, filter)
                );
    }
    
    

}
