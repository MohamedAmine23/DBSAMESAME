--question examen oral 09-06-20
--creer une procedure stockée qui fait appelle a une fonction /PROCEDURE STOCKEE
create procedure prix(@id int,@codepost int)
as 
begin
declare @prix float
if @codepost=1030
	set @prix=(select dbo.prix_total(@id))*0.8
else
	set @prix= (select dbo.prix_total(@id))
	 
end
go


----modif
alter procedure prix(@id int,@codepost int)--procedure qui calcule un rabais de 20% pour les schaerbeekois
as 
begin
declare @prix float
if @codepost=1030
	set @prix=(select dbo.prix_total(@id))*0.8
else
	set @prix= (select dbo.prix_total(@id))

print 'le prix total'
print @prix
end
go
--test 1 une jeune scharbeekoise (trouvée sur la view)
exec prix 13101,1030
--justification 1
select * from dbo.inscrit(13101)
--test 2
exec prix 13001,1210
--justification 2
select * from dbo.inscrit(13001)
