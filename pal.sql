USE parsal;
SELECT * FROM parsal.pal;
SELECT idpal,nump,numpa, sum(nump+numpa) as Total from parsal.pal GROUP BY idpal;
SELECT idpal,nump,numpa, sum(nump-numpa) AS main FROM parsal.pal GROUP BY idpal HAVING sum(nump)<30;
ALTER TABLE nal RENAME TO pal;
rollback;
TRUNCATE pal;