SET LINESIZE 3000 
SET PAGESIZE 100 

SET SQLPROMPT 'PAYONG'

/*Question 4*/
alter table etudiant add password varchar(50);
update etudiant set password = ora_hash(matricule) where matricule = valeur;

alter table enseignants add password varchar(50);
update enseignants set password = ora_hash(matricule) where matricule = valeur;