-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2026 at 07:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinica`
--

-- --------------------------------------------------------

--
-- Table structure for table `Consulta`
--

CREATE TABLE `consulta` (
  `id_consulta` int(11) NOT NULL,
  `data_consulta` date NOT NULL,
  `hora_consulta` time NOT NULL,
  `estado` enum('agendada','realizada','cancelada') DEFAULT 'agendada',
  `diagnostico` text DEFAULT NULL,
  `prescricao` text DEFAULT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Consulta`
--

INSERT INTO `Consulta` (`id_consulta`, `data_consulta`, `hora_consulta`, `estado`, `diagnostico`, `prescricao`, `id_paciente`, `id_medico`) VALUES
(1, '2025-01-10', '09:00:00', 'realizada', 'Gripe', 'Repouso e Paracetamol', 1, 1),
(2, '2025-01-11', '10:30:00', 'realizada', 'Amigdalite', 'Antibiótico', 2, 2),
(3, '2025-01-12', '11:00:00', 'realizada', 'Hipertensão', 'Dieta e medicação', 3, 3),
(4, '2025-01-13', '14:00:00', 'realizada', 'Dermatite', 'Creme hidratante', 4, 4),
(5, '2025-01-14', '15:30:00', 'realizada', 'Entorse', 'Gelo e repouso', 5, 5),
(6, '2025-01-15', '09:30:00', 'realizada', 'Check-up', 'Nada a assinalar', 6, 6),
(7, '2025-01-16', '10:00:00', 'realizada', 'Conjuntivite', 'Colírio', 7, 7),
(8, '2025-01-17', '11:30:00', 'realizada', 'Enxaqueca', 'Analgésico', 8, 8),
(9, '2025-01-18', '12:00:00', 'realizada', 'Ansiedade', 'Terapia e medicação', 9, 9),
(10, '2025-01-19', '13:30:00', 'realizada', 'Tireoide', 'Análises', 10, 10),
(11, '2025-01-20', '14:30:00', 'realizada', 'Gastrite', 'Omeprazol', 11, 11),
(12, '2025-01-21', '15:00:00', 'realizada', 'Bronquite', 'Xarope', 12, 12),
(13, '2025-01-22', '16:00:00', 'realizada', 'Infeção urinária', 'Antibiótico', 13, 13),
(14, '2025-01-23', '09:00:00', 'realizada', 'Otite', 'Gotas', 14, 14),
(15, '2025-01-24', '10:30:00', 'realizada', 'Artrite', 'Anti-inflamatório', 15, 15),
(16, '2025-01-25', '11:00:00', 'realizada', 'Anemia', 'Ferro', 16, 16),
(17, '2025-01-26', '12:00:00', 'realizada', 'Cálculo renal', 'Cirurgia', 17, 17),
(18, '2025-01-27', '13:00:00', 'realizada', 'Dermatite', 'Creme', 18, 18),
(19, '2025-02-01', '09:30:00', 'realizada', 'Consulta de rotina - tudo normal', 'Sem prescrição', 19, 19),
(22, '2025-03-01', '10:00:00', 'agendada', NULL, NULL, 9999, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Consulta`
--
ALTER TABLE `Consulta`
  ADD PRIMARY KEY (`id_consulta`),
  ADD UNIQUE KEY `uq_medico_data_hora` (`id_medico`,`data_consulta`,`hora_consulta`),
  ADD KEY `fk_consulta_paciente` (`id_paciente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Consulta`
--
ALTER TABLE `Consulta`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Consulta`
--
ALTER TABLE `Consulta`
  ADD CONSTRAINT `fk_consulta_medico` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_consulta_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
