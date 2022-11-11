drop database if exists Glucky;
create database Glucky;
use Glucky;
create table paciente(
Curp varchar(18) primary key not null,
Email varchar(70),
Pass varchar(30),
Nombre varchar(50),
Apellidos varchar(60),
Sexo varchar(10),
Edad int,
Tipodiabetes int,
Telefono varchar(10));
create table doctor(
Cedula varchar(8) primary key not null,
Email varchar(70),
Pass varchar(30),
Nombre varchar(50),
Apellidos varchar(60),
Sexo varchar(10),
Calle varchar (40),
Colonia varchar(40),
DeloMuni varchar(40),
CodigoPostal int,
Estado varchar(40),
Ciudad varchar(40),
Edad int,
Telefono varchar(10));
create table datosmedicos(
Id_datos int auto_increment primary key not null,
Glucosa int,
Presion int,
Fecha_registro date,
Hora_registro time);
create table citas(
id_cita int auto_increment primary key not null,
fecha_cita date,
hora_cita time);
create table tratamiento(
id_tratamiento int auto_increment primary key not null,
titulo_tratamiento varchar(60),
descripcion_tratamiento text);
create table dietas(
id_dietas int auto_increment primary key not null,
titulo_dieta varchar(60),
descripcion_dieta text);
create table notificaciones(
id_notificaciones int auto_increment primary key not null,
contenido_notificacion text);
create table chat(
id_chat int auto_increment primary key not null);
create table mensaje(
id_mensaje int auto_increment primary key not null,
contenido_mensaje text);
create table paciente_doctor(
Curp varchar(18),
Cedula varchar(8),
foreign key (Cedula) references doctor (Cedula) on delete cascade on update cascade,
foreign key (Curp) references paciente (Curp)on delete cascade on update cascade);
create table paciente_doctor_dieta(
Curp varchar(18),
Cedula varchar(8),
id_dietas int,
foreign key (Cedula) references doctor (Cedula)on delete cascade on update cascade,
foreign key (Curp) references paciente (Curp)on delete cascade on update cascade,
foreign key (id_dietas) references dietas (id_dietas)on delete cascade on update cascade);
create table paciente_datosmedicos(
Curp varchar(18),
Id_datos int,
foreign key (Curp) references paciente (Curp)on delete cascade on update cascade,
foreign key(Id_datos) references datosmedicos(Id_datos)on delete cascade on update cascade);
create table paciente_docotor_datosmedicos(
Curp varchar(18),
Cedula varchar(8),
Id_datos int,
foreign key (Curp) references paciente (Curp)on delete cascade on update cascade,
foreign key(Id_datos) references datosmedicos(Id_datos)on delete cascade on update cascade,
foreign key (Cedula) references doctor (Cedula)on delete cascade on update cascade);
create table paciente_doctor_tratamiento(
Curp varchar(18),
Cedula varchar(8),
id_tratamiento int,
foreign key (Cedula) references doctor (Cedula)on delete cascade on update cascade,
foreign key (Curp) references paciente (Curp)on delete cascade on update cascade,
foreign key (id_tratamiento) references tratamiento (id_tratamiento)on delete cascade on update cascade);
create table paciente_doctor_cita(
Curp varchar(18),
Cedula varchar(8),
id_cita int,
foreign key (Cedula) references doctor (Cedula)on delete cascade on update cascade,
foreign key (Curp) references paciente (Curp)on delete cascade on update cascade,
foreign key (id_cita) references citas (id_cita)on delete cascade on update cascade);
create table paciente_notificaciones(
Curp varchar(18),
id_notificaciones int,
foreign key (Curp) references paciente (Curp)on delete cascade on update cascade,
foreign key (id_notificaciones) references notificaciones (id_notificaciones)on delete cascade on update cascade);
create table doctor_notificaciones(
Cedula varchar(8),
id_notificaciones int,
foreign key (Cedula) references doctor (Cedula)on delete cascade on update cascade,
foreign key (id_notificaciones) references notificaciones (id_notificaciones)on delete cascade on update cascade);
create table paciente_doctor_chat_mensaje(
Curp varchar(18),
Cedula varchar(8),
id_chat int,
id_mensaje int,
foreign key (Cedula) references doctor (Cedula)on delete cascade on update cascade,
foreign key (Curp) references paciente (Curp)on delete cascade on update cascade,
foreign key (id_chat) references chat (id_chat)on delete cascade on update cascade,
foreign key (id_mensaje) references mensaje (id_mensaje)on delete cascade on update cascade);



