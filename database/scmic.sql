-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 02:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scmic`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `ringkasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `gambar`, `judul`, `ringkasan`) VALUES
(1, 'contoh.jpg', 'Kerja sama Presiden dengan FIFA', 'Dengan adanya tragedi Kanjuruhan, Pemerintah Indonesia mendapatkan bantuan kerja sama dengan FIFA...'),
(2, 'tragedi_kanjuruhan.jpeg', 'Tembakan Gas Air Mata Mencekam di Kanjuruhan', 'Kapolri Jenderal Listyo Sigit Prabowo mengungkap 11 tembakan gas air mata dalam tragedi di Stadion Kanjuruhan, Malang, Jawa Timur...'),
(11, 'gempa.jpeg', 'Gempa Terasa di Jakarta (Edited)', 'Guncangan gempa terasa di Jakarta. Guncangan terasa sekitar 3-5 detik.Guncangan gempa ini terasa di... (Edited)');

-- --------------------------------------------------------

--
-- Table structure for table `covid_cases`
--

CREATE TABLE `covid_cases` (
  `tanggal` date NOT NULL,
  `positif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `covid_cases`
--

INSERT INTO `covid_cases` (`tanggal`, `positif`) VALUES
('2022-10-07', 1501),
('2022-10-08', 1325),
('2022-10-09', 999),
('2022-10-10', 1195),
('2022-10-11', 2077),
('2022-10-12', 2028),
('2022-10-13', 1830);

-- --------------------------------------------------------

--
-- Table structure for table `kasus_covid`
--

CREATE TABLE `kasus_covid` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kasus_baru` int(11) NOT NULL,
  `meninggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kasus_covid`
--

INSERT INTO `kasus_covid` (`id`, `tanggal`, `kasus_baru`, `meninggal`) VALUES
(1, '2022-10-30', 2717, 26),
(2, '2022-10-31', 2457, 34),
(3, '2022-11-01', 4707, 32),
(4, '2022-11-02', 4873, 32),
(5, '2022-11-03', 4951, 42),
(6, '2022-11-04', 5303, 31),
(7, '2022-11-05', 4717, 39);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `email`) VALUES
('admin1', '827ccb0eea8a706c4c34a16891f84e7b', 'Reynold Andre', 'reynold@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kasus_covid`
--
ALTER TABLE `kasus_covid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kasus_covid`
--
ALTER TABLE `kasus_covid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
