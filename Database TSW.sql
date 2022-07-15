drop database if exists diVino;
create database diVino;
use diVino;


create table prodotto (
cod int primary key auto_increment,
nome varchar (40) not null,
prezzo float not null,
tipo varchar(20) not null,
link_immagine varchar(10000) not null,
descrizione text
);
create table utente (
codice int auto_increment,
nomeUtente varchar(25) unique,
nome varchar(20) not null,
cognome varchar(20) not null,
via varchar(40) not null,
cap int(5) not null,
telefono varchar(10) not null,
passwordUtente varchar (16) not null,
civico int not null,
amministratore boolean not null,
citta varchar(25) not null,
primary key ( codice,nomeUtente)
);

create table carrello (
dataC date not null,
quantita int not null,
codiceU int references utente(codice),
nomeU varchar(20) references utente(nomeUtente),
id int references articolocarrello(id),
totale float,
primary key (codiceU, nomeU, id,quantita,dataC)                                  
);



create table articoloCarrello (
id int primary key auto_increment,
prezzoUnita float not null,
codiceUtente int references carrello(codiceU),
nomeUtente varchar(25) references carrello(nomeU),
codProdotto int references carrello(codP)
);



