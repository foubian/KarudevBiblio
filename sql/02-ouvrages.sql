create table ouvrages(
ISBN varchar2(10) PRIMARY KEY NOT NULL,
TITRE varchar2(128) NOT NULL,
AUTEUR varchar2(64) DEFAULT NULL,
ID_GENRE varchar2(4) DEFAULT NULL,
EDITEUR varchar2(64) DEFAULT NULL
);
commit;
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2203314168','LEFRANC-L''ultimatum','Martin, Carin','BD','Casterman');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2746021285','HTML - entraînez-vous pour maîtriser le code source','Luc Van Lancker','INF','ENI');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2746026090','Oracle 10h SQL, PL/SQL, SQL*Plus','J.Gabillaud','INF','ENI');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2266085816','Pantagruel','François Rabelais','ROM','POCKET');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2266091611','Voyage au centre de la terre','Jules Verne','ROM','POCKET');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2253010219','Le crime de l''Orient Express','Agatha Christie','POL','Livre de Poche');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2070400816','Le Bourgeois gentilhomme','Molière','THE','Gallimard');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2070367177','Le curé de Tours','Honoré de Balzac','ROM','Gallimard');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2080720872','Boule de suif','Guy de Maupassant','REC','Flammarion');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2877065073','La gloire de mon père','Marcel Pagnol','ROM','Fallois');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2020549522','L''aventure des manuscrits de la mer morte',null,'REC','Seuil');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2253006327','Vingt mille lieues sous les mers','Jules Verne','ROM','LGF');
insert into ouvrages (isbn,titre,auteur,id_genre,editeur) values('2038704015','De la terre à la lune','Jules Verne','ROM','Larousse');
commit;


alter table ouvrages add constraint fk_ouvrages_id_genre foreign key(id_genre) references genres(id_genre); 
/*

drop table ouvrages;
commit;*/
select * from ouvrages;
