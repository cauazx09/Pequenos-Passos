CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL 
);

CREATE TABLE IF NOT EXISTS grupos (
    id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
    descricao_grupo VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS clientes (
  id SERIAL PRIMARY KEY,
  nome_completo VARCHAR(255) NOT NULL,
  cpf VARCHAR(14) UNIQUE NOT NULL,
  email VARCHAR(255),
  telefone VARCHAR(20),
  grupo_id INT NOT NULL, 
    CONSTRAINT fk_grupo 
        FOREIGN KEY (grupo_id) 
        REFERENCES grupos(id) 
        ON DELETE RESTRICT
)


INSERT INTO usuarios (cpf, senha) 
VALUES ('123.456.789-00', '$2b$10$xqdabLCH6F80ZFesitS27eyqH4kj1mWpoW3/oUGIWroBQJZQQMyvu');

INSERT INTO clientes (nome_completo, cpf, email, telefone, grupo_id) VALUES 
('João da Silva', '111.222.333-44', 'joao@email.com', '(11) 99999-1111', 1),
('Maria Oliveira', '555.666.777-88', 'maria@email.com', '(11) 99999-2222', 2),
('Carlos Souza', '999.888.777-66', 'carlos@email.com', '(11) 99999-3333', 1),
('Ana Costa', '444.333.222-11', 'ana@email.com', '(11) 99999-4444', 3);

INSERT INTO grupos (nome, descricao_grupo) VALUES 
('Vip', 'Clientes com atendimento prioritário'),
('Padrão', 'Clientes de varejo geral'),
('Atacado', 'Compradores de grandes volumes');