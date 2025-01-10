create table WLASCICIELE (
	id autoincrement,
	imie varchar(30),
	nazwisko varchar(40),
	pesel varchar(11),
	plec varchar(1),
	telefon varchar(15),
	adreszamieszkania varchar(100)
	constraint pk_wlasciele primary key (id),
	constraint plec_wlasciele check (plec in ('K', 'M')),
	constraint pesel_wlasciciele check (len(pesel) = 11)
)