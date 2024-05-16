CREATE DATABASE db_servicorh;

USE db_servicorh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	funcao VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    datacontratacao DATE,
	salario DECIMAL (10, 2) NOT NULL,
    
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, funcao, email, datacontratacao, salario)
VALUES ("Maria Souza", "Gerente de projetos", "maria.souza@generation.com", "2020-04-10", 8500.00),
("Bruna Souza", "Estagiária em Desenvolvimento de Software", "bruna.souza@generation.com", "2020-06-22", 1960.20),
("Carla Fernandes", "Analista de Marketing", "carla.fernandes@generation.com", "2019-09-10", 5400.00),
("Daniel Oliveira", "Assistente Administrativo", "daniel.oliveira@generation.com", "2021-01-05", 1800.70),
("Elisa Costa", "Diretora Financeira", "elisa.costa@generation.com", "2015-11-30", 12060.40);

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET funcao = "Desenvolvedora de Software Junior" WHERE id = 2;
UPDATE tb_colaboradores SET salario = 2400.00 WHERE id = 2;

SELECT * FROM tb_colaboradores;
