SELECT mieszkania.id, "M"+str(mieszkania.liczbapokoi+1) AS inf_skrotowa
into MIESZKANIAINFSKROTOWA
FROM mieszkania;
