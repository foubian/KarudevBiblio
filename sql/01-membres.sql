create table membres(
id_membre number(10) primary key NOT NULL,
nom varchar2(128) not null,
prenom varchar2(128) default null,
adresse varchar2(256) default null,
telephone varchar2(10) default null,
date_adhesion date not null,
duree number(4) not null
);

create sequence membres_seq;


insert into membres values (membres_seq.nextval,'DUPONT','Anne','10 rue nationale','0102030405',TO_DATE('01/02/2005', 'dd/mm/yyyy'),1);
insert into membres values (membres_seq.nextval,'DURAND','Paul','11 rue du commerce','0102040608',TO_DATE('10/03/2005', 'dd/mm/yyyy'),6);
insert into membres values (membres_seq.nextval,'LEFEVRE','Jean','135 avenue des lilas','0203050809',TO_DATE('13/01/2005', 'dd/mm/yyyy'),12);
insert into membres values (membres_seq.nextval,'MARTIN','Marie','38 boulevard des belges','0304060809',TO_DATE('22/02/2005', 'dd/mm/yyyy'),6);
insert into membres values (membres_seq.nextval,'EVROUX','Eglantine','34 rue des elfes','0658963125',sysdate-150,6);
insert into membres values (membres_seq.nextval,'FREGEON','Fernand','11 rue des Francs','0602036987',sysdate-400,6);
insert into membres values (membres_seq.nextval,'GORIT','Gaston','96 rue de la glacerie','0684235781',sysdate-150,1);
insert into membres values (membres_seq.nextval,'HEVARD','Hector','12 rue haute','0608546578',sysdate-250,12);
insert into membres values (membres_seq.nextval,'INGRAND','Irène','54 rue de iris','0605020409',sysdate-50,12);
insert into membres values (membres_seq.nextval,'JUSTE','Julien','5 place des Jacobins','0603069876',sysdate-100,6);
commit;

/*select * from membres;
drop table membres;
drop sequence membres_seq;
commit;*/