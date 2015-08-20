package controllers;

import play.mvc.*;
import views.html.*;
import play.data.*;

import static play.data.Form.*;

import models.*;


public class NurseShiftSupervisorController extends Controller{
	
   public static Result index() {
    	return ok(
    			nurse_shift_supervisor_index.render()
    			);
    }	



    //------------------------------- Nurses -------------------------------\\
    public static Result nurse_index() {
    	return nurse(0, "name", "asc", Long.parseLong(session("employee_id"))); 

    }
	
	public static Result nurse(int page, String sortBy, String order, Long filter) {
        return ok( //ok is to display
        		nurse_shift_supervisor_nurses.render(Supervision.page(page, 10, sortBy, order, filter),sortBy, order, filter)
				);
    }


     //------------------------------- Tasks -------------------------------\\

    public static Result task_index(Long filter) {
		return task(0, "id", "asc", filter);
    }
	
	public static Result task(int page, String sortBy, String order, Long filter) {
        return ok( //ok is to display
        		nurse_shift_supervisor_tasks.render(Task.page(page, 10, sortBy, order, filter),sortBy, order, filter)
				);
    }

	public static Result add_task(Long history_id){
        Form<Task> taskForm = form(Task.class);
        return ok(
            nurse_shift_supervisor_add_task.render(history_id, taskForm)
        );
    }
	
	public static Result save_task() {
        Form<Task> taskForm = form(Task.class).bindFromRequest();
		
        taskForm.get().save();
        return nurse_index();
    }
	
	public static Result edit_task(long id){ // this id is taskID to edit
        Form<Task> taskForm = form(Task.class).fill(
        		Task.find.byId(id)
            );        
        return ok(
                nurse_shift_supervisor_edit_task.render(id, taskForm)
            );
    }
	public static Result update_task(long id) {
        Form<Task> taskForm = form(Task.class).bindFromRequest();
        		
		taskForm.get().update(id);
        return nurse_index();
    }
	public static Result delete_task(long id) {
        Task.find.ref(id).delete();
        return nurse_index();
    }


}
