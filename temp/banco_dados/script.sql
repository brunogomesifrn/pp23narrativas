insert into core_tipo_narrativa (id, nome) values (1, 'Lenda');
insert into core_tipo_narrativa (id, nome) values (2, 'Conto');
insert into core_tipo_narrativa (id, nome) values (3, 'História');

insert into core_estilo_narrativa (id, nome) values (1, 'Ação');
insert into core_estilo_narrativa (id, nome) values (2, 'Aventura');
insert into core_estilo_narrativa (id, nome) values (3, 'Terror');
insert into core_estilo_narrativa (id, nome) values (4, 'Humor');

insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (1, 'Saci', 'Lenda do Saci', 'Desconhecido', 1);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (2, 'Cumadre Fulozinha', 'Mae da Mata', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (3, 'Botijas de Ouro', 'Tesouro Enterrado', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (4, 'Procissao das Almas', 'Lenda das Almas Caminhantes', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (5, 'Batatao', 'Lenda da Bola de Fogo', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (6, 'Pesador', 'Espirito do Pesador', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (7, 'Corpo Seco', 'Lenda da mulher magra', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (8, 'Mula sem Cabeca', 'A mulher que se apaixonou por um Padre', 'Desconhecido', 1);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (9, 'Vitoria-Regia', 'A India que VIROU Flor', 'Desconhecido', 2);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (10, 'Lobsomen', 'Lenda do Homem Lobo', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (11, 'Boto Cor de Rosa', 'Lenda do Boto Sedutor', 'Desconhecido', 2);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (12, 'Iara', 'Lenda da Sereia', 'Desconhecido', 2);

insert into core_local_narrativa (id, nome) values (1, 'Rural');
insert into core_local_narrativa (id, nome) values (2, 'Urbano');
insert into core_local_narrativa (id, nome) values (3, 'Litoral');
insert into core_local_narrativa (id, nome) values (4, 'Mangue');
insert into core_local_narrativa (id, nome) values (5, 'Floresta');

insert into core_turno_narrativa (id, nome) values (1, 'Dia');
insert into core_turno_narrativa (id, nome) values (2, 'Noite');
/*insert into core_turno_narrativa (id, nome) values (3, 'Dia e Noite');*/

insert into core_periodo_narrativa (id, nome) values (1, 'Não definido');
insert into core_periodo_narrativa (id, nome) values (2, '');

insert into core_publico_destino (id, nome) values (1, 'Criança');
insert into core_publico_destino (id, nome) values (2, 'Adulto');
insert into core_publico_destino (id, nome) values (3, 'Idoso');
/*insert into core_publico_destino (id, nome) values (4, 'Todos');*/

/*
insert into core_indicadores_narrativa (id, qtd_personagens, narrativa_id, periodo_narrativa_id) values (1, 'Personagens Reais');
insert into core_indicadores_narrativa (id, qtd_personagens, narrativa_id, periodo_narrativa_id) values (2, 'Personagens Imaginarios');
insert into core_indicadores_narrativa (id, qtd_personagens, narrativa_id, periodo_narrativa_id) values (3, 'Personagens Crianças');
insert into core_indicadores_narrativa (id, qtd_personagens, narrativa_id, periodo_narrativa_id) values (4, 'Personagens Adultos');
insert into core_indicadores_narrativa (id, qtd_personagens, narrativa_id, periodo_narrativa_id) values (5, 'Personagens Idoso');
insert into core_indicadores_narrativa (id, qtd_personagens, narrativa_id, periodo_narrativa_id) values (6, 'Personagens Animal');
*/

/* 1 Saci */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 0, 1, 1, 0, 0, 0, 1, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,1,2);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 1, 5);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (1, 1, 1);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (2, 1, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 1, 1);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (2, 1, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (3, 1, 3);

/* 2 Comadre Fulozinha */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (2, 1, 1, 1, 1, 0, 1, 2, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (2,2,3);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (3,2,1);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (2, 2, 4);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (3, 2, 5);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (3, 2, 1);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (4, 2, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (4, 2, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (5, 2, 3);

/* 3 Botijas de Ouro */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (3, 1, 1, 0, 1, 1, 0, 3, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (4,3,1);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (4, 3, 1);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (5, 3, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (6, 3, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (7, 3, 3);



/* Até aqui está ok */




/* 4 Procissao das Almas */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (4, 1, 1, 0, 1, 1, 0, 4, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (5,4,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (5, 4, 1);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (6, 4, 2);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (6, 4, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (8, 4, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (9, 4, 3);


/* 5 Batatao */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (5, 1, 1, 0, 1, 1, 0, 5, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (6,5,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (7, 5, 1);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (7, 5, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (10, 5, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (11, 5, 3);

/* 6 Pesador */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (6, 1, 1, 1, 1, 1, 0, 6, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (7,6,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (8, 6, 1);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (9, 6, 2);


insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (8, 6, 2);
/* ate aqui */
insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (12, 6, 1);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (13, 6, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (14, 6, 3);

/* 7 Corpo Seco */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (7, 1, 1, 0, 1, 1, 0, 7, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (8,7,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (10, 7, 1);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (9, 7, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (15, 7, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (16, 7, 3);
;
/* 8 Mula sem Cabeca */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (8, 1, 1, 0, 1, 1, 1, 8, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (9,8,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (11, 8, 5);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (10, 8, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (17, 8, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (18, 8, 3);

/* 9 Vitoria-Regia */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (9, 1, 1, 1, 1, 0, 0, 9, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (10,9,2);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (12, 9, 1);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (11, 9, 1);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (19, 9, 1);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (20, 9, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (21, 9, 3);
/* 10 Lobsomen */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (10, 1, 1, 0, 1, 0, 1, 10, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (11,10,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (13, 10, 5);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (12, 10, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (22, 10, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (23, 10, 3);

/* 11 Boto-cor-de-Rosa */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (11, 1, 1, 0, 2, 0, 1, 11, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (12,11,2);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (14, 11, 5);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (13, 11, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (24, 11, 1);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (25, 11, 2);


insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (26, 11, 3);

/* 12 Iara */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (12, 1, 1, 0, 1, 1, 0, 12, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (13,12,1);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (15, 12, 3);

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narrativa_id) values (14, 12, 1);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (27, 12, 1);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (28, 12, 2);

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (29, 12, 3);



