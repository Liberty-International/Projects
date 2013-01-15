-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2013 at 10:32 AM
-- Server version: 5.0.91
-- PHP Version: 5.3.6-pl0-gentoo

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `libertyint_lr`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `company` varchar(50) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `email_code` varchar(32) NOT NULL,
  `active` int(11) NOT NULL default '0',
  `password_recover` int(11) NOT NULL default '0',
  `type` int(1) NOT NULL default '0',
  `allow_email` int(11) NOT NULL default '1',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `company`, `email`, `email_code`, `active`, `password_recover`, `type`, `allow_email`) VALUES
(20, 'administrator', '32ER98Dddd83b45daa4cef29b01c4811026fc37bda90KE882d3u940', 'Liberty', 'Admin', 'Liberty International', 'administrator@libertyint.com', '57ea0d5c32cf711b9117fb04da271c0c', 1, 0, 1, 1),
(22, 'morosz', '32ER98Dddd83696d29e0940a4957748fe3fc9efd22a3KE882d3u940', 'Marguerite', 'Orosz', 'Liberty International', 'morosz@libertyint.com', 'b30e675dff9508e225c4f4785e5b93cd', 1, 0, 0, 1),
(23, 'jsneesby', '32ER98Dddd83b45daa4cef29b01c4811026fc37bda90KE882d3u940', 'John', 'Sneesby', 'University of Rhode Island', 'jared_sneesby@my.uri.edu', 'be109cd7e3953ff92a7754b962990001', 1, 0, 1, 1),
(43, 'ryan', '32ER98Dddd83b922b0e1f7378ae6ff01a8918f9e815cKE882d3u940', 'Ryan', 'Cabral', 'Liberty International', 'rcabral@libertyint.com', '8c01d17b8962eaccc1823aabc94c0dbc', 1, 0, 1, 1),
(44, 'example', '32ER98Dddd83696d29e0940a4957748fe3fc9efd22a3KE882d3u940', 'example', 'example', 'Test Company 123', 'example@t123.com', 'c48a7c849dfddb13b798ab172ca467f2', 1, 0, 0, 1);
