-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17-Dez-2020 às 04:20
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `codfuncio` int(11) NOT NULL,
  `nomefuncio` varchar(255) NOT NULL,
  `prof` int(11) DEFAULT NULL,
  `coordinfo` int(11) DEFAULT NULL,
  `coordensinomedio` int(11) DEFAULT NULL,
  `coordpedag` int(11) DEFAULT NULL,
  `coordbiblio` int(11) DEFAULT NULL,
  `diretor` int(11) DEFAULT NULL,
  `coordadm` int(11) DEFAULT NULL,
  `coordrh` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codfuncio`, `nomefuncio`, `prof`, `coordinfo`, `coordensinomedio`, `coordpedag`, `coordbiblio`, `diretor`, `coordadm`, `coordrh`) VALUES
(1, 'Amanda', 1, 2, 3, 1, NULL, NULL, NULL, NULL),
(2, 'Carlos', 2, 2, 3, 1, NULL, 4, NULL, 3),
(3, 'Agda', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Célia', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Cíntia', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Sirlei', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codfuncio`),
  ADD KEY `prof` (`prof`),
  ADD KEY `coordinfo` (`coordinfo`),
  ADD KEY `coordpedag` (`coordpedag`),
  ADD KEY `coordensinomedio` (`coordensinomedio`),
  ADD KEY `coordbiblio` (`coordbiblio`),
  ADD KEY `diretor` (`diretor`),
  ADD KEY `coordadm` (`coordadm`),
  ADD KEY `coordrh` (`coordrh`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codfuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`prof`) REFERENCES `funcionario` (`codfuncio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`coordinfo`) REFERENCES `funcionario` (`codfuncio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_3` FOREIGN KEY (`coordensinomedio`) REFERENCES `funcionario` (`codfuncio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_4` FOREIGN KEY (`coordpedag`) REFERENCES `funcionario` (`codfuncio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_5` FOREIGN KEY (`coordbiblio`) REFERENCES `funcionario` (`codfuncio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_6` FOREIGN KEY (`diretor`) REFERENCES `funcionario` (`codfuncio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_7` FOREIGN KEY (`coordadm`) REFERENCES `funcionario` (`codfuncio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_8` FOREIGN KEY (`coordrh`) REFERENCES `funcionario` (`codfuncio`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
