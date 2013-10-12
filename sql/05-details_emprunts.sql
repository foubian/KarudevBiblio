create table details_emprunts (
id_details_emprunts number(6) primary key not null,
id_emprunt number(6) not null,
isbn varchar2(10) not null,
id_exemplaire number(6) not null,
rendule date default null,
constraint fk_details_emprunts_isbn foreign key(id_exemplaire,isbn) references exemplaires(id_exemplaire,isbn),
constraint fk_details_emprunts_id_emprunt foreign key(id_emprunt) references emprunts(id_emprunt)
);
create sequence details_emprunts_seq;


--drop table details_emprunts;




