create table actors
(
    id         int auto_increment
        primary key,
    first_name varchar(15) null,
    last_name  varchar(15) null
);

create table directors
(
    id         int auto_increment
        primary key,
    first_name varchar(15) null,
    last_name  varchar(15) null
);

create table movies
(
    id           int auto_increment
        primary key,
    title        varchar(20) null,
    release_year int         null,
    genre        varchar(15) null,
    director_id  int         null,
    constraint movies_ibfk_1
        foreign key (director_id) references directors (id)
);

create index director_id
    on movies (director_id);

create table movies_actors_association
(
    id       int auto_increment
        primary key,
    movie_id int null,
    actor_id int null,
    constraint id
        unique (id)
);


