
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

INSERT INTO employee (name,unit_id,role_id) VALUES ('Kareem Vincent',3,2),('Stewart Christian',1,4),('Adele Ramirez',1,6),('Connor Kent',1,7),('Arthur Lawson',1,3),('Henry Davis',1,2),('Clark Russell',2,7),('Nichole Guerra',1,1),('Jin Noel',3,2),('Hunter Hansen',1,4);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Nerea Middleton',2,4),('Octavius Wallace',3,6),('Gary Reid',2,2),('Kalia Maynard',3,1),('Emily Flynn',3,3),('Cynthia Whitfield',3,4),('Venus Peterson',3,3),('Alvin Todd',3,1),('MacKenzie Farley',3,7),('Blaze Tyler',3,3);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Yuli Mcguire',3,1),('TaShya Langley',2,6),('Ulysses David',1,5),('Serena Clemons',3,4),('Cora Townsend',2,1),('Carter Valencia',1,5),('Chandler Bell',3,6),('Cade Bartlett',2,1),('Amy Sosa',1,3),('Isabelle Castillo',2,5);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Pandora Page',2,3),('Kaitlin Cain',2,6),('Aidan Singleton',3,7),('Shaeleigh Walton',2,3),('Lavinia Ayala',2,7),('Maxwell Graham',3,5),('Abbot Fields',3,3),('Lucy Jordan',1,1),('Teagan Stein',2,4),('Oren French',1,4);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Linda Cummings',3,7),('Hope Alvarez',2,7),('Kirby Everett',2,5),('Xerxes Gardner',3,7),('Rylee Blevins',2,1),('Lacota Preston',1,6),('Eden Ortiz',1,2),('Ciara Holder',1,3),('Graham Elliott',2,3),('Fuller Velazquez',3,3);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Alisa Padilla',2,1),('Portia Small',2,5),('Danielle Kemp',1,5),('Colin Perry',3,2),('Ayanna Barry',3,5),('Ora Cox',2,3),('Haviva Mcclain',2,3),('Marah Hampton',1,6),('Abraham Gillespie',3,2),('Felix Griffin',1,5);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Burton Lawrence',3,7),('Asher Knox',1,4),('Dara Charles',3,1),('Anthony Rogers',2,6),('Jared Hernandez',2,5),('Lev Norris',2,2),('Lawrence Welch',3,7),('Coby Lopez',3,7),('Kibo Gomez',2,6),('Benedict Forbes',1,7);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Iris Gregory',3,5),('Alexandra Brock',1,5),('Breanna Ortega',2,5),('Chase Davenport',1,4),('Jelani Welch',2,4),('Hashim Walsh',2,5),('Bevis Bonner',2,1),('Nadine England',2,7),('Keiko Fox',3,2),('Janna Patton',2,1);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Unity Donovan',2,1),('Sydnee Levine',3,5),('Dawn Gamble',3,4),('Oleg Dillon',1,5),('Emi Steele',2,2),('Inga Bradley',3,5),('Ferris Langley',2,7),('Martha Bowman',1,2),('Haley Sheppard',1,2),('Dante Richmond',1,5);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Duncan Daniel',3,1),('Ivan West',1,7),('Alyssa Bender',3,6),('Jolie Sykes',1,6),('Serina Shepherd',1,2),('Kelsey Owens',2,2),('Darryl Delacruz',3,2),('Kai Patel',1,6),('Thane Good',1,7),('Aiko Holland',1,6);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Nayda Brooks',3,4),('Amaya Bright',2,2),('Nicole Nixon',3,4),('Callum Herring',3,7),('Dean Mcpherson',2,7),('Genevieve Wynn',1,6),('Lana Becker',3,1),('Carissa Sullivan',3,7),('Kato Mcpherson',2,6),('Thane Salas',3,5);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Kirestin Stephens',1,4),('Tad Farmer',1,1),('Lareina Rosa',2,7),('Emerald Houston',2,2),('Kimberley Zimmerman',2,1),('Blake Roberts',3,2),('Valentine Stout',3,5),('Grace Hutchinson',3,5),('Hermione Graham',3,3),('Amal Ferguson',3,4);
INSERT INTO employee (name,unit_id,role_id) VALUES ('John Frost',2,1),('Graham Robles',2,2),('Sade Roach',1,1),('Libby Gallegos',1,3),('Nasim Webb',3,1),('Hunter Harrison',1,4),('Deanna Martinez',3,7),('Ahmed Hart',3,4),('Isaac Cash',1,4),('Chaim Hammond',3,5);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Xander Trujillo',1,3),('Jada Hicks',2,1),('Azalia Spears',1,5),('Zeph Stevenson',3,4),('Miranda Norton',2,5),('Rama Blackburn',3,5),('Odessa Holden',2,1),('Alisa Chambers',2,7),('Brielle Forbes',1,4),('Dane Benjamin',1,1);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Haviva Little',2,7),('Britanney Everett',3,7),('Mikayla Rodgers',1,3),('Donna Pacheco',1,7),('Hasad Melendez',1,7),('Dennis Foreman',2,6),('James Middleton',3,7),('Price Stout',1,2),('Maxwell Carver',3,2),('Maris Singleton',3,2);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Nerea Shields',3,4),('Zane Shepherd',1,3),('Kyle Hancock',2,6),('Aquila Harmon',1,5),('Randall Wolf',2,4),('Andrew Sheppard',3,4),('Sade Miller',3,4),('Vladimir Hodge',1,5),('Merritt Vincent',2,2),('Paula English',2,1);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Courtney Rodriquez',1,1),('Kyle Ryan',1,3),('Ann Sears',1,1),('Cleo Terrell',2,5),('Nyssa Moon',1,6),('Tiger Mcmahon',1,1),('Hillary Noble',2,2),('Donna Foster',2,5),('Chancellor Glenn',1,2),('Myles Payne',3,3);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Ariana Mcmillan',2,5),('Hayley Davenport',2,3),('Alexander Hardy',3,1),('Sydnee Mcpherson',1,3),('Rachel Clay',1,6),('Kitra Hahn',2,7),('Abdul Wyatt',3,7),('Ryder Fry',3,1),('Abigail Haney',1,1),('Paula Ashley',2,1);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Holmes Boyer',2,1),('Margaret Everett',1,7),('Zenia Pace',3,3),('Harrison Jenkins',1,1),('Keaton Finch',2,5),('Chanda Montoya',1,2),('Kitra Potts',3,4),('Carolyn Petersen',2,3),('Zahir Patterson',1,2),('Gabriel Leonard',1,1);
INSERT INTO employee (name,unit_id,role_id) VALUES ('Cameran Bender',3,2),('Elaine Sheppard',2,7),('Blythe Hill',3,1),('Malachi Donaldson',1,1),('Dustin Evans',2,2),('Melinda Brown',1,3),('Renee Padilla',1,2),('Fuller Randall',3,4),('Wallace Carey',1,7),('Tucker Fletcher',1,6);

