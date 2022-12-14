-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 28-Nov-2022 às 23:57
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vapor`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES
(1, 'Matheus de Barros Fagionato', '42381546812', 'mdbf42@gmail.com', 'teste1'),
(2, 'Roberto Arnaldo', '80583687091', 'mdbf43@gmail.com', 'teste2'),
(3, 'Arthud Dent', '73030876055', 'mdbf44@gmail.com', 'teste3'),
(4, 'Seu Cebola', '07924654070', 'mdbf45@gmail.com', 'teste4'),
(5, 'Ronaldo Fenômeno', '01547105046', 'mdbf46@gmail.com', 'teste5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `assunto` varchar(20) NOT NULL,
  `mensagem` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `arquivos`
--

INSERT INTO `arquivos` (`id`, `nome`, `email`, `assunto`, `mensagem`) VALUES
(1, 'wenderson', 'teste', 'critica', 'sçfjqwçgj~ewgweg'),
(2, 'teste arquivar e suporte', 'arquivoesuporte@gmail.com', 'elogio', 'Suporte e Arquivo'),
(3, 'wenderson', 'wenderson@gmail.comewwmçg', 'elogio', 'rytt,~5kle]´~pljçku7'),
(4, 'wenderson', 'wenderson@gmail.com', 'duvida', 'h~etpkl~´pjk5pjklm'),
(5, 'Matheus', 'wendersonsantos02@gmail.com', 'critica', 'Wenderson Rocha sla '),
(6, 'wenderson', 'wenderson@gmail.com', 'sugestao', 'tyrkopkijuh'),
(7, 'Ricardo', 'RICARDO@TESTE.COM', 'critica', 'snldwgbjhçjhgrçewrjç;~jhreh~re,kmh'),
(8, 'matheus', 'matheus@gmail.com', 'elogio', 'Wenderson Santos'),
(9, 'wenderson', 'teste@gamil.com', 'elogio', 'rtpwjhçwjçghowejçh'),
(10, 'wenderson', 'wenderson@gmail.com', 'critica', 'wdjjvg´wjegpwe'),
(11, 'Ruan', 'ruan@teste.com', 'critica', 'TA FEIO O SUPORTE'),
(12, 'wenderson', 'wwenderrson@gmail.com', 'critica', 'sffgsffsccffsff'),
(13, 'matheus Barros', 'MATHEUSBARROS@GMAIL.COM', 'elogio', 'OTIMO TRABALHO, MUITO BEM FEITO, PASSOU '),
(14, 'matheus Barros', 'MATHEUSBARROS@GMAIL.COM', 'critica', 'tente novamente ano q vem '),
(15, 'matheus Barros', 'MATHEUSBARROS@GMAIL.COM', 'elogio', 'se quiser o thales de volta pagar $500 reais'),
(16, 'matheus Barros', 'MATHEUSBARROS@GMAIL.COM', 'elogio', 'DEIXA O LUAN CRIAR UM NOVO ARQUIVO'),
(17, 'matheus Barros', 'MATHEUSBARROS@GMAIL.COM', 'duvida', 'DEVOLVE O THALES\r\nE O JHE\r\nE JÃO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(14, 'AÇÃO'),
(18, 'AMIZADE'),
(17, 'ARCADE'),
(15, 'AVENTURA'),
(16, 'CORRIDA'),
(19, 'ESPORTES'),
(23, 'FPS'),
(24, 'MOBA'),
(20, 'PESCARIA'),
(25, 'RPG'),
(21, 'SIMULADOR'),
(22, 'SUSPENSE'),
(13, 'TERROR'),
(26, 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `idioma`
--

CREATE TABLE `idioma` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `idioma`
--

INSERT INTO `idioma` (`id`, `nome`) VALUES
(1, 'Inglês'),
(2, 'Espanhol'),
(4, 'Chines'),
(8, 'Indonésio'),
(9, 'Português'),
(10, 'Russo'),
(11, 'Bengali'),
(12, 'Árabe padrão'),
(13, 'Francês'),
(14, 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo`
--

CREATE TABLE `jogo` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor` int(11) NOT NULL,
  `descricao` longtext DEFAULT NULL,
  `imagem_url` varchar(200) NOT NULL,
  `video_url` varchar(200) DEFAULT NULL,
  `data_lancamento` date NOT NULL,
  `desenvolvedora` varchar(100) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo`
--

