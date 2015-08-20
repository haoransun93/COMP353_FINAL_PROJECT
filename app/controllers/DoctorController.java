package controllers;

import play.mvc.*;
import views.html.*;
import play.data.*;
import static play.data.Form.*;

import views.html.*;
//import views.admin.*;

import models.*;



public class DoctorController extends Controller{
	
    public static Result index() {
        //return patient_index(); / now has been changed to start with assignment to go visit to patient`
		return patient_assignment_index();
    }
	public static Result patient_index() {
    	return patient(0, "name", "asc", "");

    }
	
	public static Result patient(int page, String sortBy, String order, String filter) {
        return ok(
        		patient.render(Patient.page(page, 10, sortBy, order, filter),sortBy, order, filter)
				);
    }
	
	public static Result create_patient(){
        Form<Patient> patientForm = form(Patient.class);
        return ok(
            create_patient.render(patientForm)
        );
    }
	
	public static Result edit_patient(long id){
        Form<Patient> patientForm = form(Patient.class).fill(
        		Patient.find.byId(id)
            );        
        return ok(
                edit_patient.render(id, patientForm)
            );
    }
    
    public static Result save_patient() {
        Form<Patient> patientForm = form(Patient.class).bindFromRequest();
        if(patientForm.hasErrors()) {
            return badRequest(create_patient.render(patientForm));
        }
        patientForm.get().save();
        return patient_index();
    }
    
    
    public static Result update_patient(long id) {
        Form<Patient> patientForm = form(Patient.class).bindFromRequest();
        if(patientForm.hasErrors()) {
            return badRequest(create_patient.render(patientForm));
        }
        patientForm.get().update(id);
        return patient_index();
    }
    
    public static Result delete_patient(long id) {
        Patient.find.ref(id).delete();
        return patient_index();
    }
	////////////////////////////////////////////////////////////////////////////////patient visit
	public static Result patient_visit_index() {
    	return patient_visit(0, "name", "asc", Long.parseLong(session("employee_id")));

    }
	
	public static Result patient_visit(int page, String sortBy, String order, Long filter) {
        return ok( //ok is to display
        		patient_visit.render(PatientVisit.page(page, 10, sortBy, order, filter),sortBy, order, filter)
				//patient_visit.render(PatientVisit.visit_page(Patient.find.ref(patient_visitForm.patient.id)))
				);
    }
	
	public static Result add_patient_visit(long id){ 
		 Form<PatientVisit> patient_visitForm = form(PatientVisit.class);
		 return ok(
			add_patient_visit.render(id, patient_visitForm)
        );
	}
	
	public static Result edit_patient_visit(long id){
        Form<PatientVisit> patient_visitForm = form(PatientVisit.class).fill(
        		PatientVisit.find.byId(id)
            );        
        return ok(
                edit_patient_visit.render(id, patient_visitForm)
            );
    }
    
    public static Result save_patient_visit() {
        Form<PatientVisit> patient_visitForm = form(PatientVisit.class).bindFromRequest();
        if(patient_visitForm.hasErrors()) {
            return TODO;
        }
        patient_visitForm.get().save();
        return patient_visit_index();
    }
    
    
    public static Result update_patient_visit(long id) {
        Form<PatientVisit> patient_visitForm = form(PatientVisit.class).bindFromRequest();
        if(patient_visitForm.hasErrors()) {
            return TODO;
        }
        patient_visitForm.get().update(id);
        return patient_visit_index();
    }
    
    public static Result delete_patient_visit(long id) {
        PatientVisit.find.ref(id).delete();
        return patient_visit_index();
    }
		
	///////////////////////////////////////////////////////////////////////////////////////patient_assignment
	public static Result patient_assignment_index() {
    	return patient_assignment(0, "name", "asc", Long.parseLong(session("employee_id")));

    }
	
	public static Result patient_assignment(int page, String sortBy, String order, Long filter) {
        return ok(
        		patient_assignment.render(PatientAssignment.page(page, 10, sortBy, order, filter),sortBy, order, filter)
				);
    }
	
	public static Result add_patient_assignment(){
        Form<PatientAssignment> patient_assignmentForm = form(PatientAssignment.class);
        return ok(
            add_patient_assignment.render(patient_assignmentForm)
        );
    }
	
	public static Result edit_patient_assignment(long id){
        Form<PatientAssignment> patient_assignmentForm = form(PatientAssignment.class).fill(
        		PatientAssignment.find.byId(id)
            );        
        return ok(
                edit_patient_assignment.render(id, patient_assignmentForm)
            );
    }
    
