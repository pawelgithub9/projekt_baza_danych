create table OPLATY (
	id autoincrement,
	mieszkanie int,
	rodzajoplaty varchar(7),
	kwota decimal(4, 2),
	data date,
	constraint pk_oplaty primary key (id),
	constraint fk_oplaty_mieszkanie foreign key (mieszkanie) references MIESZKANIA (id),
	constraint rodzajoplaty_oplaty check (rodzajoplaty in ('wynajem', 'czynsz', 'prad', 'gaz', 'media')),
	constraint kwota_oplaty check (kwota >= 0)
)
