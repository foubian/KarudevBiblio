create table emprunt(
id_emprunt number(10) primary key not null,
date_emprunt date not null,
id_exemplaire number(6) not null,
id_membre number(10) not null,
date_retour date not null,
--index id_exemplaire_index(id_exemplaire),
constraint fk_id_exemplaire foreign key (id_exemplaire) references exemplaire(id_exemplaire),
constraint fk_id_membre foreign key (id_membre) references membre(id_membre)
);
create sequence emprunt_seq;

--select * from emprunt;