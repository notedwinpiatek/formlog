-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Mar 2022, 11:03
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `auth`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwordHash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `passwordHash`) VALUES
(1, 'jkowalski@firma.pl', '$argon2i$v=19$m=16,t=2,p=1$ejk0cXFwdmRVQjNOUExyVg$HIYIPn/4cCFD1zHizS3fTA'),
(2, 'jkowalski@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$TFVKQUJVcnJFUGtsNGhRSg$+UsdsnsqWfymb+dbU4qakoul3fz2hjUyfyofEbOXts8'),
(3, 'anyshhere@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$RUNNWkE5dWQzY3dNUHU3Zw$MyVixsy2X9D97Jg3A0JEP0xTgJC739632c+CyZPa8K4'),
(4, 'eeee@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$emJGd215L0lBaUxveTdyag$zdvQyLN9nA1MIMfADJkEcMIlULIqbh7HxcdxFa84Abw'),
(5, 'test@gmail', '$argon2i$v=19$m=65536,t=4,p=1$OEJLMkdYc1hSSlBKMFlBeQ$JjMtxtKxHBVca+ip/g23mr/mqYkNGzAjh0drUgP3+kA'),
(6, 'testy@gmail', '$argon2i$v=19$m=65536,t=4,p=1$VHRESlZ1MklkY05mLzUuSw$jB+vBsjJUpiEoitZHiFsQJx+tGoe43KwXg5P0wN7HfM'),
(7, '', '$argon2i$v=19$m=65536,t=4,p=1$cnZvalRnMzFnQWJwdWZmNw$l4QEt4Lre2USnU9+vllecf0cViSvAcqRGncboLmegBs'),
(19, 'jkowalski@teb.pl', '$argon2i$v=19$m=65536,t=4,p=1$WWRjT3AydkV4M0hUQk1acw$mXj61NAwI9JTodvYcvFfqji5HMYSMb2n1AS1taUlq9c');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;