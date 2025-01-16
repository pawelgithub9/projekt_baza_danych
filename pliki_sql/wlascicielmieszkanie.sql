create table WLASCICIELMIESZKANIE (
	id autoincrement,
	wlasciciel int not null,
	mieszkanie int not null,
	constraint pk_wlascicielmieszkanie primary key (id),
	constraint fk_wm_wlasciciel foreign key (wlasciciel) references WLASCICIELE (id),
	constraint fk_wm_mieszkanie foreign key (mieszkanie) references MIESZKANIA (id)
)
