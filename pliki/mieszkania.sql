create table mieszkania (
	id autoincrement,
	adres varchar(100),
	liczbapokoi int,
	metraz decimal(3,2),
	pietro int,
	typbudynku varchar(30),
	umeblowanie bit,
	constraint pk_mieszkania primary key (id),
	constraint liczba_metraz check (metraz > 0)
);
