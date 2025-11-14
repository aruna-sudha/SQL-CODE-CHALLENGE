create database CityHospital;

use CityHospital;
--Table Create--
create table Patients (
Patient_Id  int primary key,
Patient_Name varchar(50),
Age  int,
Gender enum ('M','F'),
AdmissionDate date
);
Select * from Patients;

alter table Patients
add column DoctorAssigned  varchar(50);
Select * from Patients;

alter table Patients
modify column Patient_Name  varchar(100);
select*from Patients;

alter table Patients
rename to Patient_Info;
drop table Patient_Info;
truncate table Patient_info ;
drop 