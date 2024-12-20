INSERT INTO narrativa_estilo_narrativa (id,nome) VALUES (1,'Ação');
INSERT INTO narrativa_estilo_narrativa (id,nome) VALUES (2,'Aventura');
INSERT INTO narrativa_estilo_narrativa (id,nome) VALUES (3,'Terror');
INSERT INTO narrativa_estilo_narrativa (id,nome) VALUES (4,'Humor');
INSERT INTO indicador_local_narrativa (id,nome) VALUES (1,'Rural');
INSERT INTO indicador_local_narrativa (id,nome) VALUES (2,'Urbano');
INSERT INTO indicador_local_narrativa (id,nome) VALUES (3,'Litoral');
INSERT INTO indicador_local_narrativa (id,nome) VALUES (4,'Mangue');
INSERT INTO indicador_local_narrativa (id,nome) VALUES (5,'Floresta');
INSERT INTO indicador_periodo_narrativa (id,nome) VALUES (1,'Não definido');
INSERT INTO indicador_periodo_narrativa (id,nome) VALUES (2,'');
INSERT INTO indicador_publico_destino (id,nome) VALUES (1,'Criança');
INSERT INTO indicador_publico_destino (id,nome) VALUES (2,'Adulto');
INSERT INTO indicador_publico_destino (id,nome) VALUES (3,'Idoso');
INSERT INTO narrativa_tipo_narrativa (id,nome) VALUES (1,'Lenda');
INSERT INTO narrativa_tipo_narrativa (id,nome) VALUES (2,'Conto');
INSERT INTO narrativa_tipo_narrativa (id,nome) VALUES (3,'História');
INSERT INTO indicador_turno_narrativa (id,nome) VALUES (1,'Dia');
INSERT INTO indicador_turno_narrativa (id,nome) VALUES (2,'Noite');
INSERT INTO narrativa_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (1,'Saci','Lenda do Saci',NULL,'Desconhecido',NULL,NULL,1);
INSERT INTO narrativa_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (2,'Cumadre Fulozinha','Mae da Mata',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO narrativa_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (3,'Botijas de Ouro','Tesouro Enterrado',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO narrativa_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (4,'Procissao das Almas','Lenda das Almas Caminhantes',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO narrativa_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (5,'Batatao','Lenda da Bola de Fogo',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO narrativa_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (6,'Pesador','Espirito do Pesador',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO narrativa_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (7,'Corpo Seco','Lenda da mulher magra',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO narrativa_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (8,'Mula sem Cabeca','A mulher que se apaixonou por um Padre',NULL,'Desconhecido',NULL,NULL,1);
INSERT INTO narrativa_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (9,'Vitoria-Regia','A India que VIROU Flor',NULL,'Desconhecido',NULL,NULL,2);
INSERT INTO narrativa_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (10,'Lobsomen','Lenda do Homem Lobo',NULL,'Desconhecido',NULL,NULL,3);
INSERT INTO narrativa_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (11,'Boto Cor de Rosa','Lenda do Boto Sedutor',NULL,'Desconhecido',NULL,NULL,2);
INSERT INTO narrativa_narrativa (id,titulo,descricao,foto,autor,anexo,link,tipo_narrativa_id) VALUES (12,'Iara','Lenda da Sereia',NULL,'Desconhecido',NULL,NULL,2);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (1,1,2);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (2,2,3);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (3,2,1);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (4,3,1);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (5,4,3);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (6,5,3);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (7,6,3);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (8,7,3);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (9,8,3);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (10,9,2);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (11,10,3);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (12,11,2);
INSERT INTO narrativa_narrativa_estilo_narrativa (id,narrativa_id,estilo_narrativa_id) VALUES (13,12,1);
INSERT INTO indicador_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (1,0,1,1,0,0,0,1,1);
INSERT INTO indicador_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (2,1,1,1,1,0,1,2,1);
INSERT INTO indicador_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (3,1,1,0,1,1,0,3,1);
INSERT INTO indicador_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (4,1,1,0,1,1,0,4,1);
INSERT INTO indicador_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (5,1,1,0,1,1,0,5,1);
INSERT INTO indicador_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (6,1,1,1,1,1,0,6,1);
INSERT INTO indicador_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (7,1,1,0,1,1,0,7,1);
INSERT INTO indicador_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (8,1,1,0,1,1,1,8,1);
INSERT INTO indicador_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (9,1,1,1,1,0,0,9,1);
INSERT INTO indicador_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (10,1,1,0,1,0,1,10,1);
INSERT INTO indicador_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (11,1,1,0,2,0,1,11,1);
INSERT INTO indicador_indicadores_narrativa (id,qtd_personagens_reais,qtd_personagens_imaginarios,qtd_personagens_criancas,qtd_personagens_adultos,qtd_personagens_idosos,qtd_personagens_animais,narrativa_id,periodo_id) VALUES (12,1,1,0,1,1,0,12,1);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (1,1,5);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (2,2,4);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (3,2,5);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (4,3,1);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (5,4,1);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (6,4,2);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (7,5,1);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (8,6,1);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (9,6,2);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (10,7,1);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (11,8,5);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (12,9,1);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (13,10,5);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (14,11,5);
INSERT INTO indicador_indicadores_narrativa_locais (id,indicadores_narrativa_id,local_narrativa_id) VALUES (15,12,3);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (1,1,1);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (2,1,2);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (3,1,3);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (4,2,2);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (5,2,3);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (6,3,2);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (7,3,3);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (8,4,2);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (9,4,3);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (10,5,2);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (11,5,3);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (12,6,1);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (13,6,2);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (14,6,3);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (15,7,2);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (16,7,3);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (17,8,2);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (18,8,3);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (19,9,1);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (20,9,2);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (21,9,3);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (22,10,2);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (23,10,3);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (24,11,1);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (25,11,2);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (26,11,3);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (27,12,1);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (28,12,2);
INSERT INTO indicador_indicadores_narrativa_publicos (id,indicadores_narrativa_id,publico_destino_id) VALUES (29,12,3);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (1,1,1);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (2,1,2);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (3,2,1);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (4,2,2);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (5,3,2);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (6,4,2);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (7,5,2);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (8,6,2);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (9,7,2);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (10,8,2);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (11,9,1);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (12,10,2);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (13,11,2);
INSERT INTO indicador_indicadores_narrativa_turnos (id,indicadores_narrativa_id,turno_narrativa_id) VALUES (14,12,1);