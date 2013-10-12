create table emprunts(
id_emprunt number(10) primary key not null,
date_emprunt date default sysdate,
id_membre number(10) not null,
constraint fk_id_membre foreign key (id_membre) references membres(id_membre)
);
create sequence emprunts_seq;
--select * from emprunt;
