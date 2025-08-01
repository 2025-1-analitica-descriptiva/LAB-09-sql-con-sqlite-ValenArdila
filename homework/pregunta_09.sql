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
--  Escriba una consulta que retorne el registro
--  con el menor valor en la columna c21 de la 
--  tabla tbl2.
--
--  Rta/
--     K1     c21  c22         c23   c24    c25
--  0  29  101.11  100  2017-11-17  0.42  MV-CB
--
--  >>> Escriba su codigo a partir de este punto <<<
--
SELECT * 
FROM tbl2
ORDER BY c21 
LIMIT 1;