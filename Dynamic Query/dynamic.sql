---- PIVOT ----

SELECT CountryRegionCode, Region, Viewers
from dynamicTable

----countryregioncode | NorthAmerica | EMEA
----US                | 100          | ....

SELECT CountryRegionCode, [NorthAmerica], [EMEA]
from dynamicTable
pivot
(
	sum(Viewers) for Region
	in ([NorthAmerica], [EMEA], [APAC])
)
as pvt

---- Dynamic Queries ----
DECLARE @sqlstring varchar(2000)
set @sqlstring = 'select countryregioncode, region, '
set @sqlstring = @sqlstring + 'viewers from dynamicTable'

print @sqlstring
exec (@sqlstring)