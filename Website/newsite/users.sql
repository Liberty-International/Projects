-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 27, 2012 at 02:08 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lr`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `company` varchar(50) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `email_code` varchar(32) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `password_recover` int(11) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '0',
  `allow_email` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `company`, `email`, `email_code`, `active`, `password_recover`, `type`, `allow_email`) VALUES
(20, 'administrator', '32ER98Dddd83b45daa4cef29b01c4811026fc37bda90KE882d3u940', 'Liberty', 'Admin', 'Liberty International', 'administrator@libertyint.com', '57ea0d5c32cf711b9117fb04da271c0c', 1, 0, 1, 1),
(22, 'morosz', '32ER98Dddd83b45daa4cef29b01c4811026fc37bda90KE882d3u940', 'Marguerite', 'Orosz', 'Liberty International', 'morosz@libertyint.com', 'b30e675dff9508e225c4f4785e5b93cd', 1, 0, 0, 1),
(23, 'jsneesby', '32ER98Dddd83b45daa4cef29b01c4811026fc37bda90KE882d3u940', 'Jared', 'Sneesby', 'University of Rhode Island', 'jared_sneesby@my.uri.edu', 'be109cd7e3953ff92a7754b962990001', 1, 0, 1, 1),
(28, 'jdoe', '32ER98Dddd83b45daa4cef29b01c4811026fc37bda90KE882d3u940', 'John', 'Doe', 'Liberty International', 'jdoe@libertyint.com', '92d57fa9af389c14361b349f9a4cb276', 0, 0, 0, 1),
(29, 'username', '32ER98Dddd83696d29e0940a4957748fe3fc9efd22a3KE882d3u940', 'Jared', 'Sneesby', 'Liberty International', 'jaredsneesby@gmail.com', '85b3ceb18c26cdf8f59e4898b6a84527', 0, 0, 0, 1),
(30, 'kkenney', '32ER98Dddd83b45daa4cef29b01c4811026fc37bda90KE882d3u940', 'Karen', 'Kenney', 'Liberty International', 'kkenney@libertyint.com', '7522b3c1061fe01490e1dba3bfbfaed4', 1, 0, 1, 1),
(31, 'buttons', '32ER98Dddd83696d29e0940a4957748fe3fc9efd22a3KE882d3u940', 'Buttons', 'Sneesby', 'Random', 'jken@libertyint.com', '7386c736fdddba56b5d029fcf2011468', 0, 0, 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
