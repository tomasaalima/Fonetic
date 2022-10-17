-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 16/10/2022 às 22:18
-- Versão do servidor: 10.6.7-MariaDB-2ubuntu1.1
-- Versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fonetic`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alternativa`
--

CREATE TABLE `alternativa` (
  `id` int(6) NOT NULL,
  `pronuncia` varchar(20) NOT NULL,
  `validacao` varchar(3) NOT NULL,
  `palavra_id` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `alternativa`
--
SELECT * FROM alternativa;
INSERT INTO `alternativa` (`id`, `pronuncia`, `validacao`, `palavra_id`) VALUES
(1, 'eɪdʒ', 'yes', 1),
(2, 'aig', 'no', 1),
(5, 'kaʊ', 'yes', 2),
(6, 'Kou', 'no', 2),
(7, 'jɛs', 'yes', 3),
(8, 'ias', 'no', 3),
(9, 'flaʊɚ', 'yes', 4),
(10, 'flou3r', 'no', 4),
(11, 'lʊk', 'yes', 5),
(12, 'lok', 'no', 5),
(13, 'ɹæbɪt', 'yes', 6),
(14, 'raɛbit', 'no', 6),
(15, 'spaɪdə', 'yes', 7),
(16, 'ispaider', 'no', 7),
(19, 'teɪbəɫ', 'yes', 8),
(20, 'taɪblɛ', 'no', 8),
(21, 'wɑt', 'yes', 9),
(22, 'uot', 'no', 9),
(23, 'wɑt', 'yes', 10),
(24, 'uotɪ', 'no', 10),
(25, '/tʃeɪn/', 'yes', 11),
(26, '/tchɪen/', 'no', 11),
(27, '/fɑːðə(r)/', 'yes', 12),
(28, '/fəddər/', 'no', 12),
(29, '/dʒæm/', 'yes', 13),
(30, '/djæm/', 'no', 13),
(31, '/naɪvz/', 'yes', 14),
(32, '/navɝz/ ', 'no', 14),
(33, '/maʊs/', 'yes', 15),
(34, '/maʊsɝ/', 'no', 15),
(35, '/ræŋk/', 'yes', 16),
(36, '/ræk/', 'no', 16),
(37, '/seɪdʒ/', 'yes', 17),
(38, '/səɪdɛ/', 'no', 17),
(39, '/sɔː/', 'yes', 18),
(40, '/sô/', 'no', 18),
(41, '/skwɒʃ/', 'yes', 19),
(42, '/squoshʃ/', 'no', 19),
(43, '/rɔːt/', 'yes', 20),
(44, '/rðuːt/', 'no', 20),
(45, '/əˈbaʊt/', 'yes', 21),
(46, '/abəut/', 'no', 21),
(47, '/æktʃuəɫ/', 'yes', 22),
(48, '/actʊol/', 'no', 22),
(49, '/tʃuz/', 'yes', 23),
(50, '/tchouzɛ/', 'no', 23),
(51, '/tʃɝtʃ/', 'yes', 24),
(52, '/tʊrCh/', 'no', 24),
(53, '/d͡ʒæɡ.wɑɹ/', 'yes', 25),
(54, '/jaɡˌwär/', 'no', 25),
(55, '/pjʊr/', 'yes', 26),
(56, '/pyo͝r/', 'no', 26),
(57, '/ʃiːp/', 'yes', 27),
(58, '/chɪp/', 'no', 27),
(59, '/sɪtɪŋ/', 'yes', 28),
(60, '/cɪtɪng/', 'no', 28),
(61, '/θɹu/', 'yes', 29),
(62, '/thru/', 'no', 29),
(63, '/vɪʒən/', 'yes', 30),
(64, '/vigəm/', 'no', 30);

-- --------------------------------------------------------

--
-- Estrutura para tabela `palavra`
--

CREATE TABLE `palavra` (
  `id` int(6) NOT NULL,
  `palavra` varchar(20) NOT NULL,
  `som` varchar(20) NOT NULL,
  `nivel` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `palavra`
--

INSERT INTO `palavra` (`id`, `palavra`, `som`, `nivel`) VALUES
(1, 'AGE', 'age.mp3', 'EASY'),
(2, 'COW', 'cow.mp3', 'EASY'),
(3, 'EYES', 'eyes.mp3', 'EASY'),
(4, 'FLOWER', 'flower.mp3', 'EASY'),
(5, 'LOOK', 'look.mp3', 'EASY'),
(6, 'RABBIT', 'rabbit.mp3', 'EASY'),
(7, 'SPIDER', 'spider.mp3', 'EASY'),
(8, 'TABLE', 'table.mp3', 'EASY'),
(9, 'WATT', 'watt.mp3', 'EASY'),
(10, 'WHAT', 'what.mp3', 'EASY'),
(11, 'CHAIN', 'chain.mp3', 'HARD'),
(12, 'FATHER', 'father.mp3', 'HARD'),
(13, 'JAM', 'jam.mp3', 'HARD'),
(14, 'KNIVES', 'knives.mp3', 'HARD'),
(15, 'MOUSE', 'mouse.mp3', 'HARD'),
(16, 'RANKER', 'ranker.mp3', 'HARD'),
(17, 'SAGE', 'sage.mp3', 'HARD'),
(18, 'SAW', 'saw.mp3', 'HARD'),
(19, 'SQUASH', 'squash.mp3', 'HARD'),
(20, 'WROUGHT', 'wrought.mp3', 'HARD'),
(21, 'ABOUT', 'about.mp3', 'EXPERT'),
(22, 'ACTUAL', 'actual.mp3', 'EXPERT'),
(23, 'CHOOSE', 'choose.mp3', 'EXPERT'),
(24, 'CHURCH', 'church.mp3', 'EXPERT'),
(25, 'JAGUAR', 'jaguar.mp3', 'EXPERT'),
(26, 'PURE', 'pure.mp3', 'EXPERT'),
(27, 'SHEEP', 'sheep.mp3', 'EXPERT'),
(28, 'SITTING', 'sitting.mp3', 'EXPERT'),
(29, 'THROUGH', 'through.mp3', 'EXPERT'),
(30, 'VISION', 'vision.mp3', 'EXPERT');

--
-- Índices para tabelas despejadas
--

-- Consulta realizada para testar a chave estrangeira
SELECT palavra.palavra  as 'palavra',alternativa.pronuncia as 'pronuncia', alternativa.validacao as 'correta?'
FROM palavra
INNER JOIN alternativa ON palavra.id=alternativa.palavra_id;
--
-- Índices de tabela `alternativa`
--
ALTER TABLE `alternativa`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `palavra`
--
ALTER TABLE `palavra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--
-- Adicionando chave estrangeira na table alternativa
ALTER TABLE alternativa
	ADD FOREIGN KEY (palavra_id) REFERENCES palavra(id);
--
-- AUTO_INCREMENT de tabela `alternativa`
--
ALTER TABLE `alternativa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

-- Inserindo chave estrangeira na tabela 
--
-- AUTO_INCREMENT de tabela `palavra`
--
ALTER TABLE `palavra`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
