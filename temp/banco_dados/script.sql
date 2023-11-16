insert into core_tipo_narrativa (id, nome) values (1, 'Lenda');
insert into core_tipo_narrativa (id, nome) values (2, 'Conto');
insert into core_tipo_narrativa (id, nome) values (3, 'História');

insert into core_estilo_narrativa (id, nome) values (1, 'Ação');
insert into core_estilo_narrativa (id, nome) values (2, 'Aventura');
insert into core_estilo_narrativa (id, nome) values (3, 'Terror');
insert into core_estilo_narrativa (id, nome) values (4, 'Humor');

insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (1, 'Saci', 'Lenda do Saci', 'Desconhecido', 1);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (2, 'Cumadre Fulozinha', '', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (3, 'Botijas de Ouro', '', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (4, 'Prossissao das almas', '', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (5, 'Batatao', '', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (6, 'Pesador', '', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (7, 'Corpo Seco', '', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (8, 'Mula sem cabeca', '', 'Desconhecido', 1);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (9, 'Vitoria-Regia', '', 'Desconhecido', 2);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (10, 'Lobsomen', '', 'Desconhecido', 3);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (11, 'Boto Cor de Rosa', '', 'Desconhecido', 2);
insert into core_narrativa (id, titulo, descricao, autor, tipo_narrativa_id) values (12, 'Iara', '', 'Desconhecido', 2);

insert into core_local_narrativa (id, nome) values (1, 'Rural');
insert into core_local_narrativa (id, nome) values (2, 'Urbano');
insert into core_local_narrativa (id, nome) values (3, 'Litoral');
insert into core_local_narrativa (id, nome) values (4, 'Mangue');
insert into core_local_narrativa (id, nome) values (5, 'Floresta');

insert into core_turno_narativa (id, nome) values (1, 'Dia');
insert into core_turno_narativa (id, nome) values (2, 'Noite');

insert into core_periodo_narrativa (id, nome) values (1, 'Indefinido');
insert into core_periodo_narrativa (id, nome) values (2, '');

insert into core_publico_destino (id, nome) values (1, 'Criança');
insert into core_publico_destino (id, nome) values (2, 'Adulto');
insert into core_publico_destino (id, nome) values (3, 'Idoso');
insert into core_publico_destino (id, nome) values (4, 'Todos');

/* Saci */
insert into core_indicadores_narrativa (id, qtd_personagens_reais, 
qtd_personagens_imaginarios, qtd_personagens_criancas, qtd_personagens_adultos, 
qtd_personagens_idosos, qtd_personagens_animais, narrativa_id, periodo_id) 
values (1, 0, 1, 0, 1, 0, 0, 1, 1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (1,1,1);

insert into core_narrativa_estilo_narrativa 
(id, narrativa_id, estilo_narrativa_id) values (2,1,4);

insert into core_indicadores_narrativa_locais
(id, indicadores_narrativa_id, local_narrativa_id) values (1, 1, 5)

insert into core_indicadores_narrativa_turnos
(id, indicadores_narrativa_id, turno_narativa_id) values (1, 1, 1)

insert into core_indicadores_narrativa_publicos
(id, indicadores_narrativa_id, publico_destino_id) values (1, 1, 4)