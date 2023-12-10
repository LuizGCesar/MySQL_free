/*informações de vendas e atendimentos */

INSERT INTO venda (data_venda, preco_compra, cliente_id, vendedor_id, concessionaria_id, carro_id)
VALUES
('20200110', 170000, 10 , 2 , 2 , 4),
('20200315', 478000, 3 , 1 ,  3, 1),
('20200407', 56000, 5 , 9, 1, 8),
('20200519', 80123, 9, 7, 1, 6);



INSERT INTO atendimento (data_atendimento, descricao_servico, pecas, valor_servico, cliente_id, carro_id, oficina_id, mecanico_id)
VALUES
('20210328', 'Revisao de 100mil km', 'Filtro de ar, oleo, junta de amortecedor', 4243, 5, 8, 1, 1),
('20220706', 'Revisao Geral', 'Itens de revisao geral', 3000, 9, 6, 2,5),
('20220715', 'Preparacao turbo', 'STAGE 2 ', 60000, 3, 1,3,7);



INSERT INTO vaga_usada (atendimento_id, data_entrada, hora_entrada, vaga_id, patio_id)
VALUES(3, '20220715','09:00:00', 1,2);

