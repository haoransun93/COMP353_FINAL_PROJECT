# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table billed_service (
  id                        bigint auto_increment not null,
  service_id                bigint,
  cost_to_patient           double,
  bill_to_doctor            double,
  constraint pk_billed_service primary key (id))
;

create table delivery_service (
  id                        bigint auto_increment not null,
  name                      varchar(255),
  is_immediate_shipping     boolean,
  constraint pk_delivery_service primary key (id))
;

create table employee (
  id                        bigint auto_increment not null,
  name                      varchar(255),
  unit_id                   bigint,
  role_id                   bigint,
  hire_date                 timestamp,
  constraint pk_employee primary key (id))
;

create table inventory (
  id                        bigint auto_increment not null,
  storage_location_id       bigint,
  supply_specific_type_id   bigint,
  constraint pk_inventory primary key (id))
;

create table login (
  id                        bigint auto_increment not null,
  username                  bigint,
  password                  varchar(255),
  constraint pk_login primary key (id))
;

create table operating_room_schedule (
  id                        bigint auto_increment not null,
  task_id                   bigint,
  operating_room_id         bigint,
  start                     timestamp,
  start_hour                integer,
  end_hour                  integer,
  constraint pk_operating_room_schedule primary key (id))
;

create table operating_rooms (
  id                        bigint auto_increment not null,
  name                      varchar(255),
  constraint pk_operating_rooms primary key (id))
;

create table order_content (
  id                        bigint auto_increment not null,
  order_id                  bigint,
  quantity                  bigint,
  supply_specific_type_id   bigint,
  storage_location_id       bigint,
  delivery_service_id       bigint,
  constraint pk_order_content primary key (id))
;

create table orders (
  id                        bigint auto_increment not null,
  date                      timestamp,
  constraint pk_orders primary key (id))
;

create table patient (
  id                        bigint auto_increment not null,
  name                      varchar(255),
  medicard_id               bigint,
  hospitalcard_id           bigint,
  constraint pk_patient primary key (id))
;

create table patient_assignment (
  id                        bigint auto_increment not null,
  employee_id               bigint,
  patient_visit_id          bigint,
  constraint pk_patient_assignment primary key (id))
;

create table patient_treatment_history (
  id                        bigint auto_increment not null,
  name                      varchar(255),
  date_of_treatment         timestamp,
  patient_visit_id          bigint,
  constraint pk_patient_treatment_history primary key (id))
;

create table patient_visit (
  id                        bigint auto_increment not null,
  date_of_visit             timestamp,
  date_of_leave             timestamp,
  unit_id                   bigint,
  patient_id                bigint,
  doctor                    bigint,
  constraint pk_patient_visit primary key (id))
;

create table pay (
  id                        bigint auto_increment not null,
  salary_or_hourly          boolean,
  annual_salary             integer,
  annual_salary_increase_percentage integer,
  hourly_base               integer,
  hourly_increase           integer,
  hourly_increase_experience_years integer,
  overtime_rate             integer,
  maximum_weekly_hours      integer,
  constraint pk_pay primary key (id))
;

create table role (
  id                        bigint auto_increment not null,
  name                      varchar(255),
  pay_id                    bigint,
  constraint pk_role primary key (id))
;

create table schedule (
  id                        bigint auto_increment not null,
  employee_id               bigint,
  start_date                timestamp,
  end_date                  timestamp,
  constraint pk_schedule primary key (id))
;

create table service (
  id                        bigint auto_increment not null,
  name                      varchar(255),
  unit_id                   bigint,
  cost                      double,
  constraint pk_service primary key (id))
;

create table shift (
  id                        bigint auto_increment not null,
  start_date                timestamp,
  end_date                  timestamp,
  employee_id               bigint,
  constraint pk_shift primary key (id))
;

create table storage_location (
  id                        bigint auto_increment not null,
  name                      varchar(255),
  employee_id               bigint,
  constraint pk_storage_location primary key (id))
;

create table supervision (
  id                        bigint auto_increment not null,
  supervised_id             bigint,
  supervisor_id             bigint,
  constraint pk_supervision primary key (id))
;

