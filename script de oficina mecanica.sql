-- AUTOR LUIZ GUSTAVO

create database carros;

use carros;

CREATE TABLE marca 
(
	id_marca INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50),
    importado CHAR(1)    
);


create table carro
(
	id_carro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(25) NOT NULL,
    ano year NOT NULL,
    versao VARCHAR(20),
    valor DECIMAL (10,2),
    marca_id INT,
    FOREIGN KEY (marca_id) REFERENCES marca (id_marca)
);

CREATE TABLE cliente
(
	id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(50) NOT NULL,
    cpf VARCHAR(15) UNIQUE,
    modelo_id INT,
    FOREIGN KEY (modelo_id) REFERENCES carro (id_carro)
);

CREATE TABLE mecanico
(
	id_mecanico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_mecanico VARCHAR(45) NOT NULL,
    cpf VARCHAR(15) NOT NULL UNIQUE    
);


CREATE TABLE funcao
(
	id_funcao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    funcao VARCHAR(50)
);

CREATE TABLE funcao_mecanico
(
	id_func_mec INT,
    id_mec_func INT,
    PRIMARY KEY (id_func_mec, id_mec_func),
    FOREIGN KEY (id_func_mec) REFERENCES mecanico (id_mecanico),
    FOREIGN KEY (id_mec_func) REFERENCES funcao (id_funcao)
);

CREATE TABLE oficina
(
	id_oficina INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_oficina VARCHAR(100),
    cnpj VARCHAR(20) UNIQUE,
    endereco BLOB
);

CREATE TABLE oficina_mecanico
(
	id_ofi_mec INT,
    id_mec_ofi INT,
    PRIMARY KEY (id_ofi_mec, id_mec_ofi),
    FOREIGN KEY (id_ofi_mec) REFERENCES mecanico (id_mecanico),
    FOREIGN KEY (id_mec_ofi) REFERENCES oficina (id_oficina)
);

CREATE TABLE concessionaria
(
	id_concessionaria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_con VARCHAR(100),
    cnpj_con VARCHAR(15) UNIQUE
    
);

CREATE TABLE vendedor
(
	id_vendedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_vendedor VARCHAR(30),
    cpf_vendedor VARCHAR(15) UNIQUE   
);

CREATE TABLE venda
(
	id_venda INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_venda DATE,
	preco_compra DECIMAL (10,2),
    cliente_id INT,
    vendedor_id INT,
    concessionaria_id INT,
    carro_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente (id_cliente),
    FOREIGN KEY (vendedor_id) REFERENCES vendedor (id_vendedor),
    FOREIGN KEY (concessionaria_id) REFERENCES concessionaria (id_concessionaria),
    FOREIGN KEY (carro_id) REFERENCES carro (id_carro)
);
CREATE TABLE atendimento
(
	id_atendimento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_atendimento DATE,
    descricao_servico BLOB,
    pecas BLOB,
    valor_servico DECIMAL(8,2),
    cliente_id INT,
    carro_id INT,
    oficina_id INT,
    mecanico_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente (id_cliente),
    FOREIGN KEY (carro_id) REFERENCES carro (id_carro),
    FOREIGN KEY (oficina_id) REFERENCES oficina (id_oficina),
    FOREIGN KEY (mecanico_id) REFERENCES mecanico (id_mecanico)
);

CREATE TABLE flanelinha
(
	id_flanelinha INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_flanelinha VARCHAR(25),
    cpf VARCHAR(15) UNIQUE
);

CREATE TABLE vaga
(
	id_vaga INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vaga VARCHAR(50),
    valor_hora DECIMAL (5,2),
    valor_dia DECIMAL (6,2)
);


CREATE TABLE patio_estacionamento
(
	id_patio_estacionamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_patio VARCHAR(100),
    flanelinha_id INT,
    FOREIGN KEY (flanelinha_id) REFERENCES flanelinha (id_flanelinha)
);



CREATE TABLE vaga_usada
(
	id_vaga_usada INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    atendimento_id INT,
    data_entrada DATE,
    hora_entrada TIME,
    data_saida DATE,
    hora_saida DATE,
    vaga_id INT,
    FOREIGN KEY (vaga_id) REFERENCES vaga (id_vaga)
);

ALTER TABLE vaga_usada ADD patio_id INT;
ALTER TABLE vaga_usada ADD FOREIGN KEY (patio_id) REFERENCES patio_estacionamento (id_patio_estacionamento);
ALTER TABLE vaga_usada ADD valor_total DECIMAL(6,2);

ALTER TABLE vaga_usada ADD FOREIGN KEY (atendimento_id) REFERENCES atendimento (id_atendimento);
