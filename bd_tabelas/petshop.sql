-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 13/05/2025 às 18:20
-- Versão do servidor: 9.1.0
-- Versão do PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `petshop`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `animais`
--

DROP TABLE IF EXISTS `animais`;
CREATE TABLE IF NOT EXISTS `animais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_pet` varchar(200) DEFAULT NULL,
  `data_nascimento` varchar(20) DEFAULT NULL,
  `sexo` varchar(2) DEFAULT NULL,
  `altura` varchar(20) DEFAULT NULL,
  `peso` varchar(20) DEFAULT NULL,
  `especie` varchar(20) DEFAULT NULL,
  `raca` varchar(50) DEFAULT NULL,
  `pelagem` varchar(25) DEFAULT NULL,
  `porte` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animais`
--

INSERT INTO `animais` (`id`, `nome_pet`, `data_nascimento`, `sexo`, `altura`, `peso`, `especie`, `raca`, `pelagem`, `porte`) VALUES
(8, 'Lion', '12092023', 'M', '40', '5', 'Felino', 'Siames', 'Curto', 'Medio'),
(9, 'Frajola', '12092023', 'M', '40', '5', 'Felino', 'siames', 'curto', 'medio'),
(10, 'Tom', '12082019', 'M', '49', '5', 'Felino', 'Persa', 'Longo', 'Medio'),
(11, 'Scooby', '20/04/2018', 'M', '90', '30', 'Canideo', 'Fila', 'medio', 'Grande'),
(14, 'Mimi', '2024-06-13', 'F', '30', '3', 'Felino', 'Angora', 'medio', 'Pequeno'),
(15, 'Fofucha', '2022-11-13', 'F', '40', '4', 'Felino', 'Siames', 'Longo', 'Medio'),
(16, 'Mia', '2025-02-04', 'F', '30', '3', 'Felino', 'Angora', 'Longo', 'Pequeno');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargos`
--

DROP TABLE IF EXISTS `cargos`;
CREATE TABLE IF NOT EXISTS `cargos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_cargo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `cargos`
--

INSERT INTO `cargos` (`id`, `nome_cargo`) VALUES
(6, 'gerente'),
(7, 'assistente'),
(8, 'gerente'),
(9, 'assistente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `endereco` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `telefone`, `cpf`, `email`, `endereco`) VALUES
(12, 'João', '119764534', '345.678.965-46', 'joao@gmail.com', '02639000,Jardim Pedra Branca,Estrada Santa Inês,São Paulo,SP,32'),
(13, 'Mauricio', '(11) 98786-2435', '477.366.109-83', 'anjos.mauricio@outlook.com', '07743020,Laranjeiras,Rua Benedito Daniel de Souza,Caieiras,SP,132'),
(14, 'Ana', '(11) 89783-4567', '289.377.878-11', 'ana@outlook.com', '07726555,Morro Grande,Avenida Doutor Olindo Dártora,Caieiras,SP,456'),
(15, 'Carlos', '(11) 89734-5678', '392.499.098-22', 'Carlos@outlook.com', '05223050,Jardim Adelfiore,Rua Cavalo Marinho,São Paulo,SP,546'),
(16, 'Daniela', '(11) 97865-3245', '778.636.523-04', 'daniella@outlook.com', '07734040,Santa Inês,Rua Timburi,Caieiras,SP,90'),
(17, 'Roger', '(11) 98456-7893', '344.599.082-55', 'roger@outlook.com', '05525080,Jardim Jussara,Estrada do Jaguaré,São Paulo,SP,32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente_animal`
--

