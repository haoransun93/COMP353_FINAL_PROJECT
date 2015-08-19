
# --- !Ups
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('0', 125000, 1, 0, 0, 0, 0, 0);
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('0', 78500, 1, 0, 0, 0, 0, 0);
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('0', 0, 0, 0, 0, 0, 0, 0);
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('1', 0, 0, 27.25, 1.5, 5, 1.25, 36);
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('1', 0, 0, 24.50, 1.5, 5, 1.25, 36);
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('0', 40000, 0, 0, 0, 0, 0, 0);
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('0', 40000, 5, 0, 0, 0, 0, 0);
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('1', 0, 0, 16, 1.25, 8, 1.5, 37.5);
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('1', 0, 0, 16, 1.25, 8, 1.5, 37.5);
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('1', 0, 0, 16, 1.25, 8, 1.5, 37.5);
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('1', 0, 0, 16, 1.25, 8, 1.5, 37.5);
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('1', 0, 0, 16, 1.25, 8, 1.5, 37.5);
insert into pay (salary_or_hourly, annual_salary, annual_salary_increase_percentage, hourly_base, hourly_increase, hourly_increase_experience_years, overtime_rate, maximum_weekly_hours)
values('0', 98000, 1, 0, 0, 0, 0, 0);

insert into unit (name) values ('PALLIATIVE CARE UNIT'); --1
insert into unit (name) values ('CHILDREN''S UNIT'); -- 2
insert into unit (name) values ('SURGICAL UNIT'); -- 3

insert into role(name, pay_id) values ('DIRECTOR', 1);
insert into role(name, pay_id) values ('ADMINISTRATOR', 2);
insert into role(name, pay_id) values ('DOCTOR', 3);
insert into role(name, pay_id) values ('NURSE SUPERVISOR', 4);
insert into role(name, pay_id) values ('NURSE', 5);
insert into role(name, pay_id) values ('INTERN', 6);
insert into role(name, pay_id) values ('RESIDENT', 7);
insert into role(name, pay_id) values ('TECHNICIAN X-RAY', 8);
insert into role(name, pay_id) values ('TECHNICIAN PEDIATRIC', 9);
insert into role(name, pay_id) values ('TECHNICIAN DOCTOR', 10);
insert into role(name, pay_id) values ('TECHNICIAN BLOOD WORK', 11);
insert into role(name, pay_id) values ('TECHNICIAN STERILE', 12);
insert into role(name, pay_id) values ('SENIOR ADMINISTRATOR', 13);

insert into employee(name, unit_id, role_id) values ('A DIRECTOR', 1, 1);
insert into employee(name, unit_id, role_id) values ('A ADMINISTRATOR', 1, 2);
insert into employee(name, unit_id, role_id) values ('A DOCTOR', 1, 3);
insert into employee(name, unit_id, role_id) values ('A NURSE SUPERVISOR', 1, 4);
insert into employee(name, unit_id, role_id) values ('A NURSE', 1, 5);
insert into employee(name, unit_id, role_id) values ('A INTERN', 1, 6);

insert into service (name,unit_id, cost) values ('TEST SERVICE 1 UNIT 1', 1, 10);
insert into service (name,unit_id, cost) values ('TEST SERVICE 2 UNIT 1', 1, 10);

insert into service (name,unit_id, cost) values ('TEST SERVICE 1 UNIT 2', 2, 10);

insert into service (name,unit_id, cost) values ('TEST SERVICE 1 UNIT 3', 3, 10);
insert into service (name,unit_id, cost) values ('TEST SERVICE 2 UNIT 3', 3, 10);

insert into supervision (supervised_id, supervisor_id) values (6, 3);
insert into supervision (supervised_id, supervisor_id) values (5, 3);

insert into patient (name,medicard_ID,hospitalcard_ID) values ('David Koch', 111, 123);
insert into patient (name,medicard_ID,hospitalcard_ID) values ('Charles Koch', 113, 124);
insert into patient (name,medicard_ID,hospitalcard_ID) values ('David Cameron', 114, 125);
insert into patient (name,medicard_ID,hospitalcard_ID) values ('Angela Merkel', 115, 126);
insert into patient (name,medicard_ID,hospitalcard_ID) values ('Tony Blair', 116, 127);
insert into patient (name,medicard_ID,hospitalcard_ID) values ('Barack Obama', 117, 128);
insert into patient (name,medicard_ID,hospitalcard_ID) values ('Hilary Clinton', 118, 129);
insert into patient (name,medicard_ID,hospitalcard_ID) values ('Bill Clinton', 119, 130);
insert into patient (name,medicard_ID,hospitalcard_ID) values ('George Bush', 121, 132);
insert into patient (name,medicard_ID,hospitalcard_ID) values ('Jeb Bush', 122, 133);
insert into patient (name,medicard_ID,hospitalcard_ID) values ('Stephen Harper', 124, 135);
insert into patient (name,medicard_ID,hospitalcard_ID) values ('Bill Gates', 125, 136);
insert into patient (name,medicard_ID,hospitalcard_ID) values ('Steve Jobs', 125, 136);

insert into patient_visit (date_of_visit, unit_id, patient_id, doctor) values ('2015-08-13',  1,  1, 3);
insert into patient_visit (date_of_visit, unit_id, patient_id) values ('2015-08-13',  1,  2);
insert into patient_visit (date_of_visit, unit_id, patient_id, doctor) values ('2015-08-13',  1,  3, 3);
insert into patient_visit (date_of_visit, unit_id, patient_id, doctor) values ('2015-08-13',  1,  4, 3);
insert into patient_visit (date_of_visit, unit_id, patient_id) values ('2015-08-13',  1,  5);

