create database student_management;
insert into roles values(1,"ADMIN");
insert into roles values(2,"STUDENT");
insert into users values(1,"$2a$12$T4wfzf6eybSavqc9DbCSp.fEmOti2hM8UdDvYY8WCs5OYw18BlS1W","admin1");
insert into users values(2,"$2a$12$T4wfzf6eybSavqc9DbCSp.fEmOti2hM8UdDvYY8WCs5OYw18BlS1W","student1");
insert into users values(3,"$2a$12$T4wfzf6eybSavqc9DbCSp.fEmOti2hM8UdDvYY8WCs5OYw18BlS1W","student2");
insert into user_roles values(1,1);
insert into user_roles values(2,2);
insert into user_roles values(3,2);