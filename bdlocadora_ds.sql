-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Nov-2024 às 14:06
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdlocadora_ds`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `CatCod` int(11) NOT NULL,
  `CatNome` varchar(20) NOT NULL,
  `CatValor_km` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`CatCod`, `CatNome`, `CatValor_km`) VALUES
(1, 'Basico', '0.49'),
(2, 'Utilitario', '0.51'),
(3, 'Luxo', '0.53'),
(4, 'Especial', '0.55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `clienteCPF` int(9) NOT NULL,
  `clienteNome` varchar(40) NOT NULL,
  `clienteEnde` varchar(60) NOT NULL,
  `clienteTel` varchar(15) NOT NULL,
  `clienteCidade` varchar(60) NOT NULL,
  `clienteDataNasc` date NOT NULL,
  `clienteCNH` int(11) NOT NULL,
  `clienteCNHCat` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`clienteCPF`, `clienteNome`, `clienteEnde`, `clienteTel`, `clienteCidade`, `clienteDataNasc`, `clienteCNH`, `clienteCNHCat`) VALUES
(111222333, 'Pedro Santos', 'Rua da Praia, 789', '(21) 98765-1234', 'Rio de Janeiro', '1978-11-30', 2147483647, 'AB'),
(123456789, 'João Silva', 'Rua das Flores, 123', '(11) 98765-4321', 'São Paulo', '1985-04-12', 2147483647, 'B'),
(222333444, 'Laura Mendes', 'Avenida Brasil, 303', '(41) 91234-5678', 'Curitiba', '1988-12-10', 2147483647, 'B'),
(333444555, 'Gustavo Rocha', 'Avenida Sete, 606', '(11) 93456-7890', 'São Paulo', '1980-01-20', 2147483647, 'C'),
(444555666, 'Ana Costa', 'Rua dos Jacarandás, 101', '(31) 92345-6789', 'Belo Horizonte', '1982-05-16', 2147483647, 'B'),
(555666777, 'Lucas Almeida', 'Rua das Palmeiras, 404', '(21) 99876-5432', 'Rio de Janeiro', '1993-03-05', 2147483647, 'A'),
(666777888, 'Juliana Campos', 'Rua dos Girassóis, 707', '(31) 91567-8901', 'Belo Horizonte', '1991-06-12', 2147483647, 'B'),
(777888999, 'Carlos Pereira', 'Rua das Acácias, 202', '(61) 98765-4321', 'Brasília', '1995-07-25', 2147483647, 'C'),
(888999000, 'Fernanda Lima', 'Rua das Orquídeas, 505', '(71) 98765-6789', 'Salvador', '1987-09-17', 2147483647, 'AB'),
(987654321, 'Maria Oliveira', 'Avenida Paulista, 456', '(11) 91234-5678', 'São Paulo', '1990-08-22', 2147483647, 'A');

-- --------------------------------------------------------

--
-- Estrutura da tabela `combustível`
--

CREATE TABLE `combustível` (
  `CombTipo` char(1) NOT NULL,
  `CombNome` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `combustível`
--

INSERT INTO `combustível` (`CombTipo`, `CombNome`) VALUES
('A', 'Alcool'),
('D', 'Diesel'),
('F', 'Flex'),
('G', 'Gasolina');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `DeptoCod` int(11) NOT NULL,
  `DeptoNome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`DeptoCod`, `DeptoNome`) VALUES
