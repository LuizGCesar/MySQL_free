USE carros;

INSERT INTO concessionaria (nome_con, cnpj_con)
VALUES
('Concessionaria Estrela', '08561828000120'),
('Concessionaria Vales Altos', '69376757000180'),
('Concessionaria BMW Eurovile', '33414292000168');

INSERT INTO vendedor ( nome_vendedor, cpf_vendedor)
VALUES
('Henrique Nathan' , '85578665691'),    /*1*/
('Claudia Alana', '90519548671'),          /*2*/
('Anthony Matheus', '96636890649'),    /*3*/
('Raquel Fabiana', '32644504619'),       /*4*/
('Caue Bryan', '23843341664'),			    /*5*/
('Anderson Tomas', '96192307601'),     /*6*/
('Augusto Pedro', '96952551670'), 		/*7*/
('Lucas Nascimento', '24146491606'),    /*8*/
('Roberto Figueiredo', '17381028662');  /*9*/

INSERT INTO marca (marca, importado)
VALUES
('BMW', 'S'),
('Ford', 'S'),
('Fiat', 'N'),
('Hyundai', 'S'),
('Chevrolet', 'N'),
('Honda', 'S'),
('Mercedes-Benz', 'S'),
('Audi', 'S'),
('Jeep', 'S'),
('Toyota', 'S'),
('Volkswagen', 'N'),
('Renault', 'S'),
('Nissan', 'S');


INSERT INTO oficina (nome_oficina, cnpj, endereco)
VALUES
('Auto Oficina Ferreira' , '33414292000168', 'Rua Tonico Dutra, n.457'),
('Oficina Mascarenhas', '57266419000107', 'Rua José Firmino da Silva, n.1048'),
('Super Carros Oficina Mecanica', '82653953000113', 'Rua Triangulo, n.54'),
('Auto Eletrica e Oficina Ricardo', '95251525000106', 'Rua Cinco, n.137');

INSERT INTO mecanico (nome_mecanico, cpf)
VALUES
('Marcio Alves', '07439430662'), /*1*/
('Luis Dias', '61530940664'), /*2*/ 
('Sebastiao da Rosa', '28407416606'), /*3*/
('Filipe dos Santos', '29016504656'), /*4*/
('Jose Rezende', '09106036694'), /*5*/
('Geraldo da Luz', '97113573649'), /*6*/
('Samuel Baptista', '02332681620'), /*7*/
('Bernado Castro', '19466264656'); /*8*/

INSERT INTO funcao (funcao)
VALUES
('Mecanico Geral'),  /*1*/
('Mecancio Eletrico'), /*2*/
('Mecanico de Retifica'), /*3*/
('Mecanico especializado em Carros de Luxo'), /*4*/
('Reparador de sistemas especificos'), /*5*/
('Preparador e Customizador'), /*6*/
('Consultor automotivo'); /*7*/



INSERT INTO funcao_mecanico (id_func_mec, id_mec_func)
VALUES
(1, 1), (1,3),
(2, 6), (2, 7),
(3, 1),
(4, 4),
(5, 2), (5,5),
(6,2),
(7,6),
(8,1), (8,2);

INSERT INTO oficina_mecanico (id_ofi_mec, id_mec_ofi)
VALUES
(1,1),(3,1),
(2,2),(5,2),
(7,3),(4,3),
(8,4), (6,4);


INSERT INTO vaga (vaga, valor_hora, valor_dia)
VALUES
('Vaga coberta', 12.00, 40),
('Vaga aberta', 10, 30),
('Vaga carro Eletrico', 50, 150),
('Vaga simples', 10, 35),
('Vaga em elevador', 15, 45);

INSERT INTO flanelinha (nome_flanelinha, cpf)
VALUES
('Vinicim', '55336446602'),
('Samuel Carvalho', '71395760683');

INSERT INTO carro (modelo, ano, versao, valor, marca_id)
VALUES
('M3', '2020', 'Turbo', 470280, 1),
('Gol', '2020' , 'G6', 52540, 11),
('Civic', '2021', 'EXL 2.0 CVT', 129000, 6),
('Golf', '2020', 'TSI', 179748, 11),
('H20', '2020', 'Sedan', 84900, 4),
('Renagade','2020', 'Sport', 85395, 9),
('Mustang', '2021', 'Mach 1', 576490, 2),
('Cronos', '2018', '1.6', 58370, 3); 

INSERT INTO cliente (nome_cliente, cpf)
VALUES
('Sergio Cesar', '34022924675'),
('Leonardo Araujo', '07079809681'),
('Benjamin Castro', '64301530614'),
('Caio Nicolas', '80715818600'),
('Marlene da Conceicao', '70247718602'),
('Isadora Regina', '02320459685'),
('Ruan Rezende', '62852147602'),
('Alexandre Silva', '16062741638'),
('Luiz Real', '40829525602'),
('Samuel Fernandes', '76122531600'),
('Eloa Mirella da Silva', '49428535672'),
('Fernando da Paz', '14820010638'),
('Cecilia Santos', '48635467698'),
('Filipe Peixoto', '89909921685');


INSERT INTO patio_estacionamento(nome_patio, flanelinha_id)
VALUES
('Estaciona Park', 2),
('Pare Bem', 1);

