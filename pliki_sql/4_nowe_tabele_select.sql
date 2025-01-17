select id, iif(mieszkania.metraz<100, "LOW", "HIGH") as standard
into MIESZKANIASTANDARD
from mieszkania;

SELECT mieszkania.id, "M"+str(mieszkania.liczbapokoi+1) AS inf_skrotowa
into MIESZKANIAINFSKROTOWA
FROM mieszkania;
