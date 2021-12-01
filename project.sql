-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2021 pada 14.07
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id_pesanan` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `id_wisata` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id_pesanan`, `username`, `id_wisata`) VALUES
(8, 'taufiqul', 3),
(9, 'taufiqul', 2),
(10, 'aptiyan', 2),
(15, 'elfira', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `nomor` varchar(14) NOT NULL,
  `alamat` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `email`, `password`, `nama`, `nomor`, `alamat`) VALUES
('aptiyan', 'aptiyan@email.com', '123', 'Aptiyan', '089565678904', 'Piyungan,Bantul,Yogyakarta'),
('elfira', 'elfirasatyap@gmail.c', '123', 'Elfira Satya Pramesti', '082142000728', 'Jl. Bengawan Solo No.12 Kec. Kedopok, Kel. Jrebeng Wetan, Probolinggo'),
('Evita', 'evita@gmail.com', '123', 'Evita Putri', '08927465829', 'Jl. Ikan Paus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama_wisata` varchar(60) NOT NULL,
  `deskripsi` varchar(256) NOT NULL,
  `foto` varchar(256) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `deskripsi`, `foto`, `harga`) VALUES
(1, 'Museum Merapi', 'Museum Gunung Merapi merupakan museum bersejarah yang terdapat di Yogyakarta tepatnya Jln. Boyong, Dusun Banteng, Desa Harjobinangun, Kecamatan Pakem, Kabupaten Sleman, Yogyakarta sekitar lima kilometer dari kawasan objek wisata Kaliurang', 'museum_merapi.jpg', 100000),
(2, 'Bunker Kaliadem', 'Wisata Bunker Kaliadem adalah obyek wisata alam dimana pengunjung dapat menyaksikan kegagahan Gunung Merapi dari dekat ', 'bunker.jpg', 100000),
(3, 'Sindu Kusuma Edupark', 'Taman hiburan dengan wahana untuk anak & dewasa, termasuk bianglala raksasa, zipline, & Segway', 'sindu.jpg', 130000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `username` (`username`),
  ADD KEY `pesanan_ibfk_1` (`id_wisata`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