insert into patient_visit (date_of_visit, unit_id, patient_id) values ('2015-08-13',  2,  6);
insert into patient_visit (date_of_visit, unit_id, patient_id) values ('2015-08-13',  2,  7);
insert into patient_visit (date_of_visit, unit_id, patient_id) values ('2015-08-13',  2,  8);
insert into patient_visit (date_of_visit, unit_id, patient_id) values ('2015-08-13',  2,  9);
insert into patient_visit (date_of_visit, unit_id, patient_id) values ('2015-08-13',  2,  10);

insert into patient_assignment (employee_id, patient_visit_id) values (3, 1);
insert into patient_assignment (employee_id, patient_visit_id) values (3, 3);
insert into patient_assignment (employee_id, patient_visit_id) values (3, 4);

insert into patient_treatment_history(name, date_of_treatment, patient_visit_id) values ('SURGERY FOR LEG', '2015-08-14', 1);
insert into patient_treatment_history(name, date_of_treatment, patient_visit_id) values ('SURGERY FOR EARS', '2015-08-14', 2);
insert into patient_treatment_history(name, date_of_treatment, patient_visit_id) values ('CHECK UP', '2015-08-14', 3);
insert into patient_treatment_history(name, date_of_treatment, patient_visit_id) values ('CHECK UP', '2015-08-14', 4);
insert into patient_treatment_history(name, date_of_treatment, patient_visit_id) values ('BLOOD TEST', '2015-08-14', 5);
insert into patient_treatment_history(name, date_of_treatment, patient_visit_id) values ('PROSTATE EXAM', '2015-08-14', 6);
insert into patient_treatment_history(name, date_of_treatment, patient_visit_id) values ('EYE EXAM', '2015-08-14', 7);

insert into operating_rooms(name) values ('OPERATING ROOM A');
insert into operating_rooms(name) values ('OPERATING ROOM B');
insert into operating_rooms(name) values ('OPERATING ROOM C');
insert into operating_rooms(name) values ('OPERATING ROOM D');
insert into operating_rooms(name) values ('OPERATING ROOM E');

insert into task(name, employee_id, service_id, shift_id, canceled, patient_treatment_history_id, date) values ('LEG SURGERY', 3, 1, null, '0', 1, '2015-08-19');
insert into task(name, employee_id, service_id, shift_id, canceled, patient_treatment_history_id, date) values ('EAR SURGERY', 3, 1, null, '0', 2, '2015-08-19');


insert into supply_type(name) values ('MEDICAL');
insert into supply_type(name) values ('NON-MEDICAL');
insert into supply_type(name) values ('NUTRITIONAL');

insert into supply_sub_type(name, supply_type_id) values ('MEDICATION', 1);
insert into supply_sub_type(name, supply_type_id) values ('SURGICAL EQUIPMENT', 1);
insert into supply_sub_type(name, supply_type_id) values ('SUPPORTING DEVICES', 1);

insert into supply_sub_type(name, supply_type_id) values ('ADMINISTRATIVE', 2);
insert into supply_sub_type(name, supply_type_id) values ('PATIENT USED MATERIALS', 2);
insert into supply_sub_type(name, supply_type_id) values ('CLEANING USED MATERIALS', 2);

insert into supply_sub_type(name, supply_type_id) values ('PERISHABLE GOODS', 3);
insert into supply_sub_type(name, supply_type_id) values ('NON-PERISHABLE GOODS', 3);
insert into supply_sub_type(name, supply_type_id) values ('KITCHEN EQUIPMENT', 3);

insert into vendor(name) values ('MEDICAL VENDOR');
insert into vendor(name) values ('NON-MEDICAL VENDOR VENDOR');
insert into vendor(name) values ('NUTRITIONAL VENDOR');

insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) 
	values (1,1,'MEDICATION TYLENOL',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) 
	values (2,1,'CUTTING TOOLS',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) 
	values (3,1,'DEFIBS',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) 
	values (4,2,'STATIONARY',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) 
	values (5,2,'PATIENT ROBES',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) 
	values (6,2,'CLEANING BLEACH',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) 
	values (7,3,'FRESH FRUIT',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) 
	values (8,3,'CANNED BEANS',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) 
	values (9,3,'FORKS',0,0);

insert into storage_location(name, employee_id) values ('STORE ROOM A', 1);
insert into storage_location(name, employee_id) values ('STORE ROOM B', 1);
insert into storage_location(name, employee_id) values ('STORE ROOM C', 1);
insert into storage_location(name, employee_id) values ('STORE ROOM D', 1);
insert into storage_location(name, employee_id) values ('STORE ROOM E', 1);
insert into storage_location(name, employee_id) values ('STORE ROOM F', 1);

insert into orders(date) values('2015-08-04');
insert into orders(date) values('2015-08-05');
insert into orders(date) values('2015-08-06');
insert into orders(date) values('2015-08-07');

insert into delivery_service(name, is_immediate_shipping) values ('PUROLATOR', '1');
insert into delivery_service(name, is_immediate_shipping) values ('FEDEX', '1');

insert into order_content(order_id,quantity,supply_specific_type_id,storage_location_id,delivery_service_id)
	values (1, 1, 1, 1, 1);
insert into order_content(order_id,quantity,supply_specific_type_id,storage_location_id,delivery_service_id)
	values (1, 3, 2, 1, 1);
insert into order_content(order_id,quantity,supply_specific_type_id,storage_location_id,delivery_service_id)
	values (2, 2, 3, 1, 1);
insert into order_content(order_id,quantity,supply_specific_type_id,storage_location_id,delivery_service_id)
	values (2, 4, 2, 1, 1);
insert into order_content(order_id,quantity,supply_specific_type_id,storage_location_id,delivery_service_id)
	values (2, 6, 4, 1, 1);
    
