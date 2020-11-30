-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Nov-2020 às 02:00
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `nerdweb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `url_noticia` varchar(200) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `conteudo` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`id`, `data`, `url_noticia`, `titulo`, `conteudo`) VALUES
(1, '2020-11-28', 'visualizarNoticia.php?id=1', 'As verdes montanhas do Paraguai', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam neque turpis, pharetra sit amet magna et, volutpat ullamcorper est. Suspendisse nec quam vel libero vulputate tincidunt ac at quam. Proin pretium fringilla rutrum. Sed ultrices purus vitae est euismod vehicula. Cras finibus ex sed est elementum, et vestibulum velit egestas. Ut aliquet purus at orci gravida pharetra. Aenean eu imperdiet orci, eget interdum nulla. Vestibulum imperdiet hendrerit tincidunt.\r\n\r\nMorbi pellentesque felis et nunc hendrerit, sed malesuada mi vehicula. Donec lobortis ligula magna, vehicula dapibus arcu molestie ac. Nunc elementum velit at vehicula tempor. Curabitur vitae laoreet leo, eu molestie turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id luctus augue, quis facilisis enim. Ut consequat lorem urna, id eleifend dolor lacinia vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eleifend quam in quam blandit sagittis. Nunc suscipit placerat molestie. Praesent egestas fringilla ligula non fringilla. Nullam ac accumsan neque.\r\n\r\nPellentesque id elit sed nulla blandit aliquam. Nunc eget blandit ligula. Nulla erat lorem, mattis in scelerisque et, gravida sit amet diam. Praesent vitae nunc ipsum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed justo justo, lobortis a cursus vel, laoreet id erat. Vestibulum efficitur eget tellus in tincidunt. Donec euismod eros metus, in feugiat massa mattis sed. Nulla facilisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eros est, dictum quis nisl ac, aliquam ultricies dui. Sed luctus, magna et tincidunt auctor, velit ex semper diam, non eleifend ligula odio et urna.\r\n\r\nMauris ultricies placerat fringilla. Nullam at leo quis tellus blandit tempus ut sit amet nisi. Phasellus elementum, lectus quis placerat aliquam, nunc dolor finibus risus, id consectetur tortor purus vel orci. Integer iaculis et diam id tristique. Cras lacinia ligula non ante commodo placerat. Proin scelerisque tempor augue ut malesuada. Mauris nec nunc dui. Nullam pulvinar nisl vel varius consectetur. Praesent purus augue, ultrices vel lacus id, dictum bibendum diam. Morbi finibus cursus leo, in porttitor justo condimentum eget. Aenean volutpat velit at semper facilisis.\r\n\r\nAenean iaculis id eros vitae accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam molestie eleifend neque, molestie interdum erat pharetra sit amet. Vestibulum risus orci, posuere quis laoreet vel, congue placerat risus. Morbi ante quam, facilisis id lacus blandit, consequat egestas felis. Integer congue vel massa quis viverra. Phasellus venenatis sed diam eu eleifend. Vivamus vel fermentum nisi. Nunc varius est vitae nulla maximus hendrerit. Cras quis arcu at massa ultrices vestibulum at a velit. Phasellus laoreet tempus placerat. Donec sollicitudin lorem in ex luctus eleifend. Integer ultricies leo nisl, eu congue elit facilisi.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
