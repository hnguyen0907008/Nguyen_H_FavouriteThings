-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 13, 2020 at 02:08 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_hien_fave`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hien_fave`
--

CREATE TABLE `tbl_hien_fave` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `image` varchar(20) NOT NULL,
  `desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hien_fave`
--

INSERT INTO `tbl_hien_fave` (`id`, `name`, `type`, `image`, `desc`) VALUES
(1, 'Orange Cat', 'Cat', 'cat.jpg', 'Friendliest cat breed. Smart and affectionate!'),
(2, 'Labrador', 'Dog', 'labrador.jpg', 'Cute, easy to train. The best friend of humans.'),
(3, 'Goldfish', 'Fish', 'goldfish.jpg', 'All you need to do is feeding them. Pretty pet.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_hien_fave`
--
ALTER TABLE `tbl_hien_fave`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_hien_fave`
--
ALTER TABLE `tbl_hien_fave`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
