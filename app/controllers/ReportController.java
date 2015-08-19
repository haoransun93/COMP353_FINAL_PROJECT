package controllers;

import play.mvc.*;
import play.data.*;
import static play.data.Form.*;

import views.html.*;
//import views.admin.*;

import models.*;

public class ReportController extends Controller{
	
    public static Result index() {
    	return ok(
    			admin_index.render()
    			);
    }	
    
    public static Result service_provided_report() {
        return TODO;
    }
    
    public static Result cost_usage_supplies_report() {
        return TODO;
    }
    
    public static Result service_provided_doctor_report() {
        return TODO;
    }
}
