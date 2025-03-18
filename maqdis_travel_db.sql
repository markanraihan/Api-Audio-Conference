-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2025 pada 04.36
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

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
-- Struktur dari tabel `ayat`
--

CREATE TABLE `ayat` (
  `ayatid` varchar(191) NOT NULL,
  `teks_ayat` varchar(191) NOT NULL,
  `terjemahan` varchar(191) DEFAULT NULL,
  `urutan_ayat` int(11) NOT NULL,
  `doaid` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ayat`
--

INSERT INTO `ayat` (`ayatid`, `teks_ayat`, `terjemahan`, `urutan_ayat`, `doaid`) VALUES
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
-- Struktur dari tabel `deleteaccreason`
--

CREATE TABLE `deleteaccreason` (
  `reasonId` varchar(191) NOT NULL,
  `reason` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `deleteaccreason`
--

INSERT INTO `deleteaccreason` (`reasonId`, `reason`) VALUES
('23d49385-a3ce-4449-832c-56282b004899', 'Kesulitan memakai aplikasi'),
('29e84660-2e75-43e9-9149-8aec69cf2a19', 'Masalah keamanan akun'),
('34a55908-3bfb-42fc-ab36-82d89145d33e', 'Tidak lagi menggunakan aplikasi/layanan'),
('3fca33a6-1b50-4b6f-9e3d-58405f18336d', 'Menemukan alternatif lain'),
('4a153ae9-9e07-47b2-8754-d385c9d71ca4', 'Masalah privasi'),
('ae1846b1-b482-4931-ae42-2753976fc2b5', 'Aplikasi sering mengalami kendala'),
('b447f9b9-80e1-4b28-b88b-b91f92292cbb', 'Terlalu banyak notifikasi/email');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deletedusers`
--

CREATE TABLE `deletedusers` (
  `deletedId` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT 'Unknown',
  `email` varchar(191) DEFAULT NULL,
  `alasan` varchar(191) NOT NULL,
  `deletedAt` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `deletedusers`
--

INSERT INTO `deletedusers` (`deletedId`, `userId`, `name`, `email`, `alasan`, `deletedAt`) VALUES
('039762af-5b8a-41bd-81d4-148374c1a305', '0cff06ab-6aa1-49b3-8036-631e4768fd42', 'behejej', 'rendevous.lb@gmail.com', 'test lagi 03 Maret 2025', '2025-03-03 07:12:37.321'),
('05a179be-84e3-4b47-99e9-5896d9407c9d', '48bd201f-dc98-4138-bb17-cef7051dc259', 'tetstysgsh', 'rendevous.lb@gmail.com', 'gatau mau beli treuk', '2025-03-14 03:37:41.961'),
('0b6bcd44-a0c8-4d84-8f1f-afed964dde2d', 'b8a72dbd-59d5-46f3-91b1-033bc3a058f9', 'test aja bro', 'rendevous.lb@gmail.com', 'Terlalu banyak notifikasi/email', '2025-03-03 06:56:18.373'),
('1853f22b-b27e-43c7-b9dd-05d46b27acd9', 'e1015352-81a3-4393-8dd1-9669ed290151', 'Tatang Sunarya ', 'rendevous.lb@gmail.com', 'gatau mau beli treuk', '2025-02-27 13:02:58.482'),
('4a8b7088-05fb-449f-9a1d-f4b3670f3c3a', 'dd8c065c-ede5-490e-8906-ca0a3c56e5b0', 'Purnama Rizal', 'purnamarizal77@gmail.com', 'Aplikasi terlalu bagus', '2025-03-14 03:34:16.600'),
('563430ae-93d6-4a8d-8273-bb87357b10c2', '655476af-cff1-4e1c-a368-94e136870db9', 'hdhshsb', 'rendevous.lb@gmail.com', 'Menemukan alternatif lain', '2025-03-03 07:10:30.683'),
('5ba928e8-9e5b-438e-b80b-6dcd1466bd01', 'dc0fbd55-349f-4b09-9545-2e575ee76921', 'Rendezvous ', 'rendevous.lb@gmail.com', 'Masalah keamanan akun', '2025-02-27 09:25:11.552'),
('8c014e57-bc9d-4cb5-a27f-7c9b1b0a7e36', '5bfd51bb-fa73-4f75-b8db-e7c15258c49a', 'bsbssbbs', 'rendevous.lb@gmail.com', 'Masalah privasi', '2025-03-03 07:08:19.752'),
('a1885f24-c6b1-4c3e-818e-bfb853fd4ff1', '1bbf3757-51c9-4389-b250-55ae5e4f6075', 'berkah', 'rendevous.lb@gmail.com', 'Terlalu banyak notifikasi/email', '2025-03-03 07:04:44.868'),
('c9b7dd58-6c70-4ec8-b2d0-692a9f63ef2a', 'd84311e4-7cbd-40f1-a125-bf1fdb21f09d', 'Asep Jalaludin', 'rendevous.lb@gmail.com', 'Tidak lagi menggunakan aplikasi/layanan', '2025-02-27 09:10:20.826'),
('dda4681f-75f4-48b5-ae04-4fd67b7998c1', '67f2653b-d881-44ff-92d1-5c818e764225', 'Jajang Sukmara ', 'rendevous.lb@gmail.com', 'Masalah privasi', '2025-02-28 02:57:06.368'),
('eb248cb2-f25b-4672-88ee-6122b0fd0b96', '3b76f7f7-1c2a-41ac-81ca-8653cc5886dc', 'Malin Kundang', 'rendevous.lb@gmail.com', 'uji coba hapus akun', '2025-02-27 12:04:16.676'),
('fa233042-20bf-4b9c-b47c-515bb139cebb', '902c7db6-7f04-4bf8-884a-71190a0581b5', 'test aja bro', 'rendevous.lb@gmail.com', 'Terlalu banyak notifikasi/email', '2025-03-03 06:42:58.935');

-- --------------------------------------------------------

--
-- Struktur dari tabel `doa`
--

CREATE TABLE `doa` (
  `doaid` varchar(36) NOT NULL,
  `doa_urut` int(11) NOT NULL,
  `judul_doa` varchar(191) NOT NULL,
  `perjalananid` varchar(191) NOT NULL,
  `link_audio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `doa`
--

INSERT INTO `doa` (`doaid`, `doa_urut`, `judul_doa`, `perjalananid`, `link_audio`) VALUES
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
-- Struktur dari tabel `grup`
--

CREATE TABLE `grup` (
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
-- Dumping data untuk tabel `grup`
--

INSERT INTO `grup` (`grupid`, `nama_grup`, `created_by`, `created_at`, `finish_at`, `open_user`, `status`, `userId`, `roomid`) VALUES
('0baacfdb-44d8-4014-9e7e-6e720a0fdcad', 'New Group 1', 'Ustad 2', '2025-03-04 07:21:23.571', NULL, 1, 'open', 'a29c9407-f979-4a8b-92c9-405e9484c893', '67c6aa0702147c4bc5b64c1a'),
('1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'Test Group Umroh 29xx', 'Ustad Juragan Sapi', '2025-03-03 05:02:31.471', '2025-03-03 05:58:49.519', 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '67c537fdb72a0fec60ba0bec'),
('24ef62a4-dd26-4a48-a2d9-14c801b0478e', 'LinggangGuliGuliGuliGwacaLingganguLi', 'Ustad 2', '2025-03-04 02:47:20.025', '2025-03-04 03:05:00.829', 1, 'open', 'a29c9407-f979-4a8b-92c9-405e9484c893', '67c669fb02147c4bc5b62492'),
('9679395d-b3ab-4ca0-a204-f9cf8652880f', 'Test Group Umroh 30xx', 'Ustad Juragan Sapi', '2025-03-03 05:03:27.511', '2025-03-03 07:19:33.077', 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '67c5383002147c4bc5b5ac03'),
('ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'Sangat Merosahkan', 'Ustad 2', '2025-03-04 06:53:36.309', '2025-03-04 07:15:35.207', 1, 'open', 'a29c9407-f979-4a8b-92c9-405e9484c893', '67c6a3b5b72a0fec60baa951'),
('c3b06dcf-85c4-4108-81ac-7f70466b88a1', 'Test Group Umroh 28xx', 'Ustad Juragan Sapi', '2025-03-01 05:04:16.326', '2025-03-02 13:36:16.000', 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '67c29559b72a0fec60b92844'),
('c63f3bd2-b4e9-463d-8157-c4d5608cd726', 'Test Group Umroh 25xx', 'Ustad Juragan Sapi', '2025-02-28 15:33:13.481', '2025-03-01 13:36:27.000', 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '67c1d754b72a0fec60b90653'),
('dd781c50-ebd7-4755-af33-fca3d852b6e7', 'Test Group Umroh 27xx', 'Ustad Juragan Sapi', '2025-03-01 05:03:32.928', '2025-03-02 13:36:45.000', 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '67c2953602147c4bc5b4c9b3'),
('fe3674be-85b1-45db-af51-f1330939a9db', 'Test Group Umroh 26xx', 'Ustad Juragan Sapi', '2025-03-01 03:17:09.263', '2025-03-02 13:37:15.000', 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '67c27c5302147c4bc5b4bcc8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perjalanan`
--

CREATE TABLE `perjalanan` (
  `perjalananid` varchar(36) NOT NULL,
  `nama_perjalanan` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `perjalanan`
--

INSERT INTO `perjalanan` (`perjalananid`, `nama_perjalanan`, `sort_order`) VALUES
('3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', 2),
('8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', 0),
('cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta_grup`
--

CREATE TABLE `peserta_grup` (
  `peserta_grupid` varchar(36) NOT NULL,
  `grupid` varchar(36) NOT NULL,
  `userId` varchar(36) NOT NULL,
  `roomid` varchar(191) DEFAULT NULL,
  `joinedAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `online` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peserta_grup`
--

INSERT INTO `peserta_grup` (`peserta_grupid`, `grupid`, `userId`, `roomid`, `joinedAt`, `online`) VALUES
('79bd32bf-8efa-42fd-868b-8fb74bdc8faa', '0baacfdb-44d8-4014-9e7e-6e720a0fdcad', 'a719da8d-3c9b-41bb-8173-f727924d5293', NULL, '2025-03-14 02:54:22.017', '0'),
('ac40ab30-b6a4-485d-8f3b-6695b67afb6b', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', '6ac85374-553b-47e3-9e60-9557d94a0b55', NULL, '2025-03-04 07:03:13.403', '0'),
('defe77a1-7b96-42aa-a87f-5ed4f16e46d9', '0baacfdb-44d8-4014-9e7e-6e720a0fdcad', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', NULL, '2025-03-04 07:23:21.215', '0'),
('ee5098e7-63ee-4b7b-ad8b-be308279305c', '0baacfdb-44d8-4014-9e7e-6e720a0fdcad', 'ea2495c0-2149-4e25-bb50-e85f4f703fc1', NULL, '2025-03-14 02:54:21.771', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `profileid` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `whatsapp` varchar(191) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `userId` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`profileid`, `name`, `whatsapp`, `photo`, `createdAt`, `updatedAt`, `userId`) VALUES
('017055ae-6ced-401b-92d1-bb873c0566c0', 'Ustad 3', '0881023758203', '', '2025-02-17 06:11:43.876', '2025-02-17 06:11:43.876', 'dcddea17-223a-40aa-a691-869ebe5e958a'),
('19b40076-ae94-41fe-8f72-2abb8504ce83', 'Rian Lesmana', '', 'https://lh3.googleusercontent.com/a/ACg8ocJbnURR9X81JVopFuzRt9o-V_v13Kt2rvXF4I4FbIFVweVz2ZgM=s96-c', '2025-03-04 07:00:54.901', '2025-03-04 07:00:54.901', 'ea2495c0-2149-4e25-bb50-e85f4f703fc1'),
('1c55da51-4bb6-4e40-b23b-d9db32485e8b', 'MAQDIS TOURS & TRAVEL', '', 'https://lh3.googleusercontent.com/a/ACg8ocItqQ_Ge8VfIBUf58V221bPoNJ7CUTZPEozhkm5FxCysPGgt0vs=s96-c', '2025-02-24 01:34:30.223', '2025-02-24 01:34:30.223', '72db81fb-6bfc-40d0-a125-602b49c275d3'),
('3be7ffb2-d2af-4688-91a6-e24e6617f7b5', 'Atmin Arkan', '081564949454', '', '2025-02-17 06:12:20.072', '2025-02-17 06:12:20.072', '79f57997-b1be-4587-b419-f7e100418b41'),
('510c2d74-cd7b-4fd5-9b33-99126b7c7449', 'Ustad Juragan Sapi', '0881023758568', NULL, '2025-02-17 06:08:25.854', '2025-02-25 07:25:22.687', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44'),
('5d2efa74-2b28-45ec-b1db-d4347db30e95', 'User 4', '0881023758104', '', '2025-02-17 06:10:11.909', '2025-02-17 06:10:11.909', '6ac85374-553b-47e3-9e60-9557d94a0b55'),
('62d78626-fba5-4b6f-bbef-39211e51326a', 'Hawimaw', '0881023758102', 'https://contoh.kitabantu.online/storage/resto/hawimaw.jpg', '2025-02-17 06:09:40.636', '2025-02-17 06:09:40.636', 'd84cb7d9-b275-4368-9802-63e54209e669'),
('7a0f32f1-75c4-4e15-b189-c58cdb56ee9d', 'Azki Maulana A', '08986921583', 'https://lh3.googleusercontent.com/a/ACg8ocII2yvM3mqoGE41lvfvxtjB1fDwhmwZkYQOjQLZfo3laF01ilJJ=s96-c', '2025-02-22 09:24:31.365', '2025-02-27 06:58:08.235', 'a719da8d-3c9b-41bb-8173-f727924d5293'),
('874c5953-8ff1-45c0-bcb0-f332f435f0c9', 'Maqdis Hamim', '', 'https://lh3.googleusercontent.com/a/ACg8ocKzctU5yUum1W2qtVmQyYkscqxT7OeeHSFa_b7JthH3q0OtjA=s96-c', '2025-02-24 04:02:53.793', '2025-02-24 04:02:53.793', '8709b7f0-b2f3-400d-a9d4-f3dc4f1d313e'),
('ce602ff7-e955-4e2c-bccf-5297b3f9316f', 'User 3', '0881023758103', '', '2025-02-17 06:09:54.211', '2025-02-17 06:09:54.211', '69756f8b-b069-4eaa-b35a-0f72b5693194'),
('cf204951-8893-43cf-b470-dce29fd228a3', 'nthing all', '', 'https://lh3.googleusercontent.com/a/ACg8ocK5L3Rd6RRBc2s_fjgUk71c2no7YJHyux2HrUfOJcN2s9ZmmTAc=s96-c', '2025-03-14 03:29:41.397', '2025-03-14 03:29:41.397', '0658b0ba-a9f1-48c3-a290-5ca9168d864f'),
('d031d772-f995-444e-8ab7-f7bdc7c3eba1', 'Udin Idin', '083836983698', 'https://api.dicebear.com/8.x/identicon/svg?seed=Udin Idin', '2025-02-28 03:32:43.379', '2025-02-28 03:32:43.379', '26a794b0-9fa9-4222-9ffd-a27e5e59cee6'),
('d4f8bc62-5de7-4b91-81c4-4d31f59b423d', 'Ustad 2', '0881023758202', '', '2025-02-17 06:11:31.823', '2025-02-17 06:11:31.823', 'a29c9407-f979-4a8b-92c9-405e9484c893'),
('e1ce87dd-5dfb-4ece-acd9-7a7fa1f94f82', '', '0881023758105', '/uploads/photo-1741334018318.jpeg', '2025-02-17 06:10:42.762', '2025-03-07 07:53:38.404', '2f3e8378-f9a2-4ea3-b9b8-a1a14958084f'),
('ee930d57-9b6c-4655-9d01-8fe4fc2558d5', 'Azki Maulana', '', 'https://lh3.googleusercontent.com/a/ACg8ocII2yvM3mqoGE41lvfvxtjB1fDwhmwZkYQOjQLZfo3laF01ilJJ=s96-c', '2025-02-22 04:16:33.453', '2025-02-22 04:16:33.453', '9e4895b6-72af-4dea-b173-b61f52d842bf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `progress`
--

CREATE TABLE `progress` (
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
-- Dumping data untuk tabel `progress`
--

INSERT INTO `progress` (`progressid`, `grupid`, `jenis_perjalanan`, `live`, `status`, `is_finished`, `waktu_mulai`, `perjalananid`) VALUES
('018c77be-0df6-4a54-9fa5-60d9155a9452', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'Umroh', 0, 0, 1, '2025-03-04 07:10:49.691', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('0544f1d5-f23f-44ce-9f47-b9235f36bb68', '0baacfdb-44d8-4014-9e7e-6e720a0fdcad', 'Manasik', 0, 0, 1, '2025-03-04 07:26:27.597', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('0b45ab3d-8043-4ce4-8eb0-22a361fdb87a', '1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'Umroh', 0, 0, 1, '2025-03-03 05:10:33.060', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('1e7d0716-3c72-4e12-baa6-7a9f1f40ba4c', '9679395d-b3ab-4ca0-a204-f9cf8652880f', 'Umroh', 0, 0, 1, '2025-03-03 07:14:10.583', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('2cb2dc58-f247-432a-8442-c58b8a1d5651', 'c3b06dcf-85c4-4108-81ac-7f70466b88a1', 'Umroh', 0, 0, 1, '2025-03-02 07:00:55.185', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('3b62739e-2b4c-4404-b72a-2805a6d4f912', 'c63f3bd2-b4e9-463d-8157-c4d5608cd726', 'Umroh', 0, 0, 1, '2025-02-28 15:38:55.844', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('43872cd5-9d74-4162-9db2-f80fafc87ebf', 'dd781c50-ebd7-4755-af33-fca3d852b6e7', 'Towaf Wada', 0, 0, 1, '2025-03-01 06:35:36.980', '3aacc2cc-8e4e-41df-8400-266935dfc717'),
('465001f0-b691-47f3-abc0-e646ca3d8466', 'fe3674be-85b1-45db-af51-f1330939a9db', 'Umroh', 0, 0, 1, '2025-03-01 04:13:56.947', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('51af18d6-94a2-4158-9831-0faa8b3c3b3d', '0baacfdb-44d8-4014-9e7e-6e720a0fdcad', 'Umroh', 0, 0, 1, '2025-03-14 02:58:02.428', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('538a8777-ec4f-428d-943c-1e441cd9ccd8', '9679395d-b3ab-4ca0-a204-f9cf8652880f', 'Manasik', 0, 0, 1, '2025-03-03 07:13:27.637', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('58b3deea-d48b-4037-99d6-0471fdcde19d', 'dd781c50-ebd7-4755-af33-fca3d852b6e7', 'Umroh', 0, 0, 1, '2025-03-01 06:15:59.778', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('7895ed24-ba66-40b5-a5c4-15b09e4624e8', '9679395d-b3ab-4ca0-a204-f9cf8652880f', 'Towaf Wada', 0, 0, 1, '2025-03-03 07:18:44.399', '3aacc2cc-8e4e-41df-8400-266935dfc717'),
('81456ace-076f-4682-a031-7bd94c4619e0', 'fe3674be-85b1-45db-af51-f1330939a9db', 'Manasik', 0, 0, 1, '2025-03-01 04:07:39.580', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('861da387-5443-4988-8f09-100b53d284c1', 'dd781c50-ebd7-4755-af33-fca3d852b6e7', 'Manasik', 0, 0, 1, '2025-03-01 05:56:16.091', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('88a61621-1cce-464f-b722-31d4d8bb2713', 'c3b06dcf-85c4-4108-81ac-7f70466b88a1', 'Towaf Wada', 0, 0, 1, '2025-03-03 04:43:47.408', '3aacc2cc-8e4e-41df-8400-266935dfc717'),
('9a9d75b3-0124-421a-81a2-06446c352c1e', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'Towaf Wada', 0, 0, 1, '2025-03-04 07:14:03.157', '3aacc2cc-8e4e-41df-8400-266935dfc717'),
('9d3fe761-ea08-437c-8283-dbdda8e79b80', 'fe3674be-85b1-45db-af51-f1330939a9db', 'Towaf Wada', 0, 0, 1, '2025-03-01 04:55:49.940', '3aacc2cc-8e4e-41df-8400-266935dfc717'),
('a305af4c-105f-42f1-9dda-cffc3f1da978', 'c63f3bd2-b4e9-463d-8157-c4d5608cd726', 'Manasik', 0, 0, 1, '2025-02-28 15:34:37.854', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('be2c3623-4f9c-4602-8fd8-5bb32b43ecc3', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'Manasik', 0, 0, 1, '2025-03-04 07:04:47.493', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('c699fc84-8ca7-48d4-813b-fd06ce20ee2a', 'c63f3bd2-b4e9-463d-8157-c4d5608cd726', 'Towaf Wada', 0, 0, 1, '2025-02-28 17:00:38.097', '3aacc2cc-8e4e-41df-8400-266935dfc717'),
('c69b2a13-587e-4af9-b3db-2ca7f2f04293', '1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'Manasik', 0, 0, 1, '2025-03-03 05:07:46.978', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('d48d2c82-7e46-4ba0-be52-90472247a356', '0baacfdb-44d8-4014-9e7e-6e720a0fdcad', 'Towaf Wada', 0, 0, 0, NULL, NULL),
('d5c4bd8f-6fcc-4a9d-9d16-4c3e430a4942', 'c3b06dcf-85c4-4108-81ac-7f70466b88a1', 'Manasik', 0, 0, 1, '2025-03-02 05:31:42.971', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('ecbcf36d-6f24-4c4f-b2d7-be6826837471', '1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'Towaf Wada', 0, 0, 1, '2025-03-03 05:58:04.440', '3aacc2cc-8e4e-41df-8400-266935dfc717');

-- --------------------------------------------------------

--
-- Struktur dari tabel `progress_doa`
--

CREATE TABLE `progress_doa` (
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
-- Dumping data untuk tabel `progress_doa`
--

INSERT INTO `progress_doa` (`progress_doaid`, `progressid`, `doaid`, `doa_mulai`, `doa_selesai`, `durasi_doa`, `cek_doa`, `progress_perjalananid`) VALUES
('02fc933b-c756-4276-aec3-975bed8068a1', '1e7d0716-3c72-4e12-baa6-7a9f1f40ba4c', '5987233c-34cc-402d-bbf2-7244c6ed4b51', '2025-03-03 07:15:33.937', '2025-03-03 07:15:39.901', '0:05', 1, NULL),
('0486061f-a915-44e6-982b-d7e04dadc0ce', '2cb2dc58-f247-432a-8442-c58b8a1d5651', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', '2025-03-02 07:01:34.497', '2025-03-02 07:01:43.426', '0:08', 1, NULL),
('069b5a4f-fb38-4078-a687-afb6d8fef29b', 'ecbcf36d-6f24-4c4f-b2d7-be6826837471', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', '2025-03-03 05:58:32.831', '2025-03-03 05:58:38.318', '0:05', 1, NULL),
('09e3ed1e-9f6a-4622-864d-b9de59fb24dd', '43872cd5-9d74-4162-9db2-f80fafc87ebf', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', '2025-03-01 06:36:05.280', '2025-03-01 06:36:19.319', '0:14', 1, NULL),
('0b469c4f-8f90-472b-8e94-d5db087d4d65', 'a305af4c-105f-42f1-9dda-cffc3f1da978', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', '2025-02-28 16:40:36.229', '2025-02-28 16:40:45.171', '0:08', 1, NULL),
('0b9d4ef6-25a4-4e43-8152-f8217b72d0fa', '88a61621-1cce-464f-b722-31d4d8bb2713', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', '2025-03-03 04:52:59.446', '2025-03-03 04:53:16.994', '0:17', 1, NULL),
('0dadd3e8-9993-4fdc-af07-3f4c8dc2119a', '9a9d75b3-0124-421a-81a2-06446c352c1e', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', '2025-03-04 07:14:58.926', '2025-03-04 07:15:09.192', '0:10', 1, NULL),
('1323945c-064e-4bf5-ba68-e41608df6a40', 'ecbcf36d-6f24-4c4f-b2d7-be6826837471', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', '2025-03-03 05:58:23.778', '2025-03-03 05:58:32.661', '0:08', 1, NULL),
('1983bfa2-634b-4042-995e-1c0b8e070b42', '018c77be-0df6-4a54-9fa5-60d9155a9452', '837bc323-f24d-4991-bdab-6ea0e38839af', '2025-03-04 07:12:25.920', '2025-03-04 07:12:37.637', '0:11', 1, NULL),
('1aaf9157-4844-46d7-a1f1-489f2f0b74d9', '58b3deea-d48b-4037-99d6-0471fdcde19d', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', '2025-03-01 06:16:57.504', '2025-03-01 06:16:58.059', '0:00', 1, NULL),
('1dcd354e-1cad-4b1d-8eee-7fc91b0fb541', 'd5c4bd8f-6fcc-4a9d-9d16-4c3e430a4942', '2fccec89-6e0a-4442-bfbd-85cf2a207769', '2025-03-02 05:32:17.228', '2025-03-02 05:32:32.872', '0:15', 1, NULL),
('2343ad79-3bbd-442d-b9e7-99367dca4129', 'd5c4bd8f-6fcc-4a9d-9d16-4c3e430a4942', '99b86069-1f51-477a-aef0-6156d490d3ec', '2025-03-02 05:31:51.584', '2025-03-02 05:32:17.077', '0:25', 1, NULL),
('286d5b00-f331-4539-832b-b3a57984d2e9', '2cb2dc58-f247-432a-8442-c58b8a1d5651', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', '2025-03-02 07:01:06.798', '2025-03-02 07:01:25.388', '0:18', 1, NULL),
('2a1c341b-e6fe-44da-bca9-f8b6804d5125', '3b62739e-2b4c-4404-b72a-2805a6d4f912', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', '2025-02-28 16:55:37.321', '2025-02-28 16:55:39.304', '0:01', 1, NULL),
('2f034c25-29d5-46b4-b150-992461b0555e', '2cb2dc58-f247-432a-8442-c58b8a1d5651', '837bc323-f24d-4991-bdab-6ea0e38839af', '2025-03-02 07:01:43.574', '2025-03-02 07:01:53.879', '0:10', 1, NULL),
('372f34bc-1459-4f4e-995d-422653f84d1e', '1e7d0716-3c72-4e12-baa6-7a9f1f40ba4c', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', '2025-03-03 07:14:16.695', '2025-03-03 07:15:33.402', '1:16', 1, NULL),
('39449ee7-6119-48d3-811d-45b65e9ef11f', 'c699fc84-8ca7-48d4-813b-fd06ce20ee2a', '8fca249e-d255-42b6-b9b0-db0bb55166b7', '2025-02-28 17:01:38.630', '2025-02-28 17:01:47.625', '0:08', 1, NULL),
('3daa9d9f-4447-49ce-8821-57c519565871', '9a9d75b3-0124-421a-81a2-06446c352c1e', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', '2025-03-04 07:15:09.381', '2025-03-04 07:15:34.416', '0:25', 1, NULL),
('45a7025b-6cd7-4387-a51e-99b8cd9259c0', '58b3deea-d48b-4037-99d6-0471fdcde19d', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', '2025-03-01 06:16:06.675', NULL, NULL, 0, NULL),
('468de6f0-1d37-4bfe-9ffc-67605f427851', 'c69b2a13-587e-4af9-b3db-2ca7f2f04293', '2fccec89-6e0a-4442-bfbd-85cf2a207769', '2025-03-03 05:08:13.801', '2025-03-03 05:08:30.218', '0:16', 1, NULL),
('4a35e1e8-d3a4-419b-8106-f25193bdffe2', 'be2c3623-4f9c-4602-8fd8-5bb32b43ecc3', '99b86069-1f51-477a-aef0-6156d490d3ec', '2025-03-04 07:04:55.167', '2025-03-04 07:06:00.779', '1:05', 1, NULL),
('4c54ffa4-98a9-4d25-be1e-d60a1d8b42ed', '018c77be-0df6-4a54-9fa5-60d9155a9452', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', '2025-03-04 07:12:37.812', '2025-03-04 07:12:53.337', '0:15', 1, NULL),
('4cc94c75-8684-4ac9-a080-37f7354da2eb', '81456ace-076f-4682-a031-7bd94c4619e0', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', '2025-03-01 04:12:07.867', '2025-03-01 04:12:14.682', '0:06', 1, NULL),
('517eb8de-ac3a-48e3-9539-bbafe33ccf32', '0b45ab3d-8043-4ce4-8eb0-22a361fdb87a', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', '2025-03-03 05:11:37.023', '2025-03-03 05:11:47.441', '0:10', 1, NULL),
('55065ee8-6a50-4991-b82d-3f5af4c4ba97', '465001f0-b691-47f3-abc0-e646ca3d8466', '837bc323-f24d-4991-bdab-6ea0e38839af', '2025-03-01 04:14:21.498', '2025-03-01 04:14:22.839', '0:01', 1, NULL),
('5689bf95-2b83-4cd1-ae16-57d7fd58eab0', '51af18d6-94a2-4158-9831-0faa8b3c3b3d', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', '2025-03-14 03:02:36.787', '2025-03-14 03:03:46.665', '1:09', 1, NULL),
('5a3feb50-da32-4fbb-8d04-d890e8a089d5', 'be2c3623-4f9c-4602-8fd8-5bb32b43ecc3', '2fccec89-6e0a-4442-bfbd-85cf2a207769', '2025-03-04 07:06:01.212', '2025-03-04 07:06:34.828', '0:33', 1, NULL),
('5b2ee2ab-3139-4ec2-a3c5-6bcb1622da94', 'd5c4bd8f-6fcc-4a9d-9d16-4c3e430a4942', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', '2025-03-02 05:32:33.022', '2025-03-02 05:32:43.475', '0:10', 1, NULL),
('61e5a34c-74e9-441f-95f6-f77782b93e05', '88a61621-1cce-464f-b722-31d4d8bb2713', '8fca249e-d255-42b6-b9b0-db0bb55166b7', '2025-03-03 04:43:55.932', '2025-03-03 04:52:43.537', '8:47', 1, NULL),
('63f3f8fb-71a6-4012-bb04-88d3d5016c61', 'a305af4c-105f-42f1-9dda-cffc3f1da978', '99b86069-1f51-477a-aef0-6156d490d3ec', '2025-02-28 15:34:42.401', NULL, NULL, 0, NULL),
('655f53dc-7570-4834-8ce3-91fbc23f78ae', '465001f0-b691-47f3-abc0-e646ca3d8466', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', '2025-03-01 04:14:22.960', '2025-03-01 04:14:23.844', '0:00', 1, NULL),
('6705a026-379e-4da7-8610-76f45f43ea07', '9d3fe761-ea08-437c-8283-dbdda8e79b80', '8fca249e-d255-42b6-b9b0-db0bb55166b7', '2025-03-01 04:32:10.228', NULL, NULL, 0, NULL),
('67c94ad3-ad0e-445e-b7d3-473007857ae7', '0b45ab3d-8043-4ce4-8eb0-22a361fdb87a', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', '2025-03-03 05:10:39.655', '2025-03-03 05:11:00.040', '0:20', 1, NULL),
('69cf5186-1966-4824-be54-3a94d86d9b2f', '538a8777-ec4f-428d-943c-1e441cd9ccd8', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', '2025-03-03 07:13:46.140', '2025-03-03 07:13:54.973', '0:08', 1, NULL),
('6a3ad606-3198-406e-b712-fbf615b38a9e', '2cb2dc58-f247-432a-8442-c58b8a1d5651', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', '2025-03-02 07:01:54.024', '2025-03-02 07:02:02.791', '0:08', 1, NULL),
('7106dcaf-b763-41b1-a057-7a7ba3b63ea5', '465001f0-b691-47f3-abc0-e646ca3d8466', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', '2025-03-01 04:14:01.305', '2025-03-01 04:14:17.994', '0:16', 1, NULL),
('73db8b78-8790-49b2-8502-414226a82476', 'c699fc84-8ca7-48d4-813b-fd06ce20ee2a', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', '2025-02-28 17:01:47.772', '2025-02-28 17:01:48.647', '0:00', 1, NULL),
('781a6e9c-5806-46f3-b0c1-2cd67ca54cdd', '465001f0-b691-47f3-abc0-e646ca3d8466', '5987233c-34cc-402d-bbf2-7244c6ed4b51', '2025-03-01 04:14:18.133', '2025-03-01 04:14:19.684', '0:01', 1, NULL),
('78430a23-1e9d-46bd-8f1b-55a4d5e6243e', '465001f0-b691-47f3-abc0-e646ca3d8466', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', '2025-03-01 04:14:19.839', '2025-03-01 04:14:21.334', '0:01', 1, NULL),
('796e28f9-6ad1-41eb-9e38-199138072ff4', '018c77be-0df6-4a54-9fa5-60d9155a9452', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', '2025-03-04 07:10:56.535', '2025-03-04 07:11:38.393', '0:41', 1, NULL),
('7b701081-8196-416d-84b7-2d3bf90c6295', '7895ed24-ba66-40b5-a5c4-15b09e4624e8', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', '2025-03-03 07:19:28.285', '2025-03-03 07:19:29.413', '0:01', 1, NULL),
('7c23c26c-e5bc-4a1c-9b55-5bfeac8b5923', '0544f1d5-f23f-44ce-9f47-b9235f36bb68', '99b86069-1f51-477a-aef0-6156d490d3ec', '2025-03-04 07:26:34.128', '2025-03-04 07:31:47.958', '5:13', 1, NULL),
('8322b1be-747d-4839-a3f5-6893456c9711', '58b3deea-d48b-4037-99d6-0471fdcde19d', '5987233c-34cc-402d-bbf2-7244c6ed4b51', '2025-03-01 06:16:35.164', '2025-03-01 06:16:38.070', '0:02', 1, NULL),
('850f0c82-d178-404d-8504-a6a5b25bd173', '861da387-5443-4988-8f09-100b53d284c1', '2fccec89-6e0a-4442-bfbd-85cf2a207769', '2025-03-01 05:57:39.634', '2025-03-01 05:58:22.911', '0:43', 1, NULL),
('8a1bc781-a5f9-4ade-bc50-18f05db086cb', '0544f1d5-f23f-44ce-9f47-b9235f36bb68', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', '2025-03-04 07:31:49.801', '2025-03-04 07:31:51.570', '0:01', 1, NULL),
('8e304b65-6665-41a2-9d53-0aeec48b97d7', '861da387-5443-4988-8f09-100b53d284c1', '99b86069-1f51-477a-aef0-6156d490d3ec', '2025-03-01 05:56:22.421', '2025-03-01 05:57:39.484', '1:17', 1, NULL),
('94018634-ecf9-4048-bc94-68a2afd9408b', '81456ace-076f-4682-a031-7bd94c4619e0', '2fccec89-6e0a-4442-bfbd-85cf2a207769', '2025-03-01 04:12:00.355', '2025-03-01 04:12:07.725', '0:07', 1, NULL),
('97554cd0-9240-4fe7-ba08-00d5ed49c569', '58b3deea-d48b-4037-99d6-0471fdcde19d', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', '2025-03-01 06:16:38.211', '2025-03-01 06:16:48.613', '0:10', 1, NULL),
('9bb86354-5373-40f1-9f56-77855f3476d8', '3b62739e-2b4c-4404-b72a-2805a6d4f912', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', '2025-02-28 16:55:41.037', '2025-02-28 16:55:42.151', '0:01', 1, NULL),
('9be8eb42-10a3-4c4a-b657-2c578efa25ee', 'be2c3623-4f9c-4602-8fd8-5bb32b43ecc3', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', '2025-03-04 07:06:34.987', '2025-03-04 07:06:51.993', '0:17', 1, NULL),
('9bf4a6b3-a9e5-460d-a599-58445947e9d4', '9d3fe761-ea08-437c-8283-dbdda8e79b80', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', '2025-03-01 05:00:16.077', '2025-03-01 05:00:23.081', '0:07', 1, NULL),
('a6e94ceb-c463-41fd-9570-a5555157b1b5', '51af18d6-94a2-4158-9831-0faa8b3c3b3d', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', '2025-03-14 02:58:11.069', '2025-03-14 03:00:01.168', '1:50', 1, NULL),
('abc0a268-ff86-4fc7-b544-a82caec27962', '0b45ab3d-8043-4ce4-8eb0-22a361fdb87a', '837bc323-f24d-4991-bdab-6ea0e38839af', '2025-03-03 05:11:26.079', '2025-03-03 05:11:36.617', '0:10', 1, NULL),
('ac672c8a-08fc-40d0-8db8-389590863159', '7895ed24-ba66-40b5-a5c4-15b09e4624e8', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', '2025-03-03 07:19:23.809', '2025-03-03 07:19:28.107', '0:04', 1, NULL),
('ae9b1c53-975d-4006-aa02-9d6b7ee6a8c3', '88a61621-1cce-464f-b722-31d4d8bb2713', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', '2025-03-03 04:52:43.744', '2025-03-03 04:52:59.064', '0:15', 1, NULL),
('b1b76fe0-a10e-431f-aa68-246caa30e3d3', '0544f1d5-f23f-44ce-9f47-b9235f36bb68', '2fccec89-6e0a-4442-bfbd-85cf2a207769', '2025-03-04 07:31:48.236', '2025-03-04 07:31:49.623', '0:01', 1, NULL),
('b6a49391-fbeb-4d52-b916-2f8e6d4a3553', '81456ace-076f-4682-a031-7bd94c4619e0', '99b86069-1f51-477a-aef0-6156d490d3ec', '2025-03-01 04:11:37.681', '2025-03-01 04:12:00.189', '0:22', 1, NULL),
('b9a910e6-1a0d-497b-9524-816dce59abdf', '538a8777-ec4f-428d-943c-1e441cd9ccd8', '99b86069-1f51-477a-aef0-6156d490d3ec', '2025-03-03 07:13:34.873', '2025-03-03 07:13:42.622', '0:07', 1, NULL),
('bb55e5ab-a813-4a68-b166-fe1eca01d054', 'ecbcf36d-6f24-4c4f-b2d7-be6826837471', '8fca249e-d255-42b6-b9b0-db0bb55166b7', '2025-03-03 05:58:14.323', '2025-03-03 05:58:23.307', '0:08', 1, NULL),
('bc33275b-5dfa-4b0a-8587-bb77d15ec670', '51af18d6-94a2-4158-9831-0faa8b3c3b3d', '837bc323-f24d-4991-bdab-6ea0e38839af', '2025-03-14 03:03:46.826', '2025-03-14 03:03:59.493', '0:12', 1, NULL),
('bf7dcc70-3189-4094-8e5c-14549afcde9c', '0b45ab3d-8043-4ce4-8eb0-22a361fdb87a', '5987233c-34cc-402d-bbf2-7244c6ed4b51', '2025-03-03 05:11:00.182', '2025-03-03 05:11:11.109', '0:10', 1, NULL),
('c65f7387-77e2-4f00-a907-1e1c6347a500', 'c699fc84-8ca7-48d4-813b-fd06ce20ee2a', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', '2025-02-28 17:01:48.774', '2025-02-28 17:01:49.169', '0:00', 1, NULL),
('c84345b8-1669-499d-a1b0-de0f919086d1', '018c77be-0df6-4a54-9fa5-60d9155a9452', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', '2025-03-04 07:11:53.512', '2025-03-04 07:12:25.570', '0:32', 1, NULL),
('cc0719ad-38da-46a9-a359-a96789845ddc', '3b62739e-2b4c-4404-b72a-2805a6d4f912', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', '2025-02-28 16:54:18.834', '2025-02-28 16:55:33.702', '1:14', 1, NULL),
('ccf4ba92-9835-4279-bdf5-e0e347627b3d', '3b62739e-2b4c-4404-b72a-2805a6d4f912', '5987233c-34cc-402d-bbf2-7244c6ed4b51', '2025-02-28 16:55:33.840', '2025-02-28 16:55:37.168', '0:03', 1, NULL),
('cd4ab445-9489-45ef-a22e-77e9b6813a8d', '58b3deea-d48b-4037-99d6-0471fdcde19d', '837bc323-f24d-4991-bdab-6ea0e38839af', '2025-03-01 06:16:48.750', '2025-03-01 06:16:57.180', '0:08', 1, NULL),
('ce57f025-bbdd-4072-b37d-687ca6dfc4f3', '51af18d6-94a2-4158-9831-0faa8b3c3b3d', '5987233c-34cc-402d-bbf2-7244c6ed4b51', '2025-03-14 03:00:01.801', '2025-03-14 03:02:36.013', '2:34', 1, NULL),
('d0f8be19-77e5-4cc3-a3cb-5e44a0ffc1f7', '43872cd5-9d74-4162-9db2-f80fafc87ebf', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', '2025-03-01 06:36:19.721', '2025-03-01 06:36:27.738', '0:08', 1, NULL),
('d10666db-b1de-4159-bc9e-fa23a104a264', 'a305af4c-105f-42f1-9dda-cffc3f1da978', '2fccec89-6e0a-4442-bfbd-85cf2a207769', '2025-02-28 15:39:43.080', '2025-02-28 16:40:35.802', '60:52', 1, NULL),
('d1c273ff-c173-4226-affb-063e39fdff6e', '9d3fe761-ea08-437c-8283-dbdda8e79b80', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', '2025-03-01 04:56:49.111', '2025-03-01 05:00:15.648', '3:26', 1, NULL),
('d5423cde-8a17-4282-a581-558ea5a69061', '51af18d6-94a2-4158-9831-0faa8b3c3b3d', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', '2025-03-14 03:03:59.890', '2025-03-14 03:04:17.742', '0:17', 1, NULL),
('d7b12aa9-94b9-4aaa-9cc6-0d4f34cb37ba', '1e7d0716-3c72-4e12-baa6-7a9f1f40ba4c', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', '2025-03-03 07:15:40.460', '2025-03-03 07:15:47.017', '0:06', 1, NULL),
('d84a3702-0e8c-4e29-906e-45dd881ad1f7', '43872cd5-9d74-4162-9db2-f80fafc87ebf', '8fca249e-d255-42b6-b9b0-db0bb55166b7', '2025-03-01 06:35:44.194', '2025-03-01 06:36:05.142', '0:20', 1, NULL),
('d88cd7f3-832c-48af-b650-be26112b2043', '7895ed24-ba66-40b5-a5c4-15b09e4624e8', '8fca249e-d255-42b6-b9b0-db0bb55166b7', '2025-03-03 07:18:52.221', '2025-03-03 07:19:23.631', '0:31', 1, NULL),
('defb795d-87b3-4c48-ba26-8c8e499ce0ed', '2cb2dc58-f247-432a-8442-c58b8a1d5651', '5987233c-34cc-402d-bbf2-7244c6ed4b51', '2025-03-02 07:01:25.534', '2025-03-02 07:01:34.250', '0:08', 1, NULL),
('df033758-fc61-430f-b55d-3905a387ef88', '861da387-5443-4988-8f09-100b53d284c1', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', '2025-03-01 05:58:23.304', '2025-03-01 05:58:32.125', '0:08', 1, NULL),
('ebf58d2c-2398-46fb-9fed-8fc137539c88', '1e7d0716-3c72-4e12-baa6-7a9f1f40ba4c', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', '2025-03-03 07:15:50.912', '2025-03-03 07:15:51.800', '0:00', 1, NULL),
('f43880b9-69c9-413d-94a6-5c41a7459c82', '1e7d0716-3c72-4e12-baa6-7a9f1f40ba4c', '837bc323-f24d-4991-bdab-6ea0e38839af', '2025-03-03 07:15:47.199', '2025-03-03 07:15:50.738', '0:03', 1, NULL),
('f476b37a-3550-4c22-b29c-03fa6026a77a', '0b45ab3d-8043-4ce4-8eb0-22a361fdb87a', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', '2025-03-03 05:11:11.486', '2025-03-03 05:11:25.744', '0:14', 1, NULL),
('f686929f-8a80-4192-83cb-7c01edf8657f', '538a8777-ec4f-428d-943c-1e441cd9ccd8', '2fccec89-6e0a-4442-bfbd-85cf2a207769', '2025-03-03 07:13:43.501', '2025-03-03 07:13:45.970', '0:02', 1, NULL),
('f8c1b6c7-042a-4a64-bf40-a17bb36d937a', 'c69b2a13-587e-4af9-b3db-2ca7f2f04293', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', '2025-03-03 05:08:30.410', '2025-03-03 05:08:41.937', '0:11', 1, NULL),
('f921ecb6-1201-481b-9219-7126ba490c53', '3b62739e-2b4c-4404-b72a-2805a6d4f912', '837bc323-f24d-4991-bdab-6ea0e38839af', '2025-02-28 16:55:39.449', '2025-02-28 16:55:40.891', '0:01', 1, NULL),
('fab4c9c0-a899-432e-81b4-084bbcf12615', '018c77be-0df6-4a54-9fa5-60d9155a9452', '5987233c-34cc-402d-bbf2-7244c6ed4b51', '2025-03-04 07:11:38.777', '2025-03-04 07:11:53.141', '0:14', 1, NULL),
('fc987a76-c88b-41e0-a1f3-a3abdbaddcfe', '9a9d75b3-0124-421a-81a2-06446c352c1e', '8fca249e-d255-42b6-b9b0-db0bb55166b7', '2025-03-04 07:14:15.483', '2025-03-04 07:14:58.443', '0:42', 1, NULL),
('fcb6ae40-19c0-40be-a374-0de4c84e6d10', 'c69b2a13-587e-4af9-b3db-2ca7f2f04293', '99b86069-1f51-477a-aef0-6156d490d3ec', '2025-03-03 05:07:52.443', '2025-03-03 05:08:13.682', '0:21', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `progress_perjalanan`
--

CREATE TABLE `progress_perjalanan` (
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
-- Dumping data untuk tabel `progress_perjalanan`
--

INSERT INTO `progress_perjalanan` (`progress_perjalananid`, `progressid`, `grupid`, `userId`, `perjalananid`, `waktu_mulai`, `time_selesai`, `durasi_progress`) VALUES
('07c846cc-8541-4fed-a9e7-9589a7456e86', '0b45ab3d-8043-4ce4-8eb0-22a361fdb87a', '1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'a29c9407-f979-4a8b-92c9-405e9484c893', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-03 05:10:33.060', '2025-03-03 05:14:36.685', '4:03'),
('08bbe179-ba1a-4367-b762-d214c921a4c5', '018c77be-0df6-4a54-9fa5-60d9155a9452', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-04 07:10:49.691', '2025-03-04 07:13:03.243', '2:13'),
('0f376863-abe0-4bb5-affe-46bf5aa13b1e', '0544f1d5-f23f-44ce-9f47-b9235f36bb68', '0baacfdb-44d8-4014-9e7e-6e720a0fdcad', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-04 07:26:27.597', '2025-03-04 07:32:05.212', '5:37'),
('11812607-2b9a-4847-ad6a-3d8e067e6274', 'a305af4c-105f-42f1-9dda-cffc3f1da978', 'c63f3bd2-b4e9-463d-8157-c4d5608cd726', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-28 15:34:37.854', '2025-02-28 15:35:01.681', '0:23'),
('1e10e6d8-31e8-458b-9ed0-c2e258ce02ce', '7895ed24-ba66-40b5-a5c4-15b09e4624e8', '9679395d-b3ab-4ca0-a204-f9cf8652880f', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-03 07:18:44.399', '2025-03-03 07:19:33.077', '0:48'),
('2a82190f-144f-42b1-9776-216b4f231ae8', 'be2c3623-4f9c-4602-8fd8-5bb32b43ecc3', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-04 07:04:47.493', '2025-03-04 07:07:29.586', '2:42'),
('2cce1f44-c2c0-44c8-90e4-c55669ece84a', '88a61621-1cce-464f-b722-31d4d8bb2713', 'c3b06dcf-85c4-4108-81ac-7f70466b88a1', 'd84cb7d9-b275-4368-9802-63e54209e669', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-03 04:43:47.408', '2025-03-03 04:53:36.636', '9:49'),
('3c1b407f-f8b7-481d-84e5-484c8b7e3ca1', 'c69b2a13-587e-4af9-b3db-2ca7f2f04293', '1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'd84cb7d9-b275-4368-9802-63e54209e669', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-03 05:07:46.978', '2025-03-03 05:08:53.825', '1:06'),
('3c8af90f-c846-451e-b84d-c1c3fb946864', '3b62739e-2b4c-4404-b72a-2805a6d4f912', 'c63f3bd2-b4e9-463d-8157-c4d5608cd726', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-28 15:38:55.844', '2025-02-28 16:58:32.698', '79:36'),
('3d46fd30-cdb9-4605-b147-b3b933566ce2', '0544f1d5-f23f-44ce-9f47-b9235f36bb68', '0baacfdb-44d8-4014-9e7e-6e720a0fdcad', 'a719da8d-3c9b-41bb-8173-f727924d5293', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-04 07:26:27.597', '2025-03-04 07:32:05.212', '5:37'),
('400f3164-b811-43c9-a169-c4a05787a1b9', '9a9d75b3-0124-421a-81a2-06446c352c1e', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-04 07:14:03.157', '2025-03-04 07:15:35.207', '1:32'),
('41c919f6-8b75-4207-b314-24194df221ae', 'c699fc84-8ca7-48d4-813b-fd06ce20ee2a', 'c63f3bd2-b4e9-463d-8157-c4d5608cd726', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-28 17:00:38.097', '2025-02-28 17:01:59.959', '1:21'),
('4215a02f-2a5e-43ca-bef7-c55f56e84abf', 'ecbcf36d-6f24-4c4f-b2d7-be6826837471', '1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'a29c9407-f979-4a8b-92c9-405e9484c893', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-03 05:58:04.440', '2025-03-03 05:58:49.519', '0:45'),
('48c46525-3690-4d9a-9f8d-d97015384c62', '0b45ab3d-8043-4ce4-8eb0-22a361fdb87a', '1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'd84cb7d9-b275-4368-9802-63e54209e669', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-03 05:10:33.060', '2025-03-03 05:14:36.685', '4:03'),
('4f87bbeb-be19-494d-891c-e32318f82b2d', '538a8777-ec4f-428d-943c-1e441cd9ccd8', '9679395d-b3ab-4ca0-a204-f9cf8652880f', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-03 07:13:27.637', '2025-03-03 07:14:02.272', '0:34'),
('5f851ac3-3d0f-4ca9-bcaa-1b87b2ebfae0', 'c69b2a13-587e-4af9-b3db-2ca7f2f04293', '1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-03 05:07:46.978', '2025-03-03 05:08:53.825', '1:06'),
('605f871b-863a-4c21-849f-ce211f1f3763', 'be2c3623-4f9c-4602-8fd8-5bb32b43ecc3', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', '6ac85374-553b-47e3-9e60-9557d94a0b55', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-04 07:04:47.493', '2025-03-04 07:07:29.586', '2:42'),
('6727be17-f944-492a-a100-da4afc3807c0', '9a9d75b3-0124-421a-81a2-06446c352c1e', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-04 07:14:03.157', '2025-03-04 07:15:35.207', '1:32'),
('68e713c8-a566-48cd-961e-3bff06b297e7', '861da387-5443-4988-8f09-100b53d284c1', 'dd781c50-ebd7-4755-af33-fca3d852b6e7', 'a719da8d-3c9b-41bb-8173-f727924d5293', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-01 05:56:16.091', '2025-03-01 05:58:50.439', '2:34'),
('69016e8d-cf4e-4bcb-809a-2c2b24e149c8', '2cb2dc58-f247-432a-8442-c58b8a1d5651', 'c3b06dcf-85c4-4108-81ac-7f70466b88a1', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-02 07:00:55.185', '2025-03-02 07:02:16.504', '1:21'),
('6dc7f84f-ce26-4580-8c6b-8db1de734389', 'd5c4bd8f-6fcc-4a9d-9d16-4c3e430a4942', 'c3b06dcf-85c4-4108-81ac-7f70466b88a1', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-02 05:31:42.971', '2025-03-02 05:34:56.004', '3:13'),
('72887a19-b4f7-4369-974b-e0ad8fc9b9c5', '43872cd5-9d74-4162-9db2-f80fafc87ebf', 'dd781c50-ebd7-4755-af33-fca3d852b6e7', 'd84cb7d9-b275-4368-9802-63e54209e669', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-01 06:35:36.980', '2025-03-01 06:40:34.532', '4:57'),
('78ef2d7e-7fcb-4dca-bed6-70d493981352', '58b3deea-d48b-4037-99d6-0471fdcde19d', 'dd781c50-ebd7-4755-af33-fca3d852b6e7', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-01 06:15:59.778', '2025-03-01 06:17:42.453', '1:42'),
('82c5ebdb-21e1-429e-8e43-38d3377164ef', '43872cd5-9d74-4162-9db2-f80fafc87ebf', 'dd781c50-ebd7-4755-af33-fca3d852b6e7', 'a719da8d-3c9b-41bb-8173-f727924d5293', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-01 06:35:36.980', '2025-03-01 06:40:34.532', '4:57'),
('94d22608-5745-49ff-b717-a98ab26dbe99', 'ecbcf36d-6f24-4c4f-b2d7-be6826837471', '1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-03 05:58:04.440', '2025-03-03 05:58:49.519', '0:45'),
('9862ef5a-b875-491f-9cc7-47a5e505d05c', '51af18d6-94a2-4158-9831-0faa8b3c3b3d', '0baacfdb-44d8-4014-9e7e-6e720a0fdcad', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-14 02:58:02.428', '2025-03-14 03:04:34.641', '6:32'),
('a2c15fc6-3c48-4410-8b5c-b6b61c707e5f', '88a61621-1cce-464f-b722-31d4d8bb2713', 'c3b06dcf-85c4-4108-81ac-7f70466b88a1', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-03 04:43:47.408', '2025-03-03 04:53:36.636', '9:49'),
('a456fab5-ab22-4f4b-8fbc-2a4eba9bdd7c', 'be2c3623-4f9c-4602-8fd8-5bb32b43ecc3', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'a719da8d-3c9b-41bb-8173-f727924d5293', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-04 07:04:47.493', '2025-03-04 07:07:29.586', '2:42'),
('a80b7727-4bbb-484a-a4d1-2b5dcdc3adc6', '465001f0-b691-47f3-abc0-e646ca3d8466', 'fe3674be-85b1-45db-af51-f1330939a9db', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-01 04:13:56.947', '2025-03-01 04:14:29.202', '0:32'),
('abb04ca4-1713-447e-849a-7a669f1f0591', '861da387-5443-4988-8f09-100b53d284c1', 'dd781c50-ebd7-4755-af33-fca3d852b6e7', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-01 05:56:16.091', '2025-03-01 05:58:50.439', '2:34'),
('bdcfbf60-da4d-4d10-b7e3-d3f864d390a2', '018c77be-0df6-4a54-9fa5-60d9155a9452', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', '6ac85374-553b-47e3-9e60-9557d94a0b55', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-04 07:10:49.691', '2025-03-04 07:13:03.243', '2:13'),
('bf776c13-ce51-4511-99d2-1476315c1d92', '9d3fe761-ea08-437c-8283-dbdda8e79b80', 'fe3674be-85b1-45db-af51-f1330939a9db', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-01 04:55:49.940', '2025-03-01 05:00:35.611', '4:45'),
('c0b16c0f-136b-4b45-94f9-b6bf21d6b31e', 'ecbcf36d-6f24-4c4f-b2d7-be6826837471', '1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'd84cb7d9-b275-4368-9802-63e54209e669', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-03 05:58:04.440', '2025-03-03 05:58:49.519', '0:45'),
('c32bb488-521f-44bb-bafe-f6bb2276454a', '51af18d6-94a2-4158-9831-0faa8b3c3b3d', '0baacfdb-44d8-4014-9e7e-6e720a0fdcad', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-14 02:58:02.428', '2025-03-14 03:04:34.641', '6:32'),
('c691ac6e-87f1-4557-bbae-2040fb02699c', '018c77be-0df6-4a54-9fa5-60d9155a9452', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-04 07:10:49.691', '2025-03-04 07:13:03.243', '2:13'),
('c816903e-6d37-4754-93b2-d89f97f2f1e0', 'c69b2a13-587e-4af9-b3db-2ca7f2f04293', '1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'a29c9407-f979-4a8b-92c9-405e9484c893', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-03 05:07:46.978', '2025-03-03 05:08:53.825', '1:06'),
('c8419743-4a94-4672-b3d7-e7a9e30f49d4', '9a9d75b3-0124-421a-81a2-06446c352c1e', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'ea2495c0-2149-4e25-bb50-e85f4f703fc1', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-04 07:14:03.157', '2025-03-04 07:15:35.207', '1:32'),
('cf61e49f-e603-422d-a6ac-b553e59e4e78', '51af18d6-94a2-4158-9831-0faa8b3c3b3d', '0baacfdb-44d8-4014-9e7e-6e720a0fdcad', 'ea2495c0-2149-4e25-bb50-e85f4f703fc1', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-14 02:58:02.428', '2025-03-14 03:04:34.641', '6:32'),
('d2444f6c-b876-4330-8967-fbf2266669c7', '58b3deea-d48b-4037-99d6-0471fdcde19d', 'dd781c50-ebd7-4755-af33-fca3d852b6e7', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-01 06:15:59.778', '2025-03-01 06:17:42.453', '1:42'),
('e4538d58-57be-4821-afbd-83420d21d2a8', '1e7d0716-3c72-4e12-baa6-7a9f1f40ba4c', '9679395d-b3ab-4ca0-a204-f9cf8652880f', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-03 07:14:10.583', '2025-03-03 07:16:06.109', '1:55'),
('e4ba0b58-41a8-4045-8201-b545419a8a2b', '018c77be-0df6-4a54-9fa5-60d9155a9452', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'ea2495c0-2149-4e25-bb50-e85f4f703fc1', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-04 07:10:49.691', '2025-03-04 07:13:03.243', '2:13'),
('e92758d9-f60f-4fc8-8612-a17b680284fe', '43872cd5-9d74-4162-9db2-f80fafc87ebf', 'dd781c50-ebd7-4755-af33-fca3d852b6e7', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-01 06:35:36.980', '2025-03-01 06:40:34.532', '4:57'),
('ec26964f-45dd-4efa-abb6-cebb8dcc60f0', '0b45ab3d-8043-4ce4-8eb0-22a361fdb87a', '1a1abcc6-8d3c-4cc0-843f-abfeec7dd35c', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-03-03 05:10:33.060', '2025-03-03 05:14:36.685', '4:03'),
('f133bfcc-8466-4cda-95bd-877554487f87', '9a9d75b3-0124-421a-81a2-06446c352c1e', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', '6ac85374-553b-47e3-9e60-9557d94a0b55', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-03-04 07:14:03.157', '2025-03-04 07:15:35.207', '1:32'),
('f814d64c-9f2d-45b2-838d-9b12c825bce4', 'be2c3623-4f9c-4602-8fd8-5bb32b43ecc3', 'ae11668e-5f39-45b8-b15a-7b7cf1712c07', 'ea2495c0-2149-4e25-bb50-e85f4f703fc1', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-04 07:04:47.493', '2025-03-04 07:07:29.586', '2:42'),
('f9f2c4c4-983c-45fd-ae0b-22c030a5cc3b', '81456ace-076f-4682-a031-7bd94c4619e0', 'fe3674be-85b1-45db-af51-f1330939a9db', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-03-01 04:07:39.580', '2025-03-01 04:12:26.884', '4:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayatdoa`
--

CREATE TABLE `riwayatdoa` (
  `riwayatdoaid` varchar(36) NOT NULL,
  `riwayatperjalananid` varchar(36) NOT NULL,
  `doaid` varchar(36) DEFAULT NULL,
  `judul_doa` varchar(255) NOT NULL,
  `durasi_doa` varchar(191) DEFAULT NULL,
  `cek_doa` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `riwayatdoa`
--

INSERT INTO `riwayatdoa` (`riwayatdoaid`, `riwayatperjalananid`, `doaid`, `judul_doa`, `durasi_doa`, `cek_doa`) VALUES
('0024ba0c-e47d-4d4d-b5be-a4a28904c539', 'e114add5-6c41-4503-8e27-7cb707c42df5', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:19', 1),
('011450c7-eb5b-4c1d-82e0-c42dddd03baf', '81794b4c-c341-4165-a6c7-4b255cb34f54', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:10', 1),
('0135dfb2-fe1a-4d1a-8ee2-4d39cc0f5612', 'ae9721a8-0e68-4fbf-8154-0dc318caca69', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:01', 1),
('02527a77-9cb7-4e52-a302-6f8979ea3945', '887c488a-6a21-45cf-a621-e406e7129c41', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:53', 1),
('093efb5c-94d9-4734-932b-ca74d653fa72', '9900ed09-f793-446e-9473-cb74ce39cddf', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:17', 1),
('0999303f-323b-4bc0-8d68-5f94cb0c99c1', '31ac6074-4ca2-4610-ba14-0f040b16feb8', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:06', 1),
('0b763b85-b986-49e9-8dba-757269c20db0', '1dbfc8ef-87b6-4037-a479-6195fdac94a6', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', NULL, 0),
('0e6fe571-14fb-4858-a982-55d3a2d0854c', 'f8956943-9f6b-404b-b257-d8d2d0aeabf0', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:11', 1),
('0ef1d5b0-83c9-4bae-b599-fe0c0a63e056', 'd67ebbff-0edd-4136-9a48-ecd7530af97f', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:06', 1),
('0efed8d5-1ffe-4fa6-9ee4-ed08844e93a1', 'aa67cf25-a6b3-4efc-9d48-85ecf62632c6', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '3:26', 1),
('0f7e1e59-4c29-4660-ad96-dbedbcdaa34c', '49fa30e2-5b4c-4922-b990-1195b8add961', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '5:13', 1),
('10278a29-6b5c-4aec-b44f-a6faa6319d4b', 'db6c3721-58e4-4bc5-bfc1-2eab7efb2e46', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:08', 1),
('1b8f7392-14e3-4f8e-b618-26f5f0c34a9a', 'db6e5349-18a6-4c13-b1df-cd3c0294140f', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', NULL, 0),
('1d095b56-f3e8-4610-b5bf-9fcab20e554b', '8fc6e76e-e1ce-4d4d-81d5-2004feeeb564', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', NULL, 0),
('1f7ac11d-2498-493d-a451-67df5be5946a', 'db6e5349-18a6-4c13-b1df-cd3c0294140f', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:08', 1),
('20a11813-5b91-4873-b677-f580f708b75b', '8fa29429-9251-402a-80fc-1ede784cdcac', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', '1:15', 1),
('215f446e-7526-4a63-8302-460d7944afa3', '49fa30e2-5b4c-4922-b990-1195b8add961', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:01', 1),
('24001c22-8143-4fc1-b40e-aee2c9aedd7c', 'd2d78256-d1d6-4cd9-a726-5f225d9bb907', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', '3:45', 1),
('2592e4ec-f063-4d46-b44d-b8edaae8a705', 'ab15b2b2-ea82-44ae-9395-965eb199d777', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '1:05', 1),
('26ee11e3-7951-4482-ad69-5bdd273dcffa', 'ae9721a8-0e68-4fbf-8154-0dc318caca69', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '1:14', 1),
('296dc96c-662d-414a-b3f3-90d4f3c68f5a', '0462f6d2-e167-4a5c-9406-b10cb682aa11', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', '0:08', 1),
('2b87f378-aabf-4182-b50c-f3a0945a195c', 'ab15b2b2-ea82-44ae-9395-965eb199d777', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:17', 1),
('2cab50d6-b14f-4327-9fd0-11975ce0d1af', 'ae9721a8-0e68-4fbf-8154-0dc318caca69', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:03', 1),
('2cb75970-70d1-44ab-9c45-894d7c66f925', 'ecb0b99b-26b9-4b2b-95db-796a74c9e3e4', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', '0:17', 1),
('2d445b8f-6e87-4ac4-a24f-0a124ceefe98', 'af8234ea-19bd-4781-94ed-07c48ae513ee', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:14', 1),
('2e02f449-73a8-40fa-9b4b-0a0b14a8abf4', 'aa67cf25-a6b3-4efc-9d48-85ecf62632c6', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', NULL, 0),
('2f2a0863-e51c-4a84-9ac1-8bcaa6a08d71', 'd67ebbff-0edd-4136-9a48-ecd7530af97f', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:06', 1),
('2f9b1b91-3fbf-4b1c-8bc9-595386bde148', 'f8956943-9f6b-404b-b257-d8d2d0aeabf0', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:32', 1),
('2fb43ea8-1214-4528-a896-3821fd6f1455', '81216078-1e04-4175-bd86-66715ba7eb81', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:09', 1),
('3032584f-a74d-4ad9-a81b-939e04d112b7', 'd2d78256-d1d6-4cd9-a726-5f225d9bb907', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '0:11', 1),
('307e4986-b2c3-4d28-9768-dc08b295f969', 'a972924e-833b-40fc-bd11-dbb4356c2eb8', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', NULL, 0),
('30fa938c-a32c-4138-96d5-716133db6228', 'e04d9e45-82ac-4911-911b-a73653806fda', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:16', 1),
('322c134f-1122-4a11-84cf-b5ed9c6ae65a', 'e114add5-6c41-4503-8e27-7cb707c42df5', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:18', 1),
('325d0c30-ba79-4a22-a29e-8a3c7ee7e5c0', '31ac6074-4ca2-4610-ba14-0f040b16feb8', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '0:12', 1),
('360f012a-2ffc-40eb-861e-1739fa227977', 'aa67cf25-a6b3-4efc-9d48-85ecf62632c6', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:07', 1),
('36584f7c-c29c-4da3-a4e0-e35036be2021', 'ae9721a8-0e68-4fbf-8154-0dc318caca69', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:01', 1),
('36614a3e-d34e-4329-ae79-bed596bfa50e', 'd9612db0-e24a-48b9-9a70-45edae2773be', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', '0:23', 1),
('36cbf1ba-3b18-4288-9207-ee2a239b4a06', '49fa30e2-5b4c-4922-b990-1195b8add961', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:01', 1),
('38426346-7acf-408f-bded-fff769af4057', '058d7ee1-f01a-4e4c-9357-b9fa1045ed91', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', NULL, 0),
('3933a768-1434-47c7-b006-7422b4ad3746', '8fa29429-9251-402a-80fc-1ede784cdcac', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:04', 1),
('3a25032a-f924-47d2-8d82-ed0d649b5893', 'da4943c1-5c1c-4310-9d50-f157993996fc', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:07', 1),
('3ac27479-3d10-4c8e-812c-a755f2c61993', '4a991179-9003-40fd-bc09-d00b0707efa8', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:01', 1),
('3c20468e-2aa5-49a7-8728-d06a90d3157a', '9900ed09-f793-446e-9473-cb74ce39cddf', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '1:09', 1),
('3ce58488-6f10-45c8-8492-48f5d2d181e8', 'd67ebbff-0edd-4136-9a48-ecd7530af97f', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:07', 1),
('3cfcf7d4-7cff-4e94-97d7-629cdec36215', '49159813-4d65-417b-8c2b-0e3ac6e91ab0', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:10', 1),
('41f92038-6b66-4037-9b70-ab767be73976', '9900ed09-f793-446e-9473-cb74ce39cddf', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:12', 1),
('445b7d9e-7fc2-4e95-ac2d-7b83fee928d3', 'e114add5-6c41-4503-8e27-7cb707c42df5', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '0:44', 1),
('469de5d4-66c1-4355-8717-6215ed780bd6', '887c488a-6a21-45cf-a621-e406e7129c41', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '0:51', 1),
('4731f9bc-2590-46cd-8090-5febf9fefe36', '438026f8-2151-4c57-9323-5f02cea8c78e', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:05', 1),
('47ddbb37-c59c-49de-93fb-8b0b0b72011b', 'c369a4bd-b085-4986-8036-2845e93a0cd7', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', NULL, 0),
('4abd2b25-36a8-4729-a4e4-fcc2beb7de3b', 'e114add5-6c41-4503-8e27-7cb707c42df5', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:22', 1),
('4ae0dd0e-9c3b-42ac-8eb2-758183443ef7', 'e04d9e45-82ac-4911-911b-a73653806fda', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '0:21', 1),
('4d417008-a06e-484d-815d-5e8782cf53ff', 'f8956943-9f6b-404b-b257-d8d2d0aeabf0', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '0:41', 1),
('4f6ba925-1d12-4df5-9d17-9bbba7915ce4', 'd9612db0-e24a-48b9-9a70-45edae2773be', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:06', 1),
('500c9a9c-0bb3-4472-a12a-3cb2fa8cbaff', '81216078-1e04-4175-bd86-66715ba7eb81', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '0:19', 1),
('505b5983-4ec4-46eb-8083-a56bd397cb94', 'ecb0b99b-26b9-4b2b-95db-796a74c9e3e4', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:24', 1),
('549d06d1-c339-4939-ae6b-b293c778cac7', '81794b4c-c341-4165-a6c7-4b255cb34f54', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '0:25', 1),
('560b0969-0e9f-4b7a-85c3-10f28875eb64', '81216078-1e04-4175-bd86-66715ba7eb81', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:17', 1),
('584bacbd-f6b8-471b-adc9-a6507213532d', '87f5107e-22f6-4322-abae-bcd1a66f50fd', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', '8:47', 1),
('586d4665-9490-4396-8e3c-70dc5a8d55de', '679dc2b4-45bf-4915-a7de-bfecaa6a69b3', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', NULL, 0),
('5a76f432-603f-4dc1-99ec-b309aa4e0296', 'af8234ea-19bd-4781-94ed-07c48ae513ee', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:10', 1),
('5a9270da-c721-47ff-8a3c-1f82d04a3c1e', 'db6e5349-18a6-4c13-b1df-cd3c0294140f', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:00', 1),
('5d75c5b0-a5c1-4697-99ca-60ccfe4a38e2', 'af8234ea-19bd-4781-94ed-07c48ae513ee', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:10', 1),
('6302186a-4ee4-48c6-8b8b-dff2dea9d7dd', 'da4943c1-5c1c-4310-9d50-f157993996fc', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:06', 1),
('6906746a-00eb-43d2-8ef4-9afe13a93e88', 'f0e9973c-6d7e-4e13-b8ce-5913a424e0cb', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '1:16', 1),
('6b24f69c-6e3d-43b6-b702-5a7d20676829', 'db6c3721-58e4-4bc5-bfc1-2eab7efb2e46', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '0:14', 1),
('6c308f7f-86cc-4c6a-ad97-1835f58af0f8', '9900ed09-f793-446e-9473-cb74ce39cddf', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '1:50', 1),
('6d9ca75d-2203-45e3-b406-3701a1e715c2', '4a991179-9003-40fd-bc09-d00b0707efa8', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:00', 1),
('7320e2c8-5d19-4d93-a8ae-38e1b6152e17', '8b10b528-4585-4edc-9e85-a8f7d12ae0d7', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '0:22', 1),
('75aed7fd-e936-4d59-8428-89ef5acf57de', 'ecb0b99b-26b9-4b2b-95db-796a74c9e3e4', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '0:09', 1),
('773ad4cd-f768-4781-925f-8e7d06f1d110', '87f5107e-22f6-4322-abae-bcd1a66f50fd', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '0:15', 1),
('789f4bc2-1022-4460-a67c-c1005c602d7c', '81216078-1e04-4175-bd86-66715ba7eb81', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:10', 1),
('7cf3d738-e3cb-493e-9c0d-2601865a8020', 'f0e9973c-6d7e-4e13-b8ce-5913a424e0cb', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:06', 1),
('7d653426-f3d6-45cd-bbc8-aa58ec3ee9ad', '06f6bb41-ba73-4931-a373-ad636cea5733', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:07', 1),
('7e534315-1469-4990-9ca8-3bfe6ea5205b', 'd9612db0-e24a-48b9-9a70-45edae2773be', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '0:11', 1),
('7f278de4-69ee-4635-a5f6-bb238866796f', '4a991179-9003-40fd-bc09-d00b0707efa8', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '0:16', 1),
('7f5ed806-12f3-415f-bd7b-34d95a639403', '438026f8-2151-4c57-9323-5f02cea8c78e', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '0:11', 1),
('7fdc25c5-f1e1-4058-80bb-69713221a63a', '8b10b528-4585-4edc-9e85-a8f7d12ae0d7', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:06', 1),
('847e6194-ff56-4823-974e-d64fee1ec61d', 'e4fca1c6-ef0c-45f9-8b5d-dca97f4e05b3', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', NULL, 0),
('86bb6d3f-38ca-4c8e-8dc7-84a14730c0f3', '0462f6d2-e167-4a5c-9406-b10cb682aa11', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '0:00', 1),
('8c101e2e-a3f7-457f-be1e-e2f7c650b9ed', '83be5dbb-1101-4a55-a1a7-8f06cadfa7e4', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:24', 1),
('8e3dd79d-8bca-4274-bd33-7c0ef89f5efa', '8fc6e76e-e1ce-4d4d-81d5-2004feeeb564', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', NULL, 0),
('8f2d6688-46c0-4602-a79f-a7da6e2ce780', '9900ed09-f793-446e-9473-cb74ce39cddf', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '2:34', 1),
('9144e626-2787-4dcc-aa07-79cb8766f8da', '233c2185-ce4c-4dbc-9407-9602409a4f85', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '0:10', 1),
('957b0157-d5d5-4c7c-a5be-c6b8395b0c7a', 'eb49e641-db4c-4050-9eb7-19a7199b32e6', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', NULL, 0),
('96bf83d4-57a5-4e38-a118-d584d8827f14', '4a991179-9003-40fd-bc09-d00b0707efa8', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:01', 1),
('973c885b-55ec-4134-a730-e4e98235fff6', '87f5107e-22f6-4322-abae-bcd1a66f50fd', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:17', 1),
('994d9bb8-2bb8-4fae-bad8-231dcbd7eef6', 'd67ebbff-0edd-4136-9a48-ecd7530af97f', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '0:07', 1),
('9c46eeb8-a2e3-4bb8-87f6-4bca66a41f00', '95fff2b1-2742-42f3-9739-05e27e1dee2a', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '1:17', 1),
('9ed5fcc8-254b-499c-8372-dc0b7e66d4ef', '81216078-1e04-4175-bd86-66715ba7eb81', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:11', 1),
('9f45d864-4579-4808-9953-32ef15a373bd', 'a0505e5e-ba6e-4580-a93f-15cbd0639b49', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '0:08', 1),
('a0a9308a-3c02-4fa6-ab7a-9a6a01fc6914', 'a0505e5e-ba6e-4580-a93f-15cbd0639b49', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:05', 1),
('a4398b2c-e65c-45d1-9798-cebec83f8b5d', 'da4943c1-5c1c-4310-9d50-f157993996fc', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:10', 1),
('a51e4c9b-b14a-4a12-a2b1-f00fe48b6c7b', '0462f6d2-e167-4a5c-9406-b10cb682aa11', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:00', 1),
('a6c3f27b-12b1-4f89-a01b-86739958fb05', 'db6c3721-58e4-4bc5-bfc1-2eab7efb2e46', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', '0:20', 1),
('ac312cfd-8714-4b91-a248-deaca6d36b8d', '438026f8-2151-4c57-9323-5f02cea8c78e', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:07', 1),
('acf93b14-07b7-4320-ba83-37741cd675c3', '8fc6e76e-e1ce-4d4d-81d5-2004feeeb564', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:02', 1),
('b1556aaf-99c3-46d7-b5a3-11532df2edff', '8fa29429-9251-402a-80fc-1ede784cdcac', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '0:06', 1),
('b1e3e2b0-1f35-467e-88e1-f501897ea44b', 'f0e9973c-6d7e-4e13-b8ce-5913a424e0cb', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:05', 1),
('b3903193-b20d-4fd3-b3b8-e6912abcf3f4', 'ae9721a8-0e68-4fbf-8154-0dc318caca69', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:01', 1),
('b3ef08ad-829b-4df3-8fa8-04e903d79160', '81794b4c-c341-4165-a6c7-4b255cb34f54', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:15', 1),
('b6b1ec95-c6c7-46c1-a3c3-47c75fefec5b', '4a991179-9003-40fd-bc09-d00b0707efa8', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:01', 1),
('b88b07ba-8a4d-41a5-bbfc-cf2677ee9b60', '83be5dbb-1101-4a55-a1a7-8f06cadfa7e4', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '2:27', 1),
('ba2ef811-d7b4-4b86-9c7e-09f2d4839f2b', '2fcec8ab-88f9-4665-8119-cae36e491c0d', 'e1bb2324-08af-4725-b861-cfb0bf8953c2', 'Doa Tawaf Wada 2', '0:04', 1),
('bd0376c4-a5b3-487a-82d0-b2c417d9c964', '49159813-4d65-417b-8c2b-0e3ac6e91ab0', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:08', 1),
('be3f8b65-5428-49a5-943f-f6f154cb1c6f', '49159813-4d65-417b-8c2b-0e3ac6e91ab0', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:08', 1),
('bf114302-43d8-40d8-a907-e5c15f14370b', '31ac6074-4ca2-4610-ba14-0f040b16feb8', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:06', 1),
('bf1936de-d1eb-413b-8597-92e664e2a354', '233c2185-ce4c-4dbc-9407-9602409a4f85', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:25', 1),
('bf62ecf6-b756-4ef2-9156-0dde32054654', 'f0e9973c-6d7e-4e13-b8ce-5913a424e0cb', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:00', 1),
('c0d3a000-6911-4244-b846-0dabf12b126d', 'af8234ea-19bd-4781-94ed-07c48ae513ee', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:10', 1),
('c0d57a39-fe42-4a48-878d-533d56136e46', '2fcec8ab-88f9-4665-8119-cae36e491c0d', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', '0:31', 1),
('c25befd3-3825-40ca-b9b1-8fdbd03eb0be', 'da4943c1-5c1c-4310-9d50-f157993996fc', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:06', 1),
('c4eaa05d-615f-4f23-8c23-73837941b624', '67fe05bb-75c2-424b-9cfc-ce421ce05d3d', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', NULL, 0),
('c9040eb7-7648-42f6-8bc5-35326dd5dd47', '95fff2b1-2742-42f3-9739-05e27e1dee2a', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:08', 1),
('ca8cf792-cb83-46a5-8ff0-9e662baf602e', '8b10b528-4585-4edc-9e85-a8f7d12ae0d7', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:07', 1),
('cceafb85-c6b9-4ca8-9c24-97232560cc69', '49159813-4d65-417b-8c2b-0e3ac6e91ab0', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '0:18', 1),
('cf1b4fdf-2d9c-4de4-9680-3a85d6c157e0', 'e114add5-6c41-4503-8e27-7cb707c42df5', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:26', 1),
('cf859563-e027-4bf2-80fe-e66a9d3b97f4', '8fc6e76e-e1ce-4d4d-81d5-2004feeeb564', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '7:29', 1),
('d0334f66-4013-422f-9f7f-9846b7b205ad', 'ab15b2b2-ea82-44ae-9395-965eb199d777', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:33', 1),
('d1e8f479-af29-418c-a4ed-64f01aa3987c', 'b0b99873-4288-491f-b631-4704d7af761e', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '0:07', 1),
('d224fb1e-821e-4411-80c7-1ec24509db1d', 'f8956943-9f6b-404b-b257-d8d2d0aeabf0', 'bffe5f51-a8e1-4de0-b508-93afa9fc2d9d', 'Doa Umroh 5', '0:15', 1),
('d3ad2fd3-4c78-447c-8dad-f3eb359e1a3f', '06f6bb41-ba73-4931-a373-ad636cea5733', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:26', 1),
('d46c9bee-0eff-43dd-8c5f-b7dee8552cfa', '06f6bb41-ba73-4931-a373-ad636cea5733', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '0:51', 1),
('d4c5f345-851e-4589-9ea4-bec6122f5768', '233c2185-ce4c-4dbc-9407-9602409a4f85', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', '0:42', 1),
('dcb1b88d-0c6a-428b-9f53-72f17f8a8339', 'a0505e5e-ba6e-4580-a93f-15cbd0639b49', '8fca249e-d255-42b6-b9b0-db0bb55166b7', 'Doa Tawaf Wada 1', '0:08', 1),
('e47c8bf3-7573-4611-9ff4-ff3337c4cd46', 'db6e5349-18a6-4c13-b1df-cd3c0294140f', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:10', 1),
('e49bafe3-7468-41f0-9397-7025a74c62d6', 'b0b99873-4288-491f-b631-4704d7af761e', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:02', 1),
('e50bff27-b55e-4d26-82c7-54294022c337', 'd2d78256-d1d6-4cd9-a726-5f225d9bb907', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:08', 1),
('e621ccee-8bd3-4fd8-82e0-48a6df8f8178', '8fc6e76e-e1ce-4d4d-81d5-2004feeeb564', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:02', 1),
('e68730eb-a276-4e49-baad-61b76d69fa0f', 'd67ebbff-0edd-4136-9a48-ecd7530af97f', 'da3c5c18-3088-49b4-85e4-315f6cf46ad7', 'Doa Umroh 3', '0:07', 1),
('e869e497-b07c-4cea-8d93-268eedd1fd32', '2fcec8ab-88f9-4665-8119-cae36e491c0d', '750b02e3-8cc2-4854-8dd0-eb6a7aca0b05', 'Doa Tawaf Wada 3', '0:01', 1),
('e8b20f61-4de6-4a34-beae-24bdf02dfa7a', 'b0b99873-4288-491f-b631-4704d7af761e', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:08', 1),
('eba41936-42e0-44f8-89e3-d6eb12c0e7b8', 'f0e9973c-6d7e-4e13-b8ce-5913a424e0cb', '837bc323-f24d-4991-bdab-6ea0e38839af', 'Doa Umroh 4', '0:03', 1),
('ec69ce54-f4cf-41c8-bb20-33751ea118db', 'da4943c1-5c1c-4310-9d50-f157993996fc', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '0:10', 1),
('f023b911-8a45-4064-8c6d-5760e0750b9f', '83be5dbb-1101-4a55-a1a7-8f06cadfa7e4', '99b86069-1f51-477a-aef0-6156d490d3ec', 'Doa Manasik 1', '6:54', 1),
('f5392be3-5184-4826-b6fb-c8f50f2f56de', 'db6e5349-18a6-4c13-b1df-cd3c0294140f', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:02', 1),
('fa5881b8-8d24-47a4-b75e-81139e008067', '95fff2b1-2742-42f3-9739-05e27e1dee2a', '2fccec89-6e0a-4442-bfbd-85cf2a207769', 'Doa Manasik 2', '0:43', 1),
('fdb2f7a7-b70c-4fa5-9486-28795460b16a', '49159813-4d65-417b-8c2b-0e3ac6e91ab0', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:08', 1),
('fecbba3d-fe57-4bca-809f-4732bd1beb72', 'f8956943-9f6b-404b-b257-d8d2d0aeabf0', '5987233c-34cc-402d-bbf2-7244c6ed4b51', 'Doa Umroh 2', '0:14', 1),
('ff686634-3748-4765-85dd-0a7863966fad', 'af8234ea-19bd-4781-94ed-07c48ae513ee', '5d5a677f-98ee-428b-bd4b-c937c68d18a7', 'Doa Umroh 1', '0:20', 1),
('fff464ec-cb5e-4cf2-83db-75eb78276f08', 'e04d9e45-82ac-4911-911b-a73653806fda', '97adbd01-f29e-4d2e-8fc9-a6806ab1a83c', 'Doa Manasik 3', '0:11', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayatgrup`
--

CREATE TABLE `riwayatgrup` (
  `riwayatgrupid` varchar(36) NOT NULL,
  `nama_grup` varchar(255) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `riwayatgrup`
--

INSERT INTO `riwayatgrup` (`riwayatgrupid`, `nama_grup`, `created_at`) VALUES
('01acd6c0-c7ff-4b2e-98eb-4aa75c1c81a7', 'Test Group Umroh 25xx', '2025-02-28 15:35:01.724'),
('427b0b56-d4fe-4027-84af-a76e2e696f93', 'Sangat Merosahkan', '2025-03-04 07:07:29.773'),
('5ebae535-cb21-4851-bb5f-f9c0a1673db3', 'Grup Test Maqdis Travel 2025', '2025-02-25 08:03:44.143'),
('5fbf2c3d-f650-4384-8758-9d25f52faa55', 'Test Group Umroh 23xx', '2025-02-28 03:42:52.187'),
('624d0737-5ff0-476d-9392-482eb04ed005', 'Test Group Umroh 29xx', '2025-03-03 05:08:53.837'),
('912a771c-fb76-4085-ad06-e367bd3b9766', 'Test Group Umroh 24xx', '2025-02-28 04:01:15.238'),
('9a7f7e77-c50b-461e-b9c8-f1fd3606fb15', 'Test Group Umroh 28xx', '2025-03-02 05:34:56.112'),
('a5214f54-e47b-4ed9-a953-1b1f1077164f', 'LinggangGuliGuliGuliGwacaLingganguLi', '2025-03-04 02:55:01.422'),
('ab313270-518b-4276-b662-a53aa7348b7f', 'Test Group Umroh 27xx', '2025-03-01 05:58:50.492'),
('b0910e1b-43a0-41f1-aa5d-0314d17761d1', 'Test Group Umroh 30xx', '2025-03-03 07:14:02.286'),
('d24a2522-1116-4e64-93ee-374a268acdf9', 'Test Group Umroh 22xx', '2025-02-27 06:51:59.443'),
('d650c116-915a-4f1a-8600-c4ec7383e7d1', 'Test Group Umroh 26xx', '2025-03-01 04:12:26.894'),
('d7ccda6e-ec19-4d56-a2bf-a8892fe64824', 'Test Umroh Group 20xx', '2025-02-22 14:07:44.174'),
('e24f274b-618b-4a42-a626-08c4e515b60e', 'Test Group Umroh 21xx', '2025-02-23 11:01:40.122'),
('f95fb887-730a-447f-a1c5-3a3de451aa22', 'New Group 1', '2025-03-04 07:32:05.352');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayatperjalanan`
--

CREATE TABLE `riwayatperjalanan` (
  `riwayatperjalananid` varchar(36) NOT NULL,
  `riwayatgrupid` varchar(36) NOT NULL,
  `perjalananid` varchar(36) DEFAULT NULL,
  `nama_perjalanan` varchar(255) NOT NULL,
  `waktu_mulai` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `time_selesai` datetime(3) DEFAULT NULL,
  `durasi_progress` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `riwayatperjalanan`
--

INSERT INTO `riwayatperjalanan` (`riwayatperjalananid`, `riwayatgrupid`, `perjalananid`, `nama_perjalanan`, `waktu_mulai`, `time_selesai`, `durasi_progress`) VALUES
('0462f6d2-e167-4a5c-9406-b10cb682aa11', '01acd6c0-c7ff-4b2e-98eb-4aa75c1c81a7', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-02-28 17:00:38.097', '2025-02-28 17:01:59.959', '1:21'),
('058d7ee1-f01a-4e4c-9357-b9fa1045ed91', '912a771c-fb76-4085-ad06-e367bd3b9766', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-02-28 04:06:40.688', '2025-02-28 04:07:33.633', '0:52'),
('06f6bb41-ba73-4931-a373-ad636cea5733', 'd24a2522-1116-4e64-93ee-374a268acdf9', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-02-27 06:50:01.402', '2025-02-27 06:51:59.427', '1:58'),
('1dbfc8ef-87b6-4037-a479-6195fdac94a6', '01acd6c0-c7ff-4b2e-98eb-4aa75c1c81a7', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-02-28 15:34:37.854', '2025-02-28 15:35:01.681', '0:23'),
('233c2185-ce4c-4dbc-9407-9602409a4f85', '427b0b56-d4fe-4027-84af-a76e2e696f93', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-03-04 07:14:03.157', '2025-03-04 07:15:35.207', '1:32'),
('2fcec8ab-88f9-4665-8119-cae36e491c0d', 'b0910e1b-43a0-41f1-aa5d-0314d17761d1', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-03-03 07:18:44.399', '2025-03-03 07:19:33.077', '0:48'),
('31ac6074-4ca2-4610-ba14-0f040b16feb8', 'd7ccda6e-ec19-4d56-a2bf-a8892fe64824', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-02-22 14:07:05.555', '2025-02-22 14:07:44.154', '0:38'),
('438026f8-2151-4c57-9323-5f02cea8c78e', '5ebae535-cb21-4851-bb5f-f9c0a1673db3', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-02-25 08:02:57.257', '2025-02-25 08:03:44.124', '0:46'),
('49159813-4d65-417b-8c2b-0e3ac6e91ab0', '9a7f7e77-c50b-461e-b9c8-f1fd3606fb15', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-03-02 07:00:55.185', '2025-03-02 07:02:16.504', '1:21'),
('49fa30e2-5b4c-4922-b990-1195b8add961', 'f95fb887-730a-447f-a1c5-3a3de451aa22', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-03-04 07:26:27.597', '2025-03-04 07:32:05.212', '5:37'),
('4a991179-9003-40fd-bc09-d00b0707efa8', 'd650c116-915a-4f1a-8600-c4ec7383e7d1', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-03-01 04:13:56.947', '2025-03-01 04:14:29.202', '0:32'),
('679dc2b4-45bf-4915-a7de-bfecaa6a69b3', '5fbf2c3d-f650-4384-8758-9d25f52faa55', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-02-28 03:43:55.099', '2025-02-28 03:45:53.333', '1:58'),
('67fe05bb-75c2-424b-9cfc-ce421ce05d3d', '5fbf2c3d-f650-4384-8758-9d25f52faa55', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-02-28 03:41:02.799', '2025-02-28 03:42:52.140', '1:49'),
('81216078-1e04-4175-bd86-66715ba7eb81', 'd24a2522-1116-4e64-93ee-374a268acdf9', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-02-27 18:01:18.574', '2025-02-27 18:02:59.997', '1:41'),
('81794b4c-c341-4165-a6c7-4b255cb34f54', '9a7f7e77-c50b-461e-b9c8-f1fd3606fb15', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-03-02 05:31:42.971', '2025-03-02 05:34:56.004', '3:13'),
('83be5dbb-1101-4a55-a1a7-8f06cadfa7e4', 'e24f274b-618b-4a42-a626-08c4e515b60e', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-02-23 10:34:41.055', '2025-02-23 11:01:40.099', '26:59'),
('87f5107e-22f6-4322-abae-bcd1a66f50fd', '9a7f7e77-c50b-461e-b9c8-f1fd3606fb15', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-03-03 04:43:47.408', '2025-03-03 04:53:36.636', '9:49'),
('887c488a-6a21-45cf-a621-e406e7129c41', 'a5214f54-e47b-4ed9-a953-1b1f1077164f', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-03-04 02:52:44.398', '2025-03-04 02:55:01.329', '2:16'),
('8b10b528-4585-4edc-9e85-a8f7d12ae0d7', 'd650c116-915a-4f1a-8600-c4ec7383e7d1', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-03-01 04:07:39.580', '2025-03-01 04:12:26.884', '4:47'),
('8fa29429-9251-402a-80fc-1ede784cdcac', 'a5214f54-e47b-4ed9-a953-1b1f1077164f', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-03-04 03:03:22.241', '2025-03-04 03:05:00.829', '1:38'),
('8fc6e76e-e1ce-4d4d-81d5-2004feeeb564', 'a5214f54-e47b-4ed9-a953-1b1f1077164f', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-03-04 02:55:06.442', '2025-03-04 03:02:53.669', '7:47'),
('95fff2b1-2742-42f3-9739-05e27e1dee2a', 'ab313270-518b-4276-b662-a53aa7348b7f', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-03-01 05:56:16.091', '2025-03-01 05:58:50.439', '2:34'),
('9900ed09-f793-446e-9473-cb74ce39cddf', 'f95fb887-730a-447f-a1c5-3a3de451aa22', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-03-14 02:58:02.428', '2025-03-14 03:04:34.641', '6:32'),
('a0505e5e-ba6e-4580-a93f-15cbd0639b49', '624d0737-5ff0-476d-9392-482eb04ed005', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-03-03 05:58:04.440', '2025-03-03 05:58:49.519', '0:45'),
('a972924e-833b-40fc-bd11-dbb4356c2eb8', '912a771c-fb76-4085-ad06-e367bd3b9766', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-02-28 03:58:00.863', '2025-02-28 04:01:14.628', '3:13'),
('aa67cf25-a6b3-4efc-9d48-85ecf62632c6', 'd650c116-915a-4f1a-8600-c4ec7383e7d1', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-03-01 04:55:49.940', '2025-03-01 05:00:35.611', '4:45'),
('ab15b2b2-ea82-44ae-9395-965eb199d777', '427b0b56-d4fe-4027-84af-a76e2e696f93', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-03-04 07:04:47.493', '2025-03-04 07:07:29.586', '2:42'),
('ae9721a8-0e68-4fbf-8154-0dc318caca69', '01acd6c0-c7ff-4b2e-98eb-4aa75c1c81a7', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-02-28 15:38:55.844', '2025-02-28 16:58:32.698', '79:36'),
('af8234ea-19bd-4781-94ed-07c48ae513ee', '624d0737-5ff0-476d-9392-482eb04ed005', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-03-03 05:10:33.060', '2025-03-03 05:14:36.685', '4:03'),
('b0b99873-4288-491f-b631-4704d7af761e', 'b0910e1b-43a0-41f1-aa5d-0314d17761d1', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-03-03 07:13:27.637', '2025-03-03 07:14:02.272', '0:34'),
('c369a4bd-b085-4986-8036-2845e93a0cd7', 'd24a2522-1116-4e64-93ee-374a268acdf9', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-02-28 03:17:11.323', '2025-02-28 03:17:57.111', '0:45'),
('d2d78256-d1d6-4cd9-a726-5f225d9bb907', 'e24f274b-618b-4a42-a626-08c4e515b60e', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-02-25 05:43:28.541', '2025-02-25 06:16:20.342', '32:51'),
('d67ebbff-0edd-4136-9a48-ecd7530af97f', 'd7ccda6e-ec19-4d56-a2bf-a8892fe64824', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-02-22 14:07:46.614', '2025-02-22 14:08:37.298', '0:50'),
('d9612db0-e24a-48b9-9a70-45edae2773be', 'd7ccda6e-ec19-4d56-a2bf-a8892fe64824', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-02-22 11:22:52.285', '2025-02-22 11:23:54.856', '1:02'),
('da4943c1-5c1c-4310-9d50-f157993996fc', '5ebae535-cb21-4851-bb5f-f9c0a1673db3', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-02-25 08:06:14.395', '2025-02-25 08:07:20.495', '1:06'),
('db6c3721-58e4-4bc5-bfc1-2eab7efb2e46', 'ab313270-518b-4276-b662-a53aa7348b7f', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-03-01 06:35:36.980', '2025-03-01 06:40:34.532', '4:57'),
('db6e5349-18a6-4c13-b1df-cd3c0294140f', 'ab313270-518b-4276-b662-a53aa7348b7f', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-03-01 06:15:59.778', '2025-03-01 06:17:42.453', '1:42'),
('e04d9e45-82ac-4911-911b-a73653806fda', '624d0737-5ff0-476d-9392-482eb04ed005', '8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', '2025-03-03 05:07:46.978', '2025-03-03 05:08:53.825', '1:06'),
('e114add5-6c41-4503-8e27-7cb707c42df5', 'e24f274b-618b-4a42-a626-08c4e515b60e', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-02-23 11:18:51.088', '2025-02-23 11:21:26.650', '2:35'),
('e4fca1c6-ef0c-45f9-8b5d-dca97f4e05b3', '5fbf2c3d-f650-4384-8758-9d25f52faa55', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-02-28 03:48:33.609', '2025-02-28 03:49:09.916', '0:36'),
('eb49e641-db4c-4050-9eb7-19a7199b32e6', '5ebae535-cb21-4851-bb5f-f9c0a1673db3', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-02-26 10:29:20.706', '2025-02-26 10:29:51.189', '0:30'),
('ecb0b99b-26b9-4b2b-95db-796a74c9e3e4', '912a771c-fb76-4085-ad06-e367bd3b9766', '3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', '2025-02-28 04:09:55.412', '2025-02-28 04:11:23.544', '1:28'),
('f0e9973c-6d7e-4e13-b8ce-5913a424e0cb', 'b0910e1b-43a0-41f1-aa5d-0314d17761d1', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-03-03 07:14:10.583', '2025-03-03 07:16:06.109', '1:55'),
('f8956943-9f6b-404b-b257-d8d2d0aeabf0', '427b0b56-d4fe-4027-84af-a76e2e696f93', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', '2025-03-04 07:10:49.691', '2025-03-04 07:13:03.243', '2:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `room`
--

CREATE TABLE `room` (
  `id` varchar(36) NOT NULL,
  `nama_room` varchar(100) NOT NULL,
  `token_speaker` varchar(1000) NOT NULL,
  `token_listener` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `room`
--

INSERT INTO `room` (`id`, `nama_room`, `token_speaker`, `token_listener`) VALUES
('67b2d424b72a0fec60b419cf', 'Room Atmin percobaan', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb29tX2lkIjoiNjdiMmQ0MjRiNzJhMGZlYzYwYjQxOWNmIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTczOTk0MDk0MCwiaWF0IjoxNzM5ODU0NTQwLCJuYmYiOjE3Mzk4NTQ1NDAsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6IjhiYzVmMTY4LTcwOGMtNDIyNC1hMjI2LTcwNTcwM2MxZDEzMiIsInJvbGUiOiJzcGVha2VyIn0.WiVPwAoNg2QNTg8CuWwWJUmJwRjNp3zcFq0MMi6Nc60', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb2xlIjoibGlzdGVuZXIiLCJyb29tX2lkIjoiNjdiMmQ0MjRiNzJhMGZlYzYwYjQxOWNmIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTczOTg1OTM2NSwiaWF0IjoxNzM5NzcyOTY1LCJuYmYiOjE3Mzk3NzI5NjUsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6IjFjY2FmMGY0LWM2ZjktNGQ3NC05ZjFiLTI5ODU5ZTNiZTA5MCJ9.BiFTRl-Et0J67MC_pe5PWUdM9sHuTg89vjen7PJal5o'),
('67b414f4b72a0fec60b4a14c', 'gsgsgsgsgsgsgsgs', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb29tX2lkIjoiNjdiNDE0ZjRiNzJhMGZlYzYwYjRhMTRjIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTczOTk0NzU2OSwiaWF0IjoxNzM5ODYxMTY5LCJuYmYiOjE3Mzk4NjExNjksImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6ImIzODVlNzYwLThjODgtNGYwOC05NjI4LTU2NTk4YjcwMzM0MiIsInJvbGUiOiJzcGVha2VyIn0.YgVJxuV4nw8CChQLBXXm1HzJWpnVEm-P6ncOeHaTO-A', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb2xlIjoibGlzdGVuZXIiLCJyb29tX2lkIjoiNjdiNDE0ZjRiNzJhMGZlYzYwYjRhMTRjIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTczOTk0MTQ5NCwiaWF0IjoxNzM5ODU1MDk0LCJuYmYiOjE3Mzk4NTUwOTQsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6IjIyZTEzNTg5LWQ0NjYtNDA3ZS05ZDU2LTViNWQzNDBjNTZjZiJ9.6pOtJ8oQZJHHQH6tITdirw4j-GBW5THbpgiuVMr7LCQ'),
('67b4159f02147c4bc5b0415a', 'Room JULY', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb2xlIjoic3BlYWtlciIsInJvb21faWQiOiI2N2I0MTU5ZjAyMTQ3YzRiYzViMDQxNWEiLCJ1c2VyX2lkIjoiZTI4YTA2NTQtNmVlMy00ZjQ0LTgwMWMtM2NkZmU1YjcwYzQ0IiwiZXhwIjoxNzM5OTQxNjY1LCJpYXQiOjE3Mzk4NTUyNjUsIm5iZiI6MTczOTg1NTI2NSwiaXNzIjoiNjc4NDg5MGE0OTQ0ZjA2NzMxM2E4ODhmIiwic3ViIjoiYXBpIiwianRpIjoiMTkxMzIxZTYtZGZlMS00ZGI4LWFmNjUtZDllNDhjNTM3MWU1In0.o5kS1xUAuX7akFNlPCpvvpOAU9vSBBGhqwlBhIhq0Fw', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb2xlIjoibGlzdGVuZXIiLCJyb29tX2lkIjoiNjdiNDE1OWYwMjE0N2M0YmM1YjA0MTVhIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTczOTk0MTY2NSwiaWF0IjoxNzM5ODU1MjY1LCJuYmYiOjE3Mzk4NTUyNjUsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6IjMwOWQwODJmLWNhMmUtNDFmNC1iNGZmLTQyMTA5YTJiYmJhZiJ9.iGZkkPWdTqQTxTgG73pCh0ZCbUpTCPxYgp1_abgdtaY'),
('67b42c5fb72a0fec60b4b1c3', 'Room Cuma Test Doang', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb29tX2lkIjoiNjdiNDJjNWZiNzJhMGZlYzYwYjRiMWMzIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDAzODM5MiwiaWF0IjoxNzM5OTUxOTkyLCJuYmYiOjE3Mzk5NTE5OTIsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6IjVlYjJlZTI3LTgyZGMtNDg2Ny1hNmQ3LTBhMjYzMTdiNGNiZiIsInJvbGUiOiJzcGVha2VyIn0.QEf_oMRWDhj3T8-o86lsmm_swd4Bn9QwuG7kvA1VMLs', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb29tX2lkIjoiNjdiNDJjNWZiNzJhMGZlYzYwYjRiMWMzIiwidXNlcl9pZCI6ImQ4NDMxMWU0LTdjYmQtNDBmMS1hMTI1LWJmMWZkYjIxZjA5ZCIsImV4cCI6MTc0MDAxNjE4MCwiaWF0IjoxNzM5OTI5NzgwLCJuYmYiOjE3Mzk5Mjk3ODAsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6ImE4ZmEwZTVmLTUyYzItNDdjNi04YzU0LWNhNjEzZDY5OWRiMCIsInJvbGUiOiJsaXN0ZW5lciJ9.m1U7TfTRQz6AxhAtmsvbOt_pwG1AMHIYnER18-VEAo8'),
('67b99791b72a0fec60b689c1', 'Test Umroh Room 20xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiOTk3OTFiNzJhMGZlYzYwYjY4OWMxIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDM5MDcxMSwiaWF0IjoxNzQwMzA0MzExLCJuYmYiOjE3NDAzMDQzMTEsImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6IjViNTI0NjI5LWYzYTctNGMxMy1hNWNiLTU5NDI0YzZlNjgyZCIsInJvbGUiOiJzcGVha2VyIn0.3wXkNpwke3Ag70BICyn-UkpEbaNydGdFMCd16I13Pnc', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiOTk3OTFiNzJhMGZlYzYwYjY4OWMxIiwidXNlcl9pZCI6ImE3MTlkYThkLTNjOWItNDFiYi04MTczLWY3Mjc5MjRkNTI5MyIsImV4cCI6MTc0MDY1Mzg3NSwiaWF0IjoxNzQwNTY3NDc1LCJuYmYiOjE3NDA1Njc0NzUsImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6Ijc2Yzk0YmU5LTUxNmEtNDA4Ny1iNzIwLTk3NWRiYzJjNjZiNyIsInJvbGUiOiJsaXN0ZW5lciJ9.9Pby5_ThFpCTXyuRQJXRh1MqqfHr044pR0FquCbRr9k'),
('67baed79b72a0fec60b6d8ff', 'Test Umroh Room 21xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdiYWVkNzliNzJhMGZlYzYwYjZkOGZmIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDgxMjAzMSwiaWF0IjoxNzQwNzI1NjMxLCJuYmYiOjE3NDA3MjU2MzEsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6IjNmMWU4M2YyLWI3OTAtNDk0Ny04ZDQ3LTdkODUwZjMxMmRmMSIsInJvbGUiOiJzcGVha2VyIn0.STN2KYCW1Z4AzRl5oBxf05Ft4-uuYlHV-142PjcQDps', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiYWVkNzliNzJhMGZlYzYwYjZkOGZmIiwidXNlcl9pZCI6ImE3MTlkYThkLTNjOWItNDFiYi04MTczLWY3Mjc5MjRkNTI5MyIsImV4cCI6MTc0MDY1Mzk0OCwiaWF0IjoxNzQwNTY3NTQ4LCJuYmYiOjE3NDA1Njc1NDgsImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6ImI4MzQ1MGVlLTY4ZTItNDBiYS04MTM5LWFmOWIxNTI5NmI2MSIsInJvbGUiOiJsaXN0ZW5lciJ9.zo4fOPBGmh7v2JtCOzBdP5LsbM3TSkb8sZF8GZ54UxM'),
('67bd7869b72a0fec60b782ce', 'Room Test Maqdis Travel 2025', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2JkN2I3YjQ5NDRmMDY3MzEzYThlZmYiLCJyb29tX2lkIjoiNjdiZDc4NjliNzJhMGZlYzYwYjc4MmNlIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDY1MjIxMCwiaWF0IjoxNzQwNTY1ODEwLCJuYmYiOjE3NDA1NjU4MTAsImlzcyI6IjY3YmQ3YjdiNDk0NGYwNjczMTNhOGVmZCIsInN1YiI6ImFwaSIsImp0aSI6IjRhYWNmZmNjLTI2OWMtNGI1MS04Mzk0LTMwYWNjZGJhMGJhMyIsInJvbGUiOiJzcGVha2VyIn0.WFvQ2VdGQJVXYCUYsXqnNeXshLOJkQTZhEcLFFn8WbU', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiZDc4NjliNzJhMGZlYzYwYjc4MmNlIiwidXNlcl9pZCI6ImE3MTlkYThkLTNjOWItNDFiYi04MTczLWY3Mjc5MjRkNTI5MyIsImV4cCI6MTc0MDY1MzkyOSwiaWF0IjoxNzQwNTY3NTI5LCJuYmYiOjE3NDA1Njc1MjksImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6IjdiM2I5ZTA3LWI5MDktNDA3ZS1iZjZmLWYwNzZkODY0OThkNyIsInJvbGUiOiJsaXN0ZW5lciJ9.VlGOxf8ScraOyzT1omwqAZw5aZf10eO39Xnp-ZvFl5I'),
('67bd7cd902147c4bc5b323bc', 'Room Test Maqdis Travel 2025', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2JkN2I3YjQ5NDRmMDY3MzEzYThlZmYiLCJyb2xlIjoic3BlYWtlciIsInJvb21faWQiOiI2N2JkN2NkOTAyMTQ3YzRiYzViMzIzYmMiLCJ1c2VyX2lkIjoiZTI4YTA2NTQtNmVlMy00ZjQ0LTgwMWMtM2NkZmU1YjcwYzQ0IiwiZXhwIjoxNzQwNTU3OTEzLCJpYXQiOjE3NDA0NzE1MTMsIm5iZiI6MTc0MDQ3MTUxMywiaXNzIjoiNjdiZDdiN2I0OTQ0ZjA2NzMxM2E4ZWZkIiwic3ViIjoiYXBpIiwianRpIjoiNjJkNDA2YzQtMjYxNS00NDAwLTg0MDQtN2ZhYTg1NGIxMjQ1In0.gvfP0g-B4bpZcjvef2fB5rYCYh5mlwPZFpkt5QYp9ZQ', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2JkN2I3YjQ5NDRmMDY3MzEzYThlZmYiLCJyb2xlIjoibGlzdGVuZXIiLCJyb29tX2lkIjoiNjdiZDdjZDkwMjE0N2M0YmM1YjMyM2JjIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDU1NzkxMywiaWF0IjoxNzQwNDcxNTEzLCJuYmYiOjE3NDA0NzE1MTMsImlzcyI6IjY3YmQ3YjdiNDk0NGYwNjczMTNhOGVmZCIsInN1YiI6ImFwaSIsImp0aSI6ImM0ZGE0ZTNlLTkyZjItNDcwNy05MzY5LWVlNGEyZmM0Mjc0NiJ9.WPV9rNxjjqXvxmDxS4k1vqx53Rcqlkhc4Dar4H_thoc'),
('67beee31b72a0fec60b7f10d', 'Test Umroh Room 22xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiZWVlMzFiNzJhMGZlYzYwYjdmMTBkIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDc5OTc1NSwiaWF0IjoxNzQwNzEzMzU1LCJuYmYiOjE3NDA3MTMzNTUsImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6IjdjMTI5YTBlLTgxZDUtNDVlOC04MDlhLTAyN2Y0NWE1YTUyYSIsInJvbGUiOiJzcGVha2VyIn0.aIrtRZZ2DQLDTRmyRQK3ub2YcNO6x67BBvHCqr9IbXY', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzhjYTY2YzMzY2U3NGFiOWJlOTUwM2QiLCJyb29tX2lkIjoiNjdiZWVlMzFiNzJhMGZlYzYwYjdmMTBkIiwidXNlcl9pZCI6ImE3MTlkYThkLTNjOWItNDFiYi04MTczLWY3Mjc5MjRkNTI5MyIsImV4cCI6MTc0MDc5OTcxOSwiaWF0IjoxNzQwNzEzMzE5LCJuYmYiOjE3NDA3MTMzMTksImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6IjE4NzcwYTNiLTI4M2YtNDcyYi05MWZmLWY4ZjQ5OTVmNTYwNyIsInJvbGUiOiJsaXN0ZW5lciJ9.VbjIiLtQgbmPgOzua3JKabaHRNYakpqRMSfESbDNg94'),
('67c12fd502147c4bc5b4443a', 'Test Umroh Room 23xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdjMTJmZDUwMjE0N2M0YmM1YjQ0NDNhIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDgwMDk1NCwiaWF0IjoxNzQwNzE0NTU0LCJuYmYiOjE3NDA3MTQ1NTQsImlzcyI6IjY3OGNhNjZjMzNjZTc0YWI5YmU5NTAzYiIsInN1YiI6ImFwaSIsImp0aSI6IjRiY2E5YTg1LWFkZTEtNGMyYi1iYzc0LWFmYjg4OTAxODg0ZSIsInJvbGUiOiJzcGVha2VyIn0.VtXrds8A0laDov1LLE5k2Pcojh9yPc4MnF0SL_iEsQk', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdjMTJmZDUwMjE0N2M0YmM1YjQ0NDNhIiwidXNlcl9pZCI6ImE3MTlkYThkLTNjOWItNDFiYi04MTczLWY3Mjc5MjRkNTI5MyIsImV4cCI6MTc0MDgxNDU3OCwiaWF0IjoxNzQwNzI4MTc4LCJuYmYiOjE3NDA3MjgxNzgsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6IjliZTJiMTI0LTIyODYtNDE0ZC1hZDI3LTFlMTliNTBjMzNkMiIsInJvbGUiOiJsaXN0ZW5lciJ9.5knUhiqdWYM9mGLfl_irSY18DEzvclpxiy442udk2OI'),
('67c133f3b72a0fec60b8a5cd', 'Test Umroh Room 24xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdjMTMzZjNiNzJhMGZlYzYwYjhhNWNkIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDgwOTg4MywiaWF0IjoxNzQwNzIzNDgzLCJuYmYiOjE3NDA3MjM0ODMsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6Ijk2MDQyYmRjLTdmNTAtNGJmYS05ZDlhLWY5MzI5NDg2N2I4NyIsInJvbGUiOiJzcGVha2VyIn0.EkwIRixVsjXqIxuAavh2hfx2qeEvc-0yn8u5y-TB9HQ', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdjMTMzZjNiNzJhMGZlYzYwYjhhNWNkIiwidXNlcl9pZCI6IjI2YTc5NGIwLTlmYTktNDIyMi05ZmZkLWEyN2U1ZTU5Y2VlNiIsImV4cCI6MTc0MDgwMjI5MCwiaWF0IjoxNzQwNzE1ODkwLCJuYmYiOjE3NDA3MTU4OTAsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6IjY4Zjc4NjdmLTQwZDEtNGRjZC05ZjhkLTg0ZmJlNTIyYWU2MSIsInJvbGUiOiJsaXN0ZW5lciJ9.q75tfqr2GHRxIsep9fIc5xQmfDbCSYDJuTz3r2QwJys'),
('67c1d754b72a0fec60b90653', 'Test Umroh Room 25xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdjMWQ3NTRiNzJhMGZlYzYwYjkwNjUzIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDg4NzE4OSwiaWF0IjoxNzQwODAwNzg5LCJuYmYiOjE3NDA4MDA3ODksImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6IjkyNmIzM2MzLWM1NzEtNDE3NS1iMmJhLWQ0Yjg5MWVlYTQ4NiIsInJvbGUiOiJzcGVha2VyIn0.mERIBnslv3w9PBr8JCz6Drn0JZLnlCMpCp2wvbkq2gg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb2xlIjoibGlzdGVuZXIiLCJyb29tX2lkIjoiNjdjMWQ3NTRiNzJhMGZlYzYwYjkwNjUzIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDg0MzIyMCwiaWF0IjoxNzQwNzU2ODIwLCJuYmYiOjE3NDA3NTY4MjAsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6IjdmZGVkOGE5LTk4YjMtNDdkMi1hOTQ2LWMyYjEwZTMwMGVjMSJ9.OdioChs65zGJfWnn4BVssIVQVVlLKEfWiYBWn9Z5wc4'),
('67c27c5302147c4bc5b4bcc8', 'Test Umroh Room 26xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdjMjdjNTMwMjE0N2M0YmM1YjRiY2M4IiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDg5MTc4MCwiaWF0IjoxNzQwODA1MzgwLCJuYmYiOjE3NDA4MDUzODAsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6ImU4NzZmMDI4LTY5OWEtNGQxMi1hYTBhLTNjZjQzMzIzMDdlMyIsInJvbGUiOiJzcGVha2VyIn0.RyYfTwot5gFsVqi0MxcGOwLRUJjgE2DuK6rorXzXJwc', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb2xlIjoibGlzdGVuZXIiLCJyb29tX2lkIjoiNjdjMjdjNTMwMjE0N2M0YmM1YjRiY2M4IiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDg4NTQ1OSwiaWF0IjoxNzQwNzk5MDU5LCJuYmYiOjE3NDA3OTkwNTksImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6ImI5NDY2MTZmLTI4M2ItNDJmZi04NzNhLWE5YzdiZDY1MDFkYyJ9.F5MHnythHSEC6RHtP-XVEUuciT5yl8h45c1x1kKJjjw'),
('67c2953602147c4bc5b4c9b3', 'Test Umroh Room 27xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdjMjk1MzYwMjE0N2M0YmM1YjRjOWIzIiwidXNlcl9pZCI6ImEyOWM5NDA3LWY5NzktNGE4Yi05MmM5LTQwNWU5NDg0Yzg5MyIsImV4cCI6MTc0MTA3MDMwMSwiaWF0IjoxNzQwOTgzOTAxLCJuYmYiOjE3NDA5ODM5MDEsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6IjkzYzZmZTg1LTZkODAtNDEyOS1hYmRjLWViOWE5MzRiODBmYyIsInJvbGUiOiJzcGVha2VyIn0.46qE5c1Yig2a4KsnV-JP00Ge0mSSKNXHHNVc4hdhsa4', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2MxMzMyNzQ5NDRmMDY3MzEzYThmN2EiLCJyb29tX2lkIjoiNjdjMjk1MzYwMjE0N2M0YmM1YjRjOWIzIiwidXNlcl9pZCI6ImE3MTlkYThkLTNjOWItNDFiYi04MTczLWY3Mjc5MjRkNTI5MyIsImV4cCI6MTc0MTE1NjY0MywiaWF0IjoxNzQxMDcwMjQzLCJuYmYiOjE3NDEwNzAyNDMsImlzcyI6IjY3YzEzMzI3NDk0NGYwNjczMTNhOGY3OCIsInN1YiI6ImFwaSIsImp0aSI6IjY3MjQxNjMxLWVmZWMtNDdmNy04N2U2LTRkNzdmYjRhYmUzYSIsInJvbGUiOiJsaXN0ZW5lciJ9.q72Djp75jAkPSMKq1Vx59IaIWyAmGq7BCrzzKh8FBi4'),
('67c29559b72a0fec60b92844', 'Test Umroh Room 28xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdjMjk1NTliNzJhMGZlYzYwYjkyODQ0IiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MTA2NDUyNiwiaWF0IjoxNzQwOTc4MTI2LCJuYmYiOjE3NDA5NzgxMjYsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6IjdiNTA4NTQ2LTU2NWMtNDI3OS1iNjQxLWZhZTViMzFhMmJjZiIsInJvbGUiOiJzcGVha2VyIn0.o8p0m5M61MK9PL4POMXfaI08TRUFPoLoXsLpga2Ky9c', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdjMjk1NTliNzJhMGZlYzYwYjkyODQ0IiwidXNlcl9pZCI6ImQ4NGNiN2Q5LWIyNzUtNDM2OC05ODAyLTYzZTU0MjA5ZTY2OSIsImV4cCI6MTc0MTA2NDc4MSwiaWF0IjoxNzQwOTc4MzgxLCJuYmYiOjE3NDA5NzgzODEsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6ImM1OWVkYzNjLTI3ZjktNDc0ZS1iMmMxLWI1OGQzODBiM2M0MSIsInJvbGUiOiJsaXN0ZW5lciJ9.7PgQPbXJF9a321WDO0b0O7MzHssY0Yrnl03ynB_qWxc'),
('67c537fdb72a0fec60ba0bec', 'Test Umroh Room 29xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdjNTM3ZmRiNzJhMGZlYzYwYmEwYmVjIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MTA3MjQwMywiaWF0IjoxNzQwOTg2MDAzLCJuYmYiOjE3NDA5ODYwMDMsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6IjM5MjhkMjQxLWZjZDItNDdiYS1hMjc5LTRiNzQyY2M5MTRkMSIsInJvbGUiOiJzcGVha2VyIn0.olcv-it8cTdVCLfpiIKURBFYzwH4PstkVawkg-mUKcA', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdjNTM3ZmRiNzJhMGZlYzYwYmEwYmVjIiwidXNlcl9pZCI6ImQ4NGNiN2Q5LWIyNzUtNDM2OC05ODAyLTYzZTU0MjA5ZTY2OSIsImV4cCI6MTc0MTA2OTEyMCwiaWF0IjoxNzQwOTgyNzIwLCJuYmYiOjE3NDA5ODI3MjAsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6IjgxMzNjNDkzLTdiNGUtNGYwMi05OTJiLTlkZWNiYzdhYzkzNiIsInJvbGUiOiJsaXN0ZW5lciJ9.TReGQqbZx85bVVz5rhfLIMQDZcRIXqzSBgvXcQSKuVg'),
('67c5383002147c4bc5b5ac03', 'Test Umroh Room 30xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb29tX2lkIjoiNjdjNTM4MzAwMjE0N2M0YmM1YjVhYzAzIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MTA3Mjk4NywiaWF0IjoxNzQwOTg2NTg3LCJuYmYiOjE3NDA5ODY1ODcsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6IjY2NzEzOTE0LWJkNzEtNDc3ZS1hYWQxLWZkMjg0NzAzNzY2MCIsInJvbGUiOiJzcGVha2VyIn0.IUt_orFkRJMhOkwrCkv7fVVgTI0Z9E5rwtDNirZXGUU', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NzgxZWYzODMzY2U3NGFiOWJlOTRmMjgiLCJyb2xlIjoibGlzdGVuZXIiLCJyb29tX2lkIjoiNjdjNTM4MzAwMjE0N2M0YmM1YjVhYzAzIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MTA2NDYyNCwiaWF0IjoxNzQwOTc4MjI0LCJuYmYiOjE3NDA5NzgyMjQsImlzcyI6IjY3ODFlZjM4MzNjZTc0YWI5YmU5NGYyNiIsInN1YiI6ImFwaSIsImp0aSI6ImQ3MWE3NzU2LTg5MzUtNDlmYS04YzY1LTQ4MWMzNTZiNTUyMyJ9.p54nOb2gkLUNJnsR4O9R4f4vP1nySYncYWoJKurh3YQ'),
('67c669fb02147c4bc5b62492', 'LinggangGuliGuliGuliGwacaLingganguLingganggu', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2MxMzMyNzQ5NDRmMDY3MzEzYThmN2EiLCJyb29tX2lkIjoiNjdjNjY5ZmIwMjE0N2M0YmM1YjYyNDkyIiwidXNlcl9pZCI6ImEyOWM5NDA3LWY5NzktNGE4Yi05MmM5LTQwNWU5NDg0Yzg5MyIsImV4cCI6MTc0MTE0NTM1NSwiaWF0IjoxNzQxMDU4OTU1LCJuYmYiOjE3NDEwNTg5NTUsImlzcyI6IjY3YzEzMzI3NDk0NGYwNjczMTNhOGY3OCIsInN1YiI6ImFwaSIsImp0aSI6ImQyMTE1Y2RhLWJkMGYtNDliNi1hNzA1LTk3MjhlNWI4OGFmZiIsInJvbGUiOiJzcGVha2VyIn0.o4KiobDhEqA_XagTpSvKd1C2IXpCjuRWs97qE9jiVUI', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2MxMzMyNzQ5NDRmMDY3MzEzYThmN2EiLCJyb29tX2lkIjoiNjdjNjY5ZmIwMjE0N2M0YmM1YjYyNDkyIiwidXNlcl9pZCI6ImQ4NGNiN2Q5LWIyNzUtNDM2OC05ODAyLTYzZTU0MjA5ZTY2OSIsImV4cCI6MTc0MTE0NDg5MywiaWF0IjoxNzQxMDU4NDkzLCJuYmYiOjE3NDEwNTg0OTMsImlzcyI6IjY3YzEzMzI3NDk0NGYwNjczMTNhOGY3OCIsInN1YiI6ImFwaSIsImp0aSI6IjUyYWRmYTllLWE5ZDktNDdmOC05MjliLWM4YmJkODFjYjZlOCIsInJvbGUiOiJsaXN0ZW5lciJ9.PokLXU32hWVQBhLaENayNOQlqIVy9tIn5mEjydw1Cco'),
('67c6a3b5b72a0fec60baa951', 'Sangat Merosahkan', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2MxMzMyNzQ5NDRmMDY3MzEzYThmN2EiLCJyb29tX2lkIjoiNjdjNmEzYjViNzJhMGZlYzYwYmFhOTUxIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MTE1OTQwMiwiaWF0IjoxNzQxMDczMDAyLCJuYmYiOjE3NDEwNzMwMDIsImlzcyI6IjY3YzEzMzI3NDk0NGYwNjczMTNhOGY3OCIsInN1YiI6ImFwaSIsImp0aSI6IjU4ZjgyYzQ2LWE3NGMtNGZlYS04NjFhLTBhNTdlMDZiYzY0MiIsInJvbGUiOiJzcGVha2VyIn0.t-jarywTdO_9yvlr6VMMMmb8iFPocBX63Xx5wSYJxV4', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2MxMzMyNzQ5NDRmMDY3MzEzYThmN2EiLCJyb29tX2lkIjoiNjdjNmEzYjViNzJhMGZlYzYwYmFhOTUxIiwidXNlcl9pZCI6ImVhMjQ5NWMwLTIxNDktNGUyNS1iYjUwLWU4NWY0ZjcwM2ZjMSIsImV4cCI6MTc0MjAwNzI0MiwiaWF0IjoxNzQxOTIwODQyLCJuYmYiOjE3NDE5MjA4NDIsImlzcyI6IjY3YzEzMzI3NDk0NGYwNjczMTNhOGY3OCIsInN1YiI6ImFwaSIsImp0aSI6ImE0ZjAwODRhLWM1ZmQtNDAxMi05ODRhLTllNGJiOTIzZTAyZiIsInJvbGUiOiJsaXN0ZW5lciJ9.jNxNJGMUAuI1DPtUDir-F6IRO8156FaZcZQwfH-Ygnk'),
('67c6aa0702147c4bc5b64c1a', 'New Room 1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2MxMzMyNzQ5NDRmMDY3MzEzYThmN2EiLCJyb29tX2lkIjoiNjdjNmFhMDcwMjE0N2M0YmM1YjY0YzFhIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MjAwODU0NywiaWF0IjoxNzQxOTIyMTQ3LCJuYmYiOjE3NDE5MjIxNDcsImlzcyI6IjY3YzEzMzI3NDk0NGYwNjczMTNhOGY3OCIsInN1YiI6ImFwaSIsImp0aSI6ImFjOTA3OWRhLWUxZTMtNDY5Yy1iNzM2LTg2MmIzOWUwYTRhMSIsInJvbGUiOiJzcGVha2VyIn0.m1NtF3zWjow7BuY8Ktu0zKnqzd92yI_WKMWkN1z7nWg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2N2MxMzMyNzQ5NDRmMDY3MzEzYThmN2EiLCJyb29tX2lkIjoiNjdjNmFhMDcwMjE0N2M0YmM1YjY0YzFhIiwidXNlcl9pZCI6ImE3MTlkYThkLTNjOWItNDFiYi04MTczLWY3Mjc5MjRkNTI5MyIsImV4cCI6MTc0MjAwOTMzNywiaWF0IjoxNzQxOTIyOTM3LCJuYmYiOjE3NDE5MjI5MzcsImlzcyI6IjY3YzEzMzI3NDk0NGYwNjczMTNhOGY3OCIsInN1YiI6ImFwaSIsImp0aSI6IjI4NWQ4OTg4LTJjNjctNDE0My05NjJlLWY1MzdjMWVlYTVlNSIsInJvbGUiOiJsaXN0ZW5lciJ9.d4tf2xIecSWeor9gQ9H9aJcmRR5UlYus88N2lfFqicM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `is_verified`, `whatsapp`, `role`, `createdAt`, `updatedAt`, `lastLogin`, `status_login`, `currentToken`, `googleId`) VALUES
('0658b0ba-a9f1-48c3-a290-5ca9168d864f', 'nthing all', NULL, 'maulanaazki453@gmail.com', 1, '', 'user', '2025-03-14 03:29:41.350', '2025-03-14 03:29:41.435', '2025-03-14 03:29:41.434', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiMDY1OGIwYmEtYTlmMS00OGMzLWEyOTAtNWNhOTE2OGQ4NjRmIiwicm9sZSI6InVzZXIiLCJuYW1lIjoibnRoaW5nIGFsbCJ9LCJpYXQiOjE3NDE5MjI5ODEsImV4cCI6MTc0NDUxNDk4MX0.piPw-NJ69bxpwT19e19Myim-WTzRs0qHtC-TngRcN_E', '110762503673424176166'),
('26a794b0-9fa9-4222-9ffd-a27e5e59cee6', 'Udin Idin', '$2a$10$glS.sVIbK2L0NiIVSHkPn.n7Yx/CiKWoVTUyhAZyrgaj.vDz6Nnf.', 'agungsegara99@gmail.com', 1, '083836983698', 'user', '2025-02-28 03:32:43.372', '2025-03-04 05:29:00.285', '2025-02-28 04:08:37.110', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiMjZhNzk0YjAtOWZhOS00MjIyLTlmZmQtYTI3ZTVlNTljZWU2Iiwicm9sZSI6InVzZXIiLCJuYW1lIjoiVWRpbiBJZGluIn0sImlhdCI6MTc0MDcxNTcxNywiZXhwIjoxNzQzMzA3NzE3fQ.-LilNcoH4XLfVFKPu8_QIddCkqMoIFMlAIO64xLs3D4', NULL),
('2f3e8378-f9a2-4ea3-b9b8-a1a14958084f', '', '$2a$10$hlZanREq183ARgUROMKqmujxx2lnmoBET2SYa7bjC5ztkPi9LW2na', 'user5@gmail.com', 1, '0881023758105', 'user', '2025-02-17 06:10:42.705', '2025-03-07 07:53:38.703', '2025-03-07 07:52:19.324', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiMmYzZTgzNzgtZjlhMi00ZWEzLWI5YjgtYTFhMTQ5NTgwODRmIiwicm9sZSI6InVzZXIiLCJuYW1lIjoiIn0sImlhdCI6MTc0MTMzMzkzOSwiZXhwIjoxNzQzOTI1OTM5fQ.jw1O4M0T5VNA0lwZRrvFj3u2pOmPpCc5cJtAi15jthY', NULL),
('69756f8b-b069-4eaa-b35a-0f72b5693194', 'User 3', '$2a$10$CB6zyCnSkbz/CZf0Wp8CveukB3ALGcKqmgGsIcBSOkGCYVgJ84js2', 'user3@gmail.com', 1, '0881023758103', 'user', '2025-02-17 06:09:54.198', '2025-02-17 06:09:54.198', NULL, 0, NULL, NULL),
('6ac85374-553b-47e3-9e60-9557d94a0b55', 'User 4', '$2a$10$rrqlKOh0SxdDiE1xcyM63ujL.ty8wVeyIaAgVKs7AP./pGfH7vk.q', 'user4@gmail.com', 1, '0881023758104', 'user', '2025-02-17 06:10:11.884', '2025-03-04 07:03:35.038', '2025-03-04 06:59:26.143', 0, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiNmFjODUzNzQtNTUzYi00N2UzLTllNjAtOTU1N2Q5NGEwYjU1Iiwicm9sZSI6InVzZXIiLCJuYW1lIjoiVXNlciA0In0sImlhdCI6MTc0MTA3MTU2NiwiZXhwIjoxNzQzNjYzNTY2fQ.xjppdRxQK22zS6AmrSEHZBfHQWqUNETlkSSsf8TZMYA', NULL),
('72db81fb-6bfc-40d0-a125-602b49c275d3', 'MAQDIS TOURS & TRAVEL', NULL, 'umrah.maqdis@gmail.com', 1, '', 'user', '2025-02-24 01:34:29.962', '2025-02-24 04:01:37.298', '2025-02-24 04:01:37.296', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiNzJkYjgxZmItNmJmYy00MGQwLWExMjUtNjAyYjQ5YzI3NWQzIiwicm9sZSI6InVzZXIifSwiaWF0IjoxNzQwMzY5Njk3LCJleHAiOjE3NDI5NjE2OTd9.io_GVlIEFoRH5qZuaaU6HCu5BTYeqkBDyfZw5sKyPuE', '100375767693293336524'),
('79f57997-b1be-4587-b419-f7e100418b41', 'Atmin Arkan', '$2a$10$v2kzsuButupdruWh15GM1OkqaJWP51dxquE29Tl6d2xbeq/z6kJWe', 'adminark@gmail.com', 1, '081564949454', 'admin', '2025-02-17 06:12:20.055', '2025-02-17 06:12:20.055', NULL, 0, NULL, NULL),
('8709b7f0-b2f3-400d-a9d4-f3dc4f1d313e', 'Maqdis Hamim', NULL, 'hamimmaqdis@gmail.com', 1, '', 'user', '2025-02-24 04:02:53.780', '2025-02-24 04:02:53.797', '2025-02-24 04:02:53.796', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiODcwOWI3ZjAtYjJmMy00MDBkLWE5ZDQtZjNkYzRmMWQzMTNlIiwicm9sZSI6InVzZXIifSwiaWF0IjoxNzQwMzY5NzczLCJleHAiOjE3NDI5NjE3NzN9.PUNVA6zUQYsoaLbSegUxHiJen5VDPDvHa32TyT6fCMc', '113725142385260312131'),
('9e4895b6-72af-4dea-b173-b61f52d842bf', 'Azki Maulana', NULL, 'ocloud263@gmail.com', 1, '', 'user', '2025-02-22 04:16:33.444', '2025-02-23 09:53:35.697', '2025-02-23 09:53:35.696', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiOWU0ODk1YjYtNzJhZi00ZGVhLWIxNzMtYjYxZjUyZDg0MmJmIiwicm9sZSI6InVzZXIifSwiaWF0IjoxNzQwMzA0NDE1LCJleHAiOjE3NDI4OTY0MTV9.PK5nOW8dbV565B_dp7YhAVveOVy0zi8YtaNlkrtDiZ0', '111756771154013290242'),
('a29c9407-f979-4a8b-92c9-405e9484c893', 'Ustad 2', '$2a$10$08QqYtqfjqtIXcEnQdfV2uJw2R01HGsZaXH/oMW67z48SzABe425i', 'ustad2@gmail.com', 1, '0881023758202', 'ustadz', '2025-02-17 06:11:31.812', '2025-03-03 06:38:23.440', '2025-03-03 06:34:15.766', 0, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiYTI5Yzk0MDctZjk3OS00YThiLTkyYzktNDA1ZTk0ODRjODkzIiwicm9sZSI6InVzdGFkeiIsIm5hbWUiOiJVc3RhZCAyIn0sImlhdCI6MTc0MDk4MzY1NSwiZXhwIjoxNzQzNTc1NjU1fQ.PTJ8iPmYE4fbwrQq4FM7Kqdv_10KVNSFvBbjc5GAqxs', NULL),
('a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', NULL, 'maulanaazkiassariy@gmail.com', 1, '08986921583', 'user', '2025-02-22 09:24:31.355', '2025-03-14 02:50:57.682', '2025-03-14 02:50:57.678', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiYTcxOWRhOGQtM2M5Yi00MWJiLTgxNzMtZjcyNzkyNGQ1MjkzIiwicm9sZSI6InVzZXIiLCJuYW1lIjoiQXpraSBNYXVsYW5hIEEifSwiaWF0IjoxNzQxOTIwNjU3LCJleHAiOjE3NDQ1MTI2NTd9.YaUXYgqYpxL70QeazL2GxOHEilt7QRoUB5IMcS_O2IU', '112793381447519469985'),
('d84cb7d9-b275-4368-9802-63e54209e669', 'Hawimaw', '$2a$10$jjhv.yRvZb87GnZ/amNpBuBlIBnSU0UQAXlZoFBFSzRkH.wYYytMi', 'user2@gmail.com', 1, '0881023758102', 'user', '2025-02-17 06:09:40.600', '2025-03-04 06:55:51.851', '2025-03-04 06:38:18.380', 0, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiZDg0Y2I3ZDktYjI3NS00MzY4LTk4MDItNjNlNTQyMDllNjY5Iiwicm9sZSI6InVzZXIiLCJuYW1lIjoiSGF3aW1hdyJ9LCJpYXQiOjE3NDEwNzAyOTgsImV4cCI6MTc0MzY2MjI5OH0.aEK8rqN3ArQ9tBSDCmIby2vyVWMhHrO54C2DJV5tKvY', NULL),
('dcddea17-223a-40aa-a691-869ebe5e958a', 'Ustad 3', '$2a$10$iU1g3.suzfnWMIoyQPgCQe2jJGxLsVvfvzYXeMdvCHLUZoYTZw7aO', 'ustad3@gmail.com', 1, '0881023758203', 'ustadz', '2025-02-17 06:11:43.859', '2025-03-04 06:53:00.866', '2025-03-04 06:53:00.864', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiZGNkZGVhMTctMjIzYS00MGFhLWE2OTEtODY5ZWJlNWU5NThhIiwicm9sZSI6InVzdGFkeiIsIm5hbWUiOiJVc3RhZCAzIn0sImlhdCI6MTc0MTA3MTE4MCwiZXhwIjoxNzQzNjYzMTgwfQ.5zcXdw8qUpsb9wD64jaL05Uf-Rl1rFyiu72rmtape5c', NULL),
('e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', '$2a$10$9k.P5gChWUiuT2cgcuGwTebHAx/OgkVETFAwMbWFuDZomO9y1fep.', 'ustad1@gmail.com', 1, '0881023758568', 'ustadz', '2025-02-17 06:08:25.438', '2025-03-14 02:52:25.465', '2025-03-14 02:52:25.463', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiZTI4YTA2NTQtNmVlMy00ZjQ0LTgwMWMtM2NkZmU1YjcwYzQ0Iiwicm9sZSI6InVzdGFkeiIsIm5hbWUiOiJVc3RhZCBKdXJhZ2FuIFNhcGkifSwiaWF0IjoxNzQxOTIwNzQ1LCJleHAiOjE3NDQ1MTI3NDV9.SEgsc3qAPQ2ThGEoHEadAzErcfpmJn4sLolg-DsL1Zo', NULL),
('ea2495c0-2149-4e25-bb50-e85f4f703fc1', 'Rian Lesmana', NULL, 'rianlesmana03@gmail.com', 1, '', 'user', '2025-03-04 07:00:54.205', '2025-03-14 02:53:35.599', '2025-03-14 02:53:35.597', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiZWEyNDk1YzAtMjE0OS00ZTI1LWJiNTAtZTg1ZjRmNzAzZmMxIiwicm9sZSI6InVzZXIiLCJuYW1lIjoiUmlhbiBMZXNtYW5hIn0sImlhdCI6MTc0MTkyMDgxNSwiZXhwIjoxNzQ0NTEyODE1fQ.gyq2d_yJvJl10fOFjyQrFTgrve8R6YfGfRom7ZW2JKk', '104046722213642514899');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usersonriwayatgrup`
--

CREATE TABLE `usersonriwayatgrup` (
  `riwayatgrupid` varchar(36) NOT NULL,
  `userid` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `usersonriwayatgrup`
--

INSERT INTO `usersonriwayatgrup` (`riwayatgrupid`, `userid`, `name`, `role`) VALUES
('01acd6c0-c7ff-4b2e-98eb-4aa75c1c81a7', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('427b0b56-d4fe-4027-84af-a76e2e696f93', '6ac85374-553b-47e3-9e60-9557d94a0b55', 'User 4', 'user'),
('427b0b56-d4fe-4027-84af-a76e2e696f93', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', 'user'),
('427b0b56-d4fe-4027-84af-a76e2e696f93', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('427b0b56-d4fe-4027-84af-a76e2e696f93', 'ea2495c0-2149-4e25-bb50-e85f4f703fc1', 'Rian Lesmana', 'user'),
('5ebae535-cb21-4851-bb5f-f9c0a1673db3', 'a29c9407-f979-4a8b-92c9-405e9484c893', 'Ustad 2', 'ustadz'),
('5ebae535-cb21-4851-bb5f-f9c0a1673db3', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', 'user'),
('5ebae535-cb21-4851-bb5f-f9c0a1673db3', 'dcddea17-223a-40aa-a691-869ebe5e958a', 'Ustad 3', 'ustadz'),
('5ebae535-cb21-4851-bb5f-f9c0a1673db3', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('5fbf2c3d-f650-4384-8758-9d25f52faa55', '26a794b0-9fa9-4222-9ffd-a27e5e59cee6', 'Udin Idin', 'user'),
('5fbf2c3d-f650-4384-8758-9d25f52faa55', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', 'user'),
('5fbf2c3d-f650-4384-8758-9d25f52faa55', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('624d0737-5ff0-476d-9392-482eb04ed005', 'a29c9407-f979-4a8b-92c9-405e9484c893', 'Ustad 2', 'ustadz'),
('624d0737-5ff0-476d-9392-482eb04ed005', 'd84cb7d9-b275-4368-9802-63e54209e669', 'Hawimaw', 'user'),
('624d0737-5ff0-476d-9392-482eb04ed005', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('912a771c-fb76-4085-ad06-e367bd3b9766', '26a794b0-9fa9-4222-9ffd-a27e5e59cee6', 'Udin Idin', 'user'),
('912a771c-fb76-4085-ad06-e367bd3b9766', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('9a7f7e77-c50b-461e-b9c8-f1fd3606fb15', 'd84cb7d9-b275-4368-9802-63e54209e669', 'Hawimaw', 'user'),
('9a7f7e77-c50b-461e-b9c8-f1fd3606fb15', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('ab313270-518b-4276-b662-a53aa7348b7f', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', 'user'),
('ab313270-518b-4276-b662-a53aa7348b7f', 'd84cb7d9-b275-4368-9802-63e54209e669', 'Hawimaw', 'user'),
('ab313270-518b-4276-b662-a53aa7348b7f', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('b0910e1b-43a0-41f1-aa5d-0314d17761d1', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('d24a2522-1116-4e64-93ee-374a268acdf9', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', 'user'),
('d24a2522-1116-4e64-93ee-374a268acdf9', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('d650c116-915a-4f1a-8600-c4ec7383e7d1', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('d7ccda6e-ec19-4d56-a2bf-a8892fe64824', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', 'user'),
('d7ccda6e-ec19-4d56-a2bf-a8892fe64824', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Domba', 'ustadz'),
('e24f274b-618b-4a42-a626-08c4e515b60e', '72db81fb-6bfc-40d0-a125-602b49c275d3', 'MAQDIS TOURS & TRAVEL', 'user'),
('e24f274b-618b-4a42-a626-08c4e515b60e', '8709b7f0-b2f3-400d-a9d4-f3dc4f1d313e', 'Maqdis Hamim', 'user'),
('e24f274b-618b-4a42-a626-08c4e515b60e', '9e4895b6-72af-4dea-b173-b61f52d842bf', 'Azki Maulana', 'user'),
('e24f274b-618b-4a42-a626-08c4e515b60e', 'a29c9407-f979-4a8b-92c9-405e9484c893', 'Ustad 2', 'ustadz'),
('e24f274b-618b-4a42-a626-08c4e515b60e', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', 'user'),
('e24f274b-618b-4a42-a626-08c4e515b60e', 'd84cb7d9-b275-4368-9802-63e54209e669', 'Hawimaw', 'user'),
('e24f274b-618b-4a42-a626-08c4e515b60e', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Domba', 'ustadz'),
('f95fb887-730a-447f-a1c5-3a3de451aa22', 'a719da8d-3c9b-41bb-8173-f727924d5293', 'Azki Maulana A', 'user'),
('f95fb887-730a-447f-a1c5-3a3de451aa22', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Sapi', 'ustadz'),
('f95fb887-730a-447f-a1c5-3a3de451aa22', 'ea2495c0-2149-4e25-bb50-e85f4f703fc1', 'Rian Lesmana', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `videoid` varchar(191) NOT NULL,
  `judul_vid` varchar(191) NOT NULL,
  `deskripsi` text NOT NULL,
  `link_vid` varchar(191) NOT NULL,
  `thumbnail` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`videoid`, `judul_vid`, `deskripsi`, `link_vid`, `thumbnail`, `created_at`) VALUES
('5001da18-d839-496d-8b72-ec06cb20d8e3', '<h2>Doa Melihat Ka\'bah</h2>', '<p>Ketika pertama kali melihat Ka\'bah, jamaah dianjurkan untuk berdoa karena ini adalah salah satu waktu yang mustajab. Doanya: <strong>Allahumma zid hadzal baita tasyrifan wata\'ziman...</strong>. Jamaah juga bisa memanjatkan doa sesuai dengan hajatnya.</p>', 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8', 'https://img.okezone.com/content/2024/05/14/618/3008329/bacaan-doa-masuk-masjidil-haram-arab-latin-dan-terjemahannya-lengkap-pXgK0BhUKf.jpg', '2025-03-15 21:30:10.324'),
('51c834b4-b887-4781-9deb-e4c07a918b76', '<h2>Doa Setelah Masuk Masjid</h2>', '<p>Setelah masuk masjid, jamaah dapat membaca doa: <strong>Subhanallah walhamdulillah wa laa ilaha illallah wallahu akbar</strong>. Kemudian dianjurkan untuk melaksanakan sholat tahiyyatul masjid dua rakaat sebagai bentuk penghormatan kepada rumah Allah.</p>', 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8', 'https://storage.googleapis.com/narasi-production.appspot.com/production/medium/1702998515332/doa-masuk-masjidil-haram-bagi-jamaah-haji-dan-umrah-medium.jpg', '2025-03-15 21:29:32.913'),
('d1888f33-94bb-410b-8e16-6615630d5a50', '<h2>Doa Masuk Masjid</h2>', '<p>Sebelum masuk masjid, dianjurkan membaca doa: <strong>Allahummaftah li abwaba rahmatik</strong>. Jamaah masuk dengan kaki kanan terlebih dahulu, menunjukkan sikap hormat dan adab terhadap tempat ibadah.</p>', 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8', 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/1062/2024/04/24/pintu-masjidil-haram-358721394.jpg', '2025-03-15 21:27:55.497'),
('d95821d2-8dda-4766-871c-d3649f758a63', '<h2>Bacaan Talbiyah</h2>', '<p>Talbiyah adalah bacaan yang diucapkan setelah niat umroh sebagai bentuk penghambaan kepada Allah. Bacaan talbiyah: <strong>Labbaikallahumma labbaik, labbaika laa syarika laka labbaik...</strong>. Bacaan ini dianjurkan untuk diulang-ulang hingga memasuki Masjidil Haram.</p>', 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8', 'https://pict.sindonews.net/webp/732/pena/news/2023/05/22/786/1105203/bacaan-talbiyah-ketika-ibadah-haji-dan-keutamaannya-lmh.webp', '2025-03-15 21:26:28.357'),
('d994a583-8654-4014-920d-7428feeb401f', '<h2>Niat Umroh</h2>', '<p>Sebelum memulai umroh, jamaah harus berniat dengan ikhlas dan sesuai tuntunan. Niat dilakukan di miqat yang telah ditentukan. Bacaan niatnya: <strong>Labbaikallahumma Umrotan</strong>. Setelah berniat, jamaah wajib mengenakan pakaian ihram dan menghindari larangan ihram.</p>', 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8', 'https://www.megasyariah.co.id/bms-new/edukasi-tips/niat_umroh.jpg', '2025-03-15 21:23:43.443'),
('e5e1a439-57c6-4634-9a35-32c9e912ff03', '<h2>Bacaan Saat Dihajar Aswad</h2>', '<p>Ketika berada di dekat Hajar Aswad, jamaah dianjurkan untuk mengucapkan <strong>Bismillah Allahu Akbar</strong> sebelum menciumnya atau memberi isyarat tangan jika tidak memungkinkan. Ini adalah salah satu sunnah saat melakukan tawaf.</p>', 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8', 'https://www.arina.id/images/post/16_9/hajar-aswad-haramain_1716010114.webp', '2025-03-15 21:31:42.568');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_gruptopeserta_grup`
--

CREATE TABLE `_gruptopeserta_grup` (
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
('4f4a565a-078b-4f96-bb3f-0e58d1660974', '312f6474d25406f280fb1e8ce7fa76cd6c220263e2f17712e32df84bee9dd11a', '2025-03-01 03:29:42.170', '20250301032941_add_cascade_delete', NULL, NULL, '2025-03-01 03:29:41.827', 1),
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
-- Indeks untuk tabel `ayat`
--
ALTER TABLE `ayat`
  ADD PRIMARY KEY (`ayatid`),
  ADD KEY `Ayat_doaid_fkey` (`doaid`);

--
-- Indeks untuk tabel `deleteaccreason`
--
ALTER TABLE `deleteaccreason`
  ADD PRIMARY KEY (`reasonId`);

--
-- Indeks untuk tabel `deletedusers`
--
ALTER TABLE `deletedusers`
  ADD PRIMARY KEY (`deletedId`),
  ADD UNIQUE KEY `DeletedUsers_userId_key` (`userId`);

--
-- Indeks untuk tabel `doa`
--
ALTER TABLE `doa`
  ADD PRIMARY KEY (`doaid`),
  ADD KEY `Doa_perjalananid_fkey` (`perjalananid`);

--
-- Indeks untuk tabel `grup`
--
ALTER TABLE `grup`
  ADD PRIMARY KEY (`grupid`),
  ADD UNIQUE KEY `Grup_roomid_key` (`roomid`),
  ADD KEY `Grup_userId_idx` (`userId`);

--
-- Indeks untuk tabel `perjalanan`
--
ALTER TABLE `perjalanan`
  ADD PRIMARY KEY (`perjalananid`);

--
-- Indeks untuk tabel `peserta_grup`
--
ALTER TABLE `peserta_grup`
  ADD PRIMARY KEY (`peserta_grupid`),
  ADD UNIQUE KEY `Peserta_Grup_grupid_userId_key` (`grupid`,`userId`),
  ADD UNIQUE KEY `Peserta_Grup_roomid_key` (`roomid`),
  ADD KEY `Peserta_Grup_userId_fkey` (`userId`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`profileid`),
  ADD UNIQUE KEY `Profiles_userId_key` (`userId`);

--
-- Indeks untuk tabel `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`progressid`),
  ADD KEY `Progress_perjalananid_fkey` (`perjalananid`),
  ADD KEY `Progress_grupid_fkey` (`grupid`);

--
-- Indeks untuk tabel `progress_doa`
--
ALTER TABLE `progress_doa`
  ADD PRIMARY KEY (`progress_doaid`),
  ADD UNIQUE KEY `Progress_Doa_progressid_doaid_key` (`progressid`,`doaid`),
  ADD KEY `Progress_Doa_doaid_fkey` (`doaid`);

--
-- Indeks untuk tabel `progress_perjalanan`
--
ALTER TABLE `progress_perjalanan`
  ADD PRIMARY KEY (`progress_perjalananid`),
  ADD KEY `Progress_perjalanan_progressid_fkey` (`progressid`),
  ADD KEY `Progress_perjalanan_grupid_fkey` (`grupid`),
  ADD KEY `Progress_perjalanan_userId_fkey` (`userId`),
  ADD KEY `Progress_perjalanan_perjalananid_fkey` (`perjalananid`);

--
-- Indeks untuk tabel `riwayatdoa`
--
ALTER TABLE `riwayatdoa`
  ADD PRIMARY KEY (`riwayatdoaid`),
  ADD KEY `RiwayatDoa_riwayatperjalananid_idx` (`riwayatperjalananid`),
  ADD KEY `RiwayatDoa_doaid_fkey` (`doaid`);

--
-- Indeks untuk tabel `riwayatgrup`
--
ALTER TABLE `riwayatgrup`
  ADD PRIMARY KEY (`riwayatgrupid`);

--
-- Indeks untuk tabel `riwayatperjalanan`
--
ALTER TABLE `riwayatperjalanan`
  ADD PRIMARY KEY (`riwayatperjalananid`),
  ADD KEY `RiwayatPerjalanan_perjalananid_idx` (`perjalananid`),
  ADD KEY `RiwayatPerjalanan_riwayatgrupid_fkey` (`riwayatgrupid`);

--
-- Indeks untuk tabel `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Users_email_key` (`email`),
  ADD UNIQUE KEY `Users_googleId_key` (`googleId`);

--
-- Indeks untuk tabel `usersonriwayatgrup`
--
ALTER TABLE `usersonriwayatgrup`
  ADD PRIMARY KEY (`riwayatgrupid`,`userid`),
  ADD KEY `UsersOnRiwayatGrup_userid_fkey` (`userid`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`videoid`);

--
-- Indeks untuk tabel `_gruptopeserta_grup`
--
ALTER TABLE `_gruptopeserta_grup`
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
-- Ketidakleluasaan untuk tabel `ayat`
--
ALTER TABLE `ayat`
  ADD CONSTRAINT `Ayat_doaid_fkey` FOREIGN KEY (`doaid`) REFERENCES `doa` (`doaid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `doa`
--
ALTER TABLE `doa`
  ADD CONSTRAINT `Doa_perjalananid_fkey` FOREIGN KEY (`perjalananid`) REFERENCES `perjalanan` (`perjalananid`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `grup`
--
ALTER TABLE `grup`
  ADD CONSTRAINT `Grup_roomid_fkey` FOREIGN KEY (`roomid`) REFERENCES `room` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Grup_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peserta_grup`
--
ALTER TABLE `peserta_grup`
  ADD CONSTRAINT `Peserta_Grup_roomid_fkey` FOREIGN KEY (`roomid`) REFERENCES `room` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Peserta_Grup_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `Profiles_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `Progress_grupid_fkey` FOREIGN KEY (`grupid`) REFERENCES `grup` (`grupid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Progress_perjalananid_fkey` FOREIGN KEY (`perjalananid`) REFERENCES `perjalanan` (`perjalananid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `progress_doa`
--
ALTER TABLE `progress_doa`
  ADD CONSTRAINT `Progress_Doa_doaid_fkey` FOREIGN KEY (`doaid`) REFERENCES `doa` (`doaid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Progress_Doa_progressid_fkey` FOREIGN KEY (`progressid`) REFERENCES `progress` (`progressid`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `progress_perjalanan`
--
ALTER TABLE `progress_perjalanan`
  ADD CONSTRAINT `Progress_perjalanan_grupid_fkey` FOREIGN KEY (`grupid`) REFERENCES `grup` (`grupid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Progress_perjalanan_perjalananid_fkey` FOREIGN KEY (`perjalananid`) REFERENCES `perjalanan` (`perjalananid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Progress_perjalanan_progressid_fkey` FOREIGN KEY (`progressid`) REFERENCES `progress` (`progressid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Progress_perjalanan_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `riwayatdoa`
--
ALTER TABLE `riwayatdoa`
  ADD CONSTRAINT `RiwayatDoa_doaid_fkey` FOREIGN KEY (`doaid`) REFERENCES `doa` (`doaid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `RiwayatDoa_riwayatperjalananid_fkey` FOREIGN KEY (`riwayatperjalananid`) REFERENCES `riwayatperjalanan` (`riwayatperjalananid`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `riwayatperjalanan`
--
ALTER TABLE `riwayatperjalanan`
  ADD CONSTRAINT `RiwayatPerjalanan_perjalananid_fkey` FOREIGN KEY (`perjalananid`) REFERENCES `perjalanan` (`perjalananid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `RiwayatPerjalanan_riwayatgrupid_fkey` FOREIGN KEY (`riwayatgrupid`) REFERENCES `riwayatgrup` (`riwayatgrupid`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `usersonriwayatgrup`
--
ALTER TABLE `usersonriwayatgrup`
  ADD CONSTRAINT `UsersOnRiwayatGrup_riwayatgrupid_fkey` FOREIGN KEY (`riwayatgrupid`) REFERENCES `riwayatgrup` (`riwayatgrupid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UsersOnRiwayatGrup_userid_fkey` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `_gruptopeserta_grup`
--
ALTER TABLE `_gruptopeserta_grup`
  ADD CONSTRAINT `_GrupToPeserta_Grup_A_fkey` FOREIGN KEY (`A`) REFERENCES `grup` (`grupid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_GrupToPeserta_Grup_B_fkey` FOREIGN KEY (`B`) REFERENCES `peserta_grup` (`peserta_grupid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
