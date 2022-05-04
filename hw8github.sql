create table class
(
    id            int auto_increment
        primary key,
    class_subject varchar(15) null,
    constraint id
        unique (id)
);

create table `mysql____localhost-2022_05_04_16_57_35-dump`
(
    C1 text null,
    C2 text null
);

create table student
(
    id        int auto_increment
        primary key,
    firstname varchar(15) null,
    lastname  varchar(15) null,
    constraint id
        unique (id)
);

create table student_address
(
    id         int auto_increment
        primary key,
    street     varchar(20) null,
    num        int         null,
    town       varchar(20) null,
    zip        int         null,
    student_id int         null,
    constraint id
        unique (id),
    constraint student_address_ibfk_1
        foreign key (student_id) references student (id)
);

create index student_id
    on student_address (student_id);

create table student_class_association
(
    id        int auto_increment
        primary key,
    studentId int null,
    classId   int null,
    constraint id
        unique (id)
);


