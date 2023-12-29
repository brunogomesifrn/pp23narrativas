use narrativas;

CREATE TABLE IF NOT EXISTS auth_user (
	id	integer NOT NULL,
	password	varchar(128) NOT NULL,
	last_login	datetime,
	is_superuser	bool NOT NULL,
	username	varchar(150) NOT NULL UNIQUE,
	last_name	varchar(150) NOT NULL,
	email	varchar(254) NOT NULL,
	is_staff	bool NOT NULL,
	is_active	bool NOT NULL,
	date_joined	datetime NOT NULL,
	first_name	varchar(150) NOT NULL,
	PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS core_estilo_narrativa (
	id	integer NOT NULL,
	nome	varchar(50) NOT NULL,
	PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS core_local_narrativa (
	id	integer NOT NULL,
	nome	varchar(50) NOT NULL,
	PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS core_periodo_narrativa (
	id	integer NOT NULL,
	nome	varchar(50) NOT NULL,
	PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS core_publico_destino (
	id	integer NOT NULL,
	nome	varchar(50) NOT NULL,
	PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS core_tipo_narrativa (
	id	integer NOT NULL,
	nome	varchar(50) NOT NULL,
	PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS core_turno_narrativa (
	id	integer NOT NULL,
	nome	varchar(50) NOT NULL,
	PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS core_narrativa (
	id	integer NOT NULL,
	titulo	varchar(300) NOT NULL,
	descricao	text NOT NULL,
	foto	varchar(100),
	autor	varchar(200) NOT NULL,
	anexo	varchar(100),
	link	varchar(500),
	tipo_narrativa_id	integer NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(tipo_narrativa_id) REFERENCES core_tipo_narrativa(id) 
);
CREATE TABLE IF NOT EXISTS core_narrativa_estilo_narrativa (
	id	integer NOT NULL,
	narrativa_id	integer NOT NULL,
	estilo_narrativa_id	integer NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(estilo_narrativa_id) REFERENCES core_estilo_narrativa(id) ,
	FOREIGN KEY(narrativa_id) REFERENCES core_narrativa(id) 
);
CREATE TABLE IF NOT EXISTS core_indicadores_narrativa (
	id	integer NOT NULL,
	qtd_personagens_reais	integer NOT NULL,
	qtd_personagens_imaginarios	integer NOT NULL,
	qtd_personagens_criancas	integer NOT NULL,
	qtd_personagens_adultos	integer NOT NULL,
	qtd_personagens_idosos	integer NOT NULL,
	qtd_personagens_animais	integer NOT NULL,
	narrativa_id	integer NOT NULL,
	periodo_id	integer NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(narrativa_id) REFERENCES core_narrativa(id) ,
	FOREIGN KEY(periodo_id) REFERENCES core_periodo_narrativa(id) 
);
CREATE TABLE IF NOT EXISTS core_indicadores_narrativa_locais (
	id	integer NOT NULL,
	indicadores_narrativa_id	integer NOT NULL,
	local_narrativa_id	integer NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(indicadores_narrativa_id) REFERENCES core_indicadores_narrativa(id) ,
	FOREIGN KEY(local_narrativa_id) REFERENCES core_local_narrativa(id) 
);
CREATE TABLE IF NOT EXISTS core_indicadores_narrativa_publicos (
	id	integer NOT NULL,
	indicadores_narrativa_id	integer NOT NULL,
	publico_destino_id	integer NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(indicadores_narrativa_id) REFERENCES core_indicadores_narrativa(id) ,
	FOREIGN KEY(publico_destino_id) REFERENCES core_publico_destino(id) 
);
CREATE TABLE IF NOT EXISTS core_indicadores_narrativa_turnos (
	id	integer NOT NULL,
	indicadores_narrativa_id	integer NOT NULL,
	turno_narrativa_id	integer NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(indicadores_narrativa_id) REFERENCES core_indicadores_narrativa(id) ,
	FOREIGN KEY(turno_narrativa_id) REFERENCES core_turno_narrativa(id) 
);
INSERT INTO core_estilo_narrativa (id,nome) VALUES (1,'Ação');
INSERT INTO core_estilo_narrativa (id,nome) VALUES (2,'Aventura');
INSERT INTO core_estilo_narrativa (id,nome) VALUES (3,'Terror');
INSERT INTO core_estilo_narrativa (id,nome) VALUES (4,'Humor');
INSERT INTO core_local_narrativa (id,nome) VALUES (1,'Rural');
INSERT INTO core_local_narrativa (id,nome) VALUES (2,'Urbano');
INSERT INTO core_local_narrativa (id,nome) VALUES (3,'Litoral');
INSERT INTO core_local_narrativa (id,nome) VALUES (4,'Mangue');
INSERT INTO core_local_narrativa (id,nome) VALUES (5,'Floresta');
INSERT INTO core_periodo_narrativa (id,nome) VALUES (1,'Não definido');
INSERT INTO core_periodo_narrativa (id,nome) VALUES (2,'');
INSERT INTO core_publico_destino (id,nome) VALUES (1,'Criança');
INSERT INTO core_publico_destino (id,nome) VALUES (2,'Adulto');
INSERT INTO core_publico_destino (id,nome) VALUES (3,'Idoso');
INSERT INTO core_tipo_narrativa (id,nome) VALUES (1,'Lenda');
INSERT INTO core_tipo_narrativa (id,nome) VALUES (2,'Conto');
INSERT INTO core_tipo_narrativa (id,nome) VALUES (3,'História');
INSERT INTO core_turno_narrativa (id,nome) VALUES (1,'Dia');
INSERT INTO core_turno_narrativa (id,nome) VALUES (2,'Noite');
INSERT INTO core_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (1,'Saci','Lenda do Saci',NULL,'Desconhecido',NULL,NULL,1);
INSERT INTO core_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (2,'Cumadre Fulozinha','Mae da Mata',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO core_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (3,'Botijas de Ouro','Tesouro Enterrado',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO core_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (4,'Procissao das Almas','Lenda das Almas Caminhantes',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO core_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (5,'Batatao','Lenda da Bola de Fogo',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO core_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (6,'Pesador','Espirito do Pesador',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO core_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (7,'Corpo Seco','Lenda da mulher magra',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO core_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (8,'Mula sem Cabeca','A mulher que se apaixonou por um Padre',NULL,'Desconhecido',NULL,NULL,1);
INSERT INTO core_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (9,'Vitoria-Regia','A India que VIROU Flor',NULL,'Desconhecido',NULL,NULL,2);
INSERT INTO core_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (10,'Lobsomen','Lenda do Homem Lobo',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO core_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (11,'Boto Cor de Rosa','Lenda do Boto Sedutor',NULL,'Desconhecido',NULL,NULL,2);
INSERT INTO core_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (12,'Iara','Lenda da Sereia',NULL,'Desconhecido',NULL,NULL,2);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (1,1,2);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (2,2,3);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (3,2,1);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (4,3,1);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (5,4,3);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (6,5,3);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (7,6,3);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (8,7,3);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (9,8,3);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (10,9,2);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (11,10,3);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (12,11,2);
INSERT INTO core_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (13,12,1);
INSERT INTO core_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (1,0,1,1,0,0,0,1,1);
INSERT INTO core_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (2,1,1,1,1,0,1,2,1);
INSERT INTO core_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (3,1,1,0,1,1,0,3,1);
INSERT INTO core_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (4,1,1,0,1,1,0,4,1);
INSERT INTO core_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (5,1,1,0,1,1,0,5,1);
INSERT INTO core_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (6,1,1,1,1,1,0,6,1);
INSERT INTO core_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (7,1,1,0,1,1,0,7,1);
INSERT INTO core_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (8,1,1,0,1,1,1,8,1);
INSERT INTO core_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (9,1,1,1,1,0,0,9,1);
INSERT INTO core_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (10,1,1,0,1,0,1,10,1);
INSERT INTO core_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (11,1,1,0,2,0,1,11,1);
INSERT INTO core_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (12,1,1,0,1,1,0,12,1);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (1,1,5);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (2,2,4);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (3,2,5);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (4,3,1);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (5,4,1);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (6,4,2);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (7,5,1);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (8,6,1);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (9,6,2);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (10,7,1);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (11,8,5);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (12,9,1);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (13,10,5);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (14,11,5);
INSERT INTO core_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (15,12,3);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (1,1,1);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (2,1,2);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (3,1,3);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (4,2,2);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (5,2,3);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (6,3,2);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (7,3,3);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (8,4,2);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (9,4,3);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (10,5,2);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (11,5,3);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (12,6,1);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (13,6,2);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (14,6,3);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (15,7,2);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (16,7,3);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (17,8,2);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (18,8,3);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (19,9,1);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (20,9,2);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (21,9,3);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (22,10,2);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (23,10,3);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (24,11,1);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (25,11,2);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (26,11,3);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (27,12,1);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (28,12,2);
INSERT INTO core_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (29,12,3);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (1,1,1);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (2,1,2);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (3,2,1);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (4,2,2);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (5,3,2);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (6,4,2);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (7,5,2);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (8,6,2);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (9,7,2);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (10,8,2);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (11,9,1);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (12,10,2);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (13,11,2);
INSERT INTO core_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (14,12,1);
CREATE INDEX IF NOT EXISTS core_narrativa_tipo_narrativa_id_35e8319d ON core_narrativa (
	tipo_narrativa_id
);
CREATE UNIQUE INDEX IF NOT EXISTS core_narrativa_estilo_narrativa_narrativa_id_estilo_narrativa_id_da3ad3e2_uniq ON core_narrativa_estilo_narrativa (
	narrativa_id,
	estilo_narrativa_id
);
CREATE INDEX IF NOT EXISTS core_narrativa_estilo_narrativa_narrativa_id_291b77a2 ON core_narrativa_estilo_narrativa (
	narrativa_id
);
CREATE INDEX IF NOT EXISTS core_narrativa_estilo_narrativa_estilo_narrativa_id_6dd3b807 ON core_narrativa_estilo_narrativa (
	estilo_narrativa_id
);
CREATE INDEX IF NOT EXISTS core_indicadores_narrativa_narrativa_id_b0c5c208 ON core_indicadores_narrativa (
	narrativa_id
);
CREATE INDEX IF NOT EXISTS core_indicadores_narrativa_periodo_id_c0249a2c ON core_indicadores_narrativa (
	periodo_id
);
CREATE UNIQUE INDEX IF NOT EXISTS core_indicadores_narrativa_locais_indicadores_narrativa_id_local_narrativa_id_91ebddd1_uniq ON core_indicadores_narrativa_locais (
	indicadores_narrativa_id,
	local_narrativa_id
);
CREATE INDEX IF NOT EXISTS core_indicadores_narrativa_locais_indicadores_narrativa_id_79cc947e ON core_indicadores_narrativa_locais (
	indicadores_narrativa_id
);
CREATE INDEX IF NOT EXISTS core_indicadores_narrativa_locais_local_narrativa_id_3f6d3a62 ON core_indicadores_narrativa_locais (
	local_narrativa_id
);
CREATE UNIQUE INDEX IF NOT EXISTS core_indicadores_narrativa_publicos_indicadores_narrativa_id_publico_destino_id_d6b64fa4_uniq ON core_indicadores_narrativa_publicos (
	indicadores_narrativa_id,
	publico_destino_id
);
CREATE INDEX IF NOT EXISTS core_indicadores_narrativa_publicos_indicadores_narrativa_id_41db6df1 ON core_indicadores_narrativa_publicos (
	indicadores_narrativa_id
);
CREATE INDEX IF NOT EXISTS core_indicadores_narrativa_publicos_publico_destino_id_872facfb ON core_indicadores_narrativa_publicos (
	publico_destino_id
);
CREATE UNIQUE INDEX IF NOT EXISTS core_indicadores_narrativa_turnos_indicadores_narrativa_id_turno_narrativa_id_94f24f18_uniq ON core_indicadores_narrativa_turnos (
	indicadores_narrativa_id,
	turno_narrativa_id
);
CREATE INDEX IF NOT EXISTS core_indicadores_narrativa_turnos_indicadores_narrativa_id_56c3d3bc ON core_indicadores_narrativa_turnos (
	indicadores_narrativa_id
);
CREATE INDEX IF NOT EXISTS core_indicadores_narrativa_turnos_turno_narrativa_id_682150d6 ON core_indicadores_narrativa_turnos (
	turno_narrativa_id
);
COMMIT;
