



--verifivation de la contrainte sur l'age du jeunes

INSERT INTO JEUNES VALUES('vdfkj','fsrgrs',3,'fdgffffffffffdddddddddfffffffff','jfkhgfferdgls@mail.com',1080)--RENVOIS UNE ERREUR

INSERT INTO JEUNES VALUES('zzzzzz','frrrrrs',27,'cdffdfs','jffdfgggddgls@mail.com',1210)--RENVOIS UNE ERREUR 

INSERT INTO JEUNES VALUES('zzzzzz','frrrrrs',15,'cdffdfs','jffgdggddgls@mail.com',1000)--FONCTIONNE 

--verification de la contrainte sur l'age du responsable

INSERT INTO RESPONSABLE VALUES('vdfkj','fsrgrs',3,'fdgffffffffffdddddddddfffffffff','jfkegergerhgfdgls@mail.com',1080,'Bébé')--ereur

INSERT INTO RESPONSABLE VALUES('zzzzxxzz','frrrxxrrs',27,'cdffdfs','jffgggddglgfs@mail.com',1210,'assistant sociale')--fonctionne

INSERT INTO RESPONSABLE VALUES('zzxxzzzz','frxxrrrrs',15,'cdffdfs','jffggxxgddgegergls@mail.com',1210,'etudiant')--erreur




--verification sur la vue jeunes schaerbeekois
SELECT * FROM JEUNES_SCHAERBEEKOIS
--verification sur la vue liste activités
SELECT * FROM LISTE_ACTIVITES
--verification sur la fonction table qui permet d'afficher
select * from dbo.inscrit(13070)
select * from INSCRIPTION  i where i.ID_JEUNES=13070 
--verification sur la fonction scalaire qui calcule le prix totale q'un jeune doit payer 
SELECT dbo.prix_total(13070)

--verification  sur la procédure stocké new inscription
exec new_inscription 'smets','alain',10,'alainsmets@mail.com','rue des bons points 16',1000,'soutien scolaire'

--verification sur le trigger 
INSERT INTO INSCRIPTION(ID_JEUNES,ID_ACTIVITES) VALUES(13043,2)--délenche le trigger car le nb inscrit  max est atteint






