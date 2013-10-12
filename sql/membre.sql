create table membre(
id_membre number(10) primary key NOT NULL,
nom varchar2(128) not null,
prenom varchar2(128) default null,
adresse varchar2(256) default null,
telephone varchar2(10) default null,
date_adhesion date not null,
duree number(4) not null
);
create sequence membre_seq;

insert into membre values (membre_seq.nextval,'DUPONT','Anne','10 rue nationale','0102030405',TO_DATE('01/02/2005', 'dd/mm/yyyy'),1);
insert into membre values (membre_seq.nextval,'DURAND','Paul','11 rue du commerce','0102040608',TO_DATE('10/03/2005', 'dd/mm/yyyy'),6);
insert into membre values (membre_seq.nextval,'LEFEVRE','Jean','135 avenue des lilas','0203050809',TO_DATE('13/01/2005', 'dd/mm/yyyy'),12);
insert into membre values (membre_seq.nextval,'MARTIN','Marie','38 boulevard des belges','0304060809',TO_DATE('22/02/2005', 'dd/mm/yyyy'),6);
commit;

select * from membre;
--drop table membre;