-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 10:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `disease_info`
--

CREATE TABLE `disease_info` (
  `name` varchar(255) NOT NULL,
  `gejala` varchar(1000) NOT NULL,
  `langkah_penanganan` varchar(1000) NOT NULL,
  `obat` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disease_info`
--

INSERT INTO `disease_info` (`name`, `gejala`, `langkah_penanganan`, `obat`) VALUES
('aeromonas', '[Muncul bercak hampir di seluruh bagian tubuh dari ikan],[Bagian perut, dada, sirip, dan ekor ikan berwarna merah],[Ikan kehilangan lendir]', '[Muncul bercak hampir di seluruh bagian tubuh dari ikan],[Bagian perut, dada, sirip, dan ekor ikan berwarna merah],[Ikan kehilangan lendir]', '[Garam dapur 1.000–2.000 ppm selama 24 jam atau 10.000 ppm selama 20 menit],[Antibiotik yang tersedia di pasaran (Enrofloksasin, Oksitetrasiklin) dengan pengawasan dokter hewan],[Obat-obatan  herbal (bawang putih, daun ketapang, daun kelor, daun kirinyuh)]'),
('anchor_worms', '[Pada gejala awal biasanya ikan koi akan mengalami bagian yang terinfeksi terlihat seperti spot-spot merah sekilas sama seperti white spot pada awalnya],[Produksi lendir yang berlebihan terutama pada bagian yang terinfeksi],[Melakukan gerakan dan ekstrim dan sering melompat ke permukaan],[Gejala lanjutan sering menggesekan badan ke dinding dan dasar kolam (flashing)]', '[Pengobatan awal seperti Gunakan pinset untuk mencabut kutu (jika hanya tampak 1-2 ekor saja)],[Menggunakan insektisida diflubenzuron (1 ppm) dan Metrifonate (0,2 – 0,5 ppm)]', '[Obat antri parasit, seperti Dylox (5-10 ppm) dan Trichlorfon (0,2 – 0,5 ppm)],[Daun sirsat]'),
('costia', '[Tubuh Ikan Koi mengeluarkan banyak lendir sebagai upaya untuk melawan parasit yang menempel],[Ikan Koi mengalami sesak nafas akibat kerusakan jaringan pada insang, mengalami penurunan berat badan sehingga tubuhnya terlihat menyusut],[Terjadi pengelupasan pada kulit Ikan Koi]', '[Upaya pertama dapat dilakukan dengan karantina ikan yang baru dibeli sebelum dimasukkan ke dalam kolam utama untuk mencegah penyebaran penyakit],[memastikan untuk selalu menjaga air tetap jernih dan berkualitas dengan menguras kolam - secara rutin dan memberikan filter air pada kolam],[Pemberian vitamin untuk menjaga kesehatan sekaligus meningkatkan daya tahan tubuh]', '[merendam Ikan Koi ke dalam larutan garam dengan konsentrasi 3 gram per liter (0,3%)],[Menggunakan formalin apabila terdapat parasit yang kebal terhadap garam]'),
('dropsy', '[Perut ikan yang terkena penyakit ini akan membengkak karena tidak bisa buang kotoran],[Pada kondisi yang cukup ekstrem, pembengkakan akan menyerupai ikan buntal],[Sisik ikan mulai mengembang seperti kulit nanas]', '[Dapat dilakukan dengan melakukan karantina ikan],[Membersihkan akuarium secara menyeluruh dan mengganti air secara berkala setiap 3 hari sekali]', '[menambahkan antibiotik khusus ikan pada saat pergantian air],[menambahkan garam sekitar satu sendok per liter air ke dalam tangki akuarium karantina]'),
('fin_rot', '[Sirip ikan cupang akan mulai terlihat compang-camping dan berjumbai],[ujung sirip bisa berubah menjadi hitam atau berdarah]', '[memeriksa pH air (6,5 - 7,5) dan suhu air di akuarium (23-26 derajat celcius)],[melakukan penggantian air beberapa hari sekali]', '[menggunakan antibiotik dan garam akuarium yang dapat membantu proses pemulihan]'),
('gill_flukes', '[Ikan menggosok-gosokkan tubuhnya pada permukaan keras],[Insang pucat atau berwarna lebih gelap dari biasanya],[ikan tampak kesulitan bernapas]', '[Memisahkan ikan koi yang terserang penyakit Gill Flukes & Skin Flukes pada kolam yang berbeda],[Memastikan kolam isolasi ikan koi tersebut memiliki suhu yang stabil],[Memberikan oksigen yang cukup atau aerasi dengan pompa udara],[Turunkan porsi pakan ikan koi, karena ikan koi yang sakit nafsu makannya menjadi berkurang, jika terus dibiarkan maka kolam ikan koi akan kotor dengan banyaknya sisa makanan],[Memberikan obat yang sesuai dengan penyakit ikan koi tersebut]', '[Praziquantel : Dosis umum adalah 2 mg/L untuk perendaman selama 24 jam],[Formalin : Dosis yang umum digunakan adalah 15-25 mg/L untuk perendaman selama 30-60 menit, tergantung pada toleransi ikan terhadap formalin],[Potassium Permanganat : Dosis yang direkomendasikan adalah 2 mg/L selama 4-6 jam]'),
('gill_mites', '[Insang ikan terlihat teriritasi atau meradang],[Ikan sering berusaha menggosokkan tubuhnya ke benda di sekitarnya],[Nafas ikan menjadi cepat dan sering berada di permukaan air]', '[Menjaga kebersihan dan kualitas air dengan menggunakan filter yang efektif untuk sirkulasi],[Mengisolasi ikan yang terinfeksi]', '[Formalin: Dosis 25 mg/liter selama 24 jam],[Potassium permanganate: Dosis 2 mg/liter selama 4 jam]'),
('healthy', '', '', ''),
('hemorrhagic_septicemia', '[Ikan memiliki bercak-bercak merah pada kulit atau sirip],[Mata mungkin tampak menonjol, ikan tidak nafsu makan],[Luka terbuka atau borok pada tubuh ikan]', '[Mengisolasi ikan yang terinfeksi untuk mencegah penyebaran penyakit],[Meningkatkan kualitas air dengan pergantian air yang teratur dan pemeliharaan filter yang baik],[Menjaga kebersihan kolam atau akuarium dengan baik. Bersihkan sisa makanan dan kotoran secara rutin]', '[Antibiotik],[Oxytetracycline : Dosis 50-75 mg/L dalam air perendaman selama 1 jam setiap hari selama 10-14 hari],[Sulfamerazine : 50 mg/kg berat badan ikan per hari selama 5-10 hari],[Penggunaan garam ikan (Aquarium salt) pada dosis 1-2 gram/liter]'),
('mouth_rot', '[Mulut ikan terlihat rusak atau luka terbuka],[Serpihan keputihan pada mulut, yang kadang-kadang tampak seperti kapas]', '[Mengisolasi ikan yang terinfeksi],[Meningkatkan kualitas air dan menjaga suhu air agar tetap stabil]', '[Antibiotik],[Oksitetrasiklin: Dosis umum adalah 50 mg/L dalam air perendaman selama 1 jam setiap hari selama 10-14 hari],[Kanamisin: Dapat digunakan dengan dosis 100 mg/L dalam air perendaman selama 1 jam setiap hari selama 10-14 hari],[Penggunaan antiseptik seperti Methylene blue untuk desinfeksi luka]'),
('tail_rot', '[Sirip atau ekor terkikis atau berlubang],[Sirip tampak merah atau putih di tepiannya]', '[Mulailah dengan memindahkan ikan yang terjangkit busuk sirip ke akuarium lain berisi air bersih bebas klorin],[Anda harus mengosongkan air akuarium di wastafel. Jangan lupa mengeluarkan semua aksesori dan kerikil dari dalam akuarium],[Setelah mencuci akuarium secara menyeluruh dan mengeringkannya, Anda bisa mengatur kembali kerikil dan aksesori lain di dalam akuarium. Jika akuarium belum melalui proses cycling, lakukan penggantian air 100% menggunakan air yang sudah ditambahkan kondisioner air dan bebas klorin. Pastikan suhu air berkisar antara 26-27 °C],[Sebelum memasukkan ikan kembali ke akuarium, Anda harus menggunakan kit uji pH untuk memastikan kualitas air aman untuk ikan. pH harus berada di kisaran 7-8, sementara kadar amonia, nitrit dan nitrat tidak boleh melebihi 40 ppm]', '[Antibiotik seperti Tetracycline atau Erythromycin],[Penggunaan garam ikan (Aquarium salt) pada dosis 1-2 gram/liter]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disease_info`
--
ALTER TABLE `disease_info`
  ADD PRIMARY KEY (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