create table supply_specific_type (
  id                        bigint auto_increment not null,
  supply_sub_type_id        bigint,
  vendor_id                 bigint,
  name                      varchar(255),
  cost                      double,
  is_immediate_shipping     boolean,
  constraint pk_supply_specific_type primary key (id))
;

create table supply_sub_type (
  id                        bigint auto_increment not null,
  supply_type_id            bigint,
  name                      varchar(255),
  constraint pk_supply_sub_type primary key (id))
;

create table supply_type (
  id                        bigint auto_increment not null,
  name                      varchar(255),
  constraint pk_supply_type primary key (id))
;

create table task (
  id                        bigint auto_increment not null,
  name                      varchar(255),
  employee_id               bigint,
  service_id                bigint,
  shift_id                  bigint,
  date                      timestamp,
  canceled                  boolean,
  patient_treatment_history_id bigint,
  constraint pk_task primary key (id))
;

create table unit (
  id                        bigint auto_increment not null,
  name                      varchar(255),
  constraint pk_unit primary key (id))
;

create table vendor (
  id                        bigint auto_increment not null,
  name                      varchar(255),
  constraint pk_vendor primary key (id))
;

alter table billed_service add constraint fk_billed_service_service_1 foreign key (service_id) references service (id) on delete restrict on update restrict;
create index ix_billed_service_service_1 on billed_service (service_id);
alter table employee add constraint fk_employee_unit_2 foreign key (unit_id) references unit (id) on delete restrict on update restrict;
create index ix_employee_unit_2 on employee (unit_id);
alter table employee add constraint fk_employee_role_3 foreign key (role_id) references role (id) on delete restrict on update restrict;
create index ix_employee_role_3 on employee (role_id);
alter table inventory add constraint fk_inventory_storage_location_4 foreign key (storage_location_id) references storage_location (id) on delete restrict on update restrict;
create index ix_inventory_storage_location_4 on inventory (storage_location_id);
alter table inventory add constraint fk_inventory_supply_specific_t_5 foreign key (supply_specific_type_id) references supply_specific_type (id) on delete restrict on update restrict;
create index ix_inventory_supply_specific_t_5 on inventory (supply_specific_type_id);
alter table operating_room_schedule add constraint fk_operating_room_schedule_tas_6 foreign key (task_id) references task (id) on delete restrict on update restrict;
create index ix_operating_room_schedule_tas_6 on operating_room_schedule (task_id);
alter table operating_room_schedule add constraint fk_operating_room_schedule_ope_7 foreign key (operating_room_id) references operating_rooms (id) on delete restrict on update restrict;
create index ix_operating_room_schedule_ope_7 on operating_room_schedule (operating_room_id);
alter table order_content add constraint fk_order_content_order_8 foreign key (order_id) references orders (id) on delete restrict on update restrict;
create index ix_order_content_order_8 on order_content (order_id);
alter table order_content add constraint fk_order_content_supply_specif_9 foreign key (supply_specific_type_id) references supply_specific_type (id) on delete restrict on update restrict;
create index ix_order_content_supply_specif_9 on order_content (supply_specific_type_id);
alter table order_content add constraint fk_order_content_storage_loca_10 foreign key (storage_location_id) references storage_location (id) on delete restrict on update restrict;
create index ix_order_content_storage_loca_10 on order_content (storage_location_id);
alter table order_content add constraint fk_order_content_delivery_ser_11 foreign key (delivery_service_id) references delivery_service (id) on delete restrict on update restrict;
create index ix_order_content_delivery_ser_11 on order_content (delivery_service_id);
alter table patient_assignment add constraint fk_patient_assignment_employe_12 foreign key (employee_id) references employee (id) on delete restrict on update restrict;
create index ix_patient_assignment_employe_12 on patient_assignment (employee_id);
alter table patient_assignment add constraint fk_patient_assignment_patient_13 foreign key (patient_visit_id) references patient_visit (id) on delete restrict on update restrict;
create index ix_patient_assignment_patient_13 on patient_assignment (patient_visit_id);
alter table patient_treatment_history add constraint fk_patient_treatment_history__14 foreign key (patient_visit_id) references patient_visit (id) on delete restrict on update restrict;
create index ix_patient_treatment_history__14 on patient_treatment_history (patient_visit_id);
alter table patient_visit add constraint fk_patient_visit_unit_15 foreign key (unit_id) references unit (id) on delete restrict on update restrict;
create index ix_patient_visit_unit_15 on patient_visit (unit_id);
alter table patient_visit add constraint fk_patient_visit_patient_16 foreign key (patient_id) references patient (id) on delete restrict on update restrict;
create index ix_patient_visit_patient_16 on patient_visit (patient_id);
alter table role add constraint fk_role_pay_17 foreign key (pay_id) references pay (id) on delete restrict on update restrict;
create index ix_role_pay_17 on role (pay_id);
alter table schedule add constraint fk_schedule_employee_18 foreign key (employee_id) references employee (id) on delete restrict on update restrict;
create index ix_schedule_employee_18 on schedule (employee_id);
alter table service add constraint fk_service_unit_19 foreign key (unit_id) references unit (id) on delete restrict on update restrict;
create index ix_service_unit_19 on service (unit_id);
alter table shift add constraint fk_shift_employee_20 foreign key (employee_id) references employee (id) on delete restrict on update restrict;
create index ix_shift_employee_20 on shift (employee_id);
alter table storage_location add constraint fk_storage_location_employee_21 foreign key (employee_id) references employee (id) on delete restrict on update restrict;
create index ix_storage_location_employee_21 on storage_location (employee_id);
alter table supervision add constraint fk_supervision_supervised_22 foreign key (supervised_id) references employee (id) on delete restrict on update restrict;
create index ix_supervision_supervised_22 on supervision (supervised_id);
alter table supervision add constraint fk_supervision_supervisor_23 foreign key (supervisor_id) references employee (id) on delete restrict on update restrict;
create index ix_supervision_supervisor_23 on supervision (supervisor_id);
alter table supply_specific_type add constraint fk_supply_specific_type_suppl_24 foreign key (supply_sub_type_id) references supply_sub_type (id) on delete restrict on update restrict;
create index ix_supply_specific_type_suppl_24 on supply_specific_type (supply_sub_type_id);
alter table supply_specific_type add constraint fk_supply_specific_type_vendo_25 foreign key (vendor_id) references vendor (id) on delete restrict on update restrict;
create index ix_supply_specific_type_vendo_25 on supply_specific_type (vendor_id);
alter table supply_sub_type add constraint fk_supply_sub_type_supply_typ_26 foreign key (supply_type_id) references supply_type (id) on delete restrict on update restrict;
create index ix_supply_sub_type_supply_typ_26 on supply_sub_type (supply_type_id);
alter table task add constraint fk_task_employee_27 foreign key (employee_id) references employee (id) on delete restrict on update restrict;
create index ix_task_employee_27 on task (employee_id);
alter table task add constraint fk_task_service_28 foreign key (service_id) references service (id) on delete restrict on update restrict;
create index ix_task_service_28 on task (service_id);
alter table task add constraint fk_task_shift_29 foreign key (shift_id) references shift (id) on delete restrict on update restrict;
create index ix_task_shift_29 on task (shift_id);
alter table task add constraint fk_task_patient_treatment_his_30 foreign key (patient_treatment_history_id) references patient_treatment_history (id) on delete restrict on update restrict;
create index ix_task_patient_treatment_his_30 on task (patient_treatment_history_id);



# --- !Downs

SET REFERENTIAL_INTEGRITY FALSE;

drop table if exists billed_service;

drop table if exists delivery_service;

drop table if exists employee;

drop table if exists inventory;

drop table if exists login;

drop table if exists operating_room_schedule;

drop table if exists operating_rooms;

drop table if exists order_content;

drop table if exists orders;

drop table if exists patient;

drop table if exists patient_assignment;

drop table if exists patient_treatment_history;

drop table if exists patient_visit;

drop table if exists pay;

drop table if exists role;

drop table if exists schedule;

drop table if exists service;

drop table if exists shift;

drop table if exists storage_location;

drop table if exists supervision;

drop table if exists supply_specific_type;

drop table if exists supply_sub_type;

drop table if exists supply_type;

drop table if exists task;

drop table if exists unit;

drop table if exists vendor;

SET REFERENTIAL_INTEGRITY TRUE;

