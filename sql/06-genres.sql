create table genres (
id_genre varchar2(4) primary key not null,
libelle varchar2(64) not null
);

insert into genres values('INF','Informatique');
insert into genres values('BD','Bande dessin�e');
insert into genres values('REC','R�cit');
insert into genres values('POL','Policier');
insert into genres values('THE','Th��tre');
insert into genres values('ROM','Roman');
commit;


