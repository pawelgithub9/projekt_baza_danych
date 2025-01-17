delete from KLIENCI
inner join WYNAJMY on WYNAJMY.klient = KLIENCI.id
where WYNAJMY.klient is null