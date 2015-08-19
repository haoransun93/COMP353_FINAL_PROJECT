package controllers;

import models.*;
import play.mvc.*;
import views.html.*;

public class InternResidentController extends Controller{
	
    public static Result index() {
    	return ok(
    			internResident_index.render()
    			);
    }
    
    public static Result schedule(){
    	return ok(
    			internResident_schedule.render(Shift.page(0, 10, "id", "asc", Long.parseLong(session("employee_id"))))
    	);
    }
}
