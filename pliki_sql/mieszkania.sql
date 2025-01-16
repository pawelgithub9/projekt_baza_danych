create table MIESZKANIA (
	id autoincrement,
	adres varchar(100) not null,
	liczbapokoi int not null,
	metraz int not null,
	pietro int not null,
	typbudynku varchar(30) default "kamienica",
	umeblowanie bit not null,
	constraint pk_mieszkania primary key (id),
	constraint mieszkania_metraz check (metraz > 0),
	constraint mieszkania_pietro check (pietro > 0),
	constraint mieszkania_liczbapokoi check (liczbapokoi > 0)
);
