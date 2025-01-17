insert into WLASCICIELE (imie, nazwisko, pesel, plec, telefon, adreszamieszkania)
values ("Wioletta", "Zalewska", 98012219267, "K", "+48802481314", "ul. Zamkowa 32, Starowa Góra 95-030");



update WLASCICIELMIESZKANIE
set wlasciciel = 6
where mieszkanie in (5, 8, 12)



DELETE FROM KLIENCI
WHERE id NOT IN (SELECT klient FROM WYNAJMY)