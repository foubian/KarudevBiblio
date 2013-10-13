select e.id_emprunt,e.date_emprunt,o.titre,m.nom,m.prenom from emprunts e 
inner join membres m on m.id_membre = e.id_membre
inner join details_emprunts d on d.id_emprunt = e.id_emprunt
inner join exemplaires ex on ex.id_exemplaire = d.id_exemplaire and ex.isbn = d.isbn
inner join ouvrages o on o.isbn = ex.isbn
where m.id_membre = 1;


select * from exemplaires;

-- 2.6 Ajout d'une colonne
select * from emprunts order by date_emprunt asc;
alter table emprunts add etat varchar2(2) default 'EC';
alter table emprunts add constraint ck_etat check(etat in ('EC','RE'));
commit;

begin
for c in (select distinct id_emprunt from details_emprunts where rendule is not null) loop
    update emprunts set etat='RE' where id_emprunt = c.id_emprunt;
end loop;
end;
/
commit;
-- 2.6 Ajout d'une colonne