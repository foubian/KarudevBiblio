create table library
( lib_code number(6) not null,
  lib_lib varchar(128) not null,
  lib_phone varchar(10) default null,
  constraint pk_lib_code primary key (lib_code)
);
create sequence library_seq;
alter table library modify lib_phone varchar(10); 

--insert into library values(library_seq.nextval,'English Book','0145689478'); 
--insert into library values(library_seq.nextval,'Victor Hugo','0145689478'); 
insert into library values(library_seq.nextval,'Aventure',null); 
select * from library;