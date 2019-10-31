-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 31-Out-2019 às 02:01
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `valor` decimal(5,2) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `ordem` varchar(20) NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `titulo`, `valor`, `imagem`, `ordem`, `id_tipo`) VALUES
(1, 'produto1', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem1', 1),
(2, 'produto2', '122.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem2', 1),
(3, 'produto3', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem3', 1),
(4, 'produto4', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem4', 1),
(5, 'produto5', '4.60', 'http://fetram.com.br/api/sample-produto.png', 'ordem5', 1),
(6, 'produto6', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem6', 1),
(7, 'produto7', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem7', 1),
(8, 'produto8', '234.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem8', 1),
(9, 'produto9', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem9', 1),
(10, 'produto10', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem10', 1),
(11, 'produto11', '563.90', 'http://fetram.com.br/api/sample-produto.png', 'ordem11', 1),
(12, 'produto12', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem12', 1),
(13, 'produto13', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem13', 1),
(14, 'produto14', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem14', 1),
(15, 'produto15', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem15', 1),
(16, 'produto16', '3.90', 'http://fetram.com.br/api/sample-produto.png', 'ordem16', 1),
(17, 'produto17', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem17', 1),
(18, 'produto18', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem18', 1),
(19, 'produto19', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem19', 1),
(20, 'produto20', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem20', 1),
(21, 'produto21', '345.55', 'http://fetram.com.br/api/sample-produto.png', 'ordem21', 1),
(22, 'produto22', '2.40', 'http://fetram.com.br/api/sample-produto.png', 'ordem22', 1),
(23, 'produto23', '17.25', 'http://fetram.com.br/api/sample-produto.png', 'ordem23', 2),
(24, 'produto24', '18.00', 'http://fetram.com.br/api/sample-produto.png', 'ordem24', 2),
(25, 'produto25', '18.75', 'http://fetram.com.br/api/sample-produto.png', 'ordem25', 2),
(26, 'produto26', '19.50', 'http://fetram.com.br/api/sample-produto.png', 'ordem26', 2),
(27, 'produto27', '20.25', 'http://fetram.com.br/api/sample-produto.png', 'ordem27', 2),
(28, 'produto28', '21.00', 'http://fetram.com.br/api/sample-produto.png', 'ordem28', 2),
(29, 'produto29', '21.75', 'http://fetram.com.br/api/sample-produto.png', 'ordem29', 2),
(30, 'produto30', '22.50', 'http://fetram.com.br/api/sample-produto.png', 'ordem30', 2),
(31, 'produto31', '23.25', 'http://fetram.com.br/api/sample-produto.png', 'ordem31', 2),
(32, 'produto32', '24.00', 'http://fetram.com.br/api/sample-produto.png', 'ordem32', 2),
(33, 'produto33', '24.75', 'http://fetram.com.br/api/sample-produto.png', 'ordem33', 2),
(34, 'produto34', '25.50', 'http://fetram.com.br/api/sample-produto.png', 'ordem34', 2),
(35, 'produto35', '26.25', 'http://fetram.com.br/api/sample-produto.png', 'ordem35', 2),
(36, 'produto36', '27.00', 'http://fetram.com.br/api/sample-produto.png', 'ordem36', 2),
(37, 'produto37', '27.75', 'http://fetram.com.br/api/sample-produto.png', 'ordem37', 2),
(38, 'produto38', '28.50', 'http://fetram.com.br/api/sample-produto.png', 'ordem38', 2),
(39, 'produto39', '29.25', 'http://fetram.com.br/api/sample-produto.png', 'ordem39', 2),
(40, 'produto40', '30.00', 'http://fetram.com.br/api/sample-produto.png', 'ordem40', 2),
(41, 'produto41', '30.75', 'http://fetram.com.br/api/sample-produto.png', 'ordem41', 2),
(42, 'produto42', '31.50', 'http://fetram.com.br/api/sample-produto.png', 'ordem42', 2),
(43, 'produto43', '32.25', 'http://fetram.com.br/api/sample-produto.png', 'ordem43', 2),
(44, 'produto44', '33.00', 'http://fetram.com.br/api/sample-produto.png', 'ordem44', 2),
(45, 'produto45', '33.75', 'http://fetram.com.br/api/sample-produto.png', 'ordem45', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tp_produto`
--

CREATE TABLE `tp_produto` (
  `id` int(11) NOT NULL,
  `titulo` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tp_produto`
--

INSERT INTO `tp_produto` (`id`, `titulo`) VALUES
(1, 'tipo1'),
(2, 'tipo2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tipoproduto` (`id_tipo`);

--
-- Indexes for table `tp_produto`
--
ALTER TABLE `tp_produto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tp_produto`
--
ALTER TABLE `tp_produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fk_tipoproduto` FOREIGN KEY (`id_tipo`) REFERENCES `tp_produto` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
