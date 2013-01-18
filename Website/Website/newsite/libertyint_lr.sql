-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 18, 2013 at 11:58 AM
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
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (`company_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `name`) VALUES
(1, 'A.T. Cross'),
(2, 'ACO Hardware'),
(3, 'K&M Associates'),
(4, 'Liberty International'),
(5, 'Tanya Creations'),
(6, 'University of Rhode Island');

-- --------------------------------------------------------

--
-- Table structure for table `libcontact`
--

CREATE TABLE IF NOT EXISTS `libcontact` (
  `liberty_user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `libcontact`
--

INSERT INTO `libcontact` (`liberty_user_id`, `company_id`) VALUES
(46, 1),
(23, 1),
(22, 1),
(20, 1),
(43, 1),
(54, 1),
(23, 5),
(22, 2),
(46, 2),
(43, 5),
(46, 5);

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
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `email_code` varchar(32) NOT NULL,
  `active` int(11) NOT NULL default '0',
  `password_recover` int(11) NOT NULL default '0',
  `type` int(1) NOT NULL default '0',
  `allow_email` int(11) NOT NULL default '1',
  `visit_count` int(11) NOT NULL,
  `last_visit` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `company`, `phone_number`, `email`, `email_code`, `active`, `password_recover`, `type`, `allow_email`, `visit_count`, `last_visit`) VALUES
(20, 'administrator', '32ER98Dddd83b45daa4cef29b01c4811026fc37bda90KE882d3u940', 'Liberty', 'Admin', '4', '(401) 727-1776', 'administrator@libertyint.com', '57ea0d5c32cf711b9117fb04da271c0c', 1, 0, 1, 1, 1, '2013-01-15 08:34:05'),
(22, 'morosz', '32ER98Dddd83696d29e0940a4957748fe3fc9efd22a3KE882d3u940', 'Marguerite', 'Orosz', '4', '(617) 899-4577', 'morosz@libertyint.com', 'b30e675dff9508e225c4f4785e5b93cd', 1, 0, 1, 1, 5, '2013-01-18 10:29:24'),
(23, 'jsneesby', '32ER98Dddd83b45daa4cef29b01c4811026fc37bda90KE882d3u940', 'Jared', 'Sneesby', '6', '(401) 644-9818', 'jared_sneesby@my.uri.edu', 'be109cd7e3953ff92a7754b962990001', 1, 0, 1, 1, 49, '2013-01-18 11:27:23'),
(43, 'rcabral', '32ER98Dddd83b922b0e1f7378ae6ff01a8918f9e815cKE882d3u940', 'Ryan', 'Cabral', '4', '', 'rcabral@libertyint.com', '8c01d17b8962eaccc1823aabc94c0dbc', 1, 0, 1, 1, 2, '2013-01-18 11:08:40'),
(45, 'libtest', '32ER98Dddd83696d29e0940a4957748fe3fc9efd22a3KE882d3u940', 'Liberty', 'Tester', '4', '', 'jsneesby@libertyint.com', 'da67c01ebbf63a6557f10dc0e83c94fe', 1, 0, 1, 1, 4, '2013-01-18 09:05:28'),
(46, 'kkenney', '32ER98Dddd835233bd0a72cd51df0cea68da2760ecafKE882d3u940', 'Karen', 'Kenney', '4', '(401) 965-1581', 'kkenney@libertyint.com', 'ef3c25b9e98087def2c8fb46f6e72ca3', 1, 0, 1, 1, 2, '2013-01-16 07:50:13'),
(47, 'ksieminski', '32ER98Dddd834007e02f7911c67bf1842aeebee8f86bKE882d3u940', 'Kathi', 'Sieminski', '3', '', 'xxksieminski@kandmassociates.com', 'ef524b1399e7812240e29e3282e98f35', 1, 0, 0, 1, 1, '2013-01-14 14:55:38'),
(48, 'jheagney', '32ER98Dddd83fde3167629ff1824d299f78384f1d723KE882d3u940', 'Jim', 'Heagney', '3', '', 'xxjheagney@kandmasscoiates.com', '1b3e7a4c7b116fec04e754757e61e9f9', 1, 0, 0, 1, 9, '2013-01-17 17:46:58'),
(50, 'snallen', '32ER98Dddd83565f75ab1504eec8cd256f5037cb662bKE882d3u940', 'Scott', 'Nallen', '4', '', 'snallen@libertyint.com', 'e89f3d0cd1097c19934dbb13ca0bbf09', 1, 0, 2, 1, 17, '2013-01-18 09:55:30'),
(54, 'dconboy', '32ER98Dddd8353e9544b9aa605b701894c656082d9bfKE882d3u940', 'Danielle', 'Conboy', '4', '', 'dconboy@libertyint.com', '0f2fb54debb75d26691ab2ddd9340bf0', 1, 0, 2, 1, 5, '2013-01-18 08:57:15'),
(55, 'rross', '32ER98Dddd83696d29e0940a4957748fe3fc9efd22a3KE882d3u940', 'Rich', 'Ross', '5', '', 'xxrross@tanyacreations.com', '04e7420b9fe419e8bcebe45f09fb4513', 1, 0, 0, 1, 0, '2013-01-15 13:20:51'),
(56, 'pkbell', '32ER98Dddd83614b5d8c586e56b3c89fa27f4c4d3352KE882d3u940', 'Pat', 'Kennedy Bell', '1', '', 'xxpkbell@cross.com', '76eea4e4091b8bd7fd93162e39fc95b6', 1, 0, 0, 1, 0, '2013-01-15 13:21:46'),
(57, 'kcarnevale', '32ER98Dddd839290414f9b4070b0ac83fe3d29d0c66bKE882d3u940', 'Kathy', 'Carnevale', '1', '', 'xxkcarnevale@cross.com', '379ab47133a700a91e80d12d249d3376', 1, 0, 0, 1, 0, '2013-01-15 13:22:29'),
(58, 'cmarcy', '32ER98Dddd83aec17e9e3af515ad1fda8494a0377f65KE882d3u940', 'Cheryl', 'Marcy', '2', '', 'xxcmarcy@acohardware.com', '04cd1efd312436f54068c27ac68a02ad', 1, 0, 0, 1, 1, '2013-01-15 14:00:48'),
(65, 'jsneed', '32ER98Dddd83696d29e0940a4957748fe3fc9efd22a3KE882d3u940', 'John', 'Sneed', '6', '(401) 644-9818', 'jaredsneesby@gmail.com', '11518c7f85e10e3d0f67c0781ee4393b', 1, 0, 0, 1, 0, '2013-01-18 11:24:58');
