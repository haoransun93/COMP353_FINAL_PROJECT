package controllers;

import play.mvc.*;
import play.data.*;
import static play.data.Form.*;

import views.html.*;
//import views.admin.*;

import models.*;

public class AdminController extends Controller{
	
    public static Result index() {
    	return ok(
    			admin_index.render()
    			);
    }	
    
    //////////SERVICES////////////
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
    
    //////////SUPPLIES////////////
    public static Result supply_index() {
    	return supply(0, "name", "asc", "");
    }
    public static Result supply(int page, String sortBy, String order, String filter) {
        return ok( //ok is to display
        		supply.render(SupplySpecificType.page(page, 10, sortBy, order, filter),sortBy, order, filter)
                );
    }
    public static Result add_supply(){	
    	 Form<SupplySpecificType> supplyForm = form(SupplySpecificType.class);
         return ok(
             add_supply.render(supplyForm)
         );
    }
    public static Result save_supply() {
        Form<SupplySpecificType> supplyForm = form(SupplySpecificType.class).bindFromRequest();
        if(supplyForm.hasErrors()) {
            return badRequest(add_supply.render(supplyForm));
        }
        supplyForm.get().save();
        return supply_index();
    }
    public static Result edit_supply(long id){	
    	Form<SupplySpecificType> supplyForm = form(SupplySpecificType.class).fill(
    			SupplySpecificType.find.byId(id)
                );        
            return ok(
                    edit_supply.render(id, supplyForm)
                );
    }
    public static Result update_supply(long id) {
        Form<SupplySpecificType> supplyForm = form(SupplySpecificType.class).bindFromRequest();
        if(supplyForm.hasErrors()) {
            return badRequest(add_supply.render(supplyForm));
        }
        supplyForm.get().update(id);
        return supply_index();
    }
    public static Result delete_supply(long id) {
    	SupplySpecificType.find.ref(id).delete();
        flash("success", "Computer has been deleted");
        return supply_index();
    }
    
    //////////SUPPLY ORDERS////////////
    public static Result order_index(){	
    	return order(0, "id", "asc", "");
    }
    public static Result order(int page, String sortBy, String orderBy, String filter){	
    	return ok(
    			order.render(Orders.page(page,10,sortBy,orderBy,filter),sortBy,orderBy,filter)
    			);
    }
    public static Result add_order() {
   	 	Form<Orders> orderForm = form(Orders.class);
        return ok(
        	add_order.render(orderForm)
        );
    }
    public static Result save_order() {
    	 Form<Orders> orderForm = form(Orders.class).bindFromRequest();
         if(orderForm.hasErrors()) {
             return badRequest(add_order.render(orderForm));
         }
         orderForm.get().save();
         return edit_order_content(orderForm.get().id, 0, "id", "asc", "");  
    }
    public static Result delete_order(long id){
    	Orders.find.ref(id).delete();
    	flash("success","Computer has been deleted");
    	return order_index();
    }
    
    //////////SUPPLY ORDER CONTENTS////////////
    public static Result order_content_index(Long id){	
    	return display_order_content(id, 0, "id", "asc","");
    }
    public static Result display_order_content(long id, int page, String sortBy, String orderBy, String filter){
    	return ok(
    			display_order_content.render(id,OrderContent.page(page, 10, sortBy, orderBy, filter),sortBy,orderBy,filter)
    			);
    }
    public static Result add_order_content(Long id) {
    	Form<OrderContent> contentForm = form(OrderContent.class);
    	return ok(
    			add_order_content.render(id, contentForm)
    			);
    }
    public static Result edit_order_content(Long id, int page, String sortBy, String orderBy, String filter){
    	return ok(
    			edit_order_content.render(id,OrderContent.page(page, 10, sortBy, orderBy, filter),sortBy,orderBy,filter)
    			);
    }
    public static Result save_order_content(Long id){	
    	Form<OrderContent> contentForm = form(OrderContent.class).bindFromRequest();
    	if(contentForm.hasErrors()) {
            return badRequest(add_order_content.render(id,contentForm));
        }
        contentForm.get().save();
        return edit_order_content(id, 0, "id", "asc", ""); 
    }    
    public static Result delete_order_content(Long id, Long orderID){
    	return TODO;
    }
    public static Result finish_edit(){
    	return TODO; 
    }
    public static Result schedules() {
        return TODO;
    }
    
    public static Result report_unit_service() {
        return TODO;
    }
    
    public static Result report_doctor_service() {
        return TODO;
    }
}
