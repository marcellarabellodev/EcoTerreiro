-- init_db/schema.sql

-- Não é necessário DROP DATABASE ou CREATE DATABASE aqui
-- porque o banco de dados 'ecoterreiro_db' já é criado automaticamente pelo Docker Compose via MYSQL_DATABASE.

-- Garante que estamos usando o banco de dados correto
USE `ecoterreiro_db`;

-- Cria a tabela terreiros (Modelo Físico!)
CREATE TABLE `terreiros` (
    `id_terreiro` INT AUTO_INCREMENT PRIMARY KEY,
    `nome_terreiro` VARCHAR(255) NOT NULL,
    `end_terreiro` VARCHAR(500) NOT NULL,
    `nome_paimae_santo_terreiro` VARCHAR(250) NOT NULL,
    `anos_terreiro` INT,
    `dificuldade_para_aplicar_terreiro` TEXT NOT NULL,
    `praticas_que_possui_terreiro` TEXT,
    `fez_diferenca_site` BOOLEAN,
    `apresentou_para_comunidade_site` BOOLEAN,
    `aplicou_alguma_pratica_site_no_terreiro` BOOLEAN,
    `data_cadastro` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Opcional: Adicionar alguns dados de teste
-- INSERT INTO `terreiros` (nome_terreiro, endereco_completo, nome_pai_mae_santo, anos_terreiro, dificuldade_para_aplicar_terreiro, praticas_que_possui_terreiro, fez_diferenca_site, apresentou_para_comunidade_site, aplicou_alguma_pratica_site_no_terreiro) VALUES
-- ('Terreiro Estrela Guia', 'Rua das Flores, 123, Bairro Verde, Cidade Luz', 'Pai Joaquim de Angola', 30, 'Falta de recursos financeiros', 'Coleta seletiva, horta orgânica', TRUE, TRUE, TRUE),
-- ('Tenda de Umbanda Luz Divina', 'Av. do Sol, 456, Centro, Cidade da Paz', 'Mãe Maria do Rosário', 15, 'Engajamento da comunidade', 'Nenhuma ainda', FALSE, FALSE, FALSE);