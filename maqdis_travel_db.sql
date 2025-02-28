-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 27 Feb 2025 pada 13.18
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maqdis_travel_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `Ayat`
--

CREATE TABLE `Ayat` (
  `ayatid` varchar(191) NOT NULL,
  `teks_ayat` varchar(191) NOT NULL,
  `terjemahan` varchar(191) DEFAULT NULL,
  `urutan_ayat` int(11) NOT NULL,
  `doaid` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Ayat`
--

INSERT INTO `Ayat` (`ayatid`, `teks_ayat`, `terjemahan`, `urutan_ayat`, `doaid`) VALUES
('0323c31f-661b-4357-9cdd-adf0b4bc1a54', 'لَمْ يَلِدْ وَلَمْ يُولَدْ', 'Dia tiada beranak dan tiada diperanakkan', 3, '5987233c-34cc-402d-bbf2-7244c6ed4b51'),
('0b9c45ee-e8a4-42e7-bdd5-cc31bec5c81d', 'وَلَا أَنتُمْ عَابِدُونَ مَا أَعْبُدُ', 'Dan kamu pun tidak menyembah apa yang aku sembah', 5, '8fca249e-d255-42b6-b9b0-db0bb55166b7'),
('1f088a06-b8aa-4205-a87a-4ce7db452c1c', 'إِنَّ فِي خَلْقِ السَّمَاوَاتِ وَالْأَرْضِ', 'Sesungguhnya dalam penciptaan langit dan bumi', 1, '99b86069-1f51-477a-aef0-6156d490d3ec'),
('29a65c17-9a37-4863-994c-457c97d8f25c', 'وَقَدْ خَابَ مَنْ دَسَّاهَا', 'Dan sungguh rugi orang yang mengotorinya', 2, '837bc323-f24d-4991-bdab-6ea0e38839af'),
('2ec94dc3-931d-4cd6-a5aa-193ba4a2de7c', 'وَلَمْ يَكُن لَّهُۥۤۚ كُفُوًا أَحَدٌ', 'Dan tiada seorangpun yang setara dengan-Nya', 4, '5987233c-34cc-402d-bbf2-7244c6ed4b51'),
('2f20f149-dcc4-45b5-b387-386a95b0acb8', 'قَدْ أَفْلَحَ مَنْ زَكَّاهَا', 'Sungguh beruntung orang yang membersihkan dirinya', 1, '837bc323-f24d-4991-bdab-6ea0e38839af'),
('3a7affc2-81c8-4334-9b77-563267c61682', 'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ', 'Segala puji bagi Allah, Tuhan seluruh alam', 2, '5d5a677f-98ee-428b-bd4b-c937c68d18a7'),
('43bbdddd-96df-4fb3-bd18-b2deea8057a6', 'وَلَا أَنتُمْ عَابِدُونَ مَا أَعْبُدُ', 'Dan kamu pun tidak menyembah apa yang aku sembah', 3, '8fca249e-d255-42b6-b9b0-db0bb55166b7'),
('45ed703a-94f2-4bb6-aaa3-c51b458ee8e8', 'اللَّهُ الصَّمَدُ', 'Allah adalah Tuhan yang bergantung kepada-Nya segala sesuatu', 2, '5987233c-34cc-402d-bbf2-7244c6ed4b51'),
('4ce8861e-8f65-4507-9431-119d8ffc6c48', 'لَمْ يَلِدْ وَلَمْ يُولَدْ', 'Dia tiada beranak dan tiada diperanakkan', 3, 'e1bb2324-08af-4725-b861-cfb0bf8953c2'),
('5896430e-9f38-4614-999e-03e3e54e3def', 'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ', 'Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang', 1, '5d5a677f-98ee-428b-bd4b-c937c68d18a7'),
('6a629ded-6240-434a-bfb4-c17da2ed4fbc', 'إِنَّ اللَّهَ وَمَلَائِكَتَهُ يُصَلُّونَ عَلَى النَّبِيِّ', 'Sesungguhnya Allah dan malaikat-Nya bershalawat untuk nabi', 1, 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d'),
('6b206b90-93c6-4290-a776-2caed38a667d', 'اللَّهُ الصَّمَدُ', 'Allah adalah Tuhan yang bergantung kepada-Nya segala sesuatu', 2, 'e1bb2324-08af-4725-b861-cfb0bf8953c2'),
('7248e3be-37be-47ef-b34b-ccdb09f37602', 'لَا أَعْبُدُ مَا تَعْبُدُونَ', 'Aku tidak menyembah apa yang kamu sembah', 2, '8fca249e-d255-42b6-b9b0-db0bb55166b7'),
('79f0527a-f4b7-40be-85fe-1b309c22171b', 'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ', 'Hanya kepada Engkaulah kami menyembah, dan hanya kepada Engkaulah kami memohon pertolongan', 5, '5d5a677f-98ee-428b-bd4b-c937c68d18a7'),
('7a80dffd-bc1f-4989-ac91-0694664ef74c', 'وَلَمْ يَكُن لَّهُۥۤۚ كُفُوًا أَحَدٌ', 'Dan tiada seorangpun yang setara dengan-Nya', 4, '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c'),
('848f5905-45b2-4a0d-b1a9-b3ccd1c35a58', 'وَفَجَرْنَاهُ فِي الَّذِي قَالَ', 'Dan Kami buka bagi mereka', 2, 'da3c5c18-3088-49b4-85e4-315f6cf46ad7'),
('8c4c494c-03fe-4eaa-8de8-b73d72678dc0', 'وَقَدْ خَابَ مَنْ دَسَّاهَا', 'Dan sungguh rugi orang yang mengotorinya', 2, '837bc323-f24d-4991-bdab-6ea0e38839af'),
('904ec4fb-5ba6-4e59-b0d2-0f24f4e657c3', 'اللَّهُ الصَّمَدُ', 'Allah adalah Tuhan yang bergantung kepada-Nya segala sesuatu', 2, '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c'),
('98494c3c-411d-4236-924c-a5b41db17baa', 'قُلْ هُوَ اللَّهُ أَحَدٌ', 'Katakanlah: \'Dia-lah Allah, Yang Maha Esa\'', 1, 'e1bb2324-08af-4725-b861-cfb0bf8953c2'),
('99d94ae6-31e3-4563-a8d3-7e06cd53303a', 'فَجَعَلْنَاهُ فِي قَلْبِهِ', 'Maka Kami jadikan hal itu dalam hatinya', 1, 'da3c5c18-3088-49b4-85e4-315f6cf46ad7'),
('b4555714-b864-457b-98d3-118b49c74a9a', 'وَاخْتِلَافِ اللَّيْلِ وَالنَّهَارِ', 'Dan pergantian malam dan siang', 2, '99b86069-1f51-477a-aef0-6156d490d3ec'),
('b8165281-d743-44f3-8e6a-104d382e9160', 'قُلْ هُوَ اللَّهُ أَحَدٌ', 'Katakanlah: \'Dia-lah Allah, Yang Maha Esa\'', 1, '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c'),
('bb1f099c-cffe-458c-b859-e3632a0de9e2', 'قَدْ أَفْلَحَ مَنْ زَكَّاهَا', 'Sungguh beruntung orang yang membersihkan dirinya', 1, '837bc323-f24d-4991-bdab-6ea0e38839af'),
('bc2ecbfe-6429-4796-9f99-a06f1cbcbdf8', 'مَالِكِ يَوْمِ الدِّينِ', 'Pemilik hari pembalasan', 4, '5d5a677f-98ee-428b-bd4b-c937c68d18a7'),
('d2731328-5e29-4aab-ba47-ffd08e63e308', 'وَمَاءً طَيِّبًا وَلَا تَجْزِئُونِ', 'Dan Aku memberi mereka air yang bersih', 2, '2fccec89-6e0a-4442-bfbd-85cf2a207769'),
('d4541aa2-f71f-4222-ab92-b6f14f06da4f', 'الرَّحْمَنِ الرَّحِيمِ', 'Yang Maha Pengasih lagi Maha Penyayang', 3, '5d5a677f-98ee-428b-bd4b-c937c68d18a7'),
('dbbfb08a-b113-4a45-8362-da76c5f8077f', 'وَلَا تَحْسَبَنَّ الَّذِينَ قُتِلُوا فِي سَبِيلِ اللَّهِ أَمْوَاتًا', 'Dan janganlah kamu mengira orang-orang yang gugur di jalan Allah itu mati', 1, '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05'),
('de5e1f18-df81-4705-a170-7d762f0506cc', 'أَقْرَأْتَ عَلَيْهِمْ آيَاتِي', 'Aku membacakan kepada mereka ayat-ayat-Ku', 1, '2fccec89-6e0a-4442-bfbd-85cf2a207769'),
('e6a7df54-8352-49c7-addd-549b297379b8', 'قُلْ يَا أَيُّهَا الْكَافِرُونَ', 'Katakanlah, \'Wahai orang-orang kafir\'', 1, '8fca249e-d255-42b6-b9b0-db0bb55166b7'),
('f18ab7a7-9feb-4241-a79c-33fc2ef80653', 'يَا أَيُّهَا الَّذِينَ آمَنُوا صَلُّوا عَلَيْهِ وَسَلِّمُوا تَسْلِيمًا', 'Wahai orang-orang yang beriman, bershalawatlah kamu kepadanya dan ucapkanlah salam penghormatan kepadanya', 2, 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d'),
('f2ffe27b-6e67-4a9c-8466-501752c020c1', 'وَلَا أَنَا عَابِدٌ مَّا عَبَدتُّمْ', 'Dan aku tidak pernah menyembah apa yang kamu sembah', 4, '8fca249e-d255-42b6-b9b0-db0bb55166b7'),
('fa90ad7a-328e-4ff4-a9f2-9292729b4254', 'لَمْ يَلِدْ وَلَمْ يُولَدْ', 'Dia tiada beranak dan tiada diperanakkan', 3, '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c'),
('ff8fae51-18a2-404c-9e77-a602e621252b', 'قُلْ هُوَ اللَّهُ أَحَدٌ', 'Katakanlah: \'Dia-lah Allah, Yang Maha Esa\'', 1, '5987233c-34cc-402d-bbf2-7244c6ed4b51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `DeleteAccReason`
--

CREATE TABLE `DeleteAccReason` (
  `reasonId` varchar(191) NOT NULL,
  `reason` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `DeleteAccReason`
--

INSERT INTO `DeleteAccReason` (`reasonId`, `reason`) VALUES
('23d49385-a3ce-4449-832c-56282b004899', 'Kesulitan memakai aplikasi'),
('29e84660-2e75-43e9-9149-8aec69cf2a19', 'Masalah keamanan akun'),
('34a55908-3bfb-42fc-ab36-82d89145d33e', 'Tidak lagi menggunakan aplikasi/layanan'),
('3fca33a6-1b50-4b6f-9e3d-58405f18336d', 'Menemukan alternatif lain'),
('4a153ae9-9e07-47b2-8754-d385c9d71ca4', 'Masalah privasi'),
('ae1846b1-b482-4931-ae42-2753976fc2b5', 'Aplikasi sering mengalami kendala'),
('b447f9b9-80e1-4b28-b88b-b91f92292cbb', 'Terlalu banyak notifikasi/email');

-- --------------------------------------------------------

--
-- Struktur dari tabel `DeletedUsers`
--

CREATE TABLE `DeletedUsers` (
  `deletedId` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT 'Unknown',
  `email` varchar(191) DEFAULT NULL,
  `alasan` varchar(191) NOT NULL,
  `deletedAt` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `DeletedUsers`
--

INSERT INTO `DeletedUsers` (`deletedId`, `userId`, `name`, `email`, `alasan`, `deletedAt`) VALUES
('5ba928e8-9e5b-438e-b80b-6dcd1466bd01', 'dc0fbd55-349f-4b09-9545-2e575ee76921', 'Rendezvous ', 'rendevous.lb@gmail.com', 'Masalah keamanan akun', '2025-02-27 09:25:11.552'),
('c9b7dd58-6c70-4ec8-b2d0-692a9f63ef2a', 'd84311e4-7cbd-40f1-a125-bf1fdb21f09d', 'Asep Jalaludin', 'rendevous.lb@gmail.com', 'Tidak lagi menggunakan aplikasi/layanan', '2025-02-27 09:10:20.826'),
('eb248cb2-f25b-4672-88ee-6122b0fd0b96', '3b76f7f7-1c2a-41ac-81ca-8653cc5886dc', 'Malin Kundang', 'rendevous.lb@gmail.com', 'uji coba hapus akun', '2025-02-27 12:04:16.676');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Doa`
--

CREATE TABLE `Doa` (
  `doaid` varchar(36) NOT NULL,
  `doa_urut` int(11) NOT NULL,
  `judul_doa` varchar(191) NOT NULL,
  `perjalananid` varchar(191) NOT NULL,
  `link_audio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Doa`
--

INSERT INTO `Doa` (`doaid`, `doa_urut`, `judul_doa`, `perjalananid`, `link_audio`) VALUES
('2fccec89-6e0a-4442-bfbd-85cf2a207769', 2, 'Doa Manasik 2', '8fa4a6c9-c71c-4342-8245-284dad782015', 'https://drive.google.com/file/d/1_2jMk5zFrZ5yKyE3dpAp19xZZh_nrvOc/view?usp=sharing'),
('5987233c-34cc-402d-bbf2-7244c6ed4b51', 2, 'Doa Umroh 2', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'https://drive.google.com/file/d/1_2jMk5zFrZ5yKyE3dpAp19xZZh_nrvOc/view?usp=sharing'),
('5d5a677f-98ee-428b-bd4b-c937c68d18a7', 1, 'Doa Umroh 1', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'https://drive.google.com/file/d/1_2jMk5zFrZ5yKyE3dpAp19xZZh_nrvOc/view?usp=sharing'),
('750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 3, 'Doa Tawaf Wada 3', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'https://drive.google.com/file/d/1_2jMk5zFrZ5yKyE3dpAp19xZZh_nrvOc/view?usp=sharing'),
('837bc323-f24d-4991-bdab-6ea0e38839af', 4, 'Doa Umroh 4', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'https://drive.google.com/file/d/1_2jMk5zFrZ5yKyE3dpAp19xZZh_nrvOc/view?usp=sharing'),
('8fca249e-d255-42b6-b9b0-db0bb55166b7', 1, 'Doa Tawaf Wada 1', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'https://drive.google.com/file/d/1_2jMk5zFrZ5yKyE3dpAp19xZZh_nrvOc/view?usp=sharing'),
('97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 3, 'Doa Manasik 3', '8fa4a6c9-c71c-4342-8245-284dad782015', 'https://drive.google.com/file/d/1_2jMk5zFrZ5yKyE3dpAp19xZZh_nrvOc/view?usp=sharing'),
('99b86069-1f51-477a-aef0-6156d490d3ec', 1, 'Doa Manasik 1', '8fa4a6c9-c71c-4342-8245-284dad782015', 'https://drive.google.com/file/d/1_2jMk5zFrZ5yKyE3dpAp19xZZh_nrvOc/view?usp=sharing'),
('bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 5, 'Doa Umroh 5', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'https://drive.google.com/file/d/1_2jMk5zFrZ5yKyE3dpAp19xZZh_nrvOc/view?usp=sharing'),
('da3c5c18-3088-49b4-85e4-315f6cf46ad7', 3, 'Doa Umroh 3', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'https://drive.google.com/file/d/1_2jMk5zFrZ5yKyE3dpAp19xZZh_nrvOc/view?usp=sharing'),
('e1bb2324-08af-4725-b861-cfb0bf8953c2', 2, 'Doa Tawaf Wada 2', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'https://drive.google.com/file/d/1_2jMk5zFrZ5yKyE3dpAp19xZZh_nrvOc/view?usp=sharing');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Grup`
--

CREATE TABLE `Grup` (
  `grupid` varchar(36) NOT NULL,
  `nama_grup` varchar(36) NOT NULL,
  `created_by` varchar(36) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `finish_at` datetime(3) DEFAULT NULL,
  `open_user` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `userId` varchar(36) NOT NULL,
  `roomid` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Grup`
--

INSERT INTO `Grup` (`grupid`, `nama_grup`, `created_by`, `created_at`, `finish_at`, `open_user`, `status`, `userId`, `roomid`) VALUES
('14756446-06c2-4adc-96e6-c9416cf7342e', 'Grup Cuma Test Doang', 'Ustad Juragan Domba', '2025-02-18 06:44:30.797', NULL, 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '67b42c5fb72a0fec60b4b1c3'),
('5d904bf1-ac58-4941-b0f6-a70c6d27fa93', 'Test Group Umroh 22xx', 'Ustad Juragan Sapi', '2025-02-26 10:33:45.854', NULL, 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '67beee31b72a0fec60b7f10d'),
('854ecd88-0125-4466-8112-ffd6ab1bee8d', 'Grup July 2025', 'Ustad Juragan Domba', '2025-02-18 05:04:06.005', NULL, 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', NULL),
('8c7781fe-7809-426f-9936-690a7f941067', 'Test Group Umroh 21xx', 'Ustad Juragan Domba', '2025-02-23 09:41:46.648', NULL, 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '67baed79b72a0fec60b6d8ff'),
('9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'Test Umroh Group 20xx', 'Ustad 2', '2025-02-19 08:02:04.839', NULL, 1, 'open', 'a29c9407-f979-4a8b-92c9-405e9484c893', '67b99791b72a0fec60b689c1'),
('b1b4eeda-a6cc-4f1c-8a71-b6d47bcf050b', 'Grup Acumalaka 2025', 'Ustad 2', '2025-02-22 09:19:04.277', NULL, 1, 'open', 'a29c9407-f979-4a8b-92c9-405e9484c893', NULL),
('ca691cdf-f626-495a-b703-19c06fa5879b', 'Grup July 2025', 'Ustad Juragan Domba', '2025-02-17 06:13:46.962', NULL, 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', NULL),
('d893af56-b8db-49c8-9dcf-34d567e21bcc', 'Grup Test Maqdis Travel 2025', 'Ustad Juragan Sapi', '2025-02-25 07:55:50.221', NULL, 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '67bd7869b72a0fec60b782ce');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Perjalanan`
--

CREATE TABLE `Perjalanan` (
  `perjalananid` varchar(36) NOT NULL,
  `nama_perjalanan` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Perjalanan`
--

INSERT INTO `Perjalanan` (`perjalananid`, `nama_perjalanan`, `sort_order`) VALUES
('3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', 2),
('8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', 0),
('cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `Peserta_Grup`
--

CREATE TABLE `Peserta_Grup` (
  `peserta_grupid` varchar(36) NOT NULL,
  `grupid` varchar(36) NOT NULL,
  `userId` varchar(36) NOT NULL,
  `roomid` varchar(191) DEFAULT NULL,
  `joinedAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `online` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Peserta_Grup`
--

INSERT INTO `Peserta_Grup` (`peserta_grupid`, `grupid`, `userId`, `roomid`, `joinedAt`, `online`) VALUES
('27b3adad-bf4b-4ec4-880c-07cbf9a5daf9', '8c7781fe-7809-426f-9936-690a7f941067', '9e4895b6-72af-4dea-b173-b61f52d842bf', NULL, '2025-02-23 09:53:53.380', '0'),
('65335ae0-f3eb-4e64-8ad2-5806f67c4d01', '5d904bf1-ac58-4941-b0f6-a70c6d27fa93', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', NULL, '2025-02-26 10:35:48.062', '0'),
('730741d9-36ca-4f8e-97da-69c8095ef256', '5d904bf1-ac58-4941-b0f6-a70c6d27fa93', 'a719da8d-3c9b-41bb-8173-f727924d5293', NULL, '2025-02-27 05:44:16.176', '0'),
('bd96f308-f250-489e-b50c-8e6f82309ec7', '8c7781fe-7809-426f-9936-690a7f941067', '72db81fb-6bfc-40d0-a125-602b49c275d3', NULL, '2025-02-24 01:46:46.313', '0'),
('c01e6ac2-f959-42d3-b191-f729e3e1ffdd', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'dcddea17-223a-40aa-a691-869ebe5e958a', NULL, '2025-02-25 08:02:53.938', '0'),
('ea85e34d-f074-48cb-a7c0-2f6ab88692f9', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'a29c9407-f979-4a8b-92c9-405e9484c893', NULL, '2025-02-25 08:02:24.466', '0'),
('f2770bf7-b7c7-47be-9aac-21a7256dfd8f', '8c7781fe-7809-426f-9936-690a7f941067', '8709b7f0-b2f3-400d-a9d4-f3dc4f1d313e', NULL, '2025-02-24 04:03:51.893', '1'),
('fb91e0b3-527a-43ed-a9fb-30416d67ce08', '8c7781fe-7809-426f-9936-690a7f941067', 'd84cb7d9-b275-4368-9802-63e54209e669', NULL, '2025-02-23 09:55:06.668', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Profiles`
--

CREATE TABLE `Profiles` (
  `profileid` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `whatsapp` varchar(191) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `userId` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Profiles`
--

INSERT INTO `Profiles` (`profileid`, `name`, `whatsapp`, `photo`, `createdAt`, `updatedAt`, `userId`) VALUES
('017055ae-6ced-401b-92d1-bb873c0566c0', 'Ustad 3', '0881023758203', '', '2025-02-17 06:11:43.876', '2025-02-17 06:11:43.876', 'dcddea17-223a-40aa-a691-869ebe5e958a'),
('1c55da51-4bb6-4e40-b23b-d9db32485e8b', 'MAQDIS TOURS & TRAVEL', '', 'https://lh3.googleusercontent.com/a/ACg8ocItqQ_Ge8VfIBUf58V221bPoNJ7CUTZPEozhkm5FxCysPGgt0vs=s96-c', '2025-02-24 01:34:30.223', '2025-02-24 01:34:30.223', '72db81fb-6bfc-40d0-a125-602b49c275d3'),
('3be7ffb2-d2af-4688-91a6-e24e6617f7b5', 'Atmin Arkan', '081564949454', '', '2025-02-17 06:12:20.072', '2025-02-17 06:12:20.072', '79f57997-b1be-4587-b419-f7e100418b41'),
('510c2d74-cd7b-4fd5-9b33-99126b7c7449', 'Ustad Juragan Sapi', '0881023758568', NULL, '2025-02-17 06:08:25.854', '2025-02-25 07:25:22.687', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44'),
('5d2efa74-2b28-45ec-b1db-d4347db30e95', 'User 4', '0881023758104', '', '2025-02-17 06:10:11.909', '2025-02-17 06:10:11.909', '6ac85374-553b-47e3-9e60-9557d94a0b55'),
('62d78626-fba5-4b6f-bbef-39211e51326a', 'Hawimaw', '0881023758102', 'https://contoh.kitabantu.online/storage/resto/hawimaw.jpg', '2025-02-17 06:09:40.636', '2025-02-17 06:09:40.636', 'd84cb7d9-b275-4368-9802-63e54209e669'),
('7a0f32f1-75c4-4e15-b189-c58cdb56ee9d', 'Azki Maulana A', '08986921583', 'https://lh3.googleusercontent.com/a/ACg8ocII2yvM3mqoGE41lvfvxtjB1fDwhmwZkYQOjQLZfo3laF01ilJJ=s96-c', '2025-02-22 09:24:31.365', '2025-02-27 06:58:08.235', 'a719da8d-3c9b-41bb-8173-f727924d5293'),
('874c5953-8ff1-45c0-bcb0-f332f435f0c9', 'Maqdis Hamim', '', 'https://lh3.googleusercontent.com/a/ACg8ocKzctU5yUum1W2qtVmQyYkscqxT7OeeHSFa_b7JthH3q0OtjA=s96-c', '2025-02-24 04:02:53.793', '2025-02-24 04:02:53.793', '8709b7f0-b2f3-400d-a9d4-f3dc4f1d313e'),
('ce602ff7-e955-4e2c-bccf-5297b3f9316f', 'User 3', '0881023758103', '', '2025-02-17 06:09:54.211', '2025-02-17 06:09:54.211', '69756f8b-b069-4eaa-b35a-0f72b5693194'),
('d4f8bc62-5de7-4b91-81c4-4d31f59b423d', 'Ustad 2', '0881023758202', '', '2025-02-17 06:11:31.823', '2025-02-17 06:11:31.823', 'a29c9407-f979-4a8b-92c9-405e9484c893'),
('e1ce87dd-5dfb-4ece-acd9-7a7fa1f94f82', 'User 5', '0881023758105', '', '2025-02-17 06:10:42.762', '2025-02-17 06:10:42.762', '2f3e8378-f9a2-4ea3-b9b8-a1a14958084f'),
('ee930d57-9b6c-4655-9d01-8fe4fc2558d5', 'Azki Maulana', '', 'https://lh3.googleusercontent.com/a/ACg8ocII2yvM3mqoGE41lvfvxtjB1fDwhmwZkYQOjQLZfo3laF01ilJJ=s96-c', '2025-02-22 04:16:33.453', '2025-02-22 04:16:33.453', '9e4895b6-72af-4dea-b173-b61f52d842bf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Progress`
--

CREATE TABLE `Progress` (
  `progressid` varchar(36) NOT NULL,
  `grupid` varchar(36) NOT NULL,
  `jenis_perjalanan` varchar(20) NOT NULL,
  `live` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_finished` tinyint(1) NOT NULL DEFAULT 0,
  `waktu_mulai` datetime(3) DEFAULT NULL,
  `perjalananid` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Progress`
--

INSERT INTO `Progress` (`progressid`, `grupid`, `jenis_perjalanan`, `live`, `status`, `is_finished`, `waktu_mulai`, `perjalananid`) VALUES
('17ed2de2-3ce2-4da7-853c-d8a722010485', 'b1b4eeda-a6cc-4f1c-8a71-b6d47bcf050b', 'Towaf Wada', 0, 0, 0, NULL, NULL),
('23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'Towaf Wada', 0, 0, 1, '2025-02-22 14:08:41.304', '3aacc2cc-8e4e-41df-8400-266935dfc717'),
('28749f8c-2799-4a14-869c-d688ac11af85', 'b1b4eeda-a6cc-4f1c-8a71-b6d47bcf050b', 'Manasik', 0, 0, 0, NULL, NULL),
('29d76bde-5ea9-4b37-9064-6565fabe5efe', '854ecd88-0125-4466-8112-ffd6ab1bee8d', 'Umroh', 0, 0, 0, NULL, NULL),
('379c6c5b-3441-4985-b3bc-e8fbcbce1782', 'b1b4eeda-a6cc-4f1c-8a71-b6d47bcf050b', 'Umroh', 0, 0, 0, NULL, NULL),
('42f3a7e7-f901-4959-9e38-060d404e5e05', 'ca691cdf-f626-495a-b703-19c06fa5879b', 'Towaf Wada', 0, 0, 0, NULL, NULL),
('5391c1f3-5218-4c42-b418-a56c23858fc2', '854ecd88-0125-4466-8112-ffd6ab1bee8d', 'Manasik', 0, 0, 0, NULL, NULL),
('589aae17-1634-4dc8-9aa3-7f96cce0991b', 'ca691cdf-f626-495a-b703-19c06fa5879b', 'Umroh', 0, 0, 0, NULL, NULL),
('67dda49a-d661-4157-a243-30eed539f854', '854ecd88-0125-4466-8112-ffd6ab1bee8d', 'Towaf Wada', 0, 0, 0, NULL, NULL),
('7e8fd8a7-c836-48ca-89cb-4a576430df10', '8c7781fe-7809-426f-9936-690a7f941067', 'Umroh', 0, 0, 1, '2025-02-23 11:18:51.088', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('83d32d7d-00df-4bb4-9c57-27847fd4ff4c', '5d904bf1-ac58-4941-b0f6-a70c6d27fa93', 'Manasik', 0, 0, 1, '2025-02-27 06:50:01.402', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('89a01f82-947d-41fa-a937-6986537691ab', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'Manasik', 0, 0, 1, '2025-02-25 08:02:57.257', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('8bc035b1-1bc8-4778-bc0f-2207e6dbaaea', '8c7781fe-7809-426f-9936-690a7f941067', 'Towaf Wada', 0, 0, 1, '2025-02-25 05:43:28.541', '3aacc2cc-8e4e-41df-8400-266935dfc717'),
('aaa5f488-a8ae-4ac0-8c48-05812ce639fb', '5d904bf1-ac58-4941-b0f6-a70c6d27fa93', 'Towaf Wada', 0, 0, 0, NULL, NULL),
('b1578153-1876-477c-8cc5-f87f1e40cbfc', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'Umroh', 0, 0, 1, '2025-02-25 08:06:14.395', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('b21dbfd0-7933-4f27-8c28-6952830a1887', 'ca691cdf-f626-495a-b703-19c06fa5879b', 'Manasik', 0, 0, 0, NULL, NULL),
('c60526c8-fa21-443b-9ee1-4d52f3e33407', '14756446-06c2-4adc-96e6-c9416cf7342e', 'Manasik', 0, 0, 1, '2025-02-18 06:46:27.973', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('cb25f7d7-8054-44e3-8fa6-66775c740fe2', '5d904bf1-ac58-4941-b0f6-a70c6d27fa93', 'Umroh', 0, 0, 0, NULL, NULL),
('d0af2110-10f7-44ef-87e0-a3e5d52ceb16', '14756446-06c2-4adc-96e6-c9416cf7342e', 'Umroh', 0, 0, 1, '2025-02-18 13:55:50.419', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('d224b741-6efc-43db-9235-6b82f3f4e455', '14756446-06c2-4adc-96e6-c9416cf7342e', 'Towaf Wada', 0, 0, 1, '2025-02-18 13:59:19.183', '3aacc2cc-8e4e-41df-8400-266935dfc717'),
('dba2c5f6-8ccd-40ab-a591-2a2d58f8b866', '8c7781fe-7809-426f-9936-690a7f941067', 'Manasik', 0, 0, 1, '2025-02-23 10:34:41.055', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('df87fd67-c752-4fab-96ae-845f87089077', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'Umroh', 0, 0, 1, '2025-02-22 14:07:46.614', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('f165ba4b-2ee2-4525-9527-2e71d80426de', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'Towaf Wada', 0, 0, 1, '2025-02-26 10:29:20.706', '3aacc2cc-8e4e-41df-8400-266935dfc717'),
('fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'Manasik', 0, 0, 1, '2025-02-22 14:07:05.555', '8fa4a6c9-c71c-4342-8245-284dad782015');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Progress_Doa`
--

CREATE TABLE `Progress_Doa` (
  `progress_doaid` varchar(36) NOT NULL,
  `progressid` varchar(36) NOT NULL,
  `doaid` varchar(36) NOT NULL,
  `doa_mulai` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `doa_selesai` datetime(3) DEFAULT NULL,
  `durasi_doa` varchar(191) DEFAULT NULL,
  `cek_doa` tinyint(1) NOT NULL DEFAULT 0,
  `progress_perjalananid` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Progress_Doa`
--

INSERT INTO `Progress_Doa` (`progress_doaid`, `progressid`, `doaid`, `doa_mulai`, `doa_selesai`, `durasi_doa`, `cek_doa`, `progress_perjalananid`) VALUES
('060c3dfd-4f1c-4c93-b370-b0add6f92ecc', 'df87fd67-c752-4fab-96ae-845f87089077', '837bc323-f24d-4991-bdab-6ea0e38839af', '2025-02-22 14:08:18.053', '2025-02-22 14:08:24.558', '0:06', 1, NULL),
('1c401439-6b6a-4718-9b77-dc308ed79686', '23e2e885-b487-441c-811f-2b9391b1033d', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', '2025-02-22 14:09:21.522', '2025-02-22 14:09:27.983', '0:06', 1, NULL),
('1ec0c385-0733-4439-9ca7-375b0ab1dfa5', 'dba2c5f6-8ccd-40ab-a591-2a2d58f8b866', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', '2025-02-23 10:44:14.129', '2025-02-23 10:44:38.543', '0:24', 1, NULL),
('223a3fe8-39b9-4493-9450-d0f69bd678ec', '89a01f82-947d-41fa-a937-6986537691ab', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', '2025-02-25 08:03:30.343', '2025-02-25 08:03:35.498', '0:05', 1, NULL),
('2472be67-b32f-45d6-994e-109c60f8d2ab', '8bc035b1-1bc8-4778-bc0f-2207e6dbaaea', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', '2025-02-25 05:47:37.362', '2025-02-25 05:47:46.229', '0:08', 1, NULL),
('264af4ed-bb98-4263-9e53-7050d4b526b2', 'b1578153-1876-477c-8cc5-f87f1e40cbfc', '837bc323-f24d-4991-bdab-6ea0e38839af', '2025-02-25 08:06:50.218', '2025-02-25 08:06:57.425', '0:07', 1, NULL),
('3556d572-1a0b-4b64-8233-c6733e2227a6', 'b1578153-1876-477c-8cc5-f87f1e40cbfc', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', '2025-02-25 08:06:57.627', '2025-02-25 08:07:08.414', '0:10', 1, NULL),
('36498b85-96b8-4269-aa66-194533afecaf', '83d32d7d-00df-4bb4-9c57-27847fd4ff4c', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', '2025-02-27 06:51:27.310', '2025-02-27 06:51:34.354', '0:07', 1, NULL),
('39c1c81b-520f-4edc-a417-f5a7797e9ae1', 'df87fd67-c752-4fab-96ae-845f87089077', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', '2025-02-22 14:08:24.704', '2025-02-22 14:08:31.035', '0:06', 1, NULL),
('47ce6d27-0035-4c4c-934c-542a068cb7fa', 'df87fd67-c752-4fab-96ae-845f87089077', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', '2025-02-22 14:07:54.206', '2025-02-22 14:08:02.169', '0:07', 1, NULL),
('4a97516a-3410-4b52-98f6-2bf2e7d5d5cf', 'dba2c5f6-8ccd-40ab-a591-2a2d58f8b866', '99b86069-1f51-477a-aef0-6156d490d3ec', '2025-02-23 10:34:51.600', '2025-02-23 10:41:46.154', '6:54', 1, NULL),
('4cbb90e8-684c-4418-8b8b-870e0251572b', 'dba2c5f6-8ccd-40ab-a591-2a2d58f8b866', '2fccec89-6e0a-4442-bfbd-85cf2a207769', '2025-02-23 10:41:46.569', '2025-02-23 10:44:13.703', '2:27', 1, NULL),
('4cde23dc-6908-4a9a-9355-6a60ddbba977', '23e2e885-b487-441c-811f-2b9391b1033d', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', '2025-02-22 14:09:10.342', '2025-02-22 14:09:21.384', '0:11', 1, NULL),
('4d561c59-6aec-4127-8c42-85a5bcf6c588', '83d32d7d-00df-4bb4-9c57-27847fd4ff4c', '2fccec89-6e0a-4442-bfbd-85cf2a207769', '2025-02-27 06:51:01.162', '2025-02-27 06:51:27.183', '0:26', 1, NULL),
('55a023b5-2618-436f-a52a-1d74b7bf676c', '89a01f82-947d-41fa-a937-6986537691ab', '99b86069-1f51-477a-aef0-6156d490d3ec', '2025-02-25 08:03:10.876', '2025-02-25 08:03:22.673', '0:11', 1, NULL),
('58f92900-64cf-4da8-8dd8-0639abfb34ea', '7e8fd8a7-c836-48ca-89cb-4a576430df10', '5987233c-34cc-402d-bbf2-7244c6ed4b51', '2025-02-23 11:19:44.839', '2025-02-23 11:20:06.874', '0:22', 1, NULL),
('64dae4fc-7684-4d40-a018-572759383c29', 'df87fd67-c752-4fab-96ae-845f87089077', '5987233c-34cc-402d-bbf2-7244c6ed4b51', '2025-02-22 14:08:02.667', '2025-02-22 14:08:10.142', '0:07', 1, NULL),
('65cbd98e-9edb-4bd2-9ccb-c7057213925c', 'fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '2fccec89-6e0a-4442-bfbd-85cf2a207769', '2025-02-22 14:07:25.551', '2025-02-22 14:07:31.886', '0:06', 1, NULL),
('77e39df1-00dd-4e3e-aa19-c7da431eb147', 'fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '99b86069-1f51-477a-aef0-6156d490d3ec', '2025-02-22 14:07:12.698', '2025-02-22 14:07:25.392', '0:12', 1, NULL),
('85224ade-bb1d-44d3-b81b-972da5d9d942', '7e8fd8a7-c836-48ca-89cb-4a576430df10', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', '2025-02-23 11:20:07.325', '2025-02-23 11:20:26.311', '0:18', 1, NULL),
('889a0152-de0f-4949-99f3-432e5ea499e6', 'fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', '2025-02-22 14:07:32.033', '2025-02-22 14:07:38.848', '0:06', 1, NULL),
('9b47323f-3c56-48cb-b88a-dc2108eefc1b', '83d32d7d-00df-4bb4-9c57-27847fd4ff4c', '99b86069-1f51-477a-aef0-6156d490d3ec', '2025-02-27 06:50:09.271', '2025-02-27 06:51:01.008', '0:51', 1, NULL),
('a268c77a-0548-4225-9c9c-448418e862c3', '7e8fd8a7-c836-48ca-89cb-4a576430df10', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', '2025-02-23 11:19:00.132', '2025-02-23 11:19:44.428', '0:44', 1, NULL),
('a60d67bc-ae3b-4e67-8668-7daede70c233', '8bc035b1-1bc8-4778-bc0f-2207e6dbaaea', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', '2025-02-25 05:47:24.635', '2025-02-25 05:47:36.398', '0:11', 1, NULL),
('aeaed6bf-285e-412e-8681-3458650ec527', 'b1578153-1876-477c-8cc5-f87f1e40cbfc', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', '2025-02-25 08:06:43.851', '2025-02-25 08:06:50.048', '0:06', 1, NULL),
('b1b44d2b-d171-4b49-8378-a64d937daf6f', '7e8fd8a7-c836-48ca-89cb-4a576430df10', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', '2025-02-23 11:20:53.314', '2025-02-23 11:21:12.615', '0:19', 1, NULL),
('b47435a9-9a87-44ee-86d2-a4d7e8cb692d', '23e2e885-b487-441c-811f-2b9391b1033d', '8fca249e-d255-42b6-b9b0-db0bb55166b7', '2025-02-22 14:08:47.021', '2025-02-22 14:09:10.177', '0:23', 1, NULL),
('bcfae130-b75d-4b43-918e-c9fb0d95f0a0', '89a01f82-947d-41fa-a937-6986537691ab', '2fccec89-6e0a-4442-bfbd-85cf2a207769', '2025-02-25 08:03:22.827', '2025-02-25 08:03:30.200', '0:07', 1, NULL),
('c0d52b1d-41be-4aab-8d27-3501df1c38a6', 'b1578153-1876-477c-8cc5-f87f1e40cbfc', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', '2025-02-25 08:06:26.915', '2025-02-25 08:06:37.110', '0:10', 1, NULL),
('e3f99e31-bc4c-47ee-b3be-c4b5afc71295', '8bc035b1-1bc8-4778-bc0f-2207e6dbaaea', '8fca249e-d255-42b6-b9b0-db0bb55166b7', '2025-02-25 05:43:39.181', '2025-02-25 05:47:24.212', '3:45', 1, NULL),
('ef648bdf-95b8-4676-a8aa-580c1cf3e76a', 'df87fd67-c752-4fab-96ae-845f87089077', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', '2025-02-22 14:08:10.282', '2025-02-22 14:08:17.783', '0:07', 1, NULL),
('f09e7b22-fb5e-444f-9937-fb2b1980ec5f', 'b1578153-1876-477c-8cc5-f87f1e40cbfc', '5987233c-34cc-402d-bbf2-7244c6ed4b51', '2025-02-25 08:06:37.661', '2025-02-25 08:06:43.679', '0:06', 1, NULL),
('fd0b84ae-7ab8-4fc2-ae90-b19d91384e24', '7e8fd8a7-c836-48ca-89cb-4a576430df10', '837bc323-f24d-4991-bdab-6ea0e38839af', '2025-02-23 11:20:26.665', '2025-02-23 11:20:53.131', '0:26', 1, NULL),
('ffb5087f-c2d9-4808-964b-8e9774bf44d5', 'f165ba4b-2ee2-4525-9527-2e71d80426de', '8fca249e-d255-42b6-b9b0-db0bb55166b7', '2025-02-26 10:29:27.556', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `Progress_perjalanan`
--

CREATE TABLE `Progress_perjalanan` (
  `progress_perjalananid` varchar(36) NOT NULL,
  `progressid` varchar(36) NOT NULL,
  `grupid` varchar(36) DEFAULT NULL,
  `userId` varchar(36) NOT NULL,
  `perjalananid` varchar(36) NOT NULL,
  `waktu_mulai` datetime(3) NOT NULL,
  `time_selesai` datetime(3) DEFAULT NULL,
  `durasi_progress` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Progress_perjalanan`
--

INSERT INTO `Progress_perjalanan` (`progress_perjalananid`, `progressid`, `grupid`, `userId`, `perjalananid`, `waktu_mulai`, `time_selesai`, `durasi_progress`) VALUES
('0085208b-2965-4ca9-a231-38b5810f1302', '8bc035b1-1bc8-4778-bc0f-2207e6dbaaea', '8c7781fe-7809-426f-9936-690a7f941067', 'd84cb7d9-b275-4368-9802-63e54209e669', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-25 05:43:28.541', '2025-02-25 06:16:20.342', '32:51'),
('02d45c56-c74e-4ad6-99a8-4e4f59510280', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 11:22:52.285', '2025-02-22 11:23:54.856', '1:02'),
('02dfed77-dec2-4b12-a14a-79a3b484a527', '8bc035b1-1bc8-4778-bc0f-2207e6dbaaea', '8c7781fe-7809-426f-9936-690a7f941067', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-25 05:43:28.541', '2025-02-25 06:16:20.342', '32:51'),
('0ad6ae27-6152-472f-ab51-68fdd251e86d', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 11:08:49.899', '2025-02-22 11:09:25.803', '0:35'),
('0ce107c7-1b16-4532-8db8-d8635837129e', '89a01f82-947d-41fa-a937-6986537691ab', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'dcddea17-223a-40aa-a691-869ebe5e958a', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-25 08:02:57.257', '2025-02-25 08:03:44.124', '0:46'),
('0e5b1ba7-d77e-4b4a-8ca7-7c9ee74c63cd', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 11:25:49.593', '2025-02-22 11:26:34.706', '0:45'),
('0ec30e56-a457-4520-b1c3-0c7fb7e486c8', '89a01f82-947d-41fa-a937-6986537691ab', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'a29c9407-f979-4a8b-92c9-405e9484c893', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-25 08:02:57.257', '2025-02-25 08:03:44.124', '0:46'),
('11d4ba60-13f4-4745-87b5-f09b9f0dee9a', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 10:46:15.679', '2025-02-22 10:47:07.125', '0:51'),
('14ee3ee1-fe7d-491f-9545-32168e64f573', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 11:25:49.593', '2025-02-22 11:26:34.706', '0:45'),
('1b80664d-c2d5-494c-b8bf-c2dffb18d6d3', '7e8fd8a7-c836-48ca-89cb-4a576430df10', '8c7781fe-7809-426f-9936-690a7f941067', 'd84cb7d9-b275-4368-9802-63e54209e669', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-23 11:18:51.088', '2025-02-23 11:21:26.650', '2:35'),
('1fdf1f31-d58e-4743-b37c-81fe8c7980c6', '89a01f82-947d-41fa-a937-6986537691ab', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'a719da8d-3c9b-41bb-8173-f727924d5293', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-25 08:02:57.257', '2025-02-25 08:03:44.124', '0:46'),
('25f355a6-2ce4-4713-81a5-4b7e2292e815', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 13:30:30.089', '2025-02-22 13:31:15.171', '0:45'),
('29d63e5c-fd8e-4fc4-aed1-6773fd88fa79', 'df87fd67-c752-4fab-96ae-845f87089077', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-22 13:54:58.024', '2025-02-22 13:58:35.533', '3:37'),
('2a5d3f50-052b-479e-be59-ef0dc983db24', 'df87fd67-c752-4fab-96ae-845f87089077', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-22 13:54:58.024', '2025-02-22 13:58:35.533', '3:37'),
('35f5aca2-d343-4f31-b1bd-70c08d7c3945', 'df87fd67-c752-4fab-96ae-845f87089077', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-22 09:36:05.021', '2025-02-22 09:38:01.859', '1:56'),
('3a1c4e9a-4e5d-41d5-a1e9-d39c6d8b666b', '8bc035b1-1bc8-4778-bc0f-2207e6dbaaea', '8c7781fe-7809-426f-9936-690a7f941067', '9e4895b6-72af-4dea-b173-b61f52d842bf', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-25 05:43:28.541', '2025-02-25 06:16:20.342', '32:51'),
('3a265d09-3952-4906-86cf-0ed73812805e', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 10:37:14.842', '2025-02-22 10:37:54.073', '0:39'),
('3b452992-673c-4bdf-8ad6-8c6a308b7687', '83d32d7d-00df-4bb4-9c57-27847fd4ff4c', '5d904bf1-ac58-4941-b0f6-a70c6d27fa93', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-27 06:50:01.402', '2025-02-27 06:51:59.427', '1:58'),
('3e5a3f2c-fa38-4b2c-a61b-b47c07f75dc3', '8bc035b1-1bc8-4778-bc0f-2207e6dbaaea', '8c7781fe-7809-426f-9936-690a7f941067', '8709b7f0-b2f3-400d-a9d4-f3dc4f1d313e', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-25 05:43:28.541', '2025-02-25 06:16:20.342', '32:51'),
('4331d3da-7d9f-492b-ad6b-5fe9813265ee', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 14:08:41.304', '2025-02-22 14:09:35.356', '0:54'),
('46e4a71f-bee0-41a8-8ff5-abdfd611b841', 'df87fd67-c752-4fab-96ae-845f87089077', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-22 10:25:35.792', '2025-02-22 10:26:19.261', '0:43'),
('48ad60a0-9d04-4769-ab42-de099680c281', '7e8fd8a7-c836-48ca-89cb-4a576430df10', '8c7781fe-7809-426f-9936-690a7f941067', '9e4895b6-72af-4dea-b173-b61f52d842bf', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-23 11:18:51.088', '2025-02-23 11:21:26.650', '2:35'),
('4b2109c3-294d-473e-a386-364a82051899', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 09:42:26.724', '2025-02-22 09:43:10.039', '0:43'),
('4c882d39-39e9-4985-b41b-e6eaa4696cba', 'df87fd67-c752-4fab-96ae-845f87089077', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-22 14:07:46.614', '2025-02-22 14:08:37.298', '0:50'),
('4f22b481-a828-4fbe-be13-a51bc555e75a', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 11:19:01.826', '2025-02-22 11:19:36.956', '0:35'),
('50476a7a-8214-468c-a3eb-849604badc81', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 11:12:02.391', '2025-02-22 11:12:38.009', '0:35'),
('5134e553-8b8a-44d8-8fa8-98f89778dfe8', 'fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-22 13:38:26.251', '2025-02-22 13:39:09.200', '0:42'),
('5752fc19-a2c0-46bd-a914-17ac9dca7478', 'fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-22 14:07:05.555', '2025-02-22 14:07:44.154', '0:38'),
('5a6e21f0-492e-4b68-b351-27a8b4a68f4c', 'dba2c5f6-8ccd-40ab-a591-2a2d58f8b866', '8c7781fe-7809-426f-9936-690a7f941067', 'a29c9407-f979-4a8b-92c9-405e9484c893', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-23 10:34:41.055', '2025-02-23 11:01:40.099', '26:59'),
('5ce02b49-df2f-48c6-b44c-6692457c5a77', 'fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-22 13:38:26.251', '2025-02-22 13:39:09.200', '0:42'),
('68e7f311-9b42-4297-b457-b9eec0524a95', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 10:48:10.932', '2025-02-22 10:48:53.867', '0:42'),
('6fb22ebb-b97e-4d04-a9b4-136463171fbb', 'c60526c8-fa21-443b-9ee1-4d52f3e33407', '14756446-06c2-4adc-96e6-c9416cf7342e', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-18 06:46:27.973', '2025-02-18 06:50:39.776', '4:11'),
('6ffab47f-1ece-4f33-a263-ef8d732e64fb', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 10:28:18.210', '2025-02-22 10:28:57.785', '0:39'),
('70dc2673-5f64-4861-a6a4-8437190a1f1d', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 11:16:57.457', '2025-02-22 11:17:42.740', '0:45'),
('73ac1e33-6351-4549-b16f-9e14697f5ccc', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 10:37:14.842', '2025-02-22 10:37:54.073', '0:39'),
('74e5860b-7d7b-43ab-ab64-b077685c02ab', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 09:42:26.724', '2025-02-22 09:43:10.039', '0:43'),
('75123372-b680-4176-8620-fa7c3b56685a', 'dba2c5f6-8ccd-40ab-a591-2a2d58f8b866', '8c7781fe-7809-426f-9936-690a7f941067', '9e4895b6-72af-4dea-b173-b61f52d842bf', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-23 10:34:41.055', '2025-02-23 11:01:40.099', '26:59'),
('7667f06a-c16d-4745-ac26-04fd02b2c444', '8bc035b1-1bc8-4778-bc0f-2207e6dbaaea', '8c7781fe-7809-426f-9936-690a7f941067', 'a29c9407-f979-4a8b-92c9-405e9484c893', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-25 05:43:28.541', '2025-02-25 06:16:20.342', '32:51'),
('790fc86e-6c68-4fe3-a156-cd2c5ee10fea', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 10:46:15.679', '2025-02-22 10:47:07.125', '0:51'),
('7b547622-5b2a-4012-8fb5-f9b0608ce5cc', '89a01f82-947d-41fa-a937-6986537691ab', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-25 08:02:57.257', '2025-02-25 08:03:44.124', '0:46'),
('7b6c556d-0600-487a-a099-b5d6c91fc12c', 'dba2c5f6-8ccd-40ab-a591-2a2d58f8b866', '8c7781fe-7809-426f-9936-690a7f941067', 'd84cb7d9-b275-4368-9802-63e54209e669', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-23 10:34:41.055', '2025-02-23 11:01:40.099', '26:59'),
('7d69c8ed-9143-4981-9ed8-1dfa71d1d75e', 'fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-22 10:15:47.259', '2025-02-22 10:16:31.182', '0:43'),
('840b07d5-a77e-46b2-8ce1-6eb30b9ee910', 'fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-22 10:15:47.259', '2025-02-22 10:16:31.182', '0:43'),
('85f3fa57-96b7-408b-ae6a-7147a9bbe8fd', 'b1578153-1876-477c-8cc5-f87f1e40cbfc', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-25 08:06:14.395', '2025-02-25 08:07:20.495', '1:06'),
('905bcb1a-a7e0-4aed-bd3a-d2ebdd9361ad', 'f165ba4b-2ee2-4525-9527-2e71d80426de', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'dcddea17-223a-40aa-a691-869ebe5e958a', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-26 10:29:20.706', '2025-02-26 10:29:51.189', '0:30'),
('91fedfe7-db08-4c1f-a776-198eeb69bb4c', 'b1578153-1876-477c-8cc5-f87f1e40cbfc', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'a29c9407-f979-4a8b-92c9-405e9484c893', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-25 08:06:14.395', '2025-02-25 08:07:20.495', '1:06'),
('93f6f87b-9a34-4c64-8519-cb10d34c1c75', 'fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-22 09:27:28.818', '2025-02-22 09:28:29.936', '1:01'),
('94611d6f-0cfc-4e8f-9ea8-5760ea953778', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 11:19:01.826', '2025-02-22 11:19:36.956', '0:35'),
('9728a993-c1c0-4f52-8cd4-e5d5616860de', 'd224b741-6efc-43db-9235-6b82f3f4e455', '14756446-06c2-4adc-96e6-c9416cf7342e', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-18 13:59:19.183', '2025-02-19 01:21:25.262', '682:06'),
('9a840a3e-eb14-4987-8473-ffa95f578346', 'df87fd67-c752-4fab-96ae-845f87089077', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-22 14:07:46.614', '2025-02-22 14:08:37.298', '0:50'),
('9b30dfe7-be97-4f6f-ada7-cdf60d988031', 'f165ba4b-2ee2-4525-9527-2e71d80426de', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-26 10:29:20.706', '2025-02-26 10:29:51.189', '0:30'),
('9f249061-1f04-4f14-8974-32f8a5a2483b', 'fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-22 09:27:28.818', '2025-02-22 09:28:29.936', '1:01'),
('ab2d4b1e-3f21-484f-af3c-b6cc166800f8', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 10:58:11.219', '2025-02-22 10:58:46.003', '0:34'),
('ae41857e-14d4-4ab7-89fd-a6ece7f1c819', 'f165ba4b-2ee2-4525-9527-2e71d80426de', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-26 10:29:20.706', '2025-02-26 10:29:51.189', '0:30'),
('b4c5584d-c23f-4331-a420-7e9a1f142934', 'df87fd67-c752-4fab-96ae-845f87089077', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-22 09:36:05.021', '2025-02-22 09:38:01.859', '1:56'),
('b78b0122-7474-4ffc-a499-268fffb769e9', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 11:22:52.285', '2025-02-22 11:23:54.856', '1:02'),
('b9d9b0f3-7d0f-4496-931d-cb7e27de8b50', 'fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-22 14:07:05.555', '2025-02-22 14:07:44.154', '0:38'),
('ba7450e4-5121-49d6-9aae-2f916b446272', 'd0af2110-10f7-44ef-87e0-a3e5d52ceb16', '14756446-06c2-4adc-96e6-c9416cf7342e', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-18 13:55:50.419', '2025-02-18 13:56:23.754', '0:33'),
('bdf19b2b-7699-45d8-ba81-3505e00e4369', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 11:08:49.899', '2025-02-22 11:09:25.803', '0:35'),
('be5e6c7c-b2c5-455a-849f-4e4ca1a5493d', '7e8fd8a7-c836-48ca-89cb-4a576430df10', '8c7781fe-7809-426f-9936-690a7f941067', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-23 11:18:51.088', '2025-02-23 11:21:26.650', '2:35'),
('bf38f96f-ceb9-4e4e-96eb-5fdf1d96d86d', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 14:08:41.304', '2025-02-22 14:09:35.356', '0:54'),
('c014d1ea-6280-49fa-8095-ca14f38f554b', 'df87fd67-c752-4fab-96ae-845f87089077', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-22 10:25:35.792', '2025-02-22 10:26:19.261', '0:43'),
('c07b0892-253c-44c2-af61-21634a4364bb', '8bc035b1-1bc8-4778-bc0f-2207e6dbaaea', '8c7781fe-7809-426f-9936-690a7f941067', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-25 05:43:28.541', '2025-02-25 06:16:20.342', '32:51'),
('c4832cd1-943b-4313-b477-9582ad970c3b', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 10:58:11.219', '2025-02-22 10:58:46.003', '0:34'),
('c8ad10a6-7796-44ca-a5f5-f55d94b0c391', '7e8fd8a7-c836-48ca-89cb-4a576430df10', '8c7781fe-7809-426f-9936-690a7f941067', 'a29c9407-f979-4a8b-92c9-405e9484c893', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-23 11:18:51.088', '2025-02-23 11:21:26.650', '2:35'),
('cc9eed37-7ed7-4c6f-8d0f-4894001faf85', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 11:16:57.457', '2025-02-22 11:17:42.740', '0:45'),
('cd87c347-866a-4c3d-84be-7ef34e138a65', 'b1578153-1876-477c-8cc5-f87f1e40cbfc', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-25 08:06:14.395', '2025-02-25 08:07:20.495', '1:06'),
('ce011ff1-de25-4fc8-8e61-17844b01cdbf', 'dba2c5f6-8ccd-40ab-a591-2a2d58f8b866', '8c7781fe-7809-426f-9936-690a7f941067', 'a719da8d-3c9b-41bb-8173-f727924d5293', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-23 10:34:41.055', '2025-02-23 11:01:40.099', '26:59'),
('d28916a8-7657-4ade-8074-b519d75ad0e4', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 13:30:30.089', '2025-02-22 13:31:15.171', '0:45'),
('d4903627-01d0-4339-8c47-1ae77989ecb9', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 10:28:18.210', '2025-02-22 10:28:57.785', '0:39'),
('d633440f-cf35-48b8-b636-b7bd5cf3e75c', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 11:12:02.391', '2025-02-22 11:12:38.009', '0:35'),
('de90bfa4-4918-4b66-8f37-601bc6e0e169', 'f165ba4b-2ee2-4525-9527-2e71d80426de', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'a29c9407-f979-4a8b-92c9-405e9484c893', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-26 10:29:20.706', '2025-02-26 10:29:51.189', '0:30'),
('df10f9b3-ebb6-43e7-aae4-b1872265dd20', '23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-22 10:48:10.932', '2025-02-22 10:48:53.867', '0:42'),
('e7a75e6e-95ff-46aa-a30d-114e86c3d9a0', '7e8fd8a7-c836-48ca-89cb-4a576430df10', '8c7781fe-7809-426f-9936-690a7f941067', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-23 11:18:51.088', '2025-02-23 11:21:26.650', '2:35'),
('eec69e7d-1687-48e0-9b30-7a612eb62f17', 'b1578153-1876-477c-8cc5-f87f1e40cbfc', 'd893af56-b8db-49c8-9dcf-34d567e21bcc', 'dcddea17-223a-40aa-a691-869ebe5e958a', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-25 08:06:14.395', '2025-02-25 08:07:20.495', '1:06'),
('f1c471a5-a50c-4f8a-bbf4-0d323bcabaa2', '83d32d7d-00df-4bb4-9c57-27847fd4ff4c', '5d904bf1-ac58-4941-b0f6-a70c6d27fa93', 'a719da8d-3c9b-41bb-8173-f727924d5293', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-27 06:50:01.402', '2025-02-27 06:51:59.427', '1:58'),
('f86e3d62-4450-44f2-9c19-c6d14807365d', 'dba2c5f6-8ccd-40ab-a591-2a2d58f8b866', '8c7781fe-7809-426f-9936-690a7f941067', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-23 10:34:41.055', '2025-02-23 11:01:40.099', '26:59'),
('fc710950-cb0d-4e63-a14a-214132c4a5ab', '8bc035b1-1bc8-4778-bc0f-2207e6dbaaea', '8c7781fe-7809-426f-9936-690a7f941067', '72db81fb-6bfc-40d0-a125-602b49c275d3', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-25 05:43:28.541', '2025-02-25 06:16:20.342', '32:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `RiwayatDoa`
--

CREATE TABLE `RiwayatDoa` (
  `riwayatdoaid` varchar(36) NOT NULL,
  `riwayatperjalananid` varchar(36) NOT NULL,
  `doaid` varchar(36) DEFAULT NULL,
  `judul_doa` varchar(255) NOT NULL,
  `durasi_doa` varchar(191) DEFAULT NULL,
  `cek_doa` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `RiwayatDoa`
--

INSERT INTO `RiwayatDoa` (`riwayatdoaid`, `riwayatperjalananid`, `doaid`, `judul_doa`, `durasi_doa`, `cek_doa`) VALUES
('0024ba0c-e47d-4d4d-b5be-a4a28904c539', 'e114add5-6c41-4503-8e27-7cb707c42df5', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:19', 1),
('0999303f-323b-4bc0-8d68-5f94cb0c99c1', '31ac6074-4ca2-4610-ba14-0f040b16feb8', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:06', 1),
('0ef1d5b0-83c9-4bae-b599-fe0c0a63e056', 'd67ebbff-0edd-4136-9a48-ecd7530af97f', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:06', 1),
('24001c22-8143-4fc1-b40e-aee2c9aedd7c', 'd2d78256-d1d6-4cd9-a726-5f225d9bb907', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', '3:45', 1),
('2f2a0863-e51c-4a84-9ac1-8bcaa6a08d71', 'd67ebbff-0edd-4136-9a48-ecd7530af97f', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:06', 1),
('3032584f-a74d-4ad9-a81b-939e04d112b7', 'd2d78256-d1d6-4cd9-a726-5f225d9bb907', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '0:11', 1),
('322c134f-1122-4a11-84cf-b5ed9c6ae65a', 'e114add5-6c41-4503-8e27-7cb707c42df5', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:18', 1),
('325d0c30-ba79-4a22-a29e-8a3c7ee7e5c0', '31ac6074-4ca2-4610-ba14-0f040b16feb8', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '0:12', 1),
('36614a3e-d34e-4329-ae79-bed596bfa50e', 'd9612db0-e24a-48b9-9a70-45edae2773be', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', '0:23', 1),
('3a25032a-f924-47d2-8d82-ed0d649b5893', 'da4943c1-5c1c-4310-9d50-f157993996fc', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:07', 1),
('3ce58488-6f10-45c8-8492-48f5d2d181e8', 'd67ebbff-0edd-4136-9a48-ecd7530af97f', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:07', 1),
('445b7d9e-7fc2-4e95-ac2d-7b83fee928d3', 'e114add5-6c41-4503-8e27-7cb707c42df5', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '0:44', 1),
('4731f9bc-2590-46cd-8090-5febf9fefe36', '438026f8-2151-4c57-9323-5f02cea8c78e', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:05', 1),
('4abd2b25-36a8-4729-a4e4-fcc2beb7de3b', 'e114add5-6c41-4503-8e27-7cb707c42df5', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:22', 1),
('4f6ba925-1d12-4df5-9d17-9bbba7915ce4', 'd9612db0-e24a-48b9-9a70-45edae2773be', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:06', 1),
('6302186a-4ee4-48c6-8b8b-dff2dea9d7dd', 'da4943c1-5c1c-4310-9d50-f157993996fc', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:06', 1),
('7d653426-f3d6-45cd-bbc8-aa58ec3ee9ad', '06f6bb41-ba73-4931-a373-ad636cea5733', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:07', 1),
('7e534315-1469-4990-9ca8-3bfe6ea5205b', 'd9612db0-e24a-48b9-9a70-45edae2773be', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '0:11', 1),
('7f5ed806-12f3-415f-bd7b-34d95a639403', '438026f8-2151-4c57-9323-5f02cea8c78e', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '0:11', 1),
('8c101e2e-a3f7-457f-be1e-e2f7c650b9ed', '83be5dbb-1101-4a55-a1a7-8f06cadfa7e4', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:24', 1),
('957b0157-d5d5-4c7c-a5be-c6b8395b0c7a', 'eb49e641-db4c-4050-9eb7-19a7199b32e6', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', NULL, 0),
('994d9bb8-2bb8-4fae-bad8-231dcbd7eef6', 'd67ebbff-0edd-4136-9a48-ecd7530af97f', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '0:07', 1),
('a4398b2c-e65c-45d1-9798-cebec83f8b5d', 'da4943c1-5c1c-4310-9d50-f157993996fc', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:10', 1),
('ac312cfd-8714-4b91-a248-deaca6d36b8d', '438026f8-2151-4c57-9323-5f02cea8c78e', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:07', 1),
('b88b07ba-8a4d-41a5-bbfc-cf2677ee9b60', '83be5dbb-1101-4a55-a1a7-8f06cadfa7e4', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '2:27', 1),
('bf114302-43d8-40d8-a907-e5c15f14370b', '31ac6074-4ca2-4610-ba14-0f040b16feb8', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:06', 1),
('c25befd3-3825-40ca-b9b1-8fdbd03eb0be', 'da4943c1-5c1c-4310-9d50-f157993996fc', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:06', 1),
('cf1b4fdf-2d9c-4de4-9680-3a85d6c157e0', 'e114add5-6c41-4503-8e27-7cb707c42df5', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:26', 1),
('d3ad2fd3-4c78-447c-8dad-f3eb359e1a3f', '06f6bb41-ba73-4931-a373-ad636cea5733', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:26', 1),
('d46c9bee-0eff-43dd-8c5f-b7dee8552cfa', '06f6bb41-ba73-4931-a373-ad636cea5733', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '0:51', 1),
('e50bff27-b55e-4d26-82c7-54294022c337', 'd2d78256-d1d6-4cd9-a726-5f225d9bb907', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:08', 1),
('e68730eb-a276-4e49-baad-61b76d69fa0f', 'd67ebbff-0edd-4136-9a48-ecd7530af97f', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:07', 1),
('ec69ce54-f4cf-41c8-bb20-33751ea118db', 'da4943c1-5c1c-4310-9d50-f157993996fc', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '0:10', 1),
('f023b911-8a45-4064-8c6d-5760e0750b9f', '83be5dbb-1101-4a55-a1a7-8f06cadfa7e4', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '6:54', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `RiwayatGrup`
--

CREATE TABLE `RiwayatGrup` (
  `riwayatgrupid` varchar(36) NOT NULL,
  `nama_grup` varchar(255) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `RiwayatGrup`
--

INSERT INTO `RiwayatGrup` (`riwayatgrupid`, `nama_grup`, `created_at`) VALUES
('5ebae535-cb21-4851-bb5f-f9c0a1673db3', 'Grup Test Maqdis Travel 2025', '2025-02-25 08:03:44.143'),
('d24a2522-1116-4e64-93ee-374a268acdf9', 'Test Group Umroh 22xx', '2025-02-27 06:51:59.443'),
('d7ccda6e-ec19-4d56-a2bf-a8892fe64824', 'Test Umroh Group 20xx', '2025-02-22 14:07:44.174'),
('e24f274b-618b-4a42-a626-08c4e515b60e', 'Test Group Umroh 21xx', '2025-02-23 11:01:40.122');

-- --------------------------------------------------------

--
-- Struktur dari tabel `RiwayatPerjalanan`
--

CREATE TABLE `RiwayatPerjalanan` (
  `riwayatperjalananid` varchar(36) NOT NULL,
  `riwayatgrupid` varchar(36) NOT NULL,
  `perjalananid` varchar(36) DEFAULT NULL,
  `nama_perjalanan` varchar(255) NOT NULL,
  `waktu_mulai` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `time_selesai` datetime(3) DEFAULT NULL,
  `durasi_progress` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `RiwayatPerjalanan`
--

INSERT INTO `RiwayatPerjalanan` (`riwayatperjalananid`, `riwayatgrupid`, `perjalananid`, `nama_perjalanan`, `waktu_mulai`, `time_selesai`, `durasi_progress`) VALUES
('06f6bb41-ba73-4931-a373-ad636cea5733', 'd24a2522-1116-4e64-93ee-374a268acdf9', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-02-27 06:50:01.402', '2025-02-27 06:51:59.427', '1:58'),
('31ac6074-4ca2-4610-ba14-0f040b16feb8', 'd7ccda6e-ec19-4d56-a2bf-a8892fe64824', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-02-22 14:07:05.555', '2025-02-22 14:07:44.154', '0:38'),
('438026f8-2151-4c57-9323-5f02cea8c78e', '5ebae535-cb21-4851-bb5f-f9c0a1673db3', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-02-25 08:02:57.257', '2025-02-25 08:03:44.124', '0:46'),
('83be5dbb-1101-4a55-a1a7-8f06cadfa7e4', 'e24f274b-618b-4a42-a626-08c4e515b60e', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-02-23 10:34:41.055', '2025-02-23 11:01:40.099', '26:59'),
('d2d78256-d1d6-4cd9-a726-5f225d9bb907', 'e24f274b-618b-4a42-a626-08c4e515b60e', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-02-25 05:43:28.541', '2025-02-25 06:16:20.342', '32:51'),
('d67ebbff-0edd-4136-9a48-ecd7530af97f', 'd7ccda6e-ec19-4d56-a2bf-a8892fe64824', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-02-22 14:07:46.614', '2025-02-22 14:08:37.298', '0:50'),
('d9612db0-e24a-48b9-9a70-45edae2773be', 'd7ccda6e-ec19-4d56-a2bf-a8892fe64824', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-02-22 11:22:52.285', '2025-02-22 11:23:54.856', '1:02'),
('da4943c1-5c1c-4310-9d50-f157993996fc', '5ebae535-cb21-4851-bb5f-f9c0a1673db3', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-02-25 08:06:14.395', '2025-02-25 08:07:20.495', '1:06'),
('e114add5-6c41-4503-8e27-7cb707c42df5', 'e24f274b-618b-4a42-a626-08c4e515b60e', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-02-23 11:18:51.088', '2025-02-23 11:21:26.650', '2:35'),
('eb49e641-db4c-4050-9eb7-19a7199b32e6', '5ebae535-cb21-4851-bb5f-f9c0a1673db3', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-02-26 10:29:20.706', '2025-02-26 10:29:51.189', '0:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Room`
--

CREATE TABLE `Room` (
  `id` varchar(36) NOT NULL,
  `nama_room` varchar(100) NOT NULL,
  `token_speaker` varchar(1000) NOT NULL,
  `token_listener` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Room`
--

INSERT INTO `Room` (`id`, `nama_room`, `token_speaker`, `token_listener`) VALUES
('67b2d424b72a0fec60b419cf', 'Room Atmin percobaan', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb29tX2lkIjoiNjdiMmQ0MjRiNzJhMGZlYzYwYjQxOWNmIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTczOTk0MDk0MCwiaWF0IjoxNzM5ODU0NTQwLCJuYmYiOjE3Mzk4NTQ1NDAsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6IjhiYzVmMTY4LTcwOGMtNDIyNC1hMjI2LTcwNTcwM2MxZDEzMiIsInJvbGUiOiJzcGVha2VyIn0.WiVPwAoNg2QNTg8CuWwWJUmJwRjNp3zcFq0MMi6Nc60', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb2xlIjoibGlzdGVuZXIiLCJyb29tX2lkIjoiNjdiMmQ0MjRiNzJhMGZlYzYwYjQxOWNmIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTczOTg1OTM2NSwiaWF0IjoxNzM5NzcyOTY1LCJuYmYiOjE3Mzk3NzI5NjUsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6IjFjY2FmMGY0LWM2ZjktNGQ3NC05ZjFiLTI5ODU5ZTNiZTA5MCJ9.BiFTRl-Et0J67MC_pe5PWUdM9sHuTg89vjen7PJal5o'),
('67b414f4b72a0fec60b4a14c', 'gsgsgsgsgsgsgsgs', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb29tX2lkIjoiNjdiNDE0ZjRiNzJhMGZlYzYwYjRhMTRjIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTczOTk0NzU2OSwiaWF0IjoxNzM5ODYxMTY5LCJuYmYiOjE3Mzk4NjExNjksImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6ImIzODVlNzYwLThjODgtNGYwOC05NjI4LTU2NTk4YjcwMzM0MiIsInJvbGUiOiJzcGVha2VyIn0.YgVJxuV4nw8CChQLBXXm1HzJWpnVEm-P6ncOeHaTO-A', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb2xlIjoibGlzdGVuZXIiLCJyb29tX2lkIjoiNjdiNDE0ZjRiNzJhMGZlYzYwYjRhMTRjIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTczOTk0MTQ5NCwiaWF0IjoxNzM5ODU1MDk0LCJuYmYiOjE3Mzk4NTUwOTQsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6IjIyZTEzNTg5LWQ0NjYtNDA3ZS05ZDU2LTViNWQzNDBjNTZjZiJ9.6pOtJ8oQZJHHQH6tITdirw4j-GBW5THbpgiuVMr7LCQ'),
('67b4159f02147c4bc5b0415a', 'Room JULY', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb2xlIjoic3BlYWtlciIsInJvb21faWQiOiI2N2I0MTU5ZjAyMTQ3YzRiYzViMDQxNWEiLCJ1c2VyX2lkIjoiZTI4YTA2NTQtNmVlMy00ZjQ0LTgwMWMtM2NkZmU1YjcwYzQ0IiwiZXhwIjoxNzM5OTQxNjY1LCJpYXQiOjE3Mzk4NTUyNjUsIm5iZiI6MTczOTg1NTI2NSwiaXNzIjoiNjc4NDg5MGE0OTQ0ZjA2NzMxM2E4ODhmIiwic3ViIjoiYXBpIiwianRpIjoiMTkxMzIxZTYtZGZlMS00ZGI4LWFmNjUtZDllNDhjNTM3MWU1In0.o5kS1xUAuX7akFNlPCpvvpOAU9vSBBGhqwlBhIhq0Fw', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb2xlIjoibGlzdGVuZXIiLCJyb29tX2lkIjoiNjdiNDE1OWYwMjE0N2M0YmM1YjA0MTVhIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTczOTk0MTY2NSwiaWF0IjoxNzM5ODU1MjY1LCJuYmYiOjE3Mzk4NTUyNjUsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6IjMwOWQwODJmLWNhMmUtNDFmNC1iNGZmLTQyMTA5YTJiYmJhZiJ9.iGZkkPWdTqQTxTgG73pCh0ZCbUpTCPxYgp1_abgdtaY'),
('67b42c5fb72a0fec60b4b1c3', 'Room Cuma Test Doang', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb29tX2lkIjoiNjdiNDJjNWZiNzJhMGZlYzYwYjRiMWMzIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDAzODM5MiwiaWF0IjoxNzM5OTUxOTkyLCJuYmYiOjE3Mzk5NTE5OTIsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6IjVlYjJlZTI3LTgyZGMtNDg2Ny1hNmQ3LTBhMjYzMTdiNGNiZiIsInJvbGUiOiJzcGVha2VyIn0.QEf_oMRWDhj3T8-o86lsmm_swd4Bn9QwuG7kvA1VMLs', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb29tX2lkIjoiNjdiNDJjNWZiNzJhMGZlYzYwYjRiMWMzIiwidXNlcl9pZCI6ImQ4NDMxMWU0LTdjYmQtNDBmMS1hMTI1LWJmMWZkYjIxZjA5ZCIsImV4cCI6MTc0MDAxNjE4MCwiaWF0IjoxNzM5OTI5NzgwLCJuYmYiOjE3Mzk5Mjk3ODAsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6ImE4ZmEwZTVmLTUyYzItNDdjNi04YzU0LWNhNjEzZDY5OWRiMCIsInJvbGUiOiJsaXN0ZW5lciJ9.m1U7TfTRQz6AxhAtmsvbOt_pwG1AMHIYnER18-VEAo8'),
('67b99791b72a0fec60b689c1', 'Test Umroh Room 20xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiOTk3OTFiNzJhMGZlYzYwYjY4OWMxIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDM5MDcxMSwiaWF0IjoxNzQwMzA0MzExLCJuYmYiOjE3NDAzMDQzMTEsImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6IjViNTI0NjI5LWYzYTctNGMxMy1hNWNiLTU5NDI0YzZlNjgyZCIsInJvbGUiOiJzcGVha2VyIn0.3wXkNpwke3Ag70BICyn-UkpEbaNydGdFMCd16I13Pnc', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiOTk3OTFiNzJhMGZlYzYwYjY4OWMxIiwidXNlcl9pZCI6ImE3MTlkYThkLTNjOWItNDFiYi04MTczLWY3Mjc5MjRkNTI5MyIsImV4cCI6MTc0MDY1Mzg3NSwiaWF0IjoxNzQwNTY3NDc1LCJuYmYiOjE3NDA1Njc0NzUsImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6Ijc2Yzk0YmU5LTUxNmEtNDA4Ny1iNzIwLTk3NWRiYzJjNjZiNyIsInJvbGUiOiJsaXN0ZW5lciJ9.9Pby5_ThFpCTXyuRQJXRh1MqqfHr044pR0FquCbRr9k'),
('67baed79b72a0fec60b6d8ff', 'Test Umroh Room 21xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiYWVkNzliNzJhMGZlYzYwYjZkOGZmIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDY1MjUzOCwiaWF0IjoxNzQwNTY2MTM4LCJuYmYiOjE3NDA1NjYxMzgsImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6ImY3OWQ3OWJjLTA1MTEtNGM3My1iZmYxLTllMzJhMjUzODgwNiIsInJvbGUiOiJzcGVha2VyIn0.KCXK3ixjzchcOWUA9Q-BodCCYzGjAPQLOaz-sWhhZ2Q', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiYWVkNzliNzJhMGZlYzYwYjZkOGZmIiwidXNlcl9pZCI6ImE3MTlkYThkLTNjOWItNDFiYi04MTczLWY3Mjc5MjRkNTI5MyIsImV4cCI6MTc0MDY1Mzk0OCwiaWF0IjoxNzQwNTY3NTQ4LCJuYmYiOjE3NDA1Njc1NDgsImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6ImI4MzQ1MGVlLTY4ZTItNDBiYS04MTM5LWFmOWIxNTI5NmI2MSIsInJvbGUiOiJsaXN0ZW5lciJ9.zo4fOPBGmh7v2JtCOzBdP5LsbM3TSkb8sZF8GZ54UxM'),
('67bd7869b72a0fec60b782ce', 'Room Test Maqdis Travel 2025', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2JkN2I3YjQ5NDRmMDY3MzEzYThlZmYiLCJyb29tX2lkIjoiNjdiZDc4NjliNzJhMGZlYzYwYjc4MmNlIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDY1MjIxMCwiaWF0IjoxNzQwNTY1ODEwLCJuYmYiOjE3NDA1NjU4MTAsImlzcyI6IjY3YmQ3YjdiNDk0NGYwNjczMTNhOGVmZCIsInN1YiI6ImFwaSIsImp0aSI6IjRhYWNmZmNjLTI2OWMtNGI1MS04Mzk0LTMwYWNjZGJhMGJhMyIsInJvbGUiOiJzcGVha2VyIn0.WFvQ2VdGQJVXYCUYsXqnNeXshLOJkQTZhEcLFFn8WbU', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiZDc4NjliNzJhMGZlYzYwYjc4MmNlIiwidXNlcl9pZCI6ImE3MTlkYThkLTNjOWItNDFiYi04MTczLWY3Mjc5MjRkNTI5MyIsImV4cCI6MTc0MDY1MzkyOSwiaWF0IjoxNzQwNTY3NTI5LCJuYmYiOjE3NDA1Njc1MjksImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6IjdiM2I5ZTA3LWI5MDktNDA3ZS1iZjZmLWYwNzZkODY0OThkNyIsInJvbGUiOiJsaXN0ZW5lciJ9.VlGOxf8ScraOyzT1omwqAZw5aZf10eO39Xnp-ZvFl5I'),
('67bd7cd902147c4bc5b323bc', 'Room Test Maqdis Travel 2025', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2JkN2I3YjQ5NDRmMDY3MzEzYThlZmYiLCJyb2xlIjoic3BlYWtlciIsInJvb21faWQiOiI2N2JkN2NkOTAyMTQ3YzRiYzViMzIzYmMiLCJ1c2VyX2lkIjoiZTI4YTA2NTQtNmVlMy00ZjQ0LTgwMWMtM2NkZmU1YjcwYzQ0IiwiZXhwIjoxNzQwNTU3OTEzLCJpYXQiOjE3NDA0NzE1MTMsIm5iZiI6MTc0MDQ3MTUxMywiaXNzIjoiNjdiZDdiN2I0OTQ0ZjA2NzMxM2E4ZWZkIiwic3ViIjoiYXBpIiwianRpIjoiNjJkNDA2YzQtMjYxNS00NDAwLTg0MDQtN2ZhYTg1NGIxMjQ1In0.gvfP0g-B4bpZcjvef2fB5rYCYh5mlwPZFpkt5QYp9ZQ', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2JkN2I3YjQ5NDRmMDY3MzEzYThlZmYiLCJyb2xlIjoibGlzdGVuZXIiLCJyb29tX2lkIjoiNjdiZDdjZDkwMjE0N2M0YmM1YjMyM2JjIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDU1NzkxMywiaWF0IjoxNzQwNDcxNTEzLCJuYmYiOjE3NDA0NzE1MTMsImlzcyI6IjY3YmQ3YjdiNDk0NGYwNjczMTNhOGVmZCIsInN1YiI6ImFwaSIsImp0aSI6ImM0ZGE0ZTNlLTkyZjItNDcwNy05MzY5LWVlNGEyZmM0Mjc0NiJ9.WPV9rNxjjqXvxmDxS4k1vqx53Rcqlkhc4Dar4H_thoc'),
('67beee31b72a0fec60b7f10d', 'Test Umroh Room 22xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiZWVlMzFiNzJhMGZlYzYwYjdmMTBkIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDcyNTYxMCwiaWF0IjoxNzQwNjM5MjEwLCJuYmYiOjE3NDA2MzkyMTAsImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6ImUzYTBlMjY1LTI2MzMtNDk3ZC05NjU1LTVjMGE3ODUxMTYwNiIsInJvbGUiOiJzcGVha2VyIn0.zcEN5ZPu1g3AOJdcpprjpEp343oEwQ-C-ynlOid_Sk0', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiZWVlMzFiNzJhMGZlYzYwYjdmMTBkIiwidXNlcl9pZCI6ImE3MTlkYThkLTNjOWItNDFiYi04MTczLWY3Mjc5MjRkNTI5MyIsImV4cCI6MTc0MDcyNTk1OCwiaWF0IjoxNzQwNjM5NTU4LCJuYmYiOjE3NDA2Mzk1NTgsImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6ImY3ZjlmMGZiLTA3MzctNGMyNi1hNmI5LWRhZmY0ZmE5MzE5NyIsInJvbGUiOiJsaXN0ZW5lciJ9.anzTLAzQGX2B4K4NYR7kqEipBmMELzz2QrCEVKkU_JI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Users`
--

CREATE TABLE `Users` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `role` enum('user','ustadz','admin') DEFAULT 'user',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `lastLogin` datetime(3) DEFAULT NULL,
  `status_login` tinyint(1) NOT NULL DEFAULT 0,
  `currentToken` text DEFAULT NULL,
  `googleId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Users`
--

INSERT INTO `Users` (`id`, `name`, `password`, `email`, `whatsapp`, `role`, `createdAt`, `updatedAt`, `lastLogin`, `status_login`, `currentToken`, `googleId`) VALUES
('2f3e8378-f9a2-4ea3-b9b8-a1a14958084f', 'User 5', '$2a$10$hlZanREq183ARgUROMKqmujxx2lnmoBET2SYa7bjC5ztkPi9LW2na', 'user5@gmail.com', '0881023758105', 'user', '2025-02-17 06:10:42.705', '2025-02-17 06:10:42.705', NULL, 0, NULL, NULL),
('69756f8b-b069-4eaa-b35a-0f72b5693194', 'User 3', '$2a$10$CB6zyCnSkbz/CZf0Wp8CveukB3ALGcKqmgGsIcBSOkGCYVgJ84js2', 'user3@gmail.com', '0881023758103', 'user', '2025-02-17 06:09:54.198', '2025-02-17 06:09:54.198', NULL, 0, NULL, NULL),
('6ac85374-553b-47e3-9e60-9557d94a0b55', 'User 4', '$2a$10$rrqlKOh0SxdDiE1xcyM63ujL.ty8wVeyIaAgVKs7AP./pGfH7vk.q', 'user4@gmail.com', '0881023758104', 'user', '2025-02-17 06:10:11.884', '2025-02-17 06:10:11.884', NULL, 0, NULL, NULL),
('72db81fb-6bfc-40d0-a125-602b49c275d3', 'MAQDIS TOURS & TRAVEL', NULL, 'umrah.maqdis@gmail.com', '', 'user', '2025-02-24 01:34:29.962', '2025-02-24 04:01:37.298', '2025-02-24 04:01:37.296', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiNzJkYjgxZmItNmJmYy00MGQwLWExMjUtNjAyYjQ5YzI3NWQzIiwicm9sZSI6InVzZXIifSwiaWF0IjoxNzQwMzY5Njk3LCJleHAiOjE3NDI5NjE2OTd9.io_GVlIEFoRH5qZuaaU6HCu5BTYeqkBDyfZw5sKyPuE', '100375767693293336524'),
('79f57997-b1be-4587-b419-f7e100418b41', 'Atmin Arkan', '$2a$10$v2kzsuButupdruWh15GM1OkqaJWP51dxquE29Tl6d2xbeq/z6kJWe', 'adminark@gmail.com', '081564949454', 'admin', '2025-02-17 06:12:20.055', '2025-02-17 06:12:20.055', NULL, 0, NULL, NULL),
('8709b7f0-b2f3-400d-a9d4-f3dc4f1d313e', 'Maqdis Hamim', NULL, 'hamimmaqdis@gmail.com', '', 'user', '2025-02-24 04:02:53.780', '2025-02-24 04:02:53.797', '2025-02-24 04:02:53.796', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiODcwOWI3ZjAtYjJmMy00MDBkLWE5ZDQtZjNkYzRmMWQzMTNlIiwicm9sZSI6InVzZXIifSwiaWF0IjoxNzQwMzY5NzczLCJleHAiOjE3NDI5NjE3NzN9.PUNVA6zUQYsoaLbSegUxHiJen5VDPDvHa32TyT6fCMc', '113725142385260312131'),
('9e4895b6-72af-4dea-b173-b61f52d842bf', 'Azki Maulana', NULL, 'ocloud263@gmail.com', '', 'user', '2025-02-22 04:16:33.444', '2025-02-23 09:53:35.697', '2025-02-23 09:53:35.696', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiOWU0ODk1YjYtNzJhZi00ZGVhLWIxNzMtYjYxZjUyZDg0MmJmIiwicm9sZSI6InVzZXIifSwiaWF0IjoxNzQwMzA0NDE1LCJleHAiOjE3NDI4OTY0MTV9.PK5nOW8dbV565B_dp7YhAVveOVy0zi8YtaNlkrtDiZ0', '111756771154013290242'),
('a29c9407-f979-4a8b-92c9-405e9484c893', 'Ustad 2', '$2a$10$08QqYtqfjqtIXcEnQdfV2uJw2R01HGsZaXH/oMW67z48SzABe425i', 'ustad2@gmail.com', '0881023758202', 'ustadz', '2025-02-17 06:11:31.812', '2025-02-25 08:02:28.463', '2025-02-25 08:02:04.519', 0, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiYTI5Yzk0MDctZjk3OS00YThiLTkyYzktNDA1ZTk0ODRjODkzIiwicm9sZSI6InVzdGFkeiJ9LCJpYXQiOjE3NDA0NzA1MjQsImV4cCI6MTc0MzA2MjUyNH0.jeIlfF4lSLuBgwYE831oOX0F-PWgb0rKxyqgJHpQYKA', NULL),
('a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', NULL, 'maulanaazkiassariy@gmail.com', '08986921583', 'user', '2025-02-22 09:24:31.355', '2025-02-27 12:14:48.953', '2025-02-27 12:14:48.952', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiYTcxOWRhOGQtM2M5Yi00MWJiLTgxNzMtZjcyNzkyNGQ1MjkzIiwicm9sZSI6InVzZXIiLCJuYW1lIjoiQXpraSBNYXVsYW5hIEEifSwiaWF0IjoxNzQwNjU4NDg4LCJleHAiOjE3NDMyNTA0ODh9.nwFnJuJYgA_Dt5l5MuSEfa0MAeLRvtVAvyILdz5k72g', '112793381447519469985'),
('d84cb7d9-b275-4368-9802-63e54209e669', 'Hawimaw', '$2a$10$jjhv.yRvZb87GnZ/amNpBuBlIBnSU0UQAXlZoFBFSzRkH.wYYytMi', 'user2@gmail.com', '0881023758102', 'user', '2025-02-17 06:09:40.600', '2025-02-23 11:47:35.711', '2025-02-23 11:47:35.600', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiZDg0Y2I3ZDktYjI3NS00MzY4LTk4MDItNjNlNTQyMDllNjY5Iiwicm9sZSI6InVzZXIifSwiaWF0IjoxNzQwMzExMjU1LCJleHAiOjE3NDI5MDMyNTV9.YhR0v802d2irF2OtsyKW-iU6nQt1bCHg2NCKinIhPso', NULL),
('dcddea17-223a-40aa-a691-869ebe5e958a', 'Ustad 3', '$2a$10$iU1g3.suzfnWMIoyQPgCQe2jJGxLsVvfvzYXeMdvCHLUZoYTZw7aO', 'ustad3@gmail.com', '0881023758203', 'ustadz', '2025-02-17 06:11:43.859', '2025-02-25 08:02:41.284', '2025-02-25 08:02:41.283', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiZGNkZGVhMTctMjIzYS00MGFhLWE2OTEtODY5ZWJlNWU5NThhIiwicm9sZSI6InVzdGFkeiJ9LCJpYXQiOjE3NDA0NzA1NjEsImV4cCI6MTc0MzA2MjU2MX0.3_KHljLeiS4TnB1Xypb5dUd5VmYb-YJb4N1ub_4HzZU', NULL),
('e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', '$2a$10$9k.P5gChWUiuT2cgcuGwTebHAx/OgkVETFAwMbWFuDZomO9y1fep.', 'ustad1@gmail.com', '0881023758568', 'ustadz', '2025-02-17 06:08:25.438', '2025-02-27 10:07:55.406', '2025-02-27 10:07:55.357', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiZTI4YTA2NTQtNmVlMy00ZjQ0LTgwMWMtM2NkZmU1YjcwYzQ0Iiwicm9sZSI6InVzdGFkeiIsIm5hbWUiOiJVc3RhZCBKdXJhZ2FuIFNhcGkifSwiaWF0IjoxNzQwNjUwODc1LCJleHAiOjE3NDMyNDI4NzV9.GBMq1-Cq31nmw2KA4pmK9KMBoRvxl1jZwbzmAmQUiwE', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `UsersOnRiwayatGrup`
--

CREATE TABLE `UsersOnRiwayatGrup` (
  `riwayatgrupid` varchar(36) NOT NULL,
  `userid` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `UsersOnRiwayatGrup`
--

INSERT INTO `UsersOnRiwayatGrup` (`riwayatgrupid`, `userid`, `name`, `role`) VALUES
('5ebae535-cb21-4851-bb5f-f9c0a1673db3', 'a29c9407-f979-4a8b-92c9-405e9484c893', 'Ustad 2', 'ustadz'),
('5ebae535-cb21-4851-bb5f-f9c0a1673db3', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', 'user'),
('5ebae535-cb21-4851-bb5f-f9c0a1673db3', 'dcddea17-223a-40aa-a691-869ebe5e958a', 'Ustad 3', 'ustadz'),
('5ebae535-cb21-4851-bb5f-f9c0a1673db3', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('d24a2522-1116-4e64-93ee-374a268acdf9', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', 'user'),
('d24a2522-1116-4e64-93ee-374a268acdf9', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('d7ccda6e-ec19-4d56-a2bf-a8892fe64824', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', 'user'),
('d7ccda6e-ec19-4d56-a2bf-a8892fe64824', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Domba', 'ustadz'),
('e24f274b-618b-4a42-a626-08c4e515b60e', '72db81fb-6bfc-40d0-a125-602b49c275d3', 'MAQDIS TOURS & TRAVEL', 'user'),
('e24f274b-618b-4a42-a626-08c4e515b60e', '8709b7f0-b2f3-400d-a9d4-f3dc4f1d313e', 'Maqdis Hamim', 'user'),
('e24f274b-618b-4a42-a626-08c4e515b60e', '9e4895b6-72af-4dea-b173-b61f52d842bf', 'Azki Maulana', 'user'),
('e24f274b-618b-4a42-a626-08c4e515b60e', 'a29c9407-f979-4a8b-92c9-405e9484c893', 'Ustad 2', 'ustadz'),
('e24f274b-618b-4a42-a626-08c4e515b60e', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', 'user'),
('e24f274b-618b-4a42-a626-08c4e515b60e', 'd84cb7d9-b275-4368-9802-63e54209e669', 'Hawimaw', 'user'),
('e24f274b-618b-4a42-a626-08c4e515b60e', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Domba', 'ustadz');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Video`
--

CREATE TABLE `Video` (
  `videoid` varchar(191) NOT NULL,
  `judul_vid` varchar(191) NOT NULL,
  `deskripsi` varchar(191) NOT NULL,
  `link_vid` varchar(191) NOT NULL,
  `thumbnail` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `_GrupToPeserta_Grup`
--

CREATE TABLE `_GrupToPeserta_Grup` (
  `A` varchar(36) NOT NULL,
  `B` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('24077361-0fa8-49fc-8ad5-db1b648cf77e', 'd9ab4d874e2717acf60ede17b333bea1fa5928e479db66dcfdec8a7fbb731c06', '2025-02-23 10:53:18.999', '20250223105318_update_users_on_riwayat_grup_fix', NULL, NULL, '2025-02-23 10:53:18.941', 1),
('3b6519ef-517e-41d7-a111-5c79d30ba277', '6d25a39abf2d0818f11a8418d26f932e1db9fb53d8539b0f2c08e331f9a46544', '2025-02-22 10:08:40.430', '20250222100535_update_riwayat', NULL, NULL, '2025-02-22 10:08:40.033', 1),
('5a562f21-55bb-4498-b2d4-217c2c2c9f3b', 'e1fc042c52ec7e6b7507513dbc080d60dde69506be47fe50e47a6925c4f8d90a', '2025-02-22 10:08:40.032', '20250222095002_update_riwayat', NULL, NULL, '2025-02-22 10:08:39.456', 1),
('681b7020-1fed-4756-962c-118fc7558c81', 'bcbc2f4717c97a3ef185f499600b0f81e82e4cf3eb94d7e10801e2189a1d0a09', '2025-02-27 07:22:54.005', '20250227072253_add_table_delete_acc_reason_and_deleted_users', NULL, NULL, '2025-02-27 07:22:53.950', 1),
('6911f3ab-0658-43d5-897d-386433c862ea', '6240b22b5c7e4b088a8d8a9dc537f0c2fc47bf8c36065a89ff7593d57da6f3e9', '2025-02-22 10:21:16.473', '20250222102116_update_riwayat_fix', NULL, NULL, '2025-02-22 10:21:16.434', 1),
('77417794-480b-4e63-bd14-a492c1d53a67', '4c99633d40b47a223ff84fe6f98b2d68cb3edc45f95edadb490f5aa8a9f79b6f', '2025-02-22 10:08:39.446', '20250222030226_update_users_for_google_signin', NULL, NULL, '2025-02-22 10:08:39.331', 1),
('945396d0-d209-4fc3-aa20-e60505d3f3cf', '00f409b31beb7d6c53e4be82acf628d10ebbd27440c86e23e90cbbfd80dac139', '2025-02-27 07:35:53.799', '20250227073553_remove_table_delete_acc_reason', NULL, NULL, '2025-02-27 07:35:53.780', 1),
('9a112780-633d-437a-9f78-ca88f51e906a', 'fe064deee97317e817d058c9267245335b68ab413d7bfe5729560c8eb455ef18', '2025-02-22 10:08:39.322', '20250220025229_init', NULL, NULL, '2025-02-22 10:08:36.761', 1),
('cafb944a-cc09-47d2-8bf7-4a1632409c4c', '3ab01ac17de0a3ee2b69ca6d49c0b4e3c73f9c8227e70b6e06f2822a0a5c71ec', '2025-02-27 07:36:28.680', '20250227073628_add_table_delete_acc_reason', NULL, NULL, '2025-02-27 07:36:28.638', 1),
('fbf881a2-7183-4b0e-a948-ad5ac2dd7817', '1376df637f3b5f0da3f35fb7d2907fc9d1648b53784ef7958f00789c24e64405', '2025-02-23 10:52:38.351', '20250223105238_update_users_on_riwayat_grup_fix', NULL, NULL, '2025-02-23 10:52:38.323', 1),
('ffd7971a-51c9-4fef-aa57-b64de36b8aeb', '76a90c8f11e75b43bb541241bb2d41dce9fae771f92497d380eb245248c346d8', '2025-02-27 07:11:37.907', '20250227071137_remove_users_google_from_database', NULL, NULL, '2025-02-27 07:11:37.806', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `Ayat`
--
ALTER TABLE `Ayat`
  ADD PRIMARY KEY (`ayatid`),
  ADD KEY `Ayat_doaid_fkey` (`doaid`);

--
-- Indeks untuk tabel `DeleteAccReason`
--
ALTER TABLE `DeleteAccReason`
  ADD PRIMARY KEY (`reasonId`);

--
-- Indeks untuk tabel `DeletedUsers`
--
ALTER TABLE `DeletedUsers`
  ADD PRIMARY KEY (`deletedId`),
  ADD UNIQUE KEY `DeletedUsers_userId_key` (`userId`);

--
-- Indeks untuk tabel `Doa`
--
ALTER TABLE `Doa`
  ADD PRIMARY KEY (`doaid`),
  ADD KEY `Doa_perjalananid_fkey` (`perjalananid`);

--
-- Indeks untuk tabel `Grup`
--
ALTER TABLE `Grup`
  ADD PRIMARY KEY (`grupid`),
  ADD UNIQUE KEY `Grup_roomid_key` (`roomid`),
  ADD KEY `Grup_userId_idx` (`userId`);

--
-- Indeks untuk tabel `Perjalanan`
--
ALTER TABLE `Perjalanan`
  ADD PRIMARY KEY (`perjalananid`);

--
-- Indeks untuk tabel `Peserta_Grup`
--
ALTER TABLE `Peserta_Grup`
  ADD PRIMARY KEY (`peserta_grupid`),
  ADD UNIQUE KEY `Peserta_Grup_grupid_userId_key` (`grupid`,`userId`),
  ADD UNIQUE KEY `Peserta_Grup_roomid_key` (`roomid`),
  ADD KEY `Peserta_Grup_userId_fkey` (`userId`);

--
-- Indeks untuk tabel `Profiles`
--
ALTER TABLE `Profiles`
  ADD PRIMARY KEY (`profileid`),
  ADD UNIQUE KEY `Profiles_userId_key` (`userId`);

--
-- Indeks untuk tabel `Progress`
--
ALTER TABLE `Progress`
  ADD PRIMARY KEY (`progressid`),
  ADD KEY `Progress_perjalananid_fkey` (`perjalananid`),
  ADD KEY `Progress_grupid_fkey` (`grupid`);

--
-- Indeks untuk tabel `Progress_Doa`
--
ALTER TABLE `Progress_Doa`
  ADD PRIMARY KEY (`progress_doaid`),
  ADD UNIQUE KEY `Progress_Doa_progressid_doaid_key` (`progressid`,`doaid`),
  ADD KEY `Progress_Doa_doaid_fkey` (`doaid`);

--
-- Indeks untuk tabel `Progress_perjalanan`
--
ALTER TABLE `Progress_perjalanan`
  ADD PRIMARY KEY (`progress_perjalananid`),
  ADD KEY `Progress_perjalanan_progressid_fkey` (`progressid`),
  ADD KEY `Progress_perjalanan_grupid_fkey` (`grupid`),
  ADD KEY `Progress_perjalanan_userId_fkey` (`userId`),
  ADD KEY `Progress_perjalanan_perjalananid_fkey` (`perjalananid`);

--
-- Indeks untuk tabel `RiwayatDoa`
--
ALTER TABLE `RiwayatDoa`
  ADD PRIMARY KEY (`riwayatdoaid`),
  ADD KEY `RiwayatDoa_riwayatperjalananid_idx` (`riwayatperjalananid`),
  ADD KEY `RiwayatDoa_doaid_fkey` (`doaid`);

--
-- Indeks untuk tabel `RiwayatGrup`
--
ALTER TABLE `RiwayatGrup`
  ADD PRIMARY KEY (`riwayatgrupid`);

--
-- Indeks untuk tabel `RiwayatPerjalanan`
--
ALTER TABLE `RiwayatPerjalanan`
  ADD PRIMARY KEY (`riwayatperjalananid`),
  ADD KEY `RiwayatPerjalanan_perjalananid_idx` (`perjalananid`),
  ADD KEY `RiwayatPerjalanan_riwayatgrupid_fkey` (`riwayatgrupid`);

--
-- Indeks untuk tabel `Room`
--
ALTER TABLE `Room`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Users_email_key` (`email`),
  ADD UNIQUE KEY `Users_googleId_key` (`googleId`);

--
-- Indeks untuk tabel `UsersOnRiwayatGrup`
--
ALTER TABLE `UsersOnRiwayatGrup`
  ADD PRIMARY KEY (`riwayatgrupid`,`userid`),
  ADD KEY `UsersOnRiwayatGrup_userid_fkey` (`userid`);

--
-- Indeks untuk tabel `Video`
--
ALTER TABLE `Video`
  ADD PRIMARY KEY (`videoid`);

--
-- Indeks untuk tabel `_GrupToPeserta_Grup`
--
ALTER TABLE `_GrupToPeserta_Grup`
  ADD UNIQUE KEY `_GrupToPeserta_Grup_AB_unique` (`A`,`B`),
  ADD KEY `_GrupToPeserta_Grup_B_index` (`B`);

--
-- Indeks untuk tabel `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `Ayat`
--
ALTER TABLE `Ayat`
  ADD CONSTRAINT `Ayat_doaid_fkey` FOREIGN KEY (`doaid`) REFERENCES `Doa` (`doaid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `Doa`
--
ALTER TABLE `Doa`
  ADD CONSTRAINT `Doa_perjalananid_fkey` FOREIGN KEY (`perjalananid`) REFERENCES `Perjalanan` (`perjalananid`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `Grup`
--
ALTER TABLE `Grup`
  ADD CONSTRAINT `Grup_roomid_fkey` FOREIGN KEY (`roomid`) REFERENCES `Room` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Grup_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `Peserta_Grup`
--
ALTER TABLE `Peserta_Grup`
  ADD CONSTRAINT `Peserta_Grup_roomid_fkey` FOREIGN KEY (`roomid`) REFERENCES `Room` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Peserta_Grup_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `Profiles`
--
ALTER TABLE `Profiles`
  ADD CONSTRAINT `Profiles_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `Progress`
--
ALTER TABLE `Progress`
  ADD CONSTRAINT `Progress_grupid_fkey` FOREIGN KEY (`grupid`) REFERENCES `Grup` (`grupid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Progress_perjalananid_fkey` FOREIGN KEY (`perjalananid`) REFERENCES `Perjalanan` (`perjalananid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `Progress_Doa`
--
ALTER TABLE `Progress_Doa`
  ADD CONSTRAINT `Progress_Doa_doaid_fkey` FOREIGN KEY (`doaid`) REFERENCES `Doa` (`doaid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Progress_Doa_progressid_fkey` FOREIGN KEY (`progressid`) REFERENCES `Progress` (`progressid`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `Progress_perjalanan`
--
ALTER TABLE `Progress_perjalanan`
  ADD CONSTRAINT `Progress_perjalanan_grupid_fkey` FOREIGN KEY (`grupid`) REFERENCES `Grup` (`grupid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Progress_perjalanan_perjalananid_fkey` FOREIGN KEY (`perjalananid`) REFERENCES `Perjalanan` (`perjalananid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Progress_perjalanan_progressid_fkey` FOREIGN KEY (`progressid`) REFERENCES `Progress` (`progressid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Progress_perjalanan_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `RiwayatDoa`
--
ALTER TABLE `RiwayatDoa`
  ADD CONSTRAINT `RiwayatDoa_doaid_fkey` FOREIGN KEY (`doaid`) REFERENCES `Doa` (`doaid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `RiwayatDoa_riwayatperjalananid_fkey` FOREIGN KEY (`riwayatperjalananid`) REFERENCES `RiwayatPerjalanan` (`riwayatperjalananid`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `RiwayatPerjalanan`
--
ALTER TABLE `RiwayatPerjalanan`
  ADD CONSTRAINT `RiwayatPerjalanan_perjalananid_fkey` FOREIGN KEY (`perjalananid`) REFERENCES `Perjalanan` (`perjalananid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `RiwayatPerjalanan_riwayatgrupid_fkey` FOREIGN KEY (`riwayatgrupid`) REFERENCES `RiwayatGrup` (`riwayatgrupid`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `UsersOnRiwayatGrup`
--
ALTER TABLE `UsersOnRiwayatGrup`
  ADD CONSTRAINT `UsersOnRiwayatGrup_riwayatgrupid_fkey` FOREIGN KEY (`riwayatgrupid`) REFERENCES `RiwayatGrup` (`riwayatgrupid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UsersOnRiwayatGrup_userid_fkey` FOREIGN KEY (`userid`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `_GrupToPeserta_Grup`
--
ALTER TABLE `_GrupToPeserta_Grup`
  ADD CONSTRAINT `_GrupToPeserta_Grup_A_fkey` FOREIGN KEY (`A`) REFERENCES `Grup` (`grupid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_GrupToPeserta_Grup_B_fkey` FOREIGN KEY (`B`) REFERENCES `Peserta_Grup` (`peserta_grupid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
