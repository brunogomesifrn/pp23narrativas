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

insert into core_periodo_narrativa (id, nome) values (1, '');
insert into core_periodo_narrativa (id, nome) values (2, '');

insert into core_publico_destino (id, nome) values (1, 'Criança');
insert into core_publico_destino (id, nome) values (2, 'Adulto');
insert into core_publico_destino (id, nome) values (3, 'Idoso');
insert into core_publico_destino (id, nome) values (4, 'Todos');


insert into core_indicadores_narrativa (id, qtd_personagens, narrativa_id, periodo_narrativa_id) values (1, 'Personagens Reais');
insert into core_indicadores_narrativa (id, qtd_personagens, narrativa_id, periodo_narrativa_id) values (2, 'Personagens Imaginarios');
insert into core_indicadores_narrativa (id, qtd_personagens, narrativa_id, periodo_narrativa_id) values (3, 'Personagens Crianças');
insert into core_indicadores_narrativa (id, qtd_personagens, narrativa_id, periodo_narrativa_id) values (4, 'Personagens Adultos');
insert into core_indicadores_narrativa (id, qtd_personagens, narrativa_id, periodo_narrativa_id) values (5, 'Personagens Idoso');
insert into core_indicadores_narrativa (id, qtd_personagens, narrativa_id, periodo_narrativa_id) values (6, 'Personagens Animal');


/* 1 Saci */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 0, 1, 1, 0, 0, 0, 1, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,2,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 3, 5)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 3, 1)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 3, 1)

/* 2 Comadre Fulozinha */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 0, 1, 1, 1, 0, 1, 2, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,2,4);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,2,2);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 3, 4)

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 3, 5)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 3, 1)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 1, 4)

/* 3 Botijas de Ouro */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 1, 1, 0, 1, 1, 0, 3, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,3,1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,3,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 1, 1)

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 2, 1)

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 4, 1)

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 5, 1)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 1, 2)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 1, 4)

/* 4 Procissao das Almas */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 1, 1, 1, 1, 1, 0, 4, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,4,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 1, 1)
insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 2, 2)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 2, 2)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 2, 4)

/* 5 Batatao */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 1, 1, 0, 1, 1, 0, 5, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,5,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 3, 5)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 3, 1)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 3, 1)

/* 6 Pesador */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 1, 1, 1, 1, 1, 0, 6, 2);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,2,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 3, 5)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 3, 1)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 3, 1)

/* 7 Corpo Seco */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 1, 1, 0, 0, 0, 0, 7, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,2,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 3, 5)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 3, 1)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 3, 1)

/* 8 Mula sem Cabeca */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 2, 1, 0, 2, 0, 1, 8, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,2,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 3, 5)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 3, 1)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 3, 1)

/* 9 Vitoria-Regia */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 1, 1, 1, 1, 0, 0, 9, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,2,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 3, 5)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 3, 1)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 3, 1)

/* 10 Lobsomen */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 1, 1, 0, 1, 0, 1, 10, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,2,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 3, 5)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 3, 1)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 3, 1)

/* 11 Boto-cor-de-Rosa */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 1, 1, 0, 2, 0, 1, 11, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,2,3);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 3, 5)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 3, 1)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 3, 1)

/* 12 Iara */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 1, 1, 0, 1, 0, 0, 12, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,12,1);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 3, 5)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 3, 1)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 3, 1)



