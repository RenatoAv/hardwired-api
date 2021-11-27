CREATE TABLE COMPONENTE(
 ID SERIAL NOT NULL,
 NOME VARCHAR(250) NOT NULL,
 CARACTERISTICAS VARCHAR(250) NOT NULL,
 TIPO VARCHAR(250) NOT NULL,
 DATA_LANCAMENTO DATE,

 CONSTRAINT PK_COMPONENTE_ID PRIMARY KEY (ID)
);

CREATE TABLE USUARIO(
 ID SERIAL NOT NULL,
 NOME VARCHAR(250) NOT NULL,
 EMAIL VARCHAR(250) NOT NULL,
 PASSWORD VARCHAR(250) NOT NULL,

 CONSTRAINT PK_USUARIO_ID PRIMARY KEY (ID)
);

CREATE TABLE MONTAGEM(
 ID SERIAL NOT NULL,
 ID_USUARIO INTEGER NOT NULL,

 CONSTRAINT PK_MONTAGEM_ID PRIMARY KEY (ID),
 CONSTRAINT FK_MONTAGEM_CLIENTE FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID)
);

CREATE TABLE COMPONENTE_MONTAGEM(
 ID SERIAL NOT NULL,
 ID_COMPONENTE INTEGER NOT NULL,
 ID_MONTAGEM INTEGER NOT NULL,
 DATA_CRIACAO DATE NOT NULL,

 CONSTRAINT PK_COMPONENTE_MONTAGEM_ID PRIMARY KEY (ID),
 CONSTRAINT FK_COMPONENTE_MONTAGEM_COMPONENTE FOREIGN KEY(ID_COMPONENTE) REFERENCES COMPONENTE(ID),
 CONSTRAINT FK_COMPONENTE_MONTAGEM_MONTAGEM FOREIGN KEY(ID_MONTAGEM) REFERENCES MONTAGEM(ID)
);

CREATE TABLE PRECO_COMPONENTE(
 ID SERIAL NOT NULL,
 VALOR NUMERIC NOT NULL,
 DATA DATE NOT NULL,
 ID_COMPONENTE INTEGER NOT NULL,

 CONSTRAINT PK_PRECO_COMPONENTE_ID PRIMARY KEY (ID),
 CONSTRAINT FK_PRECO_COMPONENTE_COMPONENTE FOREIGN KEY(ID_COMPONENTE) REFERENCES COMPONENTE(ID)
);


