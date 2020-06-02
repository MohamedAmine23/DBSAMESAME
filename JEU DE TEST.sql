

EXEC new_inscription 'Zizaoui','Mohamed ',5,'jfkdgls@mail.com',1120,2

--verifivation de la contrainte sur l'age du jeunes

INSERT INTO JEUNES VALUES('vdfkj','fsrgrs',3,'fdgffffffffffdddddddddfffffffff','jfkhgfdgls@mail.com',1080)--RENVOIS UNE ERREUR

INSERT INTO JEUNES VALUES('zzzzzz','frrrrrs',27,'cdffdfs','jffgggddgls@mail.com',1210)--RENVOIS UNE ERREUR 

INSERT INTO JEUNES VALUES('zzzzzz','frrrrrs',15,'cdffdfs','jffgggddgls@mail.com',1000)--FONCTIONNE (PETITE ERREUR AU NIVEAU DE L ENCODAGE DE L ADDRESSE MAIL)

--verification de la contrainte sur l'age du responsable

INSERT INTO RESPONSABLE VALUES('vdfkj','fsrgrs',3,'fdgffffffffffdddddddddfffffffff','jfkhgfdgls@mail.com',1080,'Bébé')

INSERT INTO RESPONSABLE VALUES('zzzzzz','frrrrrs',27,'cdffdfs','jffgggddgls@mail.com',1210,'assistant sociale')

INSERT INTO RESPONSABLE VALUES('zzzzzz','frrrrrs',15,'cdffdfs','jffgggddgls@mail.com',1210,'etudiant')

--verification de la contrainte sur l'ID du responsable dans la table activités
--verification de la contrainte sur l'unicités des addresses mails
INSERT INTO JEUNES VALUES('zizaoui','youssef',13,'amine0520@hotmail.com',1210,

--verification de la contrainte sur le code postale 
--verification sur la vue jeunes schaerbeekois 
--verification sur la vue liste activités
--verification sur la fonction table qui permet d'afficher
--verification sur la fonction scalaire qui calcule le prix totale q'un jeune doit payer 
--verification  sur la procédure stocké new inscription
--verification sur le trigger 
--verification de l'integrité des clés primaires 
--ajouter une contrainte sur 'lunicté du nom et prénom 
--ajouter une contrainte sur la validité des addresses mails 
--ajouter un trigger qui se déclenche si on essaye de mettre une date ulterieure a la date d'aujourd'hui
--ajouter une procédure stocker qui met sur liste d'attente
--unicité des noms prénoms des responsables et des jeunes 


INSERT INTO JEUNES VALUES('vdfkj','fsrgrs',3,'jfkdddgls@mail.com',)
INSERT INTO JEUNES VALUES()