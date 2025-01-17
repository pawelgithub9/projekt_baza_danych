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
	constraint mieszkania_pietro check (pietro > -1),
	constraint mieszkania_liczbapokoi check (liczbapokoi > 0)
);

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
);

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
);

create table OPLATY (
	id autoincrement,
	mieszkanie int not null,
	rodzajoplaty varchar(7) not null,
	kwota decimal(6, 2) not null,
	data date not null,
	constraint pk_oplaty primary key (id),
	constraint fk_oplaty_mieszkanie foreign key (mieszkanie) references MIESZKANIA (id),
	constraint rodzajoplaty_oplaty check (rodzajoplaty in ('wynajem', 'czynsz', 'prad', 'gaz', 'media')),
	constraint kwota_oplaty check (kwota >= 0)
);

create table WLASCICIELMIESZKANIE (
	id autoincrement,
	wlasciciel int not null,
	mieszkanie int not null,
	constraint pk_wlascicielmieszkanie primary key (id),
	constraint fk_wm_wlasciciel foreign key (wlasciciel) references WLASCICIELE (id),
	constraint fk_wm_mieszkanie foreign key (mieszkanie) references MIESZKANIA (id)
);

create table WYNAJMY (
	id autoincrement,
	mieszkanie int not null,
	klient int not null,
	datarozpoczecia date not null,
	datazakonczenia date,
	constraint pk_wynajmy primary key (id),
	constraint fk_wynajmy_mieszkanie foreign key (mieszkanie) references MIESZKANIA (id),
	constraint fk_wynajmy_klient foreign key (klient) references KLIENCI (id),
	constraint daty_wynajmy check (datarozpoczecia < datazakonczenia)
);