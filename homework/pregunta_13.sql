-- 
--  Sea el siguiente conjunto de tablas en una base de datos:
-- 
--    tbl0
--    ------------------------
--    K0  CHAR(1)
--    c01 INT
--    c02 INT
--    c03 CHAR(4)
--    c04 FLOAT
--        
--    tbl1
--    ------------------------
--    K0  CHAR(1)
--    K1  INT
--    c12 FLOAT
--    c13 INT
--    c14 DATE
--    c15 FLOAT
--    c16 CHAR(4)
--
--    tbl2
--    ------------------------
--    K1  INT,
--    c21 FLOAT,
--    c22 INT,
--    c23 DATE,
--    c24 FLOAT,
--    c25 CHAR(5)
--
--  Escriba una consulta que retorne por cada letra
--  de la columna K0, el valor promedio de la columna c12
--  en la tabla tbl1, para aquellos registros con c13 mayor
--  a 400.
--
--  Rta/
--    K0    avg(c12)
--  0  A  476.155000
--  1  B  536.523333
--  2  C  490.830000
--  3  D  709.530000
--  4  E  474.825000
-- 
--  >>> Escriba su codigo a partir de este punto <<<
--  

SELECT k0, ROUND(AVG(c12)+ 0.001,2) AS "avg(c12)"
FROM tbl1
WHERE c13 > 400
GROUP BY k0;