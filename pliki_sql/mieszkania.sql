create table MIESZKANIA (
	id autoincrement,
	adres varchar(100),
	liczbapokoi int,
	metraz decimal(3,2),
	pietro int,
	typbudynku varchar(30),
	umeblowanie bit,
	constraint pk_mieszkania primary key (id),
	constraint mieszkania_metraz check (metraz > 0),
	constraint mieszkania_pietro check (pietro > 0),
	constraint mieszkania_liczbapokoi check (liczbapokoi > 0)
);
