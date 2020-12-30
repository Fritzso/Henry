 insert into pilote values 
 	('mackanda','felina','13000'),
 	('mery','jorina','13000'),
 	('fleups','tuibigus','14000'),
 	('lops','ana','13000'),
 	('macken','uiolo','13000'); 





SELECT a.*
FROM pilote a
JOIN (SELECT nom, prenom, COUNT(*)
FROM pilote 
GROUP BY nom, prenom
HAVING count(*) > 1 ) b
ON a.salaire = b.salaire;





mery
ajout
alter table test_tuto add date date;
alter table test_tuto add prenom char(20) not null;

suppresion
alter table test_tuto drop prenom;

ajout cle primaire 
 alter table eleve  add constraint fk_ifrs primary key(id);

ajouter cle etrangere******
alter table prof add constraint fk_ifrs foreign key(id) references eleve(id);

changer nom colonne
alter table essaie change prenom surnom char(16) not null;

supprimer cle etrangere
alter table prof drop foreign key fk_ifrs;

supprimer cle primaire
alter table eleve drop primary key;

ajout element dans colonne
insert into prof value( 'clercine4' , '509340646' , 'Anglais' , '31032' , '20000' );

voir element ajouter
select *from prof;

augmenter salaire
update prof set salaire = (salaire + (salaire*0.1)) where salaire < 30000;


	supprimer prof qund salaire.....
	delete from prof where salaire = 22000;
