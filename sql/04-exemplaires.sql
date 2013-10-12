create table exemplaires (
id_exemplaire number(10) not null,
ISBN varchar2(10) NOT NULL,
ETAT varchar2(32) NOT NULL,
constraint fk_isbn foreign key (isbn) references ouvrages(isbn),
CONSTRAINT pk_exemplaires PRIMARY KEY (id_exemplaire, isbn)
);

--alter table exemplaires modify id_exemplaire primary key;
--create sequence exemplaires_seq;
commit;
insert into exemplaires values(1,'2203314168','Moyen');
insert into exemplaires values(2,'2203314168','Bon');
insert into exemplaires values(3,'2203314168','Neuf');
insert into exemplaires values(1,'2746021285','Bon');
commit;

--truncate table exemplaires;


/*
select * from exemplaires;
drop table exemplaires;
commit;*/

begin
 for code in (select isbn from ouvrages) LOOP
  if code.isbn != '2203314168' and code.isbn != '2746021285'
    then 
    insert into exemplaires values (1,code.isbn,'Bon');
    insert into exemplaires values (2,code.isbn,'Moyen');
  end if;
 end loop;
end;
/
commit;