insert into service (name,unit_id) values ('TEST SERVICE 1 UNIT 1', 1);
insert into service (name,unit_id) values ('TEST SERVICE 2 UNIT 1', 1);

insert into service (name,unit_id) values ('TEST SERVICE 1 UNIT 2', 2);

insert into service (name,unit_id) values ('TEST SERVICE 1 UNIT 3', 3);
insert into service (name,unit_id) values ('TEST SERVICE 2 UNIT 3', 3);

insert into supervision (supervised_id, supervisor_id) values (6, 3);
insert into supervision (supervised_id, supervisor_id) values (5, 4);

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

insert into task(name, employee_id, service_id, shift_id, canceled, patient_treatment_history_id) values ('LEG SURGERY', 3, 1, null, '0', 1);
insert into task(name, employee_id, service_id, shift_id, canceled, patient_treatment_history_id) values ('EAR SURGERY', 3, 1, null, '0', 2);


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

insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) values
(1,1,'MEDICATION TYLENOL',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) values
(2,1,'CUTTING TOOLS',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) values
(3,1,'DEFIBS',0,0);

insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) values
(4,2,'STATIONARY',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) values
(5,2,'PATIENT ROBES',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) values
(6,2,'CLEANING BLEACH',0,0);

insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) values
(7,3,'FRESH FRUIT',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) values
(8,3,'CANNED BEANS',0,0);
insert into supply_specific_type(supply_sub_type_id, vendor_id, name, cost, is_immediate_shipping) values
(9,3,'FORKS',0,0);

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

insert into shift(start_date, end_date, employee_id) values ('2015-08-04', '2015-08-05', 6);





insert into shift(start_date, end_date, employee_id) values ('2015-08-04', '2015-08-05', 5);
insert into shift(start_date, end_date, employee_id) values ('2015-08-07', '2015-08-08', 5);
insert into shift(start_date, end_date, employee_id) values ('2015-08-11', '2015-08-15', 5);


insert into task(name, employee_id, service_id, shift_id, canceled, patient_treatment_history_id) values ('FEEDING', 5, 1, 2, '0', 3);
insert into task(name, employee_id, service_id, shift_id, canceled, patient_treatment_history_id) values ('PROSTATE EXAM', 5, 2, 3, '0', 6);
insert into task(name, employee_id, service_id, shift_id, canceled, patient_treatment_history_id) values ('EUTHANASIA', 5, 3, 3, '0', 4);


insert into delivery_service(name, is_immediate_shipping) values ('PUROLATOR', '1');
    
