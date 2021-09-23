drop table if exists jc_student_child;
drop table if exists jc_student_order;
drop table if exists jc_passport_office;
drop table if exists jc_register_office;
drop table if exists jc_country_struct;
drop table if exists jc_street;

create table jc_street
(
	street_code                                 integer not null,
	street_name                                 varchar(300),
	primary key(street_code)
);

create table jc_country_struct
(
	area_id                                     char(12) not null,
	area_name                                   varchar(200),
	primary key (area_id)
);

create table jc_passport_office
(
	p_office_id                                 integer not null,
	p_office_area_id                            char(12) not null,
	p_office_name                               varchar(200),
	primary key (p_office_id),
	foreign key(p_office_area_id)               references jc_country_struct(area_id) on delete restrict
);

create table jc_register_office
(
	r_office_id                                 integer not null,
	r_office_area_id                            char(12) not null,
	r_office_name                               varchar(200),
	primary key (r_office_id),
	foreign key(r_office_area_id)               references jc_country_struct(area_id) on delete restrict
);

create table jc_student_order
(
    student_order_id SERIAL,
    h_sur_name                                  varchar(100) not null,
    h_given_name                                varchar(100) not null,
    h_patronymic                                varchar(100) not null,
    h_date_of_birth                             date not null,
    h_passport_seria                            varchar(10) not null,
    h_passport_number                           varchar(10) not null,
    h_passport_date                             date not null,
    h_passport_office_id                        integer not null,
    h_post_index                                varchar(10),
    h_street_code                               integer not null,
    h_building                                  varchar(10) not null,
    h_extension                                 varchar(10),
    h_apartment                                 varchar(10),

    w_sur_name                                  varchar(100) not null,
    w_given_name                                varchar(100) not null,
    w_patronymic                                varchar(100) not null,
    w_date_of_birth                             date not null,
    w_passport_seria                            varchar(10) not null,
    w_passport_number                           varchar(10) not null,
    w_passport_date                             date not null,
    w_passport_office_id                        integer not null,
    w_post_index                                varchar(10),
    w_street_code                               integer not null,
    w_building                                  varchar(10) not null,
    w_extension                                 varchar(10),
    w_apartment                                 varchar(10),

    certificate_id                              varchar(20) not null,
    register_office_id                          integer not null,
    marriage_date                               date not null,
    primary key(student_order_id),
    foreign key(h_street_code)                  references jc_street(street_code) on delete restrict,
    foreign key(w_street_code)                  references jc_street(street_code) on delete restrict,
    foreign key(register_office_id)             references jc_register_office(r_office_id) on delete restrict
);

create table jc_student_child
(
    student_child_id serial,
    student_order_id                            integer not null,
    c_sur_name                                  varchar(100) not null,
    c_given_name                                varchar(100) not null,
    c_patronymic                                varchar(100) not null,
    c_date_of_birth                             date not null,
    c_certificate_number                        varchar(10) not null,
    c_certificate_date                          date not null,
    c_register_office_id                        integer not null,
    c_post_index                                varchar(10),
    c_street_code                               integer not null,
    c_building                                  varchar(10) not null,
    c_extension                                 varchar(10),
    c_apartment                                 varchar(10),
    primary key(student_child_id),
    foreign key(c_street_code)                  references jc_street(street_code) on delete restrict,
    foreign key(c_street_code)                  references jc_street(street_code) on delete restrict,
    foreign key(c_register_office_id)           references jc_register_office(r_office_id) on delete restrict

);