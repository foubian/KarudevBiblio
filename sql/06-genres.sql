create table genres (
id_genre varchar2(4) primary key not null,
libelle varchar2(64) not null
);

insert into genres values('INF','Informatique');
insert into genres values('BD','Bande dessinée');
insert into genres values('REC','Récit');
insert into genres values('POL','Policier');
insert into genres values('THE','Théâtre');
insert into genres values('ROM','Roman');
commit;