    public static Result save_patient_assignment() {
        Form<PatientAssignment> patient_assignmentForm = form(PatientAssignment.class).bindFromRequest();
        if(patient_assignmentForm.hasErrors()) {
            return badRequest(add_patient_assignment.render(patient_assignmentForm));
        }
        patient_assignmentForm.get().save();
        return patient_assignment_index();
    }
    
    
    public static Result update_patient_assignment(long id) {
        Form<PatientAssignment> patient_assignmentForm = form(PatientAssignment.class).bindFromRequest();
        if(patient_assignmentForm.hasErrors()) {
            return badRequest(add_patient_assignment.render(patient_assignmentForm));
        }
        patient_assignmentForm.get().update(id);
        return patient_assignment_index();
    }
    
    public static Result delete_patient_assignment(long id) {
        PatientAssignment.find.ref(id).delete();
        return patient_assignment_index();
    }
	
	
	////////////////////////////////////////////////////////////////////////////////////////////////patient treatment history
	public static Result patient_treatment_history_index() {
    	return patient_treatment_history(0, "name", "asc", Long.parseLong(session("employee_id")));
    }
	
	public static Result patient_treatment_history(int page, String sortBy, String order, Long filter) {
        return ok(
        		patient_treatment_history.render(PatientTreatmentHistory.page(page, 10, sortBy, order, filter),sortBy, order, filter)
				);
    }
	public static Result add_patient_treatment_history(Long visit_id){
        Form<PatientTreatmentHistory> patient_treatment_historyForm = form(PatientTreatmentHistory.class);
        return ok(
            add_patient_treatment_history.render(visit_id, patient_treatment_historyForm)
        );
    }
	
	public static Result save_patient_treatment_history(Long visit_id) {
        Form<PatientTreatmentHistory> patient_treatment_historyForm = form(PatientTreatmentHistory.class).bindFromRequest();
        if(patient_treatment_historyForm.hasErrors()) {
            return badRequest(add_patient_treatment_history.render(visit_id, patient_treatment_historyForm));
        }
        patient_treatment_historyForm.get().save();
        return patient_treatment_history(0, "name", "asc", visit_id);
    }
	
	/*public static Result edit_patient_treatment_history(long id){
        Form<PatientTreatmentHistory> patient_treatment_historyForm = form(PatientTreatmentHistory.class).fill(
        		PatientTreatmentHistory.find.byId(id)
            );        
        return ok(
                edit_patient_treatment_history.render(id, patient_treatment_historyForm)
            );
    }
	public static Result update_patient_treatment_history(long id) {
        Form<PatientTreatmentHistory> patient_treatment_historyForm = form(PatientTreatmentHistory.class).bindFromRequest();
        //if(patient_treatment_historyForm.hasErrors()) {
        //    return badRequest(add_patient_assignment.render(patient_assignmentForm));
        //}
        patient_treatment_historyForm.get().update(id);
        return patient_treatment_history(0, "name", "asc", id);
    }*/
	//////////////////////////////////////////////////////////////////////////////////////////////////////supervision
	public static Result supervision(int page, String sortBy, String order, Long filter) {
        return ok(
        		supervision.render(Supervision.page(page, 10, sortBy, order, filter),sortBy, order, filter)
				);
    }
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////task
	public static Result task_index() {
    	return task(0, "name", "asc", (long)3);

    }
	
	public static Result task(int page, String sortBy, String order, Long filter) {
        return ok(
        		task.render(Task.page(page, 10, sortBy, order, filter),sortBy, order, filter)
				);
    }
	
	public static Result add_task(Long history_id){
        Form<Task> taskForm = form(Task.class);
        return ok(
            add_task.render(history_id, taskForm)
        );
    }
	
	public static Result save_task() {
        Form<Task> taskForm = form(Task.class).bindFromRequest();
		
        taskForm.get().save();
        return task_index();
    }
	
	public static Result edit_task(long id){ // this id is taskID to edit
        Form<Task> taskForm = form(Task.class).fill(
        		Task.find.byId(id)
            );        
        return ok(
                edit_task.render(id, taskForm)
            );
    }
	public static Result update_task(long id) {
        Form<Task> taskForm = form(Task.class).bindFromRequest();
        		
		taskForm.get().update(id);
        return task_index();
    }
	public static Result delete_task(long id) {
        Task.find.ref(id).delete();
        return task_index();
    }
}