DROP TABLE IF EXISTS `cliente_animal`;
CREATE TABLE IF NOT EXISTS `cliente_animal` (
  `cliente_id` int NOT NULL,
  `animal_id` int NOT NULL,
  PRIMARY KEY (`animal_id`,`cliente_id`),
  KEY `cliente_animal_ibfk_2` (`cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `cliente_animal`
--

INSERT INTO `cliente_animal` (`cliente_id`, `animal_id`) VALUES
(12, 9),
(13, 8),
(14, 14),
(14, 16),
(16, 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_fantasia` varchar(45) NOT NULL,
  `telefone` varchar(16) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `nome_fantasia`, `telefone`, `email`, `cnpj`) VALUES
(5, 'mauricio', '(12) 3432-1234', 'daniela@outlook.com', '90.876.543/5678');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `endereco` varchar(300) DEFAULT NULL,
  `cargo_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cargo_id` (`cargo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `telefone`, `cpf`, `email`, `endereco`, `cargo_id`) VALUES
(4, 'Mauricio', NULL, NULL, 'anjos.mauricio@outlook.com', NULL, NULL),
(6, 'daniela', '11987876562', '766877154322', 'daniela@outlook.com', 'rua andorinha', 6),
(7, 'daniela', '11987876562', '766877154322', 'daniela@outlook.com', 'rua andorinha', 6),
(8, 'joão ', '(11) 99084-4378', '233.477.878-11', 'anjos@outlook.com', '07743020,Laranjeiras,Rua Benedito Daniel de Souza,Caieiras,SP,232', 8),
(9, 'Ana', '(11) 89736-4567', '345.678.123-44', 'ana@outlook.com', '07726555,Morro Grande,Avenida Doutor Olindo Dártora,Caieiras,SP,546', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ordem_de_servico`
--

DROP TABLE IF EXISTS `ordem_de_servico`;
CREATE TABLE IF NOT EXISTS `ordem_de_servico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_Inicio` date DEFAULT NULL,
  `cliente_id` int DEFAULT NULL,
  `animal_id` int DEFAULT NULL,
  `funcionario_id` int DEFAULT NULL,
  `servico_id` int DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_termino` time DEFAULT NULL,
  `duracao` varchar(100) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Aguardando atendimento',
  `data_Termino` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ordem_de_servico_ibfk_1` (`cliente_id`),
  KEY `ordem_de_servico_ibfk_2` (`animal_id`),
  KEY `ordem_de_servico_ibfk_3` (`funcionario_id`),
  KEY `ordem_de_servico_ibfk_4` (`servico_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `ordem_de_servico`
--

INSERT INTO `ordem_de_servico` (`id`, `data_Inicio`, `cliente_id`, `animal_id`, `funcionario_id`, `servico_id`, `hora_inicio`, `hora_termino`, `duracao`, `status`, `data_Termino`) VALUES
(20, '2025-05-30', 12, 9, 7, 5, '12:00:00', '13:00:00', '1 hora', 'Concluído', '2025-05-30'),
(21, '2025-05-30', 13, 8, 8, 5, '17:22:00', '18:22:00', '1 hora', 'Aguardando atendimento', '2025-05-30'),
(22, '2025-05-12', 12, 9, 7, 9, '18:34:00', '19:34:00', '1 hora', 'Aguardando atendimento', '2025-05-12'),
(23, '2025-05-14', 13, 8, 8, 6, '15:43:00', '16:43:00', '1 hora', 'Aguardando atendimento', '2025-05-14'),
(24, '2025-05-13', 12, 9, 7, 5, '14:22:00', '15:22:00', '1 hora', 'Aguardando atendimento', '2025-05-13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `quantidade` int NOT NULL,
  `data_validade` date NOT NULL,
  `valor_compra` decimal(10,2) NOT NULL,
  `valor_venda` decimal(10,2) NOT NULL,
  `cod_barras` varchar(255) NOT NULL,
  `fornecedor_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produtos_ibfk_1` (`fornecedor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `quantidade`, `data_validade`, `valor_compra`, `valor_venda`, `cod_barras`, `fornecedor_id`) VALUES
(10, 'shampoo', 10, '2025-05-30', 20.00, 30.00, '9876545678900987', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos_venda`
--

DROP TABLE IF EXISTS `produtos_venda`;
CREATE TABLE IF NOT EXISTS `produtos_venda` (
  `venda_id` int DEFAULT NULL,
  `produto_id` int DEFAULT NULL,
  `quantidade_vendida` int DEFAULT NULL,
  KEY `produtos_venda_ibfk_1` (`venda_id`),
  KEY `produtos_venda_ibfk_2` (`produto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `produtos_venda`
--

INSERT INTO `produtos_venda` (`venda_id`, `produto_id`, `quantidade_vendida`) VALUES
(15, 10, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `racas`
--

DROP TABLE IF EXISTS `racas`;
CREATE TABLE IF NOT EXISTS `racas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `noma_raca` varchar(100) DEFAULT NULL,
  `especie` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `racas`
--

INSERT INTO `racas` (`id`, `noma_raca`, `especie`) VALUES
(15, 'Siames', 'Felino'),
(16, 'Angora', 'Felino'),
(17, 'Pastor Alemão', 'Canideos'),
(18, 'Doberman', 'Canideos'),
(19, 'Fila', 'Canideo'),
(21, 'Persa', 'Felino');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

DROP TABLE IF EXISTS `servicos`;
CREATE TABLE IF NOT EXISTS `servicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_servico` varchar(200) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome_servico`, `valor`) VALUES
(5, 'tosa', 100),
(6, 'banho', 50),
(8, 'tosa', 200),
(9, 'Aparar unhas', 80);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico_venda`
--

DROP TABLE IF EXISTS `servico_venda`;
CREATE TABLE IF NOT EXISTS `servico_venda` (
  `venda_id` int DEFAULT NULL,
  `servico_id` int DEFAULT NULL,
  `quantidade_vendida` int DEFAULT NULL,
  KEY `venda_id` (`venda_id`),
  KEY `servico_id` (`servico_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `servico_venda`
--

INSERT INTO `servico_venda` (`venda_id`, `servico_id`, `quantidade_vendida`) VALUES
(16, 5, 2),
(16, 6, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_pelagem`
--

DROP TABLE IF EXISTS `tipo_pelagem`;
CREATE TABLE IF NOT EXISTS `tipo_pelagem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tipo_pelagem`
--

INSERT INTO `tipo_pelagem` (`id`, `tipo`) VALUES
(1, 'curto'),
(2, 'medio'),
(11, 'Longo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_porte`
--

DROP TABLE IF EXISTS `tipo_porte`;
CREATE TABLE IF NOT EXISTS `tipo_porte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tipo_porte`
--

INSERT INTO `tipo_porte` (`id`, `tipo`) VALUES
(5, 'Pequeno'),
(7, 'Medio'),
(9, 'Grande');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `senhaAcesso` varchar(255) NOT NULL DEFAULT 'admin',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`, `senhaAcesso`) VALUES
(1, 'daniela_batalha@outlook.com', 'dani090115', 'dani090115'),
(22, 'anjos.mauricio@outlook.com', '12345678', '12345678'),
(23, 'teste@gmail.com', '12345678', '12345678'),
(24, 'ana@outlook.com', '12345678', '12345678');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

DROP TABLE IF EXISTS `vendas`;
CREATE TABLE IF NOT EXISTS `vendas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `quantidade_produtos` int DEFAULT NULL,
  `metodos_pagamento` text,
  `parcelas` varchar(3) DEFAULT NULL,
  `data_venda` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `vendas`
--

INSERT INTO `vendas` (`id`, `valor_total`, `quantidade_produtos`, `metodos_pagamento`, `parcelas`, `data_venda`) VALUES
(15, 60.00, 2, 'Crédito', '2x', '2025-05-12 18:55:31'),
(16, 300.00, 4, 'Crédito', '2x', '2025-05-13 17:23:55');

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cliente_animal`
--
ALTER TABLE `cliente_animal`
  ADD CONSTRAINT `cliente_animal_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `animais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente_animal_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`);

--
-- Restrições para tabelas `ordem_de_servico`
--
ALTER TABLE `ordem_de_servico`
  ADD CONSTRAINT `ordem_de_servico_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordem_de_servico_ibfk_2` FOREIGN KEY (`animal_id`) REFERENCES `animais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordem_de_servico_ibfk_3` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordem_de_servico_ibfk_4` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `produtos_venda`
--
ALTER TABLE `produtos_venda`
  ADD CONSTRAINT `produtos_venda_ibfk_1` FOREIGN KEY (`venda_id`) REFERENCES `vendas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produtos_venda_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `servico_venda`
--
ALTER TABLE `servico_venda`
  ADD CONSTRAINT `servicos_venda_ibfk_1` FOREIGN KEY (`venda_id`) REFERENCES `vendas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `servicos_venda_ibfk_2` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
