USE hp;
SELECT * FROM hp.assi;
SELECT namee FROM assi;
SELECT Price FROM assi; 
SELECT namee,Price FROM assi WHERE Price <=200;
SELECT namee,Price FROM assi WHERE Price BETWEEN 60 AND 120;
SELECT namee,Price, (price*2) FROM assi;
SELECT AVG(price) FROM assi;
SELECT AVG(price) AS avgofmanufacturetwo FROM assi WHERE manufacturer = 2;
SELECT count(price) FROM assi WHERE price>=180;
SELECT namee,Price FROM assi WHERE price>=180 ORDER BY Price DESC;
SELECT namee,Price FROM assi WHERE price>=180 ORDER BY namee ASC;
SELECT * FROM assi
INNER JOIN assi2
ON assi.Code=assi2.Codee;
SELECT namee,Price,namme FROM assi INNER JOIN assi2 ON assi.Code=assi2.Codee;
SELECT codee, AVG(Price) AS avgofmanufactureprice FROM assi
INNER JOIN assi2
ON assi.Code=assi2.Codee GROUP BY Codee;
SELECT namme, AVG(Price) AS avgofmanufactureprice FROM assi
INNER JOIN assi2
ON assi.Code=assi2.Codee GROUP BY namme;
SELECT namme, AVG(Price) AS avgofmanufactureprice FROM assi
INNER JOIN assi2
ON assi.Code=assi2.Codee WHERE Price>=150 GROUP BY Codee;
SELECT namee,Price FROM assi
INNER JOIN assi2
ON assi.Code=assi2.Codee WHERE MAX(Price);


