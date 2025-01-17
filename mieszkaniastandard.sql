select id, iif(mieszkania.metraz<100, "LOW", "HIGH") as standard
into MIESZKANIASTANDARD
from mieszkania;