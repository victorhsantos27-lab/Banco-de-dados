CREATE DATABASE empresa;
USE empresa; 
CREATE TABLE departamento (
	id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descrição VARCHAR(150), 
    localizacao VARCHAR(50)
);	
CREATE TABLE funcionarios (
	id_funcionario INT auto_increment PRIMARY KEY,
    nome VARCHAR (50),
    email VARCHAR (100),
    cargo VARCHAR (50),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamento (id_departamento) 
); 
CREATE TABLE funcionarioProjetos (
	id_funcionario INT auto_increment primary key,
    id_projeto INT,
    FOREIGN KEY (id_projeto) references projetos (id_projeto)
); 
CREATE TABLE projetos (
	id_projeto INT auto_increment primary key,
    nome VARCHAR (50),
    descricao VARCHAR (150),
    data_inicio DATE,
    data_fim DATE
);
INSERT INTO departamento (nome, descrição, localizacao) VALUES
('Tecnologia', 'Desenvolvimento de sistemas', 'São Paulo'),
('Recursos Humanos', 'Gestão de funcionários', 'Campinas'),
('Financeiro', 'Controle financeiro da empresa', 'São Paulo'),
('Marketing', 'Divulgação e publicidade', 'Campinas'),
('Suporte', 'Atendimento aos clientes', 'Ribeirão Preto'); 
INSERT INTO funcionarios (nome, email, cargo) VALUES
('Carlos Silva', 'carlos@empresa.com', 'Desenvolvedor'),
('Ana Souza', 'ana@empresa.com', 'Analista de RH'),
('Pedro Santos', 'pedro@empresa.com', 'Contador'),
('Juliana Costa', 'juliana@empresa.com', 'Analista de Marketing'),
('Lucas Oliveira', 'lucas@empresa.com', 'Técnico de Suporte'); 
INSERT INTO projetos (nome, descricao, data_inicio, data_fim) VALUES
('Sistema Web', 'Desenvolvimento de sistema para a empresa', '2026-01-10', '2026-04-10'),
('Aplicativo Mobile', 'Criação de aplicativo para clientes', '2026-02-15', '2026-06-15'),
('Sistema Financeiro', 'Sistema para controle financeiro', '2026-03-01', '2026-07-01'),
('Campanha Digital', 'Campanha de divulgação online', '2026-04-05', '2026-05-30'),
('Suporte Online', 'Plataforma de atendimento ao cliente', '2026-05-10', '2026-08-10'); 
