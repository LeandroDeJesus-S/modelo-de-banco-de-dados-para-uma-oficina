create database workshop;
use workshop;

create table client (
	id int not null primary key auto_increment,
    name varchar(45) not null,
    address varchar(45) not null,
    phone varchar(15) not null,
    constraint client_unique_phone unique(phone)
);

create table vehicle (
	id int not null primary key auto_increment,
	brand varchar(45) not null,
	model varchar(45) not null,
	year smallint not null,
	license_plate varchar(15),
    constraint vehicle_unique_license_plate unique(license_plate)
);

create table spare_part (
	id int not null primary key auto_increment,
	name varchar(45) not null,
	price float not null,
	stock int not null
);

create table service (
	id int not null primary key auto_increment,
	name varchar(45) not null,
	price float not null,
	description varchar(255) not null
);

create table employee (
	id int not null primary key auto_increment,
	name varchar(45) not null,
	lastname varchar(45) not null,
	cpf char(11) not null,
    phone varchar(15) not null,
    specialization varchar(45) not null, 
    salary float not null,
    constraint employee_unique_cpf unique(cpf)
);

create table payment_method (
	id int not null primary key auto_increment,
    method enum("Boleto", "Pix") default "Boleto" not null,
    status_method enum("Disponível", "Indisponível") default "Disponível" not null
);

create table payments (
	id int not null auto_increment,
	payment_date date not null default now(),
	client_id int not null,
	service_id int not null,
    method_id int not null,
    primary key (id, client_id),
    constraint fk_payments_method foreign key (method_id) references payment_method (id)
    on delete cascade on update cascade,
	constraint fk_payments_client foreign key (client_id) references client (id)
    on delete cascade on update cascade,
    constraint fk_payments_service foreign key (service_id) references service (id)
    on delete cascade on update cascade
);

create table schedules (
	id int not null primary key auto_increment,
    data_time datetime not null default now(),
    service_description varchar(255) not null,
    client_id int not null,
    employee_id int not null,
    vehicle_id int not null,
    service_id int not null,
    constraint fk_schedules_client foreign key (client_id) references client (id)
    on delete cascade on update cascade,
    constraint fk_schedules_employee foreign key (employee_id) references employee (id)
    on delete cascade on update cascade,
    constraint fk_schedules_vehicle foreign key (vehicle_id) references vehicle (id)
    on delete cascade on update cascade,
    constraint fk_schedules_service foreign key (service_id) references service (id)
    on delete cascade on update cascade
);

create table part_vehicle (
    vehicle_id int not null,
    spare_part_id int not null,
    quantity int not null default 1,
    primary key (vehicle_id, spare_part_id),
    constraint chk_quantity_part_vehicle check (quantity > 0),
    constraint fk_part_vehicle_s_vehicle foreign key (vehicle_id) references vehicle (id)
    on delete cascade on update cascade,
    constraint fk_part_vehicle_spare_part foreign key (spare_part_id) references spare_part (id)
    on delete cascade on update cascade
);