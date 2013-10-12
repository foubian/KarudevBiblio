create table ouvrages(
ISBN varchar2(10) PRIMARY KEY NOT NULL,
TITRE varchar2(128) NOT NULL,
AUTEUR varchar2(64) DEFAULT NULL,
ID_GENRE varchar2(4) DEFAULT NULL,
EDITEUR varchar2(64) DEFAULT NULL
);
commit;
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2203314168','LEFRANC-L''ultimatum','Martin, Carin','BD','Casterman');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2746021285','HTML - entraînez-vous pour maîtriser le code source','Luc Van Lancker','INFO','ENI');
commit;


alter table ouvrages add constraint fk_ouvrages_id_genre foreign key(id_genre) references genres(id_genre); 
/*
select * from ouvrages;
drop table ouvrages;
commit;*/
