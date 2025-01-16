create table KLIENCI (
	id autoincrement,
	imie varchar(30) not null,
	nazwisko varchar(40) not null,
	pesel varchar(11) not null,
	telefon varchar(15) not null,
	constraint pk_klienci primary key (id),
	constraint unique_pesel_klienci unique (pesel),
	constraint isnum_pesel_klienci check (pesel LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	constraint isnum_telefon_klienci check (telefon LIKE '%[^0-9]%')
)