(1, 'Atendimento'),
(2, 'Administrativo'),
(3, 'Financeiro'),
(4, 'Diretoria'),
(5, 'Copa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionários`
--

CREATE TABLE `funcionários` (
  `funcMatricula` int(4) NOT NULL,
  `funcNome` varchar(40) NOT NULL,
  `funcDepto` int(1) NOT NULL,
  `funcSalario` decimal(8,0) NOT NULL,
  `funcAdmissao` date NOT NULL,
  `funcFilho` int(1) NOT NULL,
  `funcSexo` varchar(1) NOT NULL,
  `funcAtivo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `funcionários`
--

INSERT INTO `funcionários` (`funcMatricula`, `funcNome`, `funcDepto`, `funcSalario`, `funcAdmissao`, `funcFilho`, `funcSexo`, `funcAtivo`) VALUES
(1001, 'Francisco de Oliveira', 1, '1800', '2001-11-20', 0, 'M', 1),
(1002, 'Ana Maria Andrade', 2, '3200', '1999-02-13', 1, 'F', 1),
(1003, 'Antônio Andrade de Oliveira', 3, '4800', '2007-11-05', 3, 'M', 1),
(1004, 'Maria Abelarda da Silva', 5, '937', '1997-03-01', 5, 'F', 1),
(1005, 'Manoel Trindade', 4, '7851', '1997-01-02', 3, 'M', 1),
(1006, 'Alexandre Barbosa', 1, '1800', '2000-06-08', 2, 'M', 1),
(1007, 'Rosana Campoy', 2, '3020', '2004-07-24', 3, 'F', 1),
(1008, 'Janaína Albuquerque', 3, '4500', '1999-03-25', 0, 'F', 1),
(1009, 'Roberto Silva Junior', 1, '1810', '2003-07-07', 0, 'M', 1),
(1010, 'Carlos Eduardo Siqueira', 4, '7890', '2009-08-04', 1, 'M', 1),
(1011, 'Heitor Sampaio', 1, '3450', '2011-03-05', 1, 'M', 1),
(1012, 'Célia Menezes', 1, '1980', '2008-07-18', 0, 'F', 1),
(1013, 'José Alves Costa', 1, '1650', '2000-09-11', 1, 'M', 1),
(1014, 'Arlinda Medeiros', 5, '937', '2000-05-03', 5, 'F', 1),
(1015, 'Josefina Sarmento', 4, '6789', '1997-01-02', 1, 'F', 1),
(1016, 'Wendell Navarro Perez', 3, '1212', '2004-04-15', 2, 'M', 1),
(1017, 'Rodolfo Rodrigues', 1, '8500', '2022-09-10', 2, 'M', 1);

--
-- Acionadores `funcionários`
--
DELIMITER $$
CREATE TRIGGER `TR_ADD_USUARIO` AFTER INSERT ON `funcionários` FOR EACH ROW BEGIN
    INSERT INTO usuários (usuarioLogin, usuarioSenha,usuarioFuncMat,usuarioSetor, usuarioStatus)
    VALUES (NEW.funcMatricula, NEW.funcAdmissao, NEW.funcMatricula, NEW.funcDepto, NEW.funcAtivo);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem_de_serviço`
--

CREATE TABLE `ordem_de_serviço` (
  `OsNum` int(11) NOT NULL,
  `OsFuncMat` int(4) NOT NULL,
  `OsClienteCPF` int(9) NOT NULL,
  `OsVeicPlaca` char(7) NOT NULL,
  `OsDataRetirada` date NOT NULL,
  `OsDataDevolucao` date DEFAULT NULL,
  `OsKMRetirada` decimal(8,2) NOT NULL,
  `OsKMDevolucao` decimal(8,2) NOT NULL,
  `OsStatus` tinyint(1) NOT NULL,
  `OsValorPgto` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ordem_de_serviço`
--

INSERT INTO `ordem_de_serviço` (`OsNum`, `OsFuncMat`, `OsClienteCPF`, `OsVeicPlaca`, `OsDataRetirada`, `OsDataDevolucao`, `OsKMRetirada`, `OsKMDevolucao`, `OsStatus`, `OsValorPgto`) VALUES
(1, 1001, 123456789, 'ABW4007', '2017-01-03', '2017-02-03', '1800.59', '2010.89', 1, '1243.00'),
(2, 1002, 987654321, 'ACZ3243', '2018-01-03', '2018-02-03', '1900.59', '2060.89', 1, '1343.00'),
(3, 1003, 111222333, 'ADE3456', '2017-04-03', '2017-09-03', '1760.59', '3000.89', 1, '4550.00'),
(4, 1004, 444555666, 'ADW2456', '2018-01-18', '2018-04-05', '1600.20', '2030.80', 1, '5600.00'),
(5, 1005, 777888999, 'ADX1473', '2018-03-04', '2018-04-04', '1100.16', '2010.89', 1, '1254.00'),
(6, 1006, 222333444, 'AQW1234', '2018-03-04', '0000-00-00', '1000.10', '0.00', 0, '3004.00'),
(7, 1007, 555666777, 'AQX3451', '2018-05-23', '0000-00-00', '3500.85', '0.00', 0, '4500.00'),
(8, 1008, 888999000, 'AQY2005', '2018-07-23', '0000-00-00', '3300.85', '0.00', 0, '1200.00'),
(9, 1009, 333444555, 'ASX3232', '2018-08-01', '0000-00-00', '2340.75', '0.00', 0, '1300.00'),
(10, 1010, 666777888, 'AVX4003', '2018-08-12', '0000-00-00', '1740.72', '0.00', 0, '2500.00');

--
-- Acionadores `ordem_de_serviço`
--
DELIMITER $$
CREATE TRIGGER `TR_ADD_STATUS` AFTER INSERT ON `ordem_de_serviço` FOR EACH ROW BEGIN
    UPDATE veículos
    SET veicStatusAlocado = 1
    WHERE veicPlaca = NEW.OsVeicPlaca;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuários`
--

CREATE TABLE `usuários` (
  `usuarioLogin` int(11) NOT NULL,
  `usuarioSenha` varchar(8) NOT NULL,
  `usuarioFuncMat` int(4) DEFAULT NULL,
  `usuarioSetor` int(11) NOT NULL,
  `usuarioStatus` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veículos`
--

CREATE TABLE `veículos` (
  `veicPlaca` char(7) NOT NULL,
  `veicMarca` varchar(15) NOT NULL,
  `veicModelo` varchar(15) NOT NULL,
  `veicCor` varchar(15) DEFAULT NULL,
  `veicAno` int(4) NOT NULL,
  `veicComb` char(1) DEFAULT NULL,
  `veicCat` int(1) DEFAULT NULL,
  `veicStatusAlocado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `veículos`
--

INSERT INTO `veículos` (`veicPlaca`, `veicMarca`, `veicModelo`, `veicCor`, `veicAno`, `veicComb`, `veicCat`, `veicStatusAlocado`) VALUES
('ABW4007', 'VW', 'Jetta', 'Preto', 2022, 'F', 3, 1),
('ACZ3243', 'VW', 'Fusca', 'Rosa', 1956, 'G', 4, 1),
('ADE3456', 'Chevrolet', 'Camaro', 'Amarelo', 2022, 'G', 4, 1),
('ADW2456', 'VW', 'Gol', 'Vermelho', 2021, 'A', 1, 1),
('ADX1473', 'Ford', 'Ka', 'Branco', 2021, 'A', 1, 1),
('AQW1234', 'Ford', 'Fusion', 'Preto', 2022, 'F', 3, 1),
('AQX3451', 'Porsche', 'Carrera', 'Preto', 2022, 'G', 4, 1),
('AQY2005', 'Chevrolet', 'S10', 'Branco', 2022, 'D', 2, 1),
('ASX3232', 'Ford', 'Ka', 'Marrom', 2022, 'F', 1, 1),
('AVX4003', 'VW', 'Amarok', 'Preto', 2022, 'D', 2, 1),
('AWQ3703', 'Chevrolet', 'Omega', 'Preto', 2022, 'G', 3, 1),
('AWS2365', 'Chevrolet', 'Cruze', 'Azul', 2022, 'F', 3, 1),
('AWV1234', 'Fiat', 'Palio', 'Branco', 2021, 'F', 1, 0),
('AWV1323', 'VW', 'Gol', 'Branco', 2022, 'F', 1, 0),
('AWY4546', 'Fiat', 'Fiorino', 'Branco', 2021, 'A', 2, 1),
('AZX3273', 'VW', 'Fox', 'Azul', 2021, 'F', 1, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CatCod`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`clienteCPF`);

--
-- Índices para tabela `combustível`
--
ALTER TABLE `combustível`
  ADD PRIMARY KEY (`CombTipo`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`DeptoCod`);

--
-- Índices para tabela `funcionários`
--
ALTER TABLE `funcionários`
  ADD PRIMARY KEY (`funcMatricula`),
  ADD KEY `funcDepto` (`funcDepto`);

--
-- Índices para tabela `ordem_de_serviço`
--
ALTER TABLE `ordem_de_serviço`
  ADD PRIMARY KEY (`OsNum`),
  ADD KEY `OsVeicPlaca` (`OsVeicPlaca`),
  ADD KEY `OsClienteCPF` (`OsClienteCPF`),
  ADD KEY `OsFuncMat` (`OsFuncMat`);

--
-- Índices para tabela `usuários`
--
ALTER TABLE `usuários`
  ADD PRIMARY KEY (`usuarioLogin`),
  ADD KEY `usuarioFuncMat` (`usuarioFuncMat`);

--
-- Índices para tabela `veículos`
--
ALTER TABLE `veículos`
  ADD PRIMARY KEY (`veicPlaca`),
  ADD KEY `veicComb` (`veicComb`),
  ADD KEY `veicCat` (`veicCat`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `funcionários`
--
ALTER TABLE `funcionários`
  ADD CONSTRAINT `funcionários_ibfk_1` FOREIGN KEY (`funcDepto`) REFERENCES `departamento` (`DeptoCod`),
  ADD CONSTRAINT `funcionários_ibfk_2` FOREIGN KEY (`funcDepto`) REFERENCES `departamento` (`DeptoCod`);

--
-- Limitadores para a tabela `ordem_de_serviço`
--
ALTER TABLE `ordem_de_serviço`
  ADD CONSTRAINT `ordem_de_serviço_ibfk_1` FOREIGN KEY (`OsVeicPlaca`) REFERENCES `veículos` (`veicPlaca`),
  ADD CONSTRAINT `ordem_de_serviço_ibfk_2` FOREIGN KEY (`OsClienteCPF`) REFERENCES `cliente` (`clienteCPF`),
  ADD CONSTRAINT `ordem_de_serviço_ibfk_3` FOREIGN KEY (`OsFuncMat`) REFERENCES `funcionários` (`funcMatricula`);

--
-- Limitadores para a tabela `usuários`
--
ALTER TABLE `usuários`
  ADD CONSTRAINT `usuários_ibfk_1` FOREIGN KEY (`usuarioFuncMat`) REFERENCES `funcionários` (`funcMatricula`);

--
-- Limitadores para a tabela `veículos`
--
ALTER TABLE `veículos`
  ADD CONSTRAINT `veículos_ibfk_1` FOREIGN KEY (`veicComb`) REFERENCES `combustível` (`CombTipo`),
  ADD CONSTRAINT `veículos_ibfk_2` FOREIGN KEY (`veicCat`) REFERENCES `categoria` (`CatCod`),
  ADD CONSTRAINT `veículos_ibfk_3` FOREIGN KEY (`veicComb`) REFERENCES `combustível` (`CombTipo`),
  ADD CONSTRAINT `veículos_ibfk_4` FOREIGN KEY (`veicCat`) REFERENCES `categoria` (`CatCod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
