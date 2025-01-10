create table pisarze (
	id autoincrement,
	imie varchar(15),
	nazwisko varchar(30),
	plec varchar(1),
	narodowosc varchar(15),
	dataurodzenia date,
	datasmierci date,
	constraint pk_pisarze primary key (id),
	constraint plec_pisarze check (plec in ('K', 'M')),
	constraint daty_pisarze check (dataurodzenia < datasmierci)
)

create table ksiazki (
	id autoincrement,
	tytul varchar(100),
	autor int,
	wydawca varchar(50) default "Znak",
	rokwydania int,
	liczbastron int,
	twardaoprawa bit,
	cena decimal(4,2),
	constraint pk_ksiazki primary key (id),
	constraint fk_ksiazki foreign key (autor) references pisarze (id),
	constraint unique_tytul_pisarze unique (tytul)
)

create table bohaterowie (
	id autoincrement,
	imie varchar(50),
	nazwisko varchar(50),
	plec varchar(1),
	constraint pk_bohaterowie primary key (id),
	constraint plec_bohaterowie check (plec in ('K', 'M'))
)

create table ksiazkibohaterowie (
	id autoincrement,
	ksiazka int not null,
	bohater int not null,
	constraint pk_kb primary key (id),
	constraint fk_kb_ksiazki foreign key (ksiazka) references ksiazki (id),
	constraint fk_kb_bohaterowie foreign key (bohater) references bohaterowie (id)
)

insert into pisarze values (
	100,
	"Stefan",
	"Żeromski",
	"M",
	"Polska",
	"14.10.1864",
	"20.11.1925"
)

insert into pisarze (imie, nazwisko, plec, narodowosc, dataurodzenia) values (
	"Andrzej",
	"Sapkowski",
	"M",
	"Polska",
	"21.06.1948"
)

insert into ksiazki (tytul, autor, rokwydania, liczbastron, twardaoprawa, cena) values (
	"Przedwiośnie",
	100,
	2018,
	248,
	1,
	19.48
)

insert into ksiazki (tytul, autor, wydawca, rokwydania, liczbastron, twardaoprawa, cena) values (
	"Solaris",
	Null,
	"Albatros",
	2012,
	340,
	0,
	19.48
)

alter table pisarze add column wiek int;

alter table pisarze drop column wiek;

select id, imie, nazwisko, datediff("yyyy", dataurodzenia, datasmierci) into pisarzeMartwi
from pisarze
where datasmierci is not null

drop table pisarzeMartwi

update ksiazki set cena = 28
where tytul = "Przedwiośnie";

update ksiazki set cena = 40
where rokwydania >= 2010;

update ksiazki set cena = cena * 1.2 where tytul = "Przedwiośnie";

delete from pisarze where imie = "Andrzej" and nazwisko = "Sapkowski"
