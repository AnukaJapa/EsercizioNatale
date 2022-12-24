CREATE TABLE configurazioni(
id INT IDENTITY(1,1),
titolo VARCHAR(200) NOT NULL,
descrizione VARCHAR(200),
PRIMARY KEY(id)
);

CREATE TABLE persone(
id INT NOT NULL,
nome VARCHAR(60) NOT NULL,
cognome VARCHAR(60) NOT NULL,
dataDiNascita DATE NOT NULL,
tipoDiDocumento VARCHAR(60) NOT NULL,
NumeroDocumento VARCHAR(12),
PRIMARY KEY(id)
);
CREATE TABLE prenotazioniHotel(
id INT NOT NULL,
ospiteId INT NOT NULL,
configurazioneId INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(configurazioneId) REFERENCES configurazioni(id),
FOREIGN KEY (ospiteId) REFERENCES persone (id)
);

CREATE TABLE stanze(
id INT NOT NULL,
piano INT NOT NULL,
numeroLetti INT,
prenotazioneId INT,
PRIMARY KEY(id),
FOREIGN KEY(prenotazioneId)REFERENCES prenotazioniHotel(id)
);

CREATE TABLE pagamenti(
id INT NOT NULL,
statusPagamento VARCHAR(8) NOT NULL,
importoPagato INT NOT NULL,
PRIMARY KEY(id),
prenotazioneId INT,
FOREIGN KEY(prenotazioneId)
REFERENCES prenotazioniHotel(id)
);