INSERT INTO `jogo` (`id`, `nome`, `valor`, `descricao`, `imagem_url`, `video_url`, `data_lancamento`, `desenvolvedora`, `id_categoria`) VALUES
(1, 'MINECRAFT', 29, 'Jogo Quadrado', 'https://files.tecnoblog.net/wp-content/uploads/2019/09/minecraft-001.jpg', 'https://www.youtube.com/watch?v=jMe3tdyjouM', '2022-09-09', 'Mojang', 15),
(2, 'THE LAST OF US', 30, 'Jogo de Zumbi', 'https://upload.wikimedia.org/wikipedia/pt/b/be/The_Last_of_Us_capa.png', 'https://www.youtube.com/watch?v=IpjRuuFEPMk', '2022-10-09', 'Naughty Dog', 13),
(3, 'ELDEN RING', 300, 'Jogo Maluco', 'https://files.tecnoblog.net/wp-content/uploads/2022/03/elden-ring-4-700x394.jpg', 'https://www.youtube.com/watch?v=gUPUI4NqQHc', '2022-10-13', 'FromSoftware', 14),
(4, 'VALORANT', 0, 'Jogo de Tiro e Poderzinho', 'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt3f072336e3f3ade4/63096d7be4a8c30e088e7720/Valorant_2022_E5A2_PlayVALORANT_ContentStackThumbnail_1200x625_MB01.png', 'https://www.youtube.com/watch?v=0qhHKedfvkg', '2021-05-03', 'Riot', 23),
(5, 'LEAGUE OF LEGENDS', 0, 'Jogo de Torres e Poderzinho', 'https://s2.glbimg.com/M4Df2YVeiwElmr4cqNv1J_-gVgQ=/800x0/smart/filters:strip_icc()/s.glbimg.com/po/tt2/f/original/2014/04/03/league-of-legends-10.jpg', 'https://www.youtube.com/watch?v=aR-KAldshAE', '2015-05-03', 'Riot', 24),
(7, 'THE LEGEND OF ZELDA: BREATH OF THE WILD', 300, 'Jogo do Link', 'https://cdn.pocket-lint.com/r/s/970x/assets/images/137952-games-review-the-legend-of-zelda-breath-of-the-wild-review-image1-tbvqza2wel-jpg.webp', 'https://www.youtube.com/watch?v=zw47_q9wbBE', '2017-05-03', 'Nintendo', 15),
(8, 'CUPHEAD', 40, 'Jogo das Xicrina', 'https://conteudo.imguol.com.br/c/entretenimento/fd/2022/02/23/the-cuphead-show-personagem-diabo-1645649422377_v2_900x506.jpg.webp', 'https://www.youtube.com/watch?v=NN-9SQXoi50', '2018-05-03', 'Studio MDHR', 17),
(9, 'BATTLEFIELD 4', 299, 'Melhor FPS que tem', 'https://uploads.jovemnerd.com.br/wp-content/uploads/2021/06/battlefield-4-esta-gratuito-para-pc-no-amazon-prime-gaming.jpg', 'https://www.youtube.com/watch?v=hl-VV9loYLw', '2016-05-03', 'DICE', 23),
(10, 'BATTLEFIELD 2042', 150, 'Trailer é lindo mas o jogo é muito ruim', 'https://uploads.jovemnerd.com.br/wp-content/uploads/2021/11/Battlefield-2042-review.jpg', 'https://www.youtube.com/watch?v=eiAGqqSUqQY', '2021-09-03', 'DICE', 23),
(12, 'God of war ragnarok', 265, 'God of War Ragnarök é um jogo eletrônico de ação-aventura desenvolvido pela Santa Monica Studio e publicado pela Sony Interactive Entertainment. Foi lançado em 9 de novembro de 2022 para PlayStation 4 e PlayStation 5. É o nono título da série God of War, o nono em ordem cronológica, e a sequência de God of War. BOM DE GUERRAA', 'https://upload.wikimedia.org/wikipedia/pt/8/82/God_of_War_2018_capa.png', NULL, '2022-11-09', 'Sony Interactive Entertainment', 14),
(13, 'TESTE', 999, 'TESTE TESTE TESTE', 'https://cdn.xxl.thumbs.canstockphoto.com.br/azul-mostrando-problema-tecla-computador-online-teste-question%C3%A1rio-ou-banco-de-fotos_csp8319274.jpg', NULL, '2022-11-30', 'TESTE', 26);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo_idioma`
--

CREATE TABLE `jogo_idioma` (
  `id` int(11) NOT NULL,
  `id_jogo` int(11) NOT NULL,
  `id_idioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo_idioma`
--

INSERT INTO `jogo_idioma` (`id`, `id_jogo`, `id_idioma`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(7, 3, 1),
(8, 3, 2),
(10, 3, 1),
(11, 8, 1),
(13, 4, 1),
(14, 12, 1),
(15, 12, 9),
(16, 12, 4),
(17, 13, 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo_plataforma`
--

