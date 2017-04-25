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
-- Database: `apkma792_tvopetbr`
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
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `arquivo`
--

INSERT INTO `arquivo` (`codigo`, `arquivo`, `usuario`, `data`) VALUES
(133, 'images/9e1fd03aa76c61f23489c1fedf944f3d.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:11:27'),
(134, 'images/2ede3c26981b830838ee5587791420f6.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:11:34'),
(139, 'images/cb02da56268dcd28af6b9690c2ff43b6.jpg', 'arllanandrade@opet.com.br', '2017-04-11 11:03:17'),
(104, 'images/87beb5e51c3f4bd93d3e17dd65b84bc9.jpg', 'arllanandrade@opet.com.br', '2017-03-02 11:42:49'),
(132, 'images/5552eae70970f2959b06a7376bbe5b02.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:11:19'),
(103, 'images/bde5e6ddf1f088c2a1ac4da376b2c852.jpg', 'arllanandrade@opet.com.br', '2017-02-15 09:22:43'),
(108, 'images/7e8247a7a0f88e7ffe1799f319891ac1.jpg', 'arllanandrade@opet.com.br', '2017-03-14 14:55:53'),
(136, 'images/4984dae1a1049659d62604ba4a180160.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:11:47'),
(91, 'images/33ef38b585c6064f815ffe8705c983b4.jpg', 'arllanandrade@opet.com.br', '2016-12-15 14:04:22'),
(137, 'images/04e9d3d0b72cab6e950b43f85745ed17.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:11:53'),
(117, 'images/13c27fb9db9a56193e4cab589774fb48.jpg', 'arllanandrade@opet.com.br', '2017-03-30 14:28:08'),
(135, 'images/fef772e63c031cab45ab188d7ec144b4.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:11:40'),
(131, 'images/3b5bd83273aa8bf106d70898fa9f5475.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:11:14'),
(130, 'images/2dfd6032a3746242e0efe0bec5b9510c.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:11:07'),
(129, 'images/6939e6c0eef662f7ebdd007d7b02451a.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:11:01'),
(140, 'images/36b898bb1d6ef481d9c77a747a4fb91c.jpg', 'arllanandrade@opet.com.br', '2017-04-24 14:31:11'),
(127, 'images/3c7c3bc4d4cd36b826a1b5f827ba7e7d.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:10:51'),
(138, 'images/c41abc2c2e26e17d6deb5078fe6741a3.jpg', 'arllanandrade@opet.com.br', '2017-04-10 18:11:59');

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(9, 'sara', 'saraleticia@opet.com.br', '6955', 1, 1, '2016-02-20 20:48:44', NULL),
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
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `niveis_acessos`
--
ALTER TABLE `niveis_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `recados`
--
ALTER TABLE `recados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
