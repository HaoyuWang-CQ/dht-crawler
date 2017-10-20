-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2016 at 09:06 AM
-- Server version: 5.6.28-1
-- PHP Version: 5.6.19-2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dht`
--

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_0`
--

CREATE TABLE `announce_peer_0` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_1`
--

CREATE TABLE `announce_peer_1` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_2`
--

CREATE TABLE `announce_peer_2` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_3`
--

CREATE TABLE `announce_peer_3` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_4`
--

CREATE TABLE `announce_peer_4` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_5`
--

CREATE TABLE `announce_peer_5` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_6`
--

CREATE TABLE `announce_peer_6` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_7`
--

CREATE TABLE `announce_peer_7` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_8`
--

CREATE TABLE `announce_peer_8` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_9`
--

CREATE TABLE `announce_peer_9` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_a`
--

CREATE TABLE `announce_peer_a` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_b`
--

CREATE TABLE `announce_peer_b` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_c`
--

CREATE TABLE `announce_peer_c` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_d`
--

CREATE TABLE `announce_peer_d` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_e`
--

CREATE TABLE `announce_peer_e` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announce_peer_f`
--

CREATE TABLE `announce_peer_f` (
  `info_hash` char(40) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` varchar(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_0`
--

CREATE TABLE `get_peers_0` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_1`
--

CREATE TABLE `get_peers_1` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_2`
--

CREATE TABLE `get_peers_2` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_3`
--

CREATE TABLE `get_peers_3` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_4`
--

CREATE TABLE `get_peers_4` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_5`
--

CREATE TABLE `get_peers_5` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_6`
--

CREATE TABLE `get_peers_6` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_7`
--

CREATE TABLE `get_peers_7` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_8`
--

CREATE TABLE `get_peers_8` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_9`
--

CREATE TABLE `get_peers_9` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_a`
--

CREATE TABLE `get_peers_a` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_b`
--

CREATE TABLE `get_peers_b` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_c`
--

CREATE TABLE `get_peers_c` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_d`
--

CREATE TABLE `get_peers_d` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_e`
--

CREATE TABLE `get_peers_e` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `get_peers_f`
--

CREATE TABLE `get_peers_f` (
  `info_hash` char(40) NOT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_addr`
--

CREATE TABLE `torrent_addr` (
  `aid` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `port` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `country_id` varchar(50) NOT NULL,
  `area` varchar(100) NOT NULL,
  `area_id` varchar(50) NOT NULL,
  `region` varchar(100) NOT NULL,
  `region_id` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `city_id` varchar(50) NOT NULL,
  `county` varchar(100) NOT NULL,
  `county_id` varchar(50) NOT NULL,
  `isp` varchar(50) NOT NULL,
  `isp_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_0`
--

CREATE TABLE `torrent_files_0` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_1`
--

CREATE TABLE `torrent_files_1` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_2`
--

CREATE TABLE `torrent_files_2` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_3`
--

CREATE TABLE `torrent_files_3` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_4`
--

CREATE TABLE `torrent_files_4` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_5`
--

CREATE TABLE `torrent_files_5` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_6`
--

CREATE TABLE `torrent_files_6` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_7`
--

CREATE TABLE `torrent_files_7` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_8`
--

CREATE TABLE `torrent_files_8` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_9`
--

CREATE TABLE `torrent_files_9` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_a`
--

CREATE TABLE `torrent_files_a` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_b`
--

CREATE TABLE `torrent_files_b` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_c`
--

CREATE TABLE `torrent_files_c` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_d`
--

CREATE TABLE `torrent_files_d` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_e`
--

CREATE TABLE `torrent_files_e` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_files_f`
--

CREATE TABLE `torrent_files_f` (
  `tid` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_ext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_info`
--

CREATE TABLE `torrent_info` (
  `tid` int(11) NOT NULL,
  `info_hash` char(40) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `total_size` bigint(20) NOT NULL,
  `num_files` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `torrent_trackers`
--

CREATE TABLE `torrent_trackers` (
  `tid` int(11) NOT NULL,
  `url` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announce_peer_0`
--
ALTER TABLE `announce_peer_0`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_1`
--
ALTER TABLE `announce_peer_1`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_2`
--
ALTER TABLE `announce_peer_2`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_3`
--
ALTER TABLE `announce_peer_3`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_4`
--
ALTER TABLE `announce_peer_4`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_5`
--
ALTER TABLE `announce_peer_5`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_6`
--
ALTER TABLE `announce_peer_6`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_7`
--
ALTER TABLE `announce_peer_7`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_8`
--
ALTER TABLE `announce_peer_8`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_9`
--
ALTER TABLE `announce_peer_9`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_a`
--
ALTER TABLE `announce_peer_a`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_b`
--
ALTER TABLE `announce_peer_b`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_c`
--
ALTER TABLE `announce_peer_c`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_d`
--
ALTER TABLE `announce_peer_d`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_e`
--
ALTER TABLE `announce_peer_e`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `announce_peer_f`
--
ALTER TABLE `announce_peer_f`
  ADD KEY `ids` (`info_hash`,`ip`,`port`);

--
-- Indexes for table `get_peers_0`
--
ALTER TABLE `get_peers_0`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_1`
--
ALTER TABLE `get_peers_1`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_2`
--
ALTER TABLE `get_peers_2`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_3`
--
ALTER TABLE `get_peers_3`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_4`
--
ALTER TABLE `get_peers_4`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_5`
--
ALTER TABLE `get_peers_5`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_6`
--
ALTER TABLE `get_peers_6`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_7`
--
ALTER TABLE `get_peers_7`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_8`
--
ALTER TABLE `get_peers_8`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_9`
--
ALTER TABLE `get_peers_9`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_a`
--
ALTER TABLE `get_peers_a`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_b`
--
ALTER TABLE `get_peers_b`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_c`
--
ALTER TABLE `get_peers_c`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_d`
--
ALTER TABLE `get_peers_d`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_e`
--
ALTER TABLE `get_peers_e`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `get_peers_f`
--
ALTER TABLE `get_peers_f`
  ADD KEY `ids` (`info_hash`);

--
-- Indexes for table `torrent_addr`
--
ALTER TABLE `torrent_addr`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `torrent_info`
--
ALTER TABLE `torrent_info`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `torrent_addr`
--
ALTER TABLE `torrent_addr`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1199609;
--
-- AUTO_INCREMENT for table `torrent_info`
--
ALTER TABLE `torrent_info`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509140;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
