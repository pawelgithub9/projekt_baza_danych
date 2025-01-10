create table KLIENCI (
	id autoincrement,
	imie varchar(30),
	nazwisko varchar(40),
	pesel varchar(11),
	telefon varchar(15),
	constraint pk_klienci primary key (id),
	constraint pesel_klienci check (len(pesel) = 11)
)