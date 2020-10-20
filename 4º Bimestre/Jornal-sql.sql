-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Out-2020 às 01:16
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entretenimento'),
(3, 'Política'),
(4, 'Ciência'),
(5, 'Cultura Geek'),
(6, 'Esporte'),
(7, 'Entretenimento'),
(8, 'Política'),
(9, 'Ciência'),
(10, 'Cultura Geek'),
(11, 'Esporte'),
(12, 'Entretenimento'),
(13, 'Política'),
(14, 'Ciência'),
(15, 'Saúde');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `titulo` varchar(255) DEFAULT NULL,
  `codNoticia` int(11) NOT NULL,
  `noticia` text,
  `codCategoria` int(11) DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`titulo`, `codNoticia`, `noticia`, `codCategoria`, `codRedator`, `dia`, `mes`, `ano`) VALUES
('Restaurante Popular de Belém volta a oferecer serviço presencial', 1, 'O Restaurante Popular de Belém voltou, nesta terça-feira (20), com as atividades presenciais após seis meses funcionando apenas com a distribuição de marmitas à população devido à pandemia do novo coronavírus. A partir de agora, o espaço atende todas as medidas de prevenção à doença, garantindo a segurança de cerca de 1000 pessoas que passam pelo local todos os dias.\r\n\r\nO espaço tem funcionamento de 10h às 14h, de segunda a sexta-feira, com refeição no valor de R$ 2. Porém, o grupo de prioridade tem acesso exclusivo ao restaurante das 10h às 11h.\r\n\r\nO restaurante recebia acomodava 250 pessoas sentadas antes da pandemia. Agora, com as novas medidas sanitárias, o local foi adaptado para 106 pessoas.', 2, 1, 17, 10, 2020),
('Fux determina sorteio de novo relator para inquérito sobre Bolsonaro no STF', 2, 'O presidente do Supremo Tribunal Federal (STF), ministro Luiz Fux, determinou nesta terça-feira (20) que o sistema eletrônico do STF sorteie novo relator para o inquérito que apura se o presidente Jair Bolsonaro tentou interferir politicamente na Polícia Federal.\r\n\r\nA decisão atende a um pedido da defesa do ex-ministro Sergio Moro, que também é investigado no inquérito. O relator original do processo no STF era o ministro Celso de Mello, que se aposentou do cargo no último dia 12\r\n\r\n"A pedido dos advogados do ex-ministro Sergio Moro, e em função da celeridade inerente a um inquérito, o presidente da Corte, ministro Luiz Fux, determinou a redistribuição do inquérito 4831 que estava sob a relatoria do ministro Celso de Mello. A redistribuição deve ocorrer ainda hoje pelo sistema eletrônico do STF", diz o comunicado divulgado pelo STF à imprensa.', 3, 1, 3, 3, 2017),
('Eleição nos EUA 2020: como Trump ainda pode ganhar a disputa pela Presidência', 3, 'Pesquisas recentes indicam que o candidato democrata Joe Biden tem uma vantagem significativa e estável sobre o republicano Donald Trump na corrida presidencial deste ano, tanto na preferência nacional quanto nas pesquisas de estados decisivos.\r\n\r\nDevido à arrecadação de campanha recorde este ano, o democrata também tem uma vantagem financeira considerável nesta reta final.\r\n\r\nO que se sabe sobre o ''caso Hunter Biden'', novo grito de guerra de Trump\r\nOs analistas eleitorais têm destacado um aumento nas probabilidades de que Trump seja derrotado. O blog Fivethirtyeight.com de Nate Silver atualmente tem Biden com 87% de chance de ganhar, enquanto o Decision Desk HQ o coloca com 83,5%.\r\n\r\nMas tudo isso é dolorosamente familiar para os democratas. Em um momento semelhante da campanha, há quatro anos, Hillary Clinton também aparecia com alta probabilidade de vitória nas pesquisas. E todos lembram como isso terminou.\r\n\r\nA história poderia se repetir com outra vitória de Trump? Para isso acontecer, listamos cinco coisas que podem ajudar o presidente a se reeleger.', 3, 2, 17, 9, 2019),
('Versátil na seleção brasileira, Luana exalta importância das múltiplas funções', 4, 'A seleção brasileira feminina está concentrada em Portimão, Portugal - mesma localidade usada para a preparação do Brasil à Copa do Mundo de 2019 - para um período de treinamentos até o dia 27 de outubro. Nessa lista, Pia Sundhage chamou apenas atletas que atuam em países da Europa, na China e também Estados Unidos. A medida foi tomada em razão das barreiras sanitárias ainda vigentes pela pandemia de coronavírus.\r\n\r\nEntre elas está Luana, do Paris Saint-Germain. Citada como um exemplo de versatilidade pela treinadora, a meia falou sobre a importância das múltiplas funções que exerce para a lista final das Olimpíadas.\r\n\r\n- Como são apenas 18 atletas para as Olimpíadas, fazer mais de uma função é um ponto positivo. Ter atletas versáteis, como são poucas trocas durante o jogo. Quando eu fui para a Europa, experimentei outras posições. Já joguei de meia, de atacante e agora, recentemente, a primeira vez de lateral. Para mim é muito bom porque você consegue vivenciar as funções que são feitas em cada posição. Isso te dá um entendimento maior do jogo. É importante a gente estar sempre disponível para ajudar o grupo fazendo sua posição de origem ou alguma outra.', 1, 2, 31, 10, 2020),
('Sampaio Corrêa fecha com goleiro Mota, que estava no XV de Piracicaba', 5, 'O Sampaio Corrêa fechou a contratação do goleiro Mota, que estava no XV de Piracicaba, disputando a Série A2 do Campeonato Paulista. O ge apurou que o atleta desembarcou nesta terça-feira em São Luís, passará por exames durante esta semana e será anunciado pela Bolívia Querida nas próximas horas.\r\n\r\nO jogador vem pra suprir uma posição que o clube vem buscando a um longo período. Apesar de ter Gustavo consolidado na função como titular, nos bastidores o clube não tem tido confiança nos reservas João Gabriel e Neguete.\r\n\r\nNesta quarta-feira, Gustavo inclusive não joga por conta de suspensão e além o atleta adquiriu uma lesão muscular e João Gabriel deverá assumir a função. O Sampaio corre contra o tempo para tentar regularizar Mota o mais rápido possível para já começar a relacionar o atleta.', 1, 3, 25, 6, 2020),
('Exame aponta edema na coxa, e Comercial corre para recuperar Juan até domingo', 6, 'O zagueiro Juan está com um edema na coxa e o departamento médico do Comercial faz trabalho intenso com o atleta para que ele jogue no fim de semana na partida de volta das quartas de final da Série A3 do Paulista.\r\n\r\nO resultado do exame de Juan foi divulgado nesta terça-feira e o médico do clube, Marcel Frisene, detalhou o grau da contusão do jogador, que deixou o campo durante a vitória do Leão sobre o Linense por 1 a 0, no último sábado, em Lins.\r\n\r\n– Ele fez um ultrassom e teve uma lesão no reto femoral da coxa, que se transformou em um edema muscular. A origem do edema foi uma brava contratura muscular nesse reto femoral. Não é uma lesão muscular, mas às vezes demora sair esse processo inflamatório da lesão. Estamos trabalhando firme com a fisioterapia para fazer desinflamar o mais rápido possível para ele estar à disposição no final de semana – comentou o médico.', 1, 3, 18, 12, 2014),
('Vacinação contra a Covid no Brasil não será obrigatória e grupos de risco terão prioridade; veja o que se sabe sobre o plano do ministério', 7, 'O governo federal já tem uma previsão de quantas doses de vacina contra a Covid-19 pode distribuir aos brasileiros no próximo ano, qual será o primeiro público alvo da campanha e quando ela deve começar.\r\n\r\nO que se sabe até agora é uma prévia do planejamento, já que o Ministério da Saúde afirma que há um grupo de trabalho detalhando as diretrizes do Plano Nacional da Imunização (PNI) contra o novo coronavírus. O resultado deve ser divulgado entre novembro e dezembro. Entretanto, com base em dados já conhecidos, é possível apontar características gerais da vacinação contra a Covid-19 no Sistema Único de Saúde (SUS).', 5, 4, 30, 3, 2006),
('CoronaVac: 7 perguntas para entender a vacina do Butantan', 8, 'O governo de São Paulo anunciou na segunda-feira (19/10) os primeiros resultados dos testes feitos no Brasil da CoronaVac, vacina contra a Covid-19 desenvolvida pela empresa chinesa Sinovac em parceria com o Instituto Butantan.\r\n\r\nDe acordo com Dimas Covas, diretor do Butantan, a CoronaVac se mostrou segura, mas ainda será necessário esperar pelos resultados dos testes de eficácia, que indicarão se a vacina protege ou não contra o novo coronavírus.\r\n\r\nA expectativa de Covas é ter esses resultados até o final deste ano, embora especialistas ouvidos pela BBC News Brasil digam ser improvável cumprir essa meta.\r\nA comprovação de eficácia será fundamental para obter o registro da vacina junto à Agência Nacional de Vigilância Sanitária (Anvisa) e dar início à vacinação.\r\n\r\nExclusivo: Fantástico entra na fábrica da CoronaVac, na China\r\nCom mais de 40 milhões de infectados e 1,1 milhão de mortos no mundo por causa da Covid-19, há uma grande expectativa em torno não apenas dessa, mas das 196 vacinas que estão sendo desenvolvidas atualmente no mundo contra a Covid-19, de acordo com dados da Organização Mundial de Saúde.\r\n\r\nDesse total, 44 já estão sendo testadas em humanos, das quais 10 estão na última fase desta etapa de pesquisa, a chamada fase 3, quando se verifica a eficácia.\r\n\r\n', 4, 4, 19, 9, 1992),
('O que é um zeptosegundo, a menor unidade de tempo já medida', 9, 'Se você acha que um segundo passa rápido demais, imagine quão rápido a bilionésima parte de um bilionésimo de segundo pode passar... isto é, um zero e uma vírgula seguidos por 20 zeros e um 1 (0,000000000000000000001 segundo).\r\n\r\nÉ a menor unidade de tempo já registrada (e medida) até hoje e os cientistas a chamam de zeptosegundo.\r\n\r\nMas o que pode ser medido em zeptosegundos? O físico Reinhard Dörner e seus colegas da Universidade Goethe em Frankfurt, na Alemanha, encontraram a resposta na luz.\r\n\r\nCIÊNCIA: É possível viajar no tempo em um buraco negro?\r\nDörner e sua equipe fizeram história calculando pela primeira vez o tempo que uma partícula de luz leva para passar uma molécula de hidrogênio (H2), que é de 247 zeptosegundos, para ser exato, de acordo com os resultados de seu trabalho, publicado no dia 16 de outubro na revista Science.\r\n\r\nPara medir esse fragmento de tempo, eles pegaram raios-X do Petra 3, um acelerador de partículas em Hamburgo, e observaram o tempo que o fóton (uma partícula de luz) leva para viajar de um átomo a outro.\r\n\r\n"Observamos pela primeira vez que a camada de elétrons de uma molécula não reage à luz em todas as partes ao mesmo tempo", disse Dörner em comunicado.', 4, 5, 18, 2, 2020),
('Inaugurada no Brasil há 30 anos, MTV tem importância histórica concentrada na década de 1990', 10, 'Inaugurada no Brasil em 20 de outubro de 1990, a MTV nacional já chegou tarde ao país, com pelo menos oito anos de atraso. O universo pop já vinha associando música e imagem desde a primeira metade dos anos 1980, criando canal de comunicação visual com o jovem da época. Há 30 anos, a MTV entrou no ar no Brasil para consolidar esse canal em legado discutido por VJs e executivos em podcast apresentado por Gabriela Sarmento, repórter do G1.\r\n\r\nA partir de 1982, com a explosão nacional da banda Blitz, o mercado fonográfico se abriu para grupos de rock. E entenda-se por rock não somente o gênero musical que veio ao mundo nos anos 1950, mas uma atitude. Um conceito. Uma linguagem. A MTV sintonizou o jovem brasileiro que falava essa língua, mas que ainda não tinha uma emissora de TV exclusivamente musical para ouvir músicas e ver clipes.\r\n\r\nA imediata sintonia entre a MTV e o público-alvo da emissora legitimou o investimento. E o fato é que, ao longo dos anos 1990, aparecer na MTV – de preferência com clipe bem conceituado por VJs, jornalistas, apresentadores e pela audiência – foi fator decisivo para o sucesso de uma banda ou de um cantor associado à estética pop da emissora.\r\n\r\nA abertura desse canal visual de comunicação com o público jovem contribuiu para a consolidação nacional de bandas brasileiras surgidas nos anos 1990, como Skank e O Rappa, para citar somente dois grupos que entenderam a importância capital de um clipe bem filmado e investiram alto (com o dinheiro das respectivas gravadoras...) em produções de vídeos.\r\n\r\nSomada à força comercial dos programas da série Acústico MTV, logo transformados em discos que injetaram ânimo em carreiras que pareciam ter perdido o fôlego inicial (como pareceu serem os casos dos Titãs e do Kid Abelha em 1997 e em 2002), a propagação dos clipes – a rigor e desde sempre, as maiores estrelas da MTV – fez da emissora um motor fundamental para o pleno funcionamento da indústria da música no segmento pop que englobava gêneros musicais como rock, rap, funk e reggae.', 2, 5, 16, 12, 1966);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `ddd`, `cidade`, `telefone`, `codTurma`, `ano`, `mes`, `dia`) VALUES
(1, 'Amanda', 'Ferreira', 'amandaf@gmail.com', 11, 'Mauá', 911111111, 1, 2004, 8, 7),
(2, 'Luciana', 'Alves', 'lualves@gmail.com', 11, 'Mauá', 922222222, 3, 1978, 9, 1),
(3, 'Bruno ', 'Gagliasso', 'bgagli@gmail.com', 21, 'Ribeirão Pires', 933333333, 2, 1966, 4, 16),
(4, 'Samantha', 'Silva', 'silvasamantha@gmail.com', 11, 'Ribeirão Pires', 944444444, 4, 1983, 10, 29),
(5, 'Michael', 'Jackson', 'jackson@gmail.com', 11, 'Sto. André', 955555555, 6, 2000, 3, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1A'),
(2, '1B'),
(3, '1C'),
(4, '1D'),
(5, '1E'),
(6, '1F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Indexes for table `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Indexes for table `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Indexes for table `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
