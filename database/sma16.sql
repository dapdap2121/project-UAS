-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 10:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sma16`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `nip` int(20) NOT NULL,
  `jk_guru` enum('L','P') NOT NULL,
  `guru_status` enum('GURU AKTIF','WALI KELAS') NOT NULL,
  `status_pegawai` enum('PNS','SUKWAN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id`, `nama_guru`, `nip`, `jk_guru`, `guru_status`, `status_pegawai`) VALUES
(11, ' Abdul karim', 239873, 'L', 'WALI KELAS', 'PNS'),
(12, 'Anis Baswedan', 5432161, 'L', 'GURU AKTIF', 'PNS'),
(13, 'Yanti', 5432161, 'P', 'GURU AKTIF', 'PNS'),
(14, 'Sri Untayani', 5432161, 'P', 'GURU AKTIF', 'PNS'),
(15, 'Sukesi', 5432161, 'P', 'GURU AKTIF', 'PNS'),
(16, 'Agus Setyono', 543216, 'L', 'GURU AKTIF', 'PNS'),
(17, 'Yanuar Lukmani Erfan', 5432161, 'L', 'GURU AKTIF', 'PNS'),
(18, 'Nyami Endang S', 5432161, 'P', 'GURU AKTIF', 'PNS'),
(19, 'M. Rendi bagus Yahya', 5432161, 'L', 'GURU AKTIF', 'PNS'),
(20, 'Muhamad Soim', 5432161, 'L', 'GURU AKTIF', 'PNS'),
(21, 'Wiji Lestari', 5432161, 'P', 'GURU AKTIF', 'PNS'),
(22, 'Ferry Kurniawan', 543216, 'L', 'GURU AKTIF', 'PNS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` varchar(20) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `nama_guru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `nama_kelas`, `nama_guru`) VALUES
('10', 'KELAS 10', ''),
('11', 'KELAS 11', ''),
('12', 'KELAS 12', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `id_mapel` int(20) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `kode_mapel` varchar(20) NOT NULL,
  `id_semester` enum('1','2') NOT NULL,
  `nama_guru` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id_mapel`, `nama_mapel`, `kode_mapel`, `id_semester`, `nama_guru`) VALUES
(15, 'Pendidikan Agama', 'PAI', '1', 'Anis Wahyudi'),
(16, 'Pendidikan Kewarganegaraan', 'PKN', '1', 'M. sulton Rohadi'),
(17, 'Bahasa Indonesia', 'BIND', '1', 'Anis Wahyudi'),
(18, 'Bahasa Inggris', 'BING', '1', 'Endah Yulismiati'),
(19, 'Matematika', 'MTK', '1', 'Agus Setyono'),
(20, 'Biologi', 'BIO', '1', 'Anis Baswedan'),
(21, 'Fisika', 'Fis', '1', 'Sri Untayani'),
(22, 'Seni Budaya', 'SB', '1', 'Diana Indriasari'),
(23, 'Penjaskes', 'PJK', '1', 'Yanuar Lukmani Erfan'),
(24, 'Bahasa Jawa', 'BJ', '1', 'Muhamad Soim'),
(25, 'Sejarah', 'SEJ', '1', 'Agus Setyono'),
(26, 'Kimia', 'KM', '1', 'Yanti');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id` int(200) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `id_semester` enum('1','2') NOT NULL,
  `tahun_ajar` varchar(20) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `nilai_umum` varchar(100) NOT NULL,
  `nilai_huruf` enum('SB','B','KB') NOT NULL,
  `ekstra` varchar(20) NOT NULL,
  `nilai_ekstra` varchar(20) NOT NULL,
  `sakit` int(10) NOT NULL,
  `izin` int(100) NOT NULL,
  `alfa` int(10) NOT NULL,
  `akhlak` varchar(11) NOT NULL,
  `kepribadian` varchar(11) NOT NULL,
  `ket` varchar(11) NOT NULL,
  `kd_raport` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id`, `nama`, `nisn`, `nama_kelas`, `id_semester`, `tahun_ajar`, `nama_mapel`, `nilai_umum`, `nilai_huruf`, `ekstra`, `nilai_ekstra`, `sakit`, `izin`, `alfa`, `akhlak`, `kepribadian`, `ket`, `kd_raport`) VALUES
(654, 'Dhavina', '18092', '10', '1', '2018/2019 Ganjil', '  Bahasa Indonesia', '90', 'SB', 'keren', '', 1, 2, 0, '', '', '', '1958'),
(655, 'Dhavina', '18092', '10', '1', '2018/2019 Ganjil', '  Bahasa Inggris', '85', 'KB', 'keren', '', 1, 2, 0, '', '', '', '1958'),
(656, 'Dhavina', '18092', '10', '1', '2018/2019 Ganjil', '  Bahasa Jawa', '79', 'B', 'keren', '', 1, 2, 0, '', '', '', '1958'),
(657, 'Dhavina', '18092', '10', '1', '2018/2019 Ganjil', '  Biologi', '90', 'SB', 'keren', '', 1, 2, 0, '', '', '', '1958'),
(658, 'Dhavina', '18092', '10', '1', '2018/2019 Ganjil', '  Fisika', '80', 'B', 'keren', '', 1, 2, 0, '', '', '', '1958'),
(659, 'Dhavina', '18092', '10', '1', '2018/2019 Ganjil', '  Kimia', '81', 'B', 'keren', '', 1, 2, 0, '', '', '', '1958'),
(660, 'Dhavina', '18092', '10', '1', '2018/2019 Ganjil', '  Matematika', '75', 'B', 'keren', '', 1, 2, 0, '', '', '', '1958'),
(661, 'Dhavina', '18092', '10', '1', '2018/2019 Ganjil', '  Pendidikan Agama', '71', 'KB', 'keren', '', 1, 2, 0, '', '', '', '1958'),
(662, 'Dhavina', '18092', '10', '1', '2018/2019 Ganjil', '  Pendidikan Kewarganegaraan', '70', 'KB', 'keren', '', 1, 2, 0, '', '', '', '1958'),
(663, 'Dhavina', '18092', '10', '1', '2018/2019 Ganjil', '  Penjaskes', '89', 'B', 'keren', '', 1, 2, 0, '', '', '', '1958'),
(664, 'Dhavina', '18092', '10', '1', '2018/2019 Ganjil', '  Sejarah', '85', 'B', 'keren', '', 1, 2, 0, '', '', '', '1958'),
(665, 'Dhavina', '18092', '10', '1', '2018/2019 Ganjil', '  Seni Budaya', '80', 'B', 'keren', '', 1, 2, 0, '', '', '', '1958'),
(666, 'Aghis', '18091', '12', '2', '2018/2019 Genap', '  Bahasa Indonesia', '90', 'SB', 'Paduan Suara', '80', 2, 0, 1, '', '', '', '1194'),
(667, 'Aghis', '18091', '12', '2', '2018/2019 Genap', '  Bahasa Inggris', '80', 'B', 'Paduan Suara', '80', 2, 0, 1, '', '', '', '1194'),
(668, 'Aghis', '18091', '12', '2', '2018/2019 Genap', '  Bahasa Jawa', '85', 'B', 'Paduan Suara', '80', 2, 0, 1, '', '', '', '1194'),
(669, 'Aghis', '18091', '12', '2', '2018/2019 Genap', '  Biologi', '80', 'B', 'Paduan Suara', '80', 2, 0, 1, '', '', '', '1194'),
(670, 'Aghis', '18091', '12', '2', '2018/2019 Genap', '  Fisika', '95', 'SB', 'Paduan Suara', '80', 2, 0, 1, '', '', '', '1194'),
(671, 'Aghis', '18091', '12', '2', '2018/2019 Genap', '  Kimia', '90', 'SB', 'Paduan Suara', '80', 2, 0, 1, '', '', '', '1194'),
(672, 'Aghis', '18091', '12', '2', '2018/2019 Genap', '  Matematika', '85', 'B', 'Paduan Suara', '80', 2, 0, 1, '', '', '', '1194'),
(673, 'Aghis', '18091', '12', '2', '2018/2019 Genap', '  Pendidikan Agama', '75', 'KB', 'Paduan Suara', '80', 2, 0, 1, '', '', '', '1194'),
(674, 'Aghis', '18091', '12', '2', '2018/2019 Genap', '  Pendidikan Kewarganegaraan', '80', 'B', 'Paduan Suara', '80', 2, 0, 1, '', '', '', '1194'),
(675, 'Aghis', '18091', '12', '2', '2018/2019 Genap', '  Penjaskes', '90', 'SB', 'Paduan Suara', '80', 2, 0, 1, '', '', '', '1194'),
(676, 'Aghis', '18091', '12', '2', '2018/2019 Genap', '  Sejarah', '95', 'SB', 'Paduan Suara', '80', 2, 0, 1, '', '', '', '1194'),
(677, 'Aghis', '18091', '12', '2', '2018/2019 Genap', '  Seni Budaya', '80', 'B', 'Paduan Suara', '80', 2, 0, 1, '', '', '', '1194'),
(678, 'Radhyana', '18093', '10', '2', '2018/2019 Genap', '  Bahasa Indonesia', '90', 'SB', '', '', 2, 0, 0, '', '', '', '1996'),
(679, 'Radhyana', '18093', '10', '2', '2018/2019 Genap', '  Bahasa Inggris', '85', 'B', '', '', 2, 0, 0, '', '', '', '1996'),
(680, 'Radhyana', '18093', '10', '2', '2018/2019 Genap', '  Bahasa Jawa', '90', 'SB', '', '', 2, 0, 0, '', '', '', '1996'),
(681, 'Radhyana', '18093', '10', '2', '2018/2019 Genap', '  Biologi', '90', 'SB', '', '', 2, 0, 0, '', '', '', '1996'),
(682, 'Radhyana', '18093', '10', '2', '2018/2019 Genap', '  Fisika', '80', 'B', '', '', 2, 0, 0, '', '', '', '1996'),
(683, 'Radhyana', '18093', '10', '2', '2018/2019 Genap', '  Kimia', '90', 'SB', '', '', 2, 0, 0, '', '', '', '1996'),
(684, 'Radhyana', '18093', '10', '2', '2018/2019 Genap', '  Matematika', '85', 'B', '', '', 2, 0, 0, '', '', '', '1996'),
(685, 'Radhyana', '18093', '10', '2', '2018/2019 Genap', '  Pendidikan Agama', '75', 'KB', '', '', 2, 0, 0, '', '', '', '1996'),
(686, 'Radhyana', '18093', '10', '2', '2018/2019 Genap', '  Pendidikan Kewarganegaraan', '85', 'B', '', '', 2, 0, 0, '', '', '', '1996'),
(687, 'Radhyana', '18093', '10', '2', '2018/2019 Genap', '  Penjaskes', '85', 'B', '', '', 2, 0, 0, '', '', '', '1996'),
(688, 'Radhyana', '18093', '10', '2', '2018/2019 Genap', '  Sejarah', '80', 'B', '', '', 2, 0, 0, '', '', '', '1996'),
(689, 'Radhyana', '18093', '10', '2', '2018/2019 Genap', '  Seni Budaya', '90', 'SB', '', '', 2, 0, 0, '', '', '', '1996'),
(690, 'Raffi', '18095', '10', '2', '2018/2019 Genap', '  Bahasa Indonesia', '80', 'B', '', '', 0, 0, 0, '', '', '', '1902'),
(691, 'Raffi', '18095', '10', '2', '2018/2019 Genap', '  Bahasa Inggris', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1902'),
(692, 'Raffi', '18095', '10', '2', '2018/2019 Genap', '  Bahasa Jawa', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1902'),
(693, 'Raffi', '18095', '10', '2', '2018/2019 Genap', '  Biologi', '85', 'B', '', '', 0, 0, 0, '', '', '', '1902'),
(694, 'Raffi', '18095', '10', '2', '2018/2019 Genap', '  Fisika', '80', 'B', '', '', 0, 0, 0, '', '', '', '1902'),
(695, 'Raffi', '18095', '10', '2', '2018/2019 Genap', '  Kimia', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1902'),
(696, 'Raffi', '18095', '10', '2', '2018/2019 Genap', '  Matematika', '85', 'B', '', '', 0, 0, 0, '', '', '', '1902'),
(697, 'Raffi', '18095', '10', '2', '2018/2019 Genap', '  Pendidikan Agama', '80', 'B', '', '', 0, 0, 0, '', '', '', '1902'),
(698, 'Raffi', '18095', '10', '2', '2018/2019 Genap', '  Pendidikan Kewarganegaraan', '80', 'B', '', '', 0, 0, 0, '', '', '', '1902'),
(699, 'Raffi', '18095', '10', '2', '2018/2019 Genap', '  Penjaskes', '75', 'KB', '', '', 0, 0, 0, '', '', '', '1902'),
(700, 'Raffi', '18095', '10', '2', '2018/2019 Genap', '  Sejarah', '80', 'B', '', '', 0, 0, 0, '', '', '', '1902'),
(701, 'Raffi', '18095', '10', '2', '2018/2019 Genap', '  Seni Budaya', '80', 'B', '', '', 0, 0, 0, '', '', '', '1902'),
(702, 'Berliana', '18094', '11', '2', '2018/2019 Genap', '  Bahasa Indonesia', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1091'),
(703, 'Berliana', '18094', '11', '2', '2018/2019 Genap', '  Bahasa Inggris', '80', 'B', '', '', 0, 0, 0, '', '', '', '1091'),
(704, 'Berliana', '18094', '11', '2', '2018/2019 Genap', '  Bahasa Jawa', '85', 'B', '', '', 0, 0, 0, '', '', '', '1091'),
(705, 'Berliana', '18094', '11', '2', '2018/2019 Genap', '  Biologi', '85', 'B', '', '', 0, 0, 0, '', '', '', '1091'),
(706, 'Berliana', '18094', '11', '2', '2018/2019 Genap', '  Fisika', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1091'),
(707, 'Berliana', '18094', '11', '2', '2018/2019 Genap', '  Kimia', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1091'),
(708, 'Berliana', '18094', '11', '2', '2018/2019 Genap', '  Matematika', '85', 'B', '', '', 0, 0, 0, '', '', '', '1091'),
(709, 'Berliana', '18094', '11', '2', '2018/2019 Genap', '  Pendidikan Agama', '80', 'B', '', '', 0, 0, 0, '', '', '', '1091'),
(710, 'Berliana', '18094', '11', '2', '2018/2019 Genap', '  Pendidikan Kewarganegaraan', '75', 'KB', '', '', 0, 0, 0, '', '', '', '1091'),
(711, 'Berliana', '18094', '11', '2', '2018/2019 Genap', '  Penjaskes', '70', 'KB', '', '', 0, 0, 0, '', '', '', '1091'),
(712, 'Berliana', '18094', '11', '2', '2018/2019 Genap', '  Sejarah', '80', 'B', '', '', 0, 0, 0, '', '', '', '1091'),
(713, 'Berliana', '18094', '11', '2', '2018/2019 Genap', '  Seni Budaya', '75', 'KB', '', '', 0, 0, 0, '', '', '', '1091'),
(714, 'Tegar', '18096', '11', '2', '2018/2019 Genap', '  Bahasa Indonesia', '80', 'B', '', '', 0, 0, 0, '', '', '', '1404'),
(715, 'Tegar', '18096', '11', '2', '2018/2019 Genap', '  Bahasa Inggris', '80', 'B', '', '', 0, 0, 0, '', '', '', '1404'),
(716, 'Tegar', '18096', '11', '2', '2018/2019 Genap', '  Bahasa Jawa', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1404'),
(717, 'Tegar', '18096', '11', '2', '2018/2019 Genap', '  Biologi', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1404'),
(718, 'Tegar', '18096', '11', '2', '2018/2019 Genap', '  Fisika', '85', 'B', '', '', 0, 0, 0, '', '', '', '1404'),
(719, 'Tegar', '18096', '11', '2', '2018/2019 Genap', '  Kimia', '85', 'B', '', '', 0, 0, 0, '', '', '', '1404'),
(720, 'Tegar', '18096', '11', '2', '2018/2019 Genap', '  Matematika', '80', 'B', '', '', 0, 0, 0, '', '', '', '1404'),
(721, 'Tegar', '18096', '11', '2', '2018/2019 Genap', '  Pendidikan Agama', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1404'),
(722, 'Tegar', '18096', '11', '2', '2018/2019 Genap', '  Pendidikan Kewarganegaraan', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1404'),
(723, 'Tegar', '18096', '11', '2', '2018/2019 Genap', '  Penjaskes', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1404'),
(724, 'Tegar', '18096', '11', '2', '2018/2019 Genap', '  Sejarah', '85', 'B', '', '', 0, 0, 0, '', '', '', '1404'),
(725, 'Tegar', '18096', '11', '2', '2018/2019 Genap', '  Seni Budaya', '80', 'B', '', '', 0, 0, 0, '', '', '', '1404'),
(726, 'Ica', '18097', '11', '2', '2018/2019 Genap', '  Bahasa Indonesia', '88', 'SB', '', '', 0, 0, 0, '', '', '', '1346'),
(727, 'Ica', '18097', '11', '2', '2018/2019 Genap', '  Bahasa Inggris', '78', 'KB', '', '', 0, 0, 0, '', '', '', '1346'),
(728, 'Ica', '18097', '11', '2', '2018/2019 Genap', '  Bahasa Jawa', '80', 'B', '', '', 0, 0, 0, '', '', '', '1346'),
(729, 'Ica', '18097', '11', '2', '2018/2019 Genap', '  Biologi', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1346'),
(730, 'Ica', '18097', '11', '2', '2018/2019 Genap', '  Fisika', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1346'),
(731, 'Ica', '18097', '11', '2', '2018/2019 Genap', '  Kimia', '79', 'B', '', '', 0, 0, 0, '', '', '', '1346'),
(732, 'Ica', '18097', '11', '2', '2018/2019 Genap', '  Matematika', '85', 'B', '', '', 0, 0, 0, '', '', '', '1346'),
(733, 'Ica', '18097', '11', '2', '2018/2019 Genap', '  Pendidikan Agama', '77', 'KB', '', '', 0, 0, 0, '', '', '', '1346'),
(734, 'Ica', '18097', '11', '2', '2018/2019 Genap', '  Pendidikan Kewarganegaraan', '95', 'SB', '', '', 0, 0, 0, '', '', '', '1346'),
(735, 'Ica', '18097', '11', '2', '2018/2019 Genap', '  Penjaskes', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1346'),
(736, 'Ica', '18097', '11', '2', '2018/2019 Genap', '  Sejarah', '70', 'KB', '', '', 0, 0, 0, '', '', '', '1346'),
(737, 'Ica', '18097', '11', '2', '2018/2019 Genap', '  Seni Budaya', '85', 'B', '', '', 0, 0, 0, '', '', '', '1346'),
(738, 'Afrida', '18098', '12', '2', '2018/2019 Genap', '  Bahasa Indonesia', '88', 'SB', '', '', 0, 0, 0, '', '', '', '1635'),
(739, 'Afrida', '18098', '12', '2', '2018/2019 Genap', '  Bahasa Inggris', '86', 'SB', '', '', 0, 0, 0, '', '', '', '1635'),
(740, 'Afrida', '18098', '12', '2', '2018/2019 Genap', '  Bahasa Jawa', '79', 'B', '', '', 0, 0, 0, '', '', '', '1635'),
(741, 'Afrida', '18098', '12', '2', '2018/2019 Genap', '  Biologi', '80', 'B', '', '', 0, 0, 0, '', '', '', '1635'),
(742, 'Afrida', '18098', '12', '2', '2018/2019 Genap', '  Fisika', '85', 'B', '', '', 0, 0, 0, '', '', '', '1635'),
(743, 'Afrida', '18098', '12', '2', '2018/2019 Genap', '  Kimia', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1635'),
(744, 'Afrida', '18098', '12', '2', '2018/2019 Genap', '  Matematika', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1635'),
(745, 'Afrida', '18098', '12', '2', '2018/2019 Genap', '  Pendidikan Agama', '78', 'B', '', '', 0, 0, 0, '', '', '', '1635'),
(746, 'Afrida', '18098', '12', '2', '2018/2019 Genap', '  Pendidikan Kewarganegaraan', '75', 'KB', '', '', 0, 0, 0, '', '', '', '1635'),
(747, 'Afrida', '18098', '12', '2', '2018/2019 Genap', '  Penjaskes', '80', 'B', '', '', 0, 0, 0, '', '', '', '1635'),
(748, 'Afrida', '18098', '12', '2', '2018/2019 Genap', '  Sejarah', '85', 'B', '', '', 0, 0, 0, '', '', '', '1635'),
(749, 'Afrida', '18098', '12', '2', '2018/2019 Genap', '  Seni Budaya', '89', 'SB', '', '', 0, 0, 0, '', '', '', '1635'),
(750, 'Miftah', '18099', '12', '2', '2018/2019 Genap', '  Bahasa Indonesia', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1442'),
(751, 'Miftah', '18099', '12', '2', '2018/2019 Genap', '  Bahasa Inggris', '92', 'SB', '', '', 0, 0, 0, '', '', '', '1442'),
(752, 'Miftah', '18099', '12', '2', '2018/2019 Genap', '  Bahasa Jawa', '80', 'B', '', '', 0, 0, 0, '', '', '', '1442'),
(753, 'Miftah', '18099', '12', '2', '2018/2019 Genap', '  Biologi', '75', 'KB', '', '', 0, 0, 0, '', '', '', '1442'),
(754, 'Miftah', '18099', '12', '2', '2018/2019 Genap', '  Fisika', '88', 'SB', '', '', 0, 0, 0, '', '', '', '1442'),
(755, 'Miftah', '18099', '12', '2', '2018/2019 Genap', '  Kimia', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1442'),
(756, 'Miftah', '18099', '12', '2', '2018/2019 Genap', '  Matematika', '70', 'KB', '', '', 0, 0, 0, '', '', '', '1442'),
(757, 'Miftah', '18099', '12', '2', '2018/2019 Genap', '  Pendidikan Agama', '80', 'B', '', '', 0, 0, 0, '', '', '', '1442'),
(758, 'Miftah', '18099', '12', '2', '2018/2019 Genap', '  Pendidikan Kewarganegaraan', '82', 'B', '', '', 0, 0, 0, '', '', '', '1442'),
(759, 'Miftah', '18099', '12', '2', '2018/2019 Genap', '  Penjaskes', '90', 'SB', '', '', 0, 0, 0, '', '', '', '1442'),
(760, 'Miftah', '18099', '12', '2', '2018/2019 Genap', '  Sejarah', '95', 'SB', '', '', 0, 0, 0, '', '', '', '1442'),
(761, 'Miftah', '18099', '12', '2', '2018/2019 Genap', '  Seni Budaya', '99', 'SB', '', '', 0, 0, 0, '', '', '', '1442'),
(762, 'Bfindah', '18100', '12', '2', '2018/2019 Ganjil', '  Bahasa Indonesia', '99', 'SB', '', '', 0, 0, 0, '', '', '', '1076'),
(763, 'Bfindah', '18100', '12', '2', '2018/2019 Ganjil', '  Bahasa Inggris', '80', 'B', '', '', 0, 0, 0, '', '', '', '1076'),
(764, 'Bfindah', '18100', '12', '2', '2018/2019 Ganjil', '  Bahasa Jawa', '88', 'SB', '', '', 0, 0, 0, '', '', '', '1076'),
(765, 'Bfindah', '18100', '12', '2', '2018/2019 Ganjil', '  Biologi', '82', 'B', '', '', 0, 0, 0, '', '', '', '1076'),
(766, 'Bfindah', '18100', '12', '2', '2018/2019 Ganjil', '  Fisika', '92', 'SB', '', '', 0, 0, 0, '', '', '', '1076'),
(767, 'Bfindah', '18100', '12', '2', '2018/2019 Ganjil', '  Kimia', '70', 'KB', '', '', 0, 0, 0, '', '', '', '1076'),
(768, 'Bfindah', '18100', '12', '2', '2018/2019 Ganjil', '  Matematika', '72', 'KB', '', '', 0, 0, 0, '', '', '', '1076'),
(769, 'Bfindah', '18100', '12', '2', '2018/2019 Ganjil', '  Pendidikan Agama', '80', 'B', '', '', 0, 0, 0, '', '', '', '1076'),
(770, 'Bfindah', '18100', '12', '2', '2018/2019 Ganjil', '  Pendidikan Kewarganegaraan', '82', 'B', '', '', 0, 0, 0, '', '', '', '1076'),
(771, 'Bfindah', '18100', '12', '2', '2018/2019 Ganjil', '  Penjaskes', '73', 'KB', '', '', 0, 0, 0, '', '', '', '1076'),
(772, 'Bfindah', '18100', '12', '2', '2018/2019 Ganjil', '  Sejarah', '90', 'B', '', '', 0, 0, 0, '', '', '', '1076'),
(773, 'Bfindah', '18100', '12', '2', '2018/2019 Ganjil', '  Seni Budaya', '89', 'B', '', '', 0, 0, 0, '', '', '', '1076');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profil`
--

CREATE TABLE `tbl_profil` (
  `id` int(20) NOT NULL,
  `nm_sekolah` varchar(100) NOT NULL,
  `npsn` int(30) NOT NULL,
  `jenjang` varchar(20) NOT NULL,
  `akreditasi` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kepsek_nama` varchar(30) NOT NULL,
  `kepsek_nip` varchar(30) NOT NULL,
  `kepsek_pangkat` varchar(30) NOT NULL,
  `kepsek_jabatan` varchar(30) NOT NULL,
  `kepsek_alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_profil`
--

INSERT INTO `tbl_profil` (`id`, `nm_sekolah`, `npsn`, `jenjang`, `akreditasi`, `alamat`, `kepsek_nama`, `kepsek_nip`, `kepsek_pangkat`, `kepsek_jabatan`, `kepsek_alamat`) VALUES
(1, 'SMAN 16 SURABAYA', 567889, 'SMA', 'A', 'Jl. Raya Prapen Surabaya', 'HJ.RA ROOSDIANTINI', '19711030 1994102 O89', 'Pembina/ Va', 'Guru ahli madya', 'Gunungsari Timur Blok A No.7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(200) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `namaayah` varchar(30) NOT NULL,
  `namaibu` varchar(30) NOT NULL,
  `kerjaayah` varchar(20) NOT NULL,
  `kerjaibu` varchar(20) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `nis`, `nisn`, `nama`, `jk`, `tmp_lahir`, `tgl_lahir`, `agama`, `alamat`, `namaayah`, `namaibu`, `kerjaayah`, `kerjaibu`, `nama_kelas`) VALUES
(11, '18092', '19024', 'Dhavina', 'P', 'Sidoarjo', '2017-07-13', 'Islam', 'JL.kodam', 'Budi', 'Ismatun', 'Tentara', 'Dokter', 'KELAS 10'),
(12, '18091', '19023', 'Aghis', 'L', 'Mojokerto', '2011-02-09', 'Islam', 'JL.hayam', 'Elang', 'Pertiwi', 'Tentara', 'Ibu rumah tangga', 'KELAS 12'),
(13, '18093', '19024', 'Radhyana', 'P', 'Surabaya', '2023-06-08', 'Islam', 'jl.sebelah kantor pos', 'Uut', 'Siti', 'Wirausaha', 'Ibu rumah tangga', 'KELAS 11'),
(14, '18094', '19025', 'Berliana', 'P', 'Papua', '2012-03-13', 'Islam', 'Jalan Kutisari Utara No. 52', 'Setyawan', 'Riri', 'Karyawan', 'Pedagang', 'KELAS 12'),
(16, '18095', '19026', 'Raffi', 'L', 'Tuban', '2003-07-15', 'Islam', 'JL. Mawar', 'TRI', 'SRI', 'Karyawan', 'Ibu Rumah Tangg', 'KELAS 10'),
(17, '18096', '19027', 'Tegar', 'L', 'Madura', '2006-02-12', 'Islam', 'Melati', 'Wahyu', 'Gina', 'Tentara', 'Dokter', 'KELAS 11'),
(18, '18097', '19028', 'Ica', 'P', 'Wonosobo', '2003-06-13', 'Islam', 'Kendalsari', 'Gilang', 'Roro', 'Wiraswasta', '-', 'KELAS 11'),
(19, '18098', '19029', 'Afrida', 'P', 'Sidoarjo', '2003-03-25', 'Islam', 'Gajahmada', 'Waluyo', 'Krisdayanti', 'Swasta', 'Ibu ', 'KELAS 12'),
(20, '18099', '19030', 'Miftah', 'L', 'Bali', '2016-03-15', 'Budha', 'Jl.Langgeng', 'Miswar', 'Kanti', 'PNS', 'PNS', 'KELAS 12'),
(21, '18100', '19031', 'Bfindah', 'P', 'Surabaya', '2003-01-07', 'Islam', 'Kutisari ', 'Saikhu', 'Bunda', 'Swasta', 'PNS', 'KELAS 12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tahun`
--

CREATE TABLE `tbl_tahun` (
  `id` int(11) NOT NULL,
  `tahun_ajar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_tahun`
--

INSERT INTO `tbl_tahun` (`id`, `tahun_ajar`) VALUES
(1, '2018/2019 Ganjil'),
(2, '2018/2019 Genap');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(32) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama`, `email`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@gmail.com', 1),
(2, 'walikelas', '202cb962ac59075b964b07152d234b70', 'Nadela Maaherish', 'davdav@gmail.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama_guru` (`nama_guru`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `nama_kelas` (`nama_kelas`),
  ADD KEY `nama_kelas_2` (`nama_kelas`);

--
-- Indexes for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`id_mapel`),
  ADD KEY `nama_guru` (`nama_guru`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama_kelas` (`nama_kelas`),
  ADD KEY `nama_kelas_2` (`nama_kelas`);

--
-- Indexes for table `tbl_tahun`
--
ALTER TABLE `tbl_tahun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id_mapel` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=774;

--
-- AUTO_INCREMENT for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_tahun`
--
ALTER TABLE `tbl_tahun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
