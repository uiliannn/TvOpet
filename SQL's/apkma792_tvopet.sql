-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 25-Abr-2017 às 16:05
-- Versão do servidor: 5.5.51-38.2
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apkma792_tvopet`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivo`
--

CREATE TABLE IF NOT EXISTS `arquivo` (
  `codigo` int(11) NOT NULL,
  `arquivo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `arquivo`
--

INSERT INTO `arquivo` (`codigo`, `arquivo`, `usuario`, `data`) VALUES
(134, 'images/34d6d9522e12056d01e157fb6424b08a.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:16:06'),
(133, 'images/cf01321c2b459b94baa62a4987405d50.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:16:02'),
(130, 'images/1ed84fe4433042c06e474f7230370c2a.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:15:49'),
(114, 'images/e284fdd0448385cda2b2eddd7b587e22.jpg', 'arllanandrade@opet.com.br', '2017-03-30 14:27:31'),
(136, 'images/73f8bbd482af8c3cdcc47274e17effcc.jpg', 'arllanandrade@opet.com.br', '2017-04-11 11:03:08'),
(100, 'images/f863d3610de1ca77bf1fa399213f44a4.jpg', 'arllanandrade@opet.com.br', '2017-02-15 09:22:36'),
(131, 'images/8280c822f60023d1fa71049e2098807c.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:15:54'),
(132, 'images/10c25cc14a169818d251e8729a8b1655.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:15:58'),
(129, 'images/ecae19944817b59beddc5a4c4748c768.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:15:44'),
(106, 'images/00047ef1e234352fff7e98a4ceba5266.jpg', 'arllanandrade@opet.com.br', '2017-03-14 14:55:43'),
(101, 'images/57b08780063593efd294d30c87109e83.jpg', 'arllanandrade@opet.com.br', '2017-02-20 18:01:12'),
(128, 'images/adaacd17c8d011c998ba7b33499e1368.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:15:38'),
(127, 'images/a12aab927b61b39798a1968610773562.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:15:27'),
(103, 'images/04b7dab143ec50e6d2859c4e594c1d9c.jpg', 'arllanandrade@opet.com.br', '2017-03-02 11:41:53'),
(126, 'images/a58f401cd05a96a21c47b7eca802c3cd.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:15:23'),
(125, 'images/e66d4f55b34f592374097c9fc6f28259.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:15:19'),
(137, 'images/86ca5c618b49d599d8c63c69bc524a4b.jpg', 'arllanandrade@opet.com.br', '2017-04-24 14:31:19'),
(123, 'images/14bed412fed5ccab47cd5c13d009d06b.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:15:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `niveis_acessos`
--

CREATE TABLE IF NOT EXISTS `niveis_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET latin1 NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `niveis_acessos`
--

INSERT INTO `niveis_acessos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Administrador', '2016-02-19 00:00:00', NULL),
(2, 'Colaborador', '2016-02-19 00:00:00', NULL),
(3, 'Cliente', '2016-02-19 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `recados`
--

CREATE TABLE IF NOT EXISTS `recados` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) CHARACTER SET latin1 NOT NULL,
  `email` varchar(220) CHARACTER SET latin1 NOT NULL,
  `recado` text CHARACTER SET latin1 NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) CHARACTER SET latin1 NOT NULL,
  `email` varchar(520) CHARACTER SET latin1 NOT NULL,
  `senha` varchar(50) CHARACTER SET latin1 NOT NULL,
  `situacoe_id` int(11) NOT NULL DEFAULT '0',
  `niveis_acesso_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `situacoe_id`, `niveis_acesso_id`, `created`, `modified`) VALUES
(10, 'uilian', 'uiliaannn@gmail.com', 'filipenses413', 1, 1, '2016-11-01 00:00:00', NULL),
(11, 'Arllan', 'arllanandrade@opet.com.br', '0123456', 1, 1, '2016-11-25 14:57:13', NULL),
(12, 'caliari', 'caliari@opet.com.br', '0123456', 1, 1, '2016-11-25 14:57:28', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arquivo`
--
ALTER TABLE `arquivo`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `niveis_acessos`
--
ALTER TABLE `niveis_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recados`
--
ALTER TABLE `recados`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arquivo`
--
ALTER TABLE `arquivo`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `niveis_acessos`
--
ALTER TABLE `niveis_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `recados`
--
ALTER TABLE `recados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
