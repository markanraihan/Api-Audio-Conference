-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2025 pada 01.39
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
('854ecd88-0125-4466-8112-ffd6ab1bee8d', 'Grup July 2025', 'Ustad Juragan Domba', '2025-02-18 05:04:06.005', NULL, 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', NULL),
('9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'Grup Acumalaka 2025', 'Ustad 2', '2025-02-19 08:02:04.839', NULL, 1, 'open', 'a29c9407-f979-4a8b-92c9-405e9484c893', NULL),
('ca691cdf-f626-495a-b703-19c06fa5879b', 'Grup July 2025', 'Ustad Juragan Domba', '2025-02-17 06:13:46.962', NULL, 1, 'open', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', NULL);

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
('3aacc2cc-8e4e-41df-8400-266935dfc717', 'Towaf Wada', 0),
('8fa4a6c9-c71c-4342-8245-284dad782015', 'Manasik', 0),
('cd3f46c3-01d6-4fad-be79-6553bc65e633', 'Umroh', 0);

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
  `online` varchar(10) NOT NULL,
  `usersGoogleId` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('017055ae-6ced-401b-92d1-bb873c0566c0', 'Ustad 3', '0881023758203', 'https://api.dicebear.com/8.x/identicon/svg?seed=Ustad 3', '2025-02-17 06:11:43.876', '2025-02-17 06:11:43.876', 'dcddea17-223a-40aa-a691-869ebe5e958a'),
('3be7ffb2-d2af-4688-91a6-e24e6617f7b5', 'Atmin Arkan', '081564949454', 'https://api.dicebear.com/8.x/identicon/svg?seed=Atmin Arkan', '2025-02-17 06:12:20.072', '2025-02-17 06:12:20.072', '79f57997-b1be-4587-b419-f7e100418b41'),
('510c2d74-cd7b-4fd5-9b33-99126b7c7449', 'Ustad Juragan Domba', '0881023758568', NULL, '2025-02-17 06:08:25.854', '2025-02-17 06:10:20.525', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44'),
('5d2efa74-2b28-45ec-b1db-d4347db30e95', 'User 4', '0881023758104', 'https://api.dicebear.com/8.x/identicon/svg?seed=User 4', '2025-02-17 06:10:11.909', '2025-02-17 06:10:11.909', '6ac85374-553b-47e3-9e60-9557d94a0b55'),
('62d78626-fba5-4b6f-bbef-39211e51326a', 'User 2', '0881023758102', 'https://api.dicebear.com/8.x/identicon/svg?seed=User 2', '2025-02-17 06:09:40.636', '2025-02-17 06:09:40.636', 'd84cb7d9-b275-4368-9802-63e54209e669'),
('c586eaa0-ee15-410d-b311-eb978fd296db', 'Asep Jalaludin', '0881023758101', NULL, '2025-02-17 06:09:29.497', '2025-02-18 14:05:22.147', 'd84311e4-7cbd-40f1-a125-bf1fdb21f09d'),
('ce602ff7-e955-4e2c-bccf-5297b3f9316f', 'User 3', '0881023758103', 'https://api.dicebear.com/8.x/identicon/svg?seed=User 3', '2025-02-17 06:09:54.211', '2025-02-17 06:09:54.211', '69756f8b-b069-4eaa-b35a-0f72b5693194'),
('d4f8bc62-5de7-4b91-81c4-4d31f59b423d', 'Ustad 2', '0881023758202', 'https://api.dicebear.com/8.x/identicon/svg?seed=Ustad 2', '2025-02-17 06:11:31.823', '2025-02-17 06:11:31.823', 'a29c9407-f979-4a8b-92c9-405e9484c893'),
('e1ce87dd-5dfb-4ece-acd9-7a7fa1f94f82', 'User 5', '0881023758105', 'https://api.dicebear.com/8.x/identicon/svg?seed=User 5', '2025-02-17 06:10:42.762', '2025-02-17 06:10:42.762', '2f3e8378-f9a2-4ea3-b9b8-a1a14958084f');

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
('23e2e885-b487-441c-811f-2b9391b1033d', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'Towaf Wada', 0, 0, 0, NULL, NULL),
('29d76bde-5ea9-4b37-9064-6565fabe5efe', '854ecd88-0125-4466-8112-ffd6ab1bee8d', 'Umroh', 0, 0, 0, NULL, NULL),
('42f3a7e7-f901-4959-9e38-060d404e5e05', 'ca691cdf-f626-495a-b703-19c06fa5879b', 'Towaf Wada', 0, 0, 0, NULL, NULL),
('5391c1f3-5218-4c42-b418-a56c23858fc2', '854ecd88-0125-4466-8112-ffd6ab1bee8d', 'Manasik', 0, 0, 0, NULL, NULL),
('589aae17-1634-4dc8-9aa3-7f96cce0991b', 'ca691cdf-f626-495a-b703-19c06fa5879b', 'Umroh', 0, 0, 0, NULL, NULL),
('67dda49a-d661-4157-a243-30eed539f854', '854ecd88-0125-4466-8112-ffd6ab1bee8d', 'Towaf Wada', 0, 0, 0, NULL, NULL),
('b21dbfd0-7933-4f27-8c28-6952830a1887', 'ca691cdf-f626-495a-b703-19c06fa5879b', 'Manasik', 0, 0, 0, NULL, NULL),
('c60526c8-fa21-443b-9ee1-4d52f3e33407', '14756446-06c2-4adc-96e6-c9416cf7342e', 'Manasik', 0, 0, 1, '2025-02-18 06:46:27.973', '8fa4a6c9-c71c-4342-8245-284dad782015'),
('d0af2110-10f7-44ef-87e0-a3e5d52ceb16', '14756446-06c2-4adc-96e6-c9416cf7342e', 'Umroh', 0, 0, 1, '2025-02-18 13:55:50.419', 'cd3f46c3-01d6-4fad-be79-6553bc65e633'),
('d224b741-6efc-43db-9235-6b82f3f4e455', '14756446-06c2-4adc-96e6-c9416cf7342e', 'Towaf Wada', 0, 0, 1, '2025-02-18 13:59:19.183', '3aacc2cc-8e4e-41df-8400-266935dfc717'),
('df87fd67-c752-4fab-96ae-845f87089077', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'Umroh', 0, 0, 0, NULL, NULL),
('fd5f0a6a-8f14-4bab-a7b9-11f37ba738f0', '9fcb0232-963a-4a0d-8cc1-ed36d9deeab6', 'Manasik', 0, 0, 0, NULL, NULL);

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
  `cek_doa` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Progress_perjalanan`
--

CREATE TABLE `Progress_perjalanan` (
  `progress_perjalananid` varchar(36) NOT NULL,
  `progressid` varchar(36) NOT NULL,
  `userId` varchar(36) NOT NULL,
  `perjalananid` varchar(36) NOT NULL,
  `waktu_mulai` datetime(3) NOT NULL,
  `time_selesai` datetime(3) DEFAULT NULL,
  `durasi_progress` varchar(191) DEFAULT NULL,
  `usersGoogleId` varchar(36) DEFAULT NULL,
  `grupid` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Progress_perjalanan`
--

INSERT INTO `Progress_perjalanan` (`progress_perjalananid`, `progressid`, `userId`, `perjalananid`, `waktu_mulai`, `time_selesai`, `durasi_progress`, `usersGoogleId`, `grupid`) VALUES
('6fb22ebb-b97e-4d04-a9b4-136463171fbb', 'c60526c8-fa21-443b-9ee1-4d52f3e33407', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '8fa4a6c9-c71c-4342-8245-284dad782015', '2025-02-18 06:46:27.973', '2025-02-18 06:50:39.776', '4:11', NULL, '14756446-06c2-4adc-96e6-c9416cf7342e'),
('787b5e9a-bafa-4464-8207-ee0691dd5d29', 'd224b741-6efc-43db-9235-6b82f3f4e455', 'd84311e4-7cbd-40f1-a125-bf1fdb21f09d', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-18 13:59:19.183', '2025-02-19 01:21:25.262', '682:06', NULL, '14756446-06c2-4adc-96e6-c9416cf7342e'),
('9728a993-c1c0-4f52-8cd4-e5d5616860de', 'd224b741-6efc-43db-9235-6b82f3f4e455', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', '3aacc2cc-8e4e-41df-8400-266935dfc717', '2025-02-18 13:59:19.183', '2025-02-19 01:21:25.262', '682:06', NULL, '14756446-06c2-4adc-96e6-c9416cf7342e'),
('ba7450e4-5121-49d6-9aae-2f916b446272', 'd0af2110-10f7-44ef-87e0-a3e5d52ceb16', 'e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'cd3f46c3-01d6-4fad-be79-6553bc65e633', '2025-02-18 13:55:50.419', '2025-02-18 13:56:23.754', '0:33', NULL, '14756446-06c2-4adc-96e6-c9416cf7342e');

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
('67b42c5fb72a0fec60b4b1c3', 'Room Cuma Test Doang', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb29tX2lkIjoiNjdiNDJjNWZiNzJhMGZlYzYwYjRiMWMzIiwidXNlcl9pZCI6ImUyOGEwNjU0LTZlZTMtNGY0NC04MDFjLTNjZGZlNWI3MGM0NCIsImV4cCI6MTc0MDAzODM5MiwiaWF0IjoxNzM5OTUxOTkyLCJuYmYiOjE3Mzk5NTE5OTIsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6IjVlYjJlZTI3LTgyZGMtNDg2Ny1hNmQ3LTBhMjYzMTdiNGNiZiIsInJvbGUiOiJzcGVha2VyIn0.QEf_oMRWDhj3T8-o86lsmm_swd4Bn9QwuG7kvA1VMLs', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2Nzg0ODkwYTQ5NDRmMDY3MzEzYTg4OTEiLCJyb29tX2lkIjoiNjdiNDJjNWZiNzJhMGZlYzYwYjRiMWMzIiwidXNlcl9pZCI6ImQ4NDMxMWU0LTdjYmQtNDBmMS1hMTI1LWJmMWZkYjIxZjA5ZCIsImV4cCI6MTc0MDAxNjE4MCwiaWF0IjoxNzM5OTI5NzgwLCJuYmYiOjE3Mzk5Mjk3ODAsImlzcyI6IjY3ODQ4OTBhNDk0NGYwNjczMTNhODg4ZiIsInN1YiI6ImFwaSIsImp0aSI6ImE4ZmEwZTVmLTUyYzItNDdjNi04YzU0LWNhNjEzZDY5OWRiMCIsInJvbGUiOiJsaXN0ZW5lciJ9.m1U7TfTRQz6AxhAtmsvbOt_pwG1AMHIYnER18-VEAo8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Users`
--

CREATE TABLE `Users` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `role` enum('user','ustadz','admin') DEFAULT 'user',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `lastLogin` datetime(3) DEFAULT NULL,
  `status_login` tinyint(1) NOT NULL DEFAULT 0,
  `currentToken` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `Users`
--

INSERT INTO `Users` (`id`, `name`, `password`, `email`, `whatsapp`, `role`, `createdAt`, `updatedAt`, `lastLogin`, `status_login`, `currentToken`) VALUES
('2f3e8378-f9a2-4ea3-b9b8-a1a14958084f', 'User 5', '$2a$10$hlZanREq183ARgUROMKqmujxx2lnmoBET2SYa7bjC5ztkPi9LW2na', 'user5@gmail.com', '0881023758105', 'user', '2025-02-17 06:10:42.705', '2025-02-17 06:10:42.705', NULL, 0, NULL),
('69756f8b-b069-4eaa-b35a-0f72b5693194', 'User 3', '$2a$10$CB6zyCnSkbz/CZf0Wp8CveukB3ALGcKqmgGsIcBSOkGCYVgJ84js2', 'user3@gmail.com', '0881023758103', 'user', '2025-02-17 06:09:54.198', '2025-02-17 06:09:54.198', NULL, 0, NULL),
('6ac85374-553b-47e3-9e60-9557d94a0b55', 'User 4', '$2a$10$rrqlKOh0SxdDiE1xcyM63ujL.ty8wVeyIaAgVKs7AP./pGfH7vk.q', 'user4@gmail.com', '0881023758104', 'user', '2025-02-17 06:10:11.884', '2025-02-17 06:10:11.884', NULL, 0, NULL),
('79f57997-b1be-4587-b419-f7e100418b41', 'Atmin Arkan', '$2a$10$v2kzsuButupdruWh15GM1OkqaJWP51dxquE29Tl6d2xbeq/z6kJWe', 'adminark@gmail.com', '081564949454', 'admin', '2025-02-17 06:12:20.055', '2025-02-17 06:12:20.055', NULL, 0, NULL),
('a29c9407-f979-4a8b-92c9-405e9484c893', 'Ustad 2', '$2a$10$08QqYtqfjqtIXcEnQdfV2uJw2R01HGsZaXH/oMW67z48SzABe425i', 'ustad2@gmail.com', '0881023758202', 'ustadz', '2025-02-17 06:11:31.812', '2025-02-19 08:04:47.097', '2025-02-19 08:04:47.093', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiYTI5Yzk0MDctZjk3OS00YThiLTkyYzktNDA1ZTk0ODRjODkzIiwicm9sZSI6InVzdGFkeiJ9LCJpYXQiOjE3Mzk5NTIyODcsImV4cCI6MTczOTk1OTQ4N30.So6K_SOQbnRoaqHtq1lIRInK65M6PkOJuZU2gRXsHJY'),
('d84311e4-7cbd-40f1-a125-bf1fdb21f09d', 'Asep Jalaludin', '$2a$10$2K5HImUINi3uCWr9y5vGwuPNuxSTBBiSLnYdQONo9gATp0WVLN55K', 'user1@gmail.com', '0881023758101', 'user', '2025-02-17 06:09:29.437', '2025-02-19 02:43:13.261', '2025-02-19 02:42:54.378', 0, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiZDg0MzExZTQtN2NiZC00MGYxLWExMjUtYmYxZmRiMjFmMDlkIiwicm9sZSI6InVzZXIifSwiaWF0IjoxNzM5OTMyOTc0LCJleHAiOjE3Mzk5NDAxNzR9.HpHU6rjI0OpL6RUKtOPRkux1-v3fhnRIwhnboXROB5g'),
('d84cb7d9-b275-4368-9802-63e54209e669', 'User 2', '$2a$10$jjhv.yRvZb87GnZ/amNpBuBlIBnSU0UQAXlZoFBFSzRkH.wYYytMi', 'user2@gmail.com', '0881023758102', 'user', '2025-02-17 06:09:40.600', '2025-02-17 06:09:40.600', NULL, 0, NULL),
('dcddea17-223a-40aa-a691-869ebe5e958a', 'Ustad 3', '$2a$10$iU1g3.suzfnWMIoyQPgCQe2jJGxLsVvfvzYXeMdvCHLUZoYTZw7aO', 'ustad3@gmail.com', '0881023758203', 'ustadz', '2025-02-17 06:11:43.859', '2025-02-17 06:11:43.859', NULL, 0, NULL),
('e28a0654-6ee3-4f44-801c-3cdfe5b70c44', 'Ustad Juragan Domba', '$2a$10$9k.P5gChWUiuT2cgcuGwTebHAx/OgkVETFAwMbWFuDZomO9y1fep.', 'ustad1@gmail.com', '0881023758568', 'ustadz', '2025-02-17 06:08:25.438', '2025-02-19 08:13:38.767', '2025-02-19 08:13:38.741', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiZTI4YTA2NTQtNmVlMy00ZjQ0LTgwMWMtM2NkZmU1YjcwYzQ0Iiwicm9sZSI6InVzdGFkeiJ9LCJpYXQiOjE3Mzk5NTI4MTgsImV4cCI6MTczOTk2MDAxOH0.HXhD4GLEstskXPDtJMxMeTChwNT8Q2rONlNyEuJkXrQ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `UsersGoogle`
--

CREATE TABLE `UsersGoogle` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `role` enum('user','ustadz','admin') DEFAULT 'user',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `lastLogin` datetime(3) DEFAULT NULL,
  `status_login` tinyint(1) NOT NULL DEFAULT 0,
  `grupGrupid` varchar(36) DEFAULT NULL,
  `profilesProfileid` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('11538dbd-02bd-47ff-858a-03503f3a44b0', '564cfcaa4e921cbce257f29b36e067f01c78995a0d3cb8e0b0ab2fbd247b45e2', '2025-02-17 04:58:51.871', '20250214063158_init', NULL, NULL, '2025-02-17 04:58:48.526', 1),
('542157e1-54b6-4ff9-b531-724782ae247b', 'ea89d38e207046512c4ddd46d8735c08d2a6a23c036be108dcb39c9ad412ec41', '2025-02-17 04:58:53.045', '20250215022834_add_perjalanid_to_progress_table', NULL, NULL, '2025-02-17 04:58:51.899', 1),
('7c871bb1-dc2c-4763-815b-c18dd3445b61', '70a5066c7914d0944a670fbe5ce3f7b91928232fa6aae167a3f5fe890fa3b25b', '2025-02-17 04:58:53.703', '20250215024122_add_perjalanid_to_progress_table', NULL, NULL, '2025-02-17 04:58:53.124', 1),
('fb7a15ae-0a53-45e1-a5fd-4fc723d385af', '893352fa57c07b4dc25d6803758c7775cdcd17353143403b229f6eadcae71f82', '2025-02-17 04:58:53.966', '20250217025128_add_grupid_to_progress_perjalanan', NULL, NULL, '2025-02-17 04:58:53.709', 1);

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
  ADD KEY `Peserta_Grup_userId_fkey` (`userId`),
  ADD KEY `Peserta_Grup_usersGoogleId_fkey` (`usersGoogleId`);

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
  ADD KEY `Progress_grupid_fkey` (`grupid`),
  ADD KEY `Progress_perjalananid_fkey` (`perjalananid`);

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
  ADD KEY `Progress_perjalanan_userId_fkey` (`userId`),
  ADD KEY `Progress_perjalanan_perjalananid_fkey` (`perjalananid`),
  ADD KEY `Progress_perjalanan_usersGoogleId_fkey` (`usersGoogleId`),
  ADD KEY `Progress_perjalanan_grupid_fkey` (`grupid`);

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
  ADD UNIQUE KEY `Users_whatsapp_key` (`whatsapp`);

--
-- Indeks untuk tabel `UsersGoogle`
--
ALTER TABLE `UsersGoogle`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UsersGoogle_name_key` (`name`),
  ADD UNIQUE KEY `UsersGoogle_email_key` (`email`),
  ADD UNIQUE KEY `UsersGoogle_whatsapp_key` (`whatsapp`),
  ADD KEY `UsersGoogle_profilesProfileid_fkey` (`profilesProfileid`),
  ADD KEY `UsersGoogle_grupGrupid_fkey` (`grupGrupid`);

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
  ADD CONSTRAINT `Peserta_Grup_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Peserta_Grup_usersGoogleId_fkey` FOREIGN KEY (`usersGoogleId`) REFERENCES `UsersGoogle` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
  ADD CONSTRAINT `Progress_perjalanan_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Progress_perjalanan_usersGoogleId_fkey` FOREIGN KEY (`usersGoogleId`) REFERENCES `UsersGoogle` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `UsersGoogle`
--
ALTER TABLE `UsersGoogle`
  ADD CONSTRAINT `UsersGoogle_grupGrupid_fkey` FOREIGN KEY (`grupGrupid`) REFERENCES `Grup` (`grupid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `UsersGoogle_profilesProfileid_fkey` FOREIGN KEY (`profilesProfileid`) REFERENCES `Profiles` (`profileid`) ON DELETE SET NULL ON UPDATE CASCADE;

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
