--CREER UNE FONCTION scalaire QUI CALCULE LE PRIX TOTAL QU UN JEUNE DOIS PAYER S IL PARTICIPE A PLUSIEURS ACTIVITES

ALTER FUNCTION prix_total(@j int)
--j pour jeunes
	returns int
	as 
	BEGIN
	DECLARE  @total int;
	
	SELECT @total=SUM(PRIX) FROM ACTIVITES JOIN INSCRIPTION i ON   CODE_ACTIVITES= i.ID_ACTIVITES WHERE ID_JEUNES = @j

	return @total
	END
GO

SELECT dbo.prix_total(13000)
-- FONCTION TABLE QUI AFFICHE LES ACTIVITES AUX QUELS LE  JEUNES EST INSCRIT
CREATE FUNCTION inscrit(@j int)
returns table
as
return (SELECT a.TITRE,a.PRIX,a.ADRESSE FROM INSCRIPTION i LEFT JOIN ACTIVITES a on i.ID_ACTIVITES=a.CODE_ACTIVITES where i.ID_JEUNES = @j)

select * from dbo.inscrit(13000)

--CREATION D UNE PROCEDURE STOCKEES qui permet d'inscrire un nouveau jeune en respectant le nombre max de jeunes par activités(15)
CREATE PROCEDURE new_inscription (@nom varchar(20),@prenom varchar(20),@age int,@mail varchar(20), @codpost int,@acti int)
AS
BEGIN
DECLARE @num int
if  ((SELECT COUNT(*) FROM INSCRIPTION  WHERE ID_ACTIVITES = @acti ) > 15)
	RAISERROR('plus de places pour cette activités',12,1)
ELSE
	begin 
	INSERT INTO JEUNES VALUES(@nom,@prenom,@age,@mail,'',@codpost)
	select @num =IDENT_CURRENT('JEUNES')
	INSERT INTO INSCRIPTION(ID_JEUNES,ID_ACTIVITES) VALUES(@num,@acti)
	end
end
go

exec new_inscription 'LOUVAIN','GERARD',16,'gege@mail.com',1210,3


--creation d'un trigger 
create trigger nb_inscrit_max  on INSCRIPTION
AFTER insert
AS 
BEGIN
DECLARE @ID_ACTIVITES INT
DECLARE @ID_JEUNES INT 
SELECT   @ID_ACTIVITES=  ID_ACTIVITES FROM INSERTED
SELECT @ID_JEUNES = COUNT(*) from INSCRIPTION where ID_ACTIVITES=ID_ACTIVITES

IF @ID_JEUNES>15
ROLLBACK
END 
GO