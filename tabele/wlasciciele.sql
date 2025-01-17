create table WLASCICIELE (
	id autoincrement,
	imie varchar(30) not null,
	nazwisko varchar(40) not null,
	pesel varchar(11) not null,
	plec varchar(1) not null,
	telefon varchar(15) not null,
	adreszamieszkania varchar(100) not null,
	constraint pk_wlasciciele primary key (id),
	constraint plec_wlasciciele check (plec in ('K', 'M')),
	constraint unique_pesel_wlasciciele unique (pesel),
	constraint isnum_pesel_wlasciciele check (pesel LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	constraint isnum_telefon_wlasciciele check (telefon LIKE '%[^0-9]%')
)
