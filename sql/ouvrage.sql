create table ouvrage(
ISBN varchar2(10) NOT NULL,
TITRE varchar2(128) NOT NULL,
AUTEUR varchar2(64) DEFAULT NULL,
GENRE varchar2(64) DEFAULT NULL,
EDITEUR varchar2(64) DEFAULT NULL,
CONSTRAINT PK_ISBN PRIMARY KEY (ISBN) 
);
commit;
insert into ouvrage values('2203314168','LEFRANC-L''ultimatum','Martin, Carin','BD','Casterman');
insert into ouvrage values('2746021285','HTML - entraînez-vous pour maîtriser le code source','Luc Van Lancker','INFO','ENI');
commit;

select * from ouvrage;