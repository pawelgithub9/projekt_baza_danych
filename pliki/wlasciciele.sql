WLASCICIELE

create table WLASCICIELE (
	id autoincrement,
	imie varchar(30),
	nazwisko varchar(30),
	pesel varchar(11),
	plec varchar(1),
	telefon varchar(15),
	adreszamieszkania varchar(100)
	constraint pk_wlasciiele primary key (id),
	constraint plec_wlasciele check (plec in ('K', 'M')),
	constraint daty_wlasciele check (dataurodzenia < datasmierci)
)

WLASCICIEL-MIESZKANIE

create table WLASCICIEL-MIESZKANIE (
	id autoincrement,
	wlasciciel int,
	mieszkanie int,
	constraint pk_wlascicielmieszkanie primary key (id),
	constraint fk_wlasciciel foreign key (wlasciciel) references WLASCICIELE (id),
	constraint fk_mieszkanie foreign key (mieszkanie) references MIESZKANIA (id),
)

