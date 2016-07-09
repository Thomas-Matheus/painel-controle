-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09-Jul-2016 às 06:09
-- Versão do servidor: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `control`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_category`
--

CREATE TABLE `app_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `app_category`
--

INSERT INTO `app_category` (`id`, `name`, `category_id`) VALUES
(2, 'teste', NULL),
(3, 'teste', NULL),
(5, '123', NULL),
(6, '123456', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_product`
--

CREATE TABLE `app_product` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_provider`
--

CREATE TABLE `app_provider` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `dt_register` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `products` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_purchase`
--

CREATE TABLE `app_purchase` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_paid` float NOT NULL,
  `product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_sale`
--

CREATE TABLE `app_sale` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `sale_value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_user`
--

CREATE TABLE `app_user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sso_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `app_user`
--

INSERT INTO `app_user` (`id`, `email`, `first_name`, `last_name`, `password`, `sso_id`) VALUES
(1, 'admin@admin.com', 'Thomas', 'Matheus', '$2a$10$4eqIF5s/ewJwHK1p8lqlFOEm2QIA0S8g6./Lok.pQxqcxaBZYChRm', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_user_user_profile`
--

CREATE TABLE `app_user_user_profile` (
  `user_id` int(11) NOT NULL,
  `user_profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `app_user_user_profile`
--

INSERT INTO `app_user_user_profile` (`user_id`, `user_profile_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `persistent_logins`
--

CREATE TABLE `persistent_logins` (
  `series` varchar(255) NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user_profile`
--

INSERT INTO `user_profile` (`id`, `type`) VALUES
(2, 'ADMIN'),
(1, 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_category`
--
ALTER TABLE `app_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_t144lf1ytgl2rjx2muxanjpo` (`category_id`);

--
-- Indexes for table `app_product`
--
ALTER TABLE `app_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_1l9ms7qr7hem1vn4m5s3j7pjt` (`category_id`);

--
-- Indexes for table `app_provider`
--
ALTER TABLE `app_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_purchase`
--
ALTER TABLE `app_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_sale`
--
ALTER TABLE `app_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_db4ar42uobv68929ukma0dne5` (`sso_id`);

--
-- Indexes for table `app_user_user_profile`
--
ALTER TABLE `app_user_user_profile`
  ADD PRIMARY KEY (`user_id`,`user_profile_id`),
  ADD KEY `FK_r63432iqsnpxpu6vcd7o2w6gh` (`user_profile_id`);

--
-- Indexes for table `persistent_logins`
--
ALTER TABLE `persistent_logins`
  ADD PRIMARY KEY (`series`),
  ADD UNIQUE KEY `UK_bqa9l0go97v49wwyx4c0u3kpd` (`token`),
  ADD UNIQUE KEY `UK_f8t9fsfwc17s6qcbx0ath6l3h` (`username`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_k6d5iiad3vb5isxj1munty17o` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_category`
--
ALTER TABLE `app_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `app_product`
--
ALTER TABLE `app_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_provider`
--
ALTER TABLE `app_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_purchase`
--
ALTER TABLE `app_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_sale`
--
ALTER TABLE `app_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `app_category`
--
ALTER TABLE `app_category`
  ADD CONSTRAINT `FK_t144lf1ytgl2rjx2muxanjpo` FOREIGN KEY (`category_id`) REFERENCES `app_category` (`id`);

--
-- Limitadores para a tabela `app_product`
--
ALTER TABLE `app_product`
  ADD CONSTRAINT `FK_1l9ms7qr7hem1vn4m5s3j7pjt` FOREIGN KEY (`category_id`) REFERENCES `app_category` (`id`);

--
-- Limitadores para a tabela `app_user_user_profile`
--
ALTER TABLE `app_user_user_profile`
  ADD CONSTRAINT `FK_5f4na04dj90sjn6jqluau48qx` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`),
  ADD CONSTRAINT `FK_r63432iqsnpxpu6vcd7o2w6gh` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profile` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