CREATE TABLE `jogo_plataforma` (
  `id` int(11) NOT NULL,
  `id_jogo` int(11) NOT NULL,
  `id_plataforma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo_plataforma`
--

INSERT INTO `jogo_plataforma` (`id`, `id_jogo`, `id_plataforma`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(9, 3, 3),
(10, 1, 4),
(11, 2, 4),
(12, 3, 4),
(13, 7, 8),
(14, 8, 8),
(18, 7, 7),
(19, 7, 8),
(20, 7, 1),
(21, 5, 1),
(22, 9, 1),
(23, 10, 1),
(24, 9, 2),
(25, 9, 3),
(26, 9, 4),
(27, 9, 5),
(28, 9, 6),
(29, 9, 7),
(30, 9, 8),
(31, 4, 1),
(32, 10, 1),
(33, 10, 4),
(34, 10, 6),
(40, 10, 2),
(41, 12, 4),
(42, 12, 3),
(43, 13, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `plataforma`
--

CREATE TABLE `plataforma` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `plataforma`
--

INSERT INTO `plataforma` (`id`, `nome`) VALUES
(1, 'PC'),
(2, 'Playstation 2'),
(3, 'Playstation 3'),
(4, 'Playstation 4'),
(5, 'Xbox 360'),
(6, 'Xbox One'),
(7, 'Nintendo Wii'),
(8, 'Nintendo Switch'),
(9, 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `suporte`
--

CREATE TABLE `suporte` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `assunto` varchar(20) NOT NULL,
  `mensagem` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `suporte`
--

INSERT INTO `suporte` (`id`, `nome`, `email`, `assunto`, `mensagem`) VALUES
(14, 'wenderson', 'wenderson@gmail.com', 'critica', 'wdjjvg´wjegpwe'),
(15, 'Ruan', 'ruan@teste.com', 'critica', 'TA FEIO O SUPORTE'),
(17, 'matheus Barros', 'MATHEUSBARROS@GMAIL.COM', 'elogio', 'OTIMO TRABALHO, MUITO BEM FEITO, PASSOU '),
(18, 'matheus Barros', 'MATHEUSBARROS@GMAIL.COM', 'critica', 'tente novamente ano q vem '),
(19, 'matheus Barros', 'MATHEUSBARROS@GMAIL.COM', 'elogio', 'se quiser o thales de volta pagar $500 reais'),
(20, 'matheus Barros', 'MATHEUSBARROS@GMAIL.COM', 'elogio', 'DEIXA O LUAN CRIAR UM NOVO ARQUIVO'),
(21, 'matheus Barros', 'MATHEUSBARROS@GMAIL.COM', 'duvida', 'DEVOLVE O THALES\r\nE O JHE\r\nE JÃO');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `arquivos`
--
ALTER TABLE `arquivos`
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices para tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `imagem_url` (`imagem_url`),
  ADD UNIQUE KEY `video_url` (`video_url`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Índices para tabela `jogo_idioma`
--
ALTER TABLE `jogo_idioma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_jogo` (`id_jogo`),
  ADD KEY `id_idioma` (`id_idioma`);

--
-- Índices para tabela `jogo_plataforma`
--
ALTER TABLE `jogo_plataforma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_jogo` (`id_jogo`),
  ADD KEY `id_plataforma` (`id_plataforma`);

--
-- Índices para tabela `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices para tabela `suporte`
--
ALTER TABLE `suporte`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `jogo_idioma`
--
ALTER TABLE `jogo_idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `jogo_plataforma`
--
ALTER TABLE `jogo_plataforma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `suporte`
--
ALTER TABLE `suporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `jogo`
--
ALTER TABLE `jogo`
  ADD CONSTRAINT `jogo_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);

--
-- Limitadores para a tabela `jogo_idioma`
--
ALTER TABLE `jogo_idioma`
  ADD CONSTRAINT `jogo_idioma_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `jogo` (`id`),
  ADD CONSTRAINT `jogo_idioma_ibfk_2` FOREIGN KEY (`id_idioma`) REFERENCES `idioma` (`id`);

--
-- Limitadores para a tabela `jogo_plataforma`
--
ALTER TABLE `jogo_plataforma`
  ADD CONSTRAINT `jogo_plataforma_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `jogo` (`id`),
  ADD CONSTRAINT `jogo_plataforma_ibfk_2` FOREIGN KEY (`id_plataforma`) REFERENCES `plataforma` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
