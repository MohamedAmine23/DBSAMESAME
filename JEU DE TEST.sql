

EXEC new_inscription 'Zizaoui','Mohamed ',5,'jfkdgls@mail.com',1120,2

--verifivation de la contrainte sur l'age du jeunes

INSERT INTO JEUNES VALUES('vdfkj','fsrgrs',3,'fdgffffffffffdddddddddfffffffff','jfkhgfdgls@mail.com',1080)--RENVOIS UNE ERREUR

INSERT INTO JEUNES VALUES('zzzzzz','frrrrrs',27,'cdffdfs','jffgggddgls@mail.com',1210)--RENVOIS UNE ERREUR 

INSERT INTO JEUNES VALUES('zzzzzz','frrrrrs',15,'cdffdfs','jffgggddgls@mail.com',1000)--FONCTIONNE (PETITE ERREUR AU NIVEAU DE L ENCODAGE DE L ADDRESSE MAIL)

--verification de la contrainte sur l'age du responsable

INSERT INTO RESPONSABLE VALUES('vdfkj','fsrgrs',3,'fdgffffffffffdddddddddfffffffff','jfkhgfdgls@mail.com',1080,'B�b�')

INSERT INTO RESPONSABLE VALUES('zzzzzz','frrrrrs',27,'cdffdfs','jffgggddgls@mail.com',1210,'assistant sociale')

INSERT INTO RESPONSABLE VALUES('zzzzzz','frrrrrs',15,'cdffdfs','jffgggddgls@mail.com',1210,'etudiant')

--verification de la contrainte sur l'ID du responsable dans la table activit�s
--verification de la contrainte sur l'unicit�s des addresses mails
INSERT INTO JEUNES VALUES('zizaoui','youssef',13,'amine0520@hotmail.com',1210,

--verification de la contrainte sur le code postale 
--verification sur la vue jeunes schaerbeekois 
--verification sur la vue liste activit�s
--verification sur la fonction table qui permet d'afficher
--verification sur la fonction scalaire qui calcule le prix totale q'un jeune doit payer 
--verification  sur la proc�dure stock� new inscription
--verification sur le trigger 
--verification de l'integrit� des cl�s primaires 
--ajouter une contrainte sur 'lunict� du nom et pr�nom 
--ajouter une contrainte sur la validit� des addresses mails 
--ajouter un trigger qui se d�clenche si on essaye de mettre une date ulterieure a la date d'aujourd'hui
--ajouter une proc�dure stocker qui met sur liste d'attente
--unicit� des noms pr�noms des responsables et des jeunes 


INSERT INTO JEUNES VALUES('vdfkj','fsrgrs',3,'jfkdddgls@mail.com',)
INSERT INTO JEUNES VALUES()