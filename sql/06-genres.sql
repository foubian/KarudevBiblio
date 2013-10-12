create table genres (
id_genre varchar2(4) primary key not null,
libelle varchar2(64) not null
);

insert into genres values('INF','Informatique');
insert into genres values('BD','Bande dessiné');
commit;


