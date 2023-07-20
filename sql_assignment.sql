-- Table creation
create table directors(director_id varchar primary key,director_name varchar);
create table movies(movie_id int primary key,title varchar,release_year int,director_id varchar,foreign key(director_id) references directors(director_id));
create table genres(genre_id varchar primary key,genre_name varchar);
create table movie_genres(movie_id int,genre_id varchar,foreign key(movie_id) references movies(movie_id),foreign key(genre_id) references genres(genre_id));

-- Inserting table values
insert into directors values("Priya12","Priya Krishnamurthy"),("Anil34","Anil Ravipudi"),("Rajamouli56","Rajamouli SS"),("Om79","");
select * from directors;

insert into movies values(01,"Bichagadu2",2023,"Priya12"),(02,"F3",2023,"Anil34"),(03,"RRR",2022,"Rajamouli56"),(04,"Adipurush",2023,"Om78");
select * from movies;

insert into genres values("g1","action-thriller"),("g2","comedy"),("g3","action");
select * from genres;

insert into movie_genres values(01,"g1"),(02,"g2"),(03,"g3"),(03,"g2");
select * from movie_genres;

-- Query1
select m.title,d.director_name from movies m,directors d where m.director_id=d.director_id;

-- Query2
select m.title,m.release_year,d.director_name from movies m left join directors d on m.director_id=d.director_id and d.director_name!="";

-- Query3
select d.director_name,m.title from directors d left join movies m on d.director_id=m.director_id and m.title!="";

-- Query4
select m.title,m.release_year,d.director_name from movies m join directors d on m.director_id=d.director_id and d.director_name!="";

-- Query5
select m.title,g.genre_name from movies m join movie_genres