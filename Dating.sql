-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Počítač: localhost
-- Vytvořeno: Pát 17. lis 2017, 21:19
-- Verze serveru: 10.1.21-MariaDB
-- Verze PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `Dating`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `comment_table`
--

CREATE TABLE `comment_table` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `reciever` varchar(50) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `comment_table`
--

INSERT INTO `comment_table` (`id`, `sender`, `reciever`, `comment`) VALUES
(1, '2', '2', 'comment test 1'),
(2, '2', '2', 'comment test 1'),
(3, '2', '2', 'hello'),
(4, '2', '2', 'hello'),
(5, '2', '2', 'test');

-- --------------------------------------------------------

--
-- Struktura tabulky `gift_table`
--

CREATE TABLE `gift_table` (
  `id` int(11) NOT NULL,
  `Gift` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `gift_table`
--

INSERT INTO `gift_table` (`id`, `Gift`) VALUES
(1, 'Chocolate'),
(2, 'Roses');

-- --------------------------------------------------------

--
-- Struktura tabulky `gift_table_connect`
--

CREATE TABLE `gift_table_connect` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `reciever` varchar(50) NOT NULL,
  `gift_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabulky `like_table`
--

CREATE TABLE `like_table` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `reciever` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `like_table`
--

INSERT INTO `like_table` (`id`, `sender`, `reciever`) VALUES
(1, 2, 1),
(2, 2, 1),
(3, 2, 1),
(4, 2, 1),
(5, 1, 2),
(6, 1, 2),
(7, 1, 2),
(8, 2, 1),
(9, 2, 0),
(10, 2, 2),
(11, 2, 2),
(12, 2, 2),
(13, 2, 2),
(14, 2, 2),
(15, 2, 2),
(16, 2, 2),
(17, 2, 2),
(18, 2, 2),
(19, 2, 2);

-- --------------------------------------------------------

--
-- Struktura tabulky `msg_table`
--

CREATE TABLE `msg_table` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `reciever` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `msg_table`
--

INSERT INTO `msg_table` (`id`, `sender`, `reciever`, `message`) VALUES
(1, '1', '2', 'hello this is my test private msg'),
(2, '1', '2', 'hello this is my test private msg'),
(3, '2', '1', 'ahoj');

-- --------------------------------------------------------

--
-- Struktura tabulky `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `superpower` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `age`, `city`, `superpower`) VALUES
(1, 'Batman', 42, 'Gotham Cityyy', 'Superhumannn'),
(2, 'Superman', 30, 'Metropolis', 'Man of Steel');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `comment_table`
--
ALTER TABLE `comment_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender` (`sender`),
  ADD KEY `reciever` (`reciever`);

--
-- Klíče pro tabulku `gift_table`
--
ALTER TABLE `gift_table`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `gift_table_connect`
--
ALTER TABLE `gift_table_connect`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender` (`sender`),
  ADD KEY `reciever` (`reciever`),
  ADD KEY `gift_id` (`gift_id`);

--
-- Klíče pro tabulku `like_table`
--
ALTER TABLE `like_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender` (`sender`),
  ADD KEY `reciever` (`reciever`);

--
-- Klíče pro tabulku `msg_table`
--
ALTER TABLE `msg_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender` (`sender`),
  ADD KEY `reciever` (`reciever`);

--
-- Klíče pro tabulku `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `comment_table`
--
ALTER TABLE `comment_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pro tabulku `gift_table`
--
ALTER TABLE `gift_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pro tabulku `gift_table_connect`
--
ALTER TABLE `gift_table_connect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pro tabulku `like_table`
--
ALTER TABLE `like_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pro tabulku `msg_table`
--
ALTER TABLE `msg_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pro tabulku `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
