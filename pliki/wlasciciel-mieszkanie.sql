create table WLASCICIEL-MIESZKANIE (
	id autoincrement,
	wlasciciel int,
	mieszkanie int,
	constraint pk_wlascicielmieszkanie primary key (id),
	constraint fk_wlasciciel foreign key (wlasciciel) references WLASCICIELE (id),
	constraint fk_mieszkanie foreign key (mieszkanie) references MIESZKANIA (id),
)