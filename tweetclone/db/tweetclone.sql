-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 01:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tweetclone`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-06-14-055345', 'App\\Database\\Migrations\\Createusers', 'default', 'App', 1686722916, 1),
(2, '2023-06-14-061023', 'App\\Database\\Migrations\\Createtweets', 'default', 'App', 1686723176, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` int(9) NOT NULL,
  `user_id` int(5) NOT NULL,
  `content` text NOT NULL,
  `category` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `content`, `category`, `created_at`) VALUES
(1, 6, 'mengendalikan Analytical Engine. Program komputer pertama ditulis untuk Analytical Engine oleh matematikawan Ada Lovelace untuk menghitung urutan Bilangan Bernoulli. Sintesis perhitungan numerik, operasi dan keluaran telah', 'umum', '2022-06-24 17:00:00'),
(2, 10, 'percobaan awal dengan kertas pita, ia menetap di kartu menekan ... Untuk memproses kartu menekan ini, pertama kali dikenal sebagai \'kartu Hollerith\' dia menciptakan tabulator, dan', 'teknologi', '2022-11-17 17:00:00'),
(3, 10, 'beberapa program, seperti di mana tingkat rendah kendali perangkat keras diperlukan atau di mana kecepatan pemrosesan maksimum itu penting. Sepanjang separuh kedua abad ke-20, pemrograman adalah', 'umum', '2022-12-13 17:00:00'),
(4, 7, 'dan mesin keypunch. Ketiga penemuannya dasar dari industri pengolahan informasi modern. Pada tahun 1896 ia mendirikan Tabulating Machine Company (yang kemudian menjadi inti dari IBM). Penambahan', 'pendidikan', '2022-10-13 17:00:00'),
(5, 6, 'kuat di pusat data perusahaan, sering pada mainframe besar, FORTRAN dalam aplikasi teknik, bahasa scripting dalam pengembangan web, dan C di aplikasi terbenam), sementara beberapa bahasa', 'umum', '2023-04-05 17:00:00'),
(6, 7, 'bahasa scripting dalam pengembangan web, dan C di aplikasi terbenam), sementara beberapa bahasa teratur digunakan untuk menulis berbagai macam aplikasi. Metode untuk mengukur popularitas bahasa pemrograman', 'pendidikan', '2022-08-29 17:00:00'),
(7, 9, 'menggunakan persneling dari berbagai ukuran dan konfigurasi untuk menentukan operasi, yang dilacak siklus Metonik masih digunakan di bulan ke surya kalender, dan yang konsisten untuk menghitung', 'teknologi', '2023-03-23 17:00:00'),
(8, 8, 'abad ke-20, pemrograman adalah karier yang menarik di sebagian besar negara maju. Beberapa bentuk pemrograman telah semakin tunduk pada outsourcing atau urun daya (impor perangkat lunak', 'teknologi', '2022-08-05 17:00:00'),
(9, 4, 'tingkat tinggi adalah, dalam istilah yang sangat umum,. bahasa pemrograman yang memungkinkan pemrogram untuk menulis program dalam istilah yang lebih abstrak dari instruksi bahasa assembly, yaitu', 'umum', '2022-10-19 17:00:00'),
(10, 5, 'di bidang kekuatan prosesor. Ini telah membawa bahasa pemrograman baru yang lebih disarikan dari perangkat keras. Meskipun bahasa tingkat tinggi biasanya dikenakan biaya overhead yang lebih', 'umum', '2022-09-07 17:00:00'),
(11, 3, 'atau urun daya (impor perangkat lunak dan jasa dari negara lain, biasanya dengan upah rendah), membuat keputusan karier pemrograman di negara maju lebih rumit, sementara meningkatkan', 'umum', '2022-04-27 17:00:00'),
(12, 3, 'dan terminal komputer menjadi cukup murah bahwa program dapat dibuat dengan mengetikkan langsung ke dalam komputer. Penyunting teks tersebut dikembangkan yang memungkinkan perubahan dan perbaikan harus', 'hiburan', '2023-02-24 17:00:00'),
(13, 3, 'hamil dan menghasilkan, menyebabkan perkembangan modern pemrograman komputer. Pengembangan pemrograman komputer dipercepat melalui Revolusi Industri. Pada akhir 1880-an, Herman Hollerith menemukan rekaman data pada media yang', 'pendidikan', '2022-11-21 17:00:00'),
(14, 5, 'informasi modern. Pada tahun 1896 ia mendirikan Tabulating Machine Company (yang kemudian menjadi inti dari IBM). Penambahan panel kendali (plugboard) ke 1906 Tipe I Tabulator memungkinkannya', 'pendidikan', '2022-04-15 17:00:00'),
(15, 10, 'ke dalam bahasa mesin. Bahkan, nama FORTRAN adalah singkatan dari Formula Translation. Banyak bahasa lainnya dikembangkan, termasuk beberapa program untuk komersial, seperti COBOL. Program itu sebagian', 'pemrograman', '2023-03-29 17:00:00'),
(16, 1, 'lowongan pekerjaan yang menyebutkan bahasa [10], jumlah buku-buku pengajaran bahasa yang dijual (overestimates ini pentingnya bahasa baru), dan perkiraan jumlah baris yang ada kode yang ditulis', 'hiburan', '2022-09-09 17:00:00'),
(17, 6, 'JUMLAH). Memasuki sebuah program dalam bahasa assembly biasanya lebih nyaman, lebih cepat, dan kurang rentan terhadap kesalahan manusia daripada menggunakan bahasa mesin, tetapi karena bahasa assembly', 'pendidikan', '2022-10-11 17:00:00'),
(18, 1, 'besar, FORTRAN dalam aplikasi teknik, bahasa scripting dalam pengembangan web, dan C di aplikasi terbenam), sementara beberapa bahasa teratur digunakan untuk menulis berbagai macam aplikasi. Metode', 'pemrograman', '2023-03-09 17:00:00'),
(19, 10, 'fungsional, dibandingkan dengan hanya rancangan di atas kertas (Sebuah bahasa tingkat tinggi adalah, dalam istilah yang sangat umum,. bahasa pemrograman yang memungkinkan pemrogram untuk menulis program', 'teknologi', '2022-08-21 17:00:00'),
(20, 5, 'untuk melakukan tugas yang sama. Kemudian, perakitan bahasa tersebut dikembangkan yang memungkinkan pemrogram menentukan setiap instruksi dalam format teks, singkatan memasukkan kode untuk setiap operasi, bukan', 'umum', '2022-06-25 17:00:00'),
(21, 7, 'biaya overhead yang lebih besar, peningkatan kecepatan komputer modern telah membuat penggunaan bahasa ini jauh lebih praktis daripada pada masa lalu. Bahasa ini semakin disarikan biasanya', 'pendidikan', '2022-04-17 17:00:00'),
(22, 6, 'memungkinkan program komputer untuk disimpan dalam memori komputer. Program awal harus susah payah dibuat dengan menggunakan instruksi (operasi dasar) dari mesin tertentu, sering kali dalam notasi', 'pendidikan', '2022-12-28 17:00:00'),
(23, 8, 'X + 9). Program teks, atau sumber, diubah menjadi instruksi mesin menggunakan program khusus yang disebut kompilator, yang diterjemahkan program FORTRAN ke dalam bahasa mesin. Bahkan,', 'teknologi', '2023-02-09 17:00:00'),
(24, 1, 'susah payah dibuat dengan menggunakan instruksi (operasi dasar) dari mesin tertentu, sering kali dalam notasi biner. Setiap model komputer mungkin akan menggunakan instruksi yang berbeda (bahasa', 'pendidikan', '2022-09-06 17:00:00'),
(25, 3, 'besar negara maju. Beberapa bentuk pemrograman telah semakin tunduk pada outsourcing atau urun daya (impor perangkat lunak dan jasa dari negara lain, biasanya dengan upah rendah),', 'hiburan', '2023-02-02 17:00:00'),
(26, 4, 'kode sumber. Namun, bahasa tingkat tinggi masih praktis untuk beberapa program, seperti di mana tingkat rendah kendali perangkat keras diperlukan atau di mana kecepatan pemrosesan maksimum', 'umum', '2022-08-07 17:00:00'),
(27, 7, 'sumber. Namun, bahasa tingkat tinggi masih praktis untuk beberapa program, seperti di mana tingkat rendah kendali perangkat keras diperlukan atau di mana kecepatan pemrosesan maksimum itu', 'pendidikan', '2022-11-20 17:00:00'),
(28, 5, 'Translation. Banyak bahasa lainnya dikembangkan, termasuk beberapa program untuk komersial, seperti COBOL. Program itu sebagian besar masih masuk menggunakan punched card atau pita kertas. (Lihat pemrograman', 'teknologi', '2023-01-20 17:00:00'),
(29, 1, 'kedua abad ke-20, pemrograman adalah karier yang menarik di sebagian besar negara maju. Beberapa bentuk pemrograman telah semakin tunduk pada outsourcing atau urun daya (impor perangkat', 'umum', '2022-12-25 17:00:00'),
(30, 6, 'biasanya lebih mudah untuk belajar dan memungkinkan pemrogram untuk mengembangkan aplikasi jauh lebih efisien dan dengan sedikit kode sumber. Namun, bahasa tingkat tinggi masih praktis untuk', 'teknologi', '2022-10-14 17:00:00'),
(31, 8, 'mudah untuk belajar dan memungkinkan pemrogram untuk mengembangkan aplikasi jauh lebih efisien dan dengan sedikit kode sumber. Namun, bahasa tingkat tinggi masih praktis untuk beberapa program,', 'hiburan', '2022-06-17 17:00:00'),
(32, 5, 'kesalahan manusia daripada menggunakan bahasa mesin, tetapi karena bahasa assembly adalah sedikit lebih dari satu notasi yang berbeda untuk bahasa mesin, setiap dua mesin dengan instruksi', 'pemrograman', '2022-10-15 17:00:00'),
(33, 1, 'Joseph Marie Jacquard yang dikembangkan pada tahun 1801, menggunakan serangkaian karton kartu dengan menekan lubang di dalamnya. Pola lubang pola yang mewakili alat tenun harus mengikuti', 'teknologi', '2023-05-31 17:00:00'),
(34, 6, 'dan yang baru menekan untuk menggantikannya.) Ketika waktu telah berkembang, komputer telah membuat lompatan raksasa di bidang kekuatan prosesor. Ini telah membawa bahasa pemrograman baru yang', 'umum', '2022-05-28 17:00:00'),
(35, 10, 'keras diperlukan atau di mana kecepatan pemrosesan maksimum itu penting. Sepanjang separuh kedua abad ke-20, pemrograman adalah karier yang menarik di sebagian besar negara maju. Beberapa', 'pemrograman', '2022-04-07 17:00:00'),
(36, 4, 'dan jasa dari negara lain, biasanya dengan upah rendah), membuat keputusan karier pemrograman di negara maju lebih rumit, sementara meningkatkan peluang ekonomi di daerah kurang berkembang.', 'teknologi', '2022-09-26 17:00:00'),
(37, 2, 'Pengembangan pemrograman komputer dipercepat melalui Revolusi Industri. Pada akhir 1880-an, Herman Hollerith menemukan rekaman data pada media yang kemudian dapat dibaca oleh mesin. Sebelum menggunakan mesin', 'teknologi', '2022-05-02 17:00:00'),
(38, 9, 'dengan upah rendah), membuat keputusan karier pemrograman di negara maju lebih rumit, sementara meningkatkan peluang ekonomi di daerah kurang berkembang. Tidak jelas seberapa jauh kecenderungan ini', 'pendidikan', '2023-05-16 17:00:00'),
(39, 10, 'sedikit kode sumber. Namun, bahasa tingkat tinggi masih praktis untuk beberapa program, seperti di mana tingkat rendah kendali perangkat keras diperlukan atau di mana kecepatan pemrosesan', 'teknologi', '2022-11-29 17:00:00'),
(40, 4, 'disarikan dari perangkat keras. Meskipun bahasa tingkat tinggi biasanya dikenakan biaya overhead yang lebih besar, peningkatan kecepatan komputer modern telah membuat penggunaan bahasa ini jauh lebih', 'umum', '2023-03-19 17:00:00'),
(41, 1, 'pada gilirannya dioperasikan instrumen perkusi. Keluaran dari perangkat ini adalah drumer kecil bermain berbagai ritme dan pola drum. The Jacquard Loom, Joseph Marie Jacquard yang dikembangkan', 'umum', '2023-01-18 17:00:00'),
(42, 10, 'biasanya lebih mudah untuk belajar dan memungkinkan pemrogram untuk mengembangkan aplikasi jauh lebih efisien dan dengan sedikit kode sumber. Namun, bahasa tingkat tinggi masih praktis untuk', 'pemrograman', '2022-12-24 17:00:00'),
(43, 10, 'nyaman, lebih cepat, dan kurang rentan terhadap kesalahan manusia daripada menggunakan bahasa mesin, tetapi karena bahasa assembly adalah sedikit lebih dari satu notasi yang berbeda untuk', 'pendidikan', '2022-07-09 17:00:00'),
(44, 3, 'memungkinkannya untuk melakukan pekerjaan yang berbeda tanpa harus secara fisik dibangun kembali. Pada akhir 1940-an, ada berbagai mesin panel kendali diprogram, disebut catatan unit peralatan, untuk', 'pemrograman', '2023-05-24 17:00:00'),
(45, 10, 'lebih dari satu notasi yang berbeda untuk bahasa mesin, setiap dua mesin dengan instruksi yang berbeda set juga memiliki perakitan yang berbeda bahasa. Pada tahun 1954,', 'pemrograman', '2022-09-19 17:00:00'),
(46, 4, 'bisa menghasilkan tenun yang sama sekali berbeda dengan menggunakan kumpulan kartu yang berbeda. Charles Babbage mengadopsi penggunaan kartu menekan sekitar tahun 1830 untuk mengendalikan Analytical Engine.', 'umum', '2022-12-01 17:00:00'),
(47, 3, 'tingkat abstraksi lebih tinggi daripada bahasa assembly. Ini memungkinkan pemrogram untuk menentukan perhitungan dengan memasukkan formula secara langsung misalnya Y = X * 2 + 5', 'hiburan', '2022-09-10 17:00:00'),
(48, 1, 'mengadopsi penggunaan kartu menekan sekitar tahun 1830 untuk mengendalikan Analytical Engine. Program komputer pertama ditulis untuk Analytical Engine oleh matematikawan Ada Lovelace untuk menghitung urutan Bilangan', 'pendidikan', '2022-05-19 17:00:00'),
(49, 7, 'daerah kurang berkembang. Tidak jelas seberapa jauh kecenderungan ini akan berlanjut dan seberapa dalam dampak akan pemrogram upah dan kesempatan. Sangat sulit untuk menentukan apa yang', 'pemrograman', '2023-05-07 17:00:00'),
(50, 7, 'Yunani kuno adalah kalkulator menggunakan persneling dari berbagai ukuran dan konfigurasi untuk menentukan operasi, yang dilacak siklus Metonik masih digunakan di bulan ke surya kalender, dan', 'umum', '2022-07-06 17:00:00'),
(51, 7, '* X + 9). Program teks, atau sumber, diubah menjadi instruksi mesin menggunakan program khusus yang disebut kompilator, yang diterjemahkan program FORTRAN ke dalam bahasa mesin.', 'pemrograman', '2022-06-08 17:00:00'),
(52, 5, 'berlanjut dan seberapa dalam dampak akan pemrogram upah dan kesempatan. Sangat sulit untuk menentukan apa yang paling populer bahasa pemrograman modern. Beberapa bahasa yang sangat populer', 'pendidikan', '2022-10-11 17:00:00'),
(53, 7, 'mesin tertentu, sering kali dalam notasi biner. Setiap model komputer mungkin akan menggunakan instruksi yang berbeda (bahasa mesin) untuk melakukan tugas yang sama. Kemudian, perakitan bahasa', 'hiburan', '2022-06-04 17:00:00'),
(54, 8, 'masa lalu. Bahasa ini semakin disarikan biasanya lebih mudah untuk belajar dan memungkinkan pemrogram untuk mengembangkan aplikasi jauh lebih efisien dan dengan sedikit kode sumber. Namun,', 'hiburan', '2022-07-29 17:00:00'),
(55, 9, 'dari \'Formula Translation\'. Banyak bahasa lainnya dikembangkan, termasuk beberapa program untuk komersial, seperti COBOL. Program itu sebagian besar masih masuk menggunakan punched card atau pita kertas.', 'pendidikan', '2022-07-21 17:00:00'),
(56, 1, 'persneling dari berbagai ukuran dan konfigurasi untuk menentukan operasi, yang dilacak siklus Metonik masih digunakan di bulan ke surya kalender, dan yang konsisten untuk menghitung tanggal', 'hiburan', '2023-02-20 17:00:00'),
(57, 3, 'menemukan rekaman data pada media yang kemudian dapat dibaca oleh mesin. Sebelum menggunakan mesin dibaca dari media, di atas, telah untuk kendali, bukan data. Setelah beberapa', 'pemrograman', '2023-01-23 17:00:00'),
(58, 10, 'dalam komputer. Penyunting teks tersebut dikembangkan yang memungkinkan perubahan dan perbaikan harus dilakukan jauh lebih mudah dibandingkan dengan kartu berlubang. (Biasanya, kesalahan dalam meninju kartu berarti', 'pendidikan', '2022-11-24 17:00:00'),
(59, 7, 'pemrograman di negara maju lebih rumit, sementara meningkatkan peluang ekonomi di daerah kurang berkembang. Tidak jelas seberapa jauh kecenderungan ini akan berlanjut dan seberapa dalam dampak', 'teknologi', '2022-10-19 17:00:00'),
(60, 9, 'tuas yang pada gilirannya dioperasikan instrumen perkusi. Keluaran dari perangkat ini adalah drumer kecil bermain berbagai ritme dan pola drum. The Jacquard Loom, Joseph Marie Jacquard', 'pemrograman', '2022-12-15 17:00:00'),
(61, 6, 'X * 2 + 5 * X + 9). Program teks, atau sumber, diubah menjadi instruksi mesin menggunakan program khusus yang disebut kompilator, yang diterjemahkan program', 'umum', '2022-11-20 17:00:00'),
(62, 7, 'dalam bahasa mesin. Bahkan, nama FORTRAN adalah singkatan dari Formula Translation\'. Banyak bahasa lainnya dikembangkan, termasuk beberapa program untuk komersial, seperti COBOL. Program itu sebagian besar', 'pemrograman', '2022-09-07 17:00:00'),
(63, 1, 'dioperasikan instrumen perkusi. Keluaran dari perangkat ini adalah drumer kecil bermain berbagai ritme dan pola drum. The Jacquard Loom, Joseph Marie Jacquard yang dikembangkan pada tahun', 'pemrograman', '2023-03-02 17:00:00'),
(64, 1, 'tahun 1896 ia mendirikan Tabulating Machine Company (yang kemudian menjadi inti dari IBM). Penambahan panel kendali (plugboard) ke 1906 Tipe I Tabulator memungkinkannya untuk melakukan pekerjaan', 'umum', '2022-08-04 17:00:00'),
(65, 1, 'operasi, yang dilacak siklus Metonik masih digunakan di bulan ke surya kalender, dan yang konsisten untuk menghitung tanggal olimpiade. Al-Jazari dibangun Automata diprogram pada tahun 1206.', 'umum', '2023-01-03 17:00:00'),
(66, 2, 'scripting dalam pengembangan web, dan C di aplikasi terbenam), sementara beberapa bahasa teratur digunakan untuk menulis berbagai macam aplikasi. Metode untuk mengukur popularitas bahasa pemrograman meliputi:', 'pendidikan', '2022-06-17 17:00:00'),
(67, 8, 'pertama kali dikenal sebagai kartu Hollerith dia menciptakan tabulator, dan mesin keypunch. Ketiga penemuannya dasar dari industri pengolahan informasi modern. Pada tahun 1896 ia mendirikan Tabulating', 'pemrograman', '2023-02-28 17:00:00'),
(68, 10, 'JUMLAH). Memasuki sebuah program dalam bahasa assembly biasanya lebih nyaman, lebih cepat, dan kurang rentan terhadap kesalahan manusia daripada menggunakan bahasa mesin, tetapi karena bahasa assembly', 'hiburan', '2022-07-04 17:00:00'),
(69, 4, 'bahasa pemrograman meliputi: menghitung jumlah iklan lowongan pekerjaan yang menyebutkan bahasa [10], jumlah buku-buku pengajaran bahasa yang dijual (overestimates ini pentingnya bahasa baru), dan perkiraan jumlah', 'pemrograman', '2022-07-24 17:00:00'),
(70, 8, 'yang berbeda tanpa harus secara fisik dibangun kembali. Pada akhir 1940-an, ada berbagai mesin panel kendali diprogram, disebut catatan unit peralatan, untuk melakukan pengolahan data tugas.', 'umum', '2022-12-25 17:00:00'),
(71, 7, '2 + 5 * X + 9). Program teks, atau sumber, diubah menjadi instruksi mesin menggunakan program khusus yang disebut kompilator, yang diterjemahkan program FORTRAN ke', 'teknologi', '2023-03-03 17:00:00'),
(72, 4, 'dan seberapa dalam dampak akan pemrogram upah dan kesempatan. Sangat sulit untuk menentukan apa yang paling populer bahasa pemrograman modern. Beberapa bahasa yang sangat populer untuk', 'umum', '2022-12-27 17:00:00'),
(73, 6, 'lebih praktis daripada pada masa lalu. Bahasa ini semakin disarikan biasanya lebih mudah untuk belajar dan memungkinkan pemrogram untuk mengembangkan aplikasi jauh lebih efisien dan dengan', 'teknologi', '2022-09-21 17:00:00'),
(74, 9, 'upah rendah), membuat keputusan karier pemrograman di negara maju lebih rumit, sementara meningkatkan peluang ekonomi di daerah kurang berkembang. Tidak jelas seberapa jauh kecenderungan ini akan', 'teknologi', '2022-04-30 17:00:00'),
(75, 5, 'Ketiga penemuannya dasar dari industri pengolahan informasi modern. Pada tahun 1896 ia mendirikan Tabulating Machine Company (yang kemudian menjadi inti dari IBM). Penambahan panel kendali (plugboard)', 'pemrograman', '2023-02-28 17:00:00'),
(76, 1, 'secara fisik dibangun kembali. Pada akhir 1940-an, ada berbagai mesin panel kendali diprogram, disebut catatan unit peralatan, untuk melakukan pengolahan data tugas. Data dan instruksi dapat', 'umum', '2022-04-05 17:00:00'),
(77, 6, 'mengukur popularitas bahasa pemrograman meliputi: menghitung jumlah iklan lowongan pekerjaan yang menyebutkan bahasa [10], jumlah buku-buku pengajaran bahasa yang dijual (overestimates ini pentingnya bahasa baru), dan', 'pendidikan', '2022-11-01 17:00:00'),
(78, 2, 'termasuk beberapa program untuk komersial, seperti COBOL. Program itu sebagian besar masih masuk menggunakan punched card atau pita kertas. (Lihat pemrograman komputer pada era punch card).', 'teknologi', '2023-01-02 17:00:00'),
(79, 3, 'mesin tertentu, sering kali dalam notasi biner. Setiap model komputer mungkin akan menggunakan instruksi yang berbeda (bahasa mesin) untuk melakukan tugas yang sama. Kemudian, perakitan bahasa', 'umum', '2023-02-19 17:00:00'),
(80, 5, 'secara fisik dibangun kembali. Pada akhir 1940-an, ada berbagai mesin panel kendali diprogram, disebut catatan unit peralatan, untuk melakukan pengolahan data tugas. Data dan instruksi dapat', 'pemrograman', '2022-08-18 17:00:00'),
(81, 8, 'meningkatkan peluang ekonomi di daerah kurang berkembang. Tidak jelas seberapa jauh kecenderungan ini akan berlanjut dan seberapa dalam dampak akan pemrogram upah dan kesempatan. Sangat sulit', 'pendidikan', '2022-12-23 17:00:00'),
(82, 8, 'yang dikembangkan pada tahun 1801, menggunakan serangkaian karton kartu dengan menekan lubang di dalamnya. Pola lubang pola yang mewakili alat tenun harus mengikuti menenun kain. Alat', 'umum', '2023-01-09 17:00:00'),
(83, 10, 'jumlah buku-buku pengajaran bahasa yang dijual (overestimates ini pentingnya bahasa baru), dan perkiraan jumlah baris yang ada kode yang ditulis dalam bahasa (meremehkan ini jumlah pengguna', 'pemrograman', '2022-08-16 17:00:00'),
(84, 6, '= X * 2 + 5 * X + 9). Program teks, atau sumber, diubah menjadi instruksi mesin menggunakan program khusus yang disebut kompilator, yang diterjemahkan', 'pemrograman', '2022-10-13 17:00:00'),
(85, 2, 'jauh lebih praktis daripada pada masa lalu. Bahasa ini semakin disarikan biasanya lebih mudah untuk belajar dan memungkinkan pemrogram untuk mengembangkan aplikasi jauh lebih efisien dan', 'hiburan', '2022-05-21 17:00:00'),
(86, 5, 'Hollerith menemukan rekaman data pada media yang kemudian dapat dibaca oleh mesin. Sebelum menggunakan mesin dibaca dari media, di atas, telah untuk kendali, bukan data. Setelah', 'hiburan', '2022-12-03 17:00:00'),
(87, 4, 'dampak akan pemrogram upah dan kesempatan. Sangat sulit untuk menentukan apa yang paling populer bahasa pemrograman modern. Beberapa bahasa yang sangat populer untuk jenis aplikasi tertentu', 'umum', '2023-05-22 17:00:00'),
(88, 3, 'alat tenun harus mengikuti menenun kain. Alat tenun bisa menghasilkan tenun yang sama sekali berbeda dengan menggunakan kumpulan kartu yang berbeda. Charles Babbage mengadopsi penggunaan kartu', 'hiburan', '2023-04-01 17:00:00'),
(89, 6, 'menciptakan tabulator, dan mesin keypunch. Ketiga penemuannya dasar dari industri pengolahan informasi modern. Pada tahun 1896 ia mendirikan Tabulating Machine Company (yang kemudian menjadi inti dari', 'umum', '2022-11-28 17:00:00'),
(90, 4, 'sangat populer untuk jenis aplikasi tertentu (misalnya, COBOL masih kuat di pusat data perusahaan, sering pada mainframe besar, FORTRAN dalam aplikasi teknik, bahasa scripting dalam pengembangan', 'pemrograman', '2023-02-12 17:00:00'),
(91, 3, 'Engine. Program komputer pertama ditulis untuk Analytical Engine oleh matematikawan Ada Lovelace untuk menghitung urutan Bilangan Bernoulli. Sintesis perhitungan numerik, operasi dan keluaran telah ditentukan, bersama', 'teknologi', '2022-07-26 17:00:00'),
(92, 9, 'bagi manusia untuk hamil dan menghasilkan, menyebabkan perkembangan modern pemrograman komputer. Pengembangan pemrograman komputer dipercepat melalui Revolusi Industri. Pada akhir 1880-an, Herman Hollerith menemukan rekaman data', 'umum', '2022-07-23 17:00:00'),
(93, 2, 'dikembangkan, termasuk beberapa program untuk komersial, seperti COBOL. Program itu sebagian besar masih masuk menggunakan punched card atau pita kertas. (Lihat pemrograman komputer pada era punch', 'pendidikan', '2023-05-19 17:00:00'),
(94, 4, 'bahasa tingkat tinggi biasanya dikenakan biaya overhead yang lebih besar, peningkatan kecepatan komputer modern telah membuat penggunaan bahasa ini jauh lebih praktis daripada pada masa lalu.', 'hiburan', '2023-01-25 17:00:00'),
(95, 6, 'untuk melakukan pengolahan data tugas. Data dan instruksi dapat disimpan pada external punched card, yang disimpan dalam rangka dan disusun dalam deck. Penemuan arsitektur von Neumann', 'teknologi', '2022-11-30 17:00:00'),
(96, 6, 'tetapi karena bahasa assembly adalah sedikit lebih dari satu notasi yang berbeda untuk bahasa mesin, setiap dua mesin dengan instruksi yang berbeda set juga memiliki perakitan', 'pendidikan', '2022-07-24 17:00:00'),
(97, 2, 'bahasa tingkat tinggi biasanya dikenakan biaya overhead yang lebih besar, peningkatan kecepatan komputer modern telah membuat penggunaan bahasa ini jauh lebih praktis daripada pada masa lalu.', 'teknologi', '2023-04-28 17:00:00'),
(98, 1, 'bahasa mesin, tetapi karena bahasa assembly adalah sedikit lebih dari satu notasi yang berbeda untuk bahasa mesin, setiap dua mesin dengan instruksi yang berbeda set juga', 'teknologi', '2022-07-30 17:00:00'),
(99, 2, 'Penyunting teks tersebut dikembangkan yang memungkinkan perubahan dan perbaikan harus dilakukan jauh lebih mudah dibandingkan dengan kartu berlubang. (Biasanya, kesalahan dalam meninju kartu berarti bahwa kartu', 'hiburan', '2023-01-06 17:00:00'),
(100, 4, 'dan jasa dari negara lain, biasanya dengan upah rendah), membuat keputusan karier pemrograman di negara maju lebih rumit, sementara meningkatkan peluang ekonomi di daerah kurang berkembang.', 'hiburan', '2022-08-22 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(9) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`) VALUES
(1, 'cakjas', '$2y$10$eHSJ58A9HrKFUUJwInhes.Oc/6lBwMrKsl5EZW.bAKFhyfv657I0S', 'Cakrawala Jasmani Maryadi S.E.'),
(2, 'karmana', '$2y$10$1jmSGQY8/77no.tzyDmsMOCscWgFlFN28R1/69UhhShT9zoVGlW0m', 'Karma Najmudin'),
(3, 'opbanget', '$2y$10$52S1Bp.12zFFUfO/dEBN9OLnRX9ixMyjB33Xg9sdddyI6/.Ode/0.', 'Ophelia Ana Zulaika S.Kom'),
(4, 'gabbyva', '$2y$10$HBz3B0Z9R6eQmhW2.R5Gde4huB0.Po9xdKZ0dS4NLacxzo/9.EJO6', 'Gabriella Vanesa Melani M.M.'),
(5, 'samhab', '$2y$10$6DvEngqRlarXUsq1uWC2J.wgCt5YsR.AbiYKPImzUiV0YiY5Y88.q', 'Samsul Habibi'),
(6, 'betindah', '$2y$10$gTfL/uTF59Hi7AWRiDlTX.86foK7xxXmR6W.jc57s.4T7fJIJUM1O', 'Betania Indah Rahimah S.E.'),
(7, 'indragun', '$2y$10$9F99RYWwFn0Ofa2cSteAdO8TFbecKJcNkC5CZzvflwynT2wWvUXPe', 'Indra Gunarto S.Farm'),
(8, 'ratnashak', '$2y$10$Kw2JQEmFxTILGD/9I046BeUSBY91VHbUdcAGun3jQ0hhczDkWdKta', 'Ratna Shakila Utami S.Farm'),
(9, 'gadangsuw', '$2y$10$QA.BWAFrstsCUKsnAQojqeNzYUBfLs146FypxTW0H2ViCS.ybjfTu', 'Gadang Suwarno'),
(10, 'olihas', '$2y$10$8fPBTjpNkgdX8l9YSSnGG.C4RYLkpqGizrE7JPxPhGAeOOvUO5lv6', 'Oliva Hasna Suartini S.E.I'),
(12, 'nsyfz', '$2y$10$X19JmJKrtEWYpyLKUYDBpegv4uTBFkyBH/7WgrY8hnUr3BSHBbkyi', 'nasya fauziah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
