create table exemplaire (
id_exemplaire number(10) primary key not null,
ISBN varchar2(10) NOT NULL,
NUMERO number(6) NOT NULL,
ETAT varchar2(32) NOT NULL,
constraint fk_isbn foreign key (isbn) references ouvrage(isbn)
);
create sequence exemplaire_seq;
commit;
insert into exemplaire values(exemplaire_seq.nextval,'2203314168',1,'Moyen');
insert into exemplaire values(exemplaire_seq.nextval,'2203314168',2,'Bon');
insert into exemplaire values(exemplaire_seq.nextval,'2203314168',3,'Neuf');
insert into exemplaire values(exemplaire_seq.nextval,'2746021285',1,'Bon');
commit;

select * from exemplaire;
--drop table exemplaire;