SELECT YEAR(createdatutc) as Year,
MONTH(createdatutc) as Month,
COUNT(distinct operatorid) as FSP_Companies,
count(distinct discoveryflightpurchaseguid) as NumTxn,
SUM(Amount) as Amount,
SUM(Amount)/COUNT(distinct operatorid) as AvgRev
FROM FSP_SOURCES.FSP_V3_PRODUCTION_DFL.DFL_DISCOVERYFLIGHTPURCHASES
WHERE status = 'Purchased'
GROUP BY YEAR(createdatutc), MONTH(createdatutc)
ORDER BY YEAR(createdatutc), MONTH(createdatutc)