create table WYNAJMY (
	id autoincrement,
	mieszkanie int,
	klient int,
	datarozpoczecia date,
	datazakonczenia date,
	constraint pk_wynajmy primary key (id),
	constraint fk_wynajmy_mieszkanie foreign key (mieszkanie) references MIESZKANIA (id),
	constraint fk_wynajmy_klient foreign key (klient) references KLIENCI (id),
	constraint daty_wynajmy check (datarozpoczecia < datazakonczenia)
)
