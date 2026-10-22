-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2026 at 07:56 PM
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
-- Database: `clinica_vet`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `especie` varchar(40) NOT NULL,
  `raca` varchar(60) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `data_nascimento` date NOT NULL,
  `peso_kg` decimal(8,2) NOT NULL,
  `microchip` varchar(15) DEFAULT NULL,
  `id_dono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id_animal`, `nome`, `especie`, `raca`, `sexo`, `data_nascimento`, `peso_kg`, `microchip`, `id_dono`) VALUES
(1, 'Max', 'Cão', 'Labrador Retriever', 'Macho', '2020-05-14', 31.40, '620098100000001', 1),
(2, 'Luna', 'Gato', 'Europeu Comum', 'Fêmea', '2021-08-22', 4.20, '620098100000002', 2),
(3, 'Tejo', 'Cão', 'Cão de Água Português', 'Macho', '2019-11-03', 23.80, '620098100000003', 3),
(4, 'Mia', 'Gato', 'Persa', 'Fêmea', '2022-02-17', 3.90, '620098100000004', 4),
(5, 'Rocky', 'Cão', 'Pastor Alemão', 'Macho', '2018-07-09', 36.50, '620098100000005', 5),
(6, 'Kika', 'Cão', 'Bulldog Francês', 'Fêmea', '2021-04-30', 11.80, '620098100000006', 6),
(7, 'Simba', 'Gato', 'Siamês', 'Macho', '2020-09-12', 4.85, '620098100000007', 7),
(8, 'Pantufa', 'Coelho', 'Coelho Anão Holandês', 'Fêmea', '2023-03-19', 1.35, NULL, 8),
(9, 'Bobi', 'Cão', 'Rafeiro Alentejano', 'Macho', '2019-03-28', 41.20, '620098100000009', 9),
(10, 'Nala', 'Gato', 'Bosques da Noruega', 'Fêmea', '2021-12-05', 5.60, '620098100000010', 10),
(11, 'Thor', 'Cão', 'Golden Retriever', 'Macho', '2020-01-25', 33.10, '620098100000011', 11),
(12, 'Pipoca', 'Ave', 'Caturra', 'Fêmea', '2022-10-10', 0.10, NULL, 12),
(13, 'Zéus', 'Cão', 'Beagle', 'Macho', '2022-06-14', 13.70, '620098100000013', 13),
(14, 'Amora', 'Cão', 'Cocker Spaniel Inglês', 'Fêmea', '2021-01-18', 14.20, '620098100000014', 14),
(15, 'Óscar', 'Gato', 'British Shorthair', 'Macho', '2023-05-02', 5.10, '620098100000015', 15),
(16, 'Estrela', 'Tartaruga', 'Tartaruga Corcunda do Mississipi', 'Fêmea', '2017-08-01', 1.15, NULL, 16),
(17, 'Duque', 'Cão', 'Boxer', 'Macho', '2019-06-21', 29.90, '620098100000017', 17),
(18, 'Bolacha', 'Hamster', 'Hamster Sírio', 'Macho', '2025-04-11', 0.14, NULL, 18),
(19, 'Íris', 'Gato', 'Europeu Comum', 'Fêmea', '2025-11-20', 3.40, '620098100000019', 1),
(20, 'Faisca', 'Cão', 'Podengo Português', 'Macho', '2025-09-08', 9.60, '620098100000020', 3);

-- --------------------------------------------------------

--
-- Table structure for table `consulta`
--

CREATE TABLE `consulta` (
  `id_consulta` int(11) NOT NULL,
  `data_hora` datetime NOT NULL,
  `motivo` varchar(150) NOT NULL,
  `diagnostico` text DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  `valor_consulta` decimal(8,2) NOT NULL,
  `id_animal` int(11) NOT NULL,
  `id_veterinario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consulta`
--

INSERT INTO `consulta` (`id_consulta`, `data_hora`, `motivo`, `diagnostico`, `estado`, `valor_consulta`, `id_animal`, `id_veterinario`) VALUES
(1, '2026-02-10 09:30:00', 'Reforço vacinal anual e check-up geral', 'Animal saudável, condição corporal ideal e mucosas coradas.', 'Concluída', 35.00, 1, 1),
(2, '2026-02-18 11:00:00', 'Esterilização eletiva pré-agendada', 'Ovariohisterectomia decorreu sem intercorrências; recuperação anestésica normal.', 'Concluída', 40.00, 2, 2),
(3, '2026-03-05 15:00:00', 'Prurido intenso nas orelhas e abanar constante da cabeça', 'Otite externa eritematosa bilateral associada a sobrecrescimento de Malassezia.', 'Concluída', 42.00, 3, 4),
(4, '2026-03-19 10:15:00', 'Lacrimejo persistente no olho direito', 'Úlcera corneana superficial sem perfuração confirmada por teste de fluoresceína.', 'Concluída', 45.00, 4, 8),
(5, '2026-04-08 16:30:00', 'Intolerância ao exercício e tosse seca noturna', 'Insuficiência mitral ligeira detetada em ecocardiograma; iniciada monitorização.', 'Concluída', 50.00, 5, 5),
(6, '2026-04-22 14:00:00', 'Vermelhidão interdigital e queda de pelo localizada', 'Dermatite alérgica de contacto sem presença de ectoparasitas.', 'Concluída', 42.00, 6, 4),
(7, '2026-05-06 09:45:00', 'Mau hálito acentuado e acumulação visível de tártaro', 'Doença periodontal grau II; realizada destartarização completa.', 'Concluída', 38.00, 7, 9),
(8, '2026-05-20 17:00:00', 'Crescimento excessivo das unhas e revisão dentária', 'Incisivos alinhados e unhas aparadas sem lesões podais.', 'Concluída', 36.00, 8, 7),
(9, '2026-06-03 10:00:00', 'Claudicação do membro posterior direito após corrida', 'Entorse ligeira do joelho direito sem rutura de ligamento cruzado.', 'Concluída', 48.00, 9, 3),
(10, '2026-06-17 11:30:00', 'Vómitos agudos e prostração há 24 horas', 'Gastroenterite aguda ligeira com desidratação de 5%; estabilizada com fluidoterapia.', 'Concluída', 55.00, 10, 15),
(11, '2026-07-02 15:30:00', 'Castração eletiva e controlo pré-operatório', 'Análises pré-cirúrgicas normais e orquiectomia sem complicações.', 'Concluída', 40.00, 11, 2),
(12, '2026-07-16 16:00:00', 'Crescimento excessivo do bico e avaliação de plumagem', 'Plumagem íntegra; efetuado desgaste corretivo do bico.', 'Concluída', 36.00, 12, 7),
(13, '2026-08-05 09:15:00', 'Primeira identificação eletrónica e vacinação antirrábica', 'Animal clinicamente são; microchip implantado na região cervical esquerda.', 'Concluída', 35.00, 13, 11),
(14, '2026-08-24 14:45:00', 'Perda de peso progressiva no último mês', 'Ligeira sobrecarga hepática em bioquímica; ajustada dieta hepatoprotetora.', 'Concluída', 45.00, 14, 12),
(15, '2026-09-09 10:30:00', 'Vacinação anual felina e controlo de parasitas', 'Exame físico sem alterações; plano preventivo atualizado.', 'Concluída', 35.00, 15, 6),
(16, '2026-09-25 11:15:00', 'Letargia sazonal e revisão nutricional da carapaça', 'Hipovitaminose A ligeira; prescrito ajuste de radiação UVB e suplementação.', 'Concluída', 38.00, 16, 7),
(17, '2026-10-24 10:00:00', 'Reavaliação cardíaca semestral de rotina', 'Estabilidade ecocardiográfica confirmada; mantida terapêutica atual.', 'Concluída', 50.00, 5, 5),
(18, '2026-10-27 15:30:00', 'Avaliação dermatológica de seguimento', NULL, 'Agendada', 42.00, 17, 18),
(19, '2026-11-03 11:00:00', 'Check-up geriátrico e rastreio oncológico', NULL, 'Agendada', 48.00, 1, 14),
(20, '2026-10-12 16:30:00', 'Revisão de peso e controlo alimentar', NULL, 'Cancelada', 35.00, 18, 10);

-- --------------------------------------------------------

--
-- Table structure for table `consulta_tratamento`
--

CREATE TABLE `consulta_tratamento` (
  `id_consulta` int(11) NOT NULL,
  `id_tratamento` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco_aplicado` decimal(8,2) NOT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consulta_tratamento`
--

INSERT INTO `consulta_tratamento` (`id_consulta`, `id_tratamento`, `quantidade`, `preco_aplicado`, `observacoes`) VALUES
(1, 1, 1, 38.00, 'Lote vacinal Canigen L4; sem reação local após 20 minutos.'),
(1, 4, 1, 16.50, 'Administrado comprimido mastigável para faixa 25-40 kg.'),
(2, 7, 1, 65.00, 'Perfil pré-anestésico dentro dos valores de referência.'),
(2, 12, 1, 145.00, 'Sutura intradérmica absorvível; colar isabelino durante 7 dias.'),
(3, 14, 1, 34.00, 'Citologia auricular positiva para leveduras do género Malassezia.'),
(3, 15, 1, 29.00, 'Aplicação inicial em consultório; manter gotas 1x/dia por 10 dias.'),
(4, 16, 1, 26.00, 'Captação focal positiva na região paraxial direita.'),
(5, 9, 1, 58.00, 'Índice cardio-vertebral de 10.9; campos pulmonares limpos.'),
(5, 10, 1, 95.00, 'Regurgitação mitral ligeira; reavaliar em 6 meses.'),
(6, 5, 2, 22.00, 'Duas pipetas fornecidas para protocolo mensal contínuo.'),
(7, 11, 1, 120.00, 'Polimento completo de ambas as arcadas sem necessidade de extrações.'),
(8, 18, 1, 24.00, 'Unhas aparadas acima do sabugo vascular; sem hemorragia.'),
(9, 9, 1, 58.00, 'Sem sinais radiográficos de fratura ou avulsão óssea.'),
(10, 8, 1, 75.00, 'Espessamento difuso ligeiro da parede gástrica sem corpo estranho.'),
(10, 17, 1, 48.00, 'Perfusão de lactato de Ringer a 15 ml/h durante 90 minutos.'),
(11, 13, 1, 135.00, 'Alta no próprio dia com prescrição anti-inflamatória oral por 5 dias.'),
(13, 2, 1, 28.00, 'Primeira dose antirrábica registada com validade de 1 ano.'),
(13, 6, 1, 35.00, 'Leitura do transponder confirmada antes e após implantação.'),
(14, 7, 1, 65.00, 'Aumento ligeiro de ALT/AST; repetir perfil hepático em 60 dias.'),
(15, 3, 1, 36.00, 'Reforço anual de vacina tríplice felina sem reações adversas.');

-- --------------------------------------------------------

--
-- Table structure for table `dono`
--

CREATE TABLE `dono` (
  `id_dono` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nif` varchar(9) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `morada` varchar(150) NOT NULL,
  `data_registo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dono`
--

INSERT INTO `dono` (`id_dono`, `nome`, `nif`, `telefone`, `email`, `morada`, `data_registo`) VALUES
(1, 'António Manuel Ferreira', '214589632', '912345601', 'antonio.ferreira@email.pt', 'Rua de Santa Catarina, 145, 4000-450 Porto', '2023-02-14'),
(2, 'Maria João Albuquerque', '228945107', '963451202', 'maria.albuquerque@email.pt', 'Avenida da Liberdade, 88, 3.º Esq., 1250-145 Lisboa', '2023-03-21'),
(3, 'Carlos Eduardo Ribeiro', '231078459', '934567803', 'carlos.ribeiro@email.pt', 'Rua Ferreira Borges, 52, 3000-179 Coimbra', '2023-05-09'),
(4, 'Ana Sofia Carvalho', '245612389', '918765404', 'ana.carvalho@email.pt', 'Avenida Central, 110, 4710-229 Braga', '2023-06-18'),
(5, 'João Pedro Gonçalves', '253498712', '926543205', 'joao.goncalves@email.pt', 'Rua Direita, 34, 3800-149 Aveiro', '2023-08-03'),
(6, 'Inês Filipa Rodrigues', '261834590', '915432106', 'ines.rodrigues@email.pt', 'Rua de Santo António, 67, 8000-283 Faro', '2023-09-15'),
(7, 'Miguel Ângelo Martins', '219753486', '967890107', 'miguel.martins@email.pt', 'Avenida Luísa Todi, 212, 2900-452 Setúbal', '2023-11-02'),
(8, 'Beatriz Helena Sousa', '274169823', '938901208', 'beatriz.sousa@email.pt', 'Rua Formosa, 79, 3500-135 Viseu', '2024-01-12'),
(9, 'Rui Filipe Almeida', '238520147', '914321909', 'rui.almeida@email.pt', 'Praça do Giraldo, 19, 7000-508 Évora', '2024-02-25'),
(10, 'Catarina Isabel Mendes', '282641795', '929876510', 'catarina.mendes@email.pt', 'Avenida Heróis de Angola, 95, 2400-153 Leiria', '2024-04-08'),
(11, 'Tiago André Moreira', '247913680', '916789011', 'tiago.moreira@email.pt', 'Toural de São Pedro, 41, 4810-427 Guimarães', '2024-05-19'),
(12, 'Sofia Margarida Costa', '259307418', '964567812', 'sofia.costa@email.pt', 'Volta do Duche, 14, 2710-631 Sintra', '2024-07-04'),
(13, 'Diogo Nuno Pereira', '268452913', '931234513', 'diogo.pereira@email.pt', 'Avenida 25 de Abril, 53, 2750-515 Cascais', '2024-08-29'),
(14, 'Mariana Raquel Pinto', '213987654', '917654314', 'mariana.pinto@email.pt', 'Rua Brito Capelo, 302, 4450-073 Matosinhos', '2024-10-11'),
(15, 'Paulo Alexandre Teixeira', '276543219', '924321015', 'paulo.teixeira@email.pt', 'Avenida Dom Nuno Álvares Pereira, 76, 2800-178 Almada', '2025-01-17'),
(16, 'Cláudia Susana Lopes', '234876519', '919087616', 'claudia.lopes@email.pt', 'Rua Dr. Fernão de Ornelas, 28, 9050-021 Funchal', '2025-03-06'),
(17, 'Gonçalo Vasco Oliveira', '289123456', '962109817', 'goncalo.oliveira@email.pt', 'Rua Serpa Pinto, 84, 2000-046 Santarém', '2025-06-22'),
(18, 'Helena Teresa Nogueira', '241678905', '935678918', 'helena.nogueira@email.pt', 'Alameda da Liberdade, 37, 6000-073 Castelo Branco', '2025-09-30'),
(19, 'Vítor Hugo Henriques', '257890341', '913456719', 'vitor.henriques@email.pt', 'Avenida dos Combatentes, 129, 4900-563 Viana do Castelo', '2026-09-14'),
(20, 'Patrícia Alexandra Tavares', '264319875', '928765420', 'patricia.tavares@email.pt', 'Avenida Carvalho Araújo, 61, 5000-657 Vila Real', '2026-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `tratamento`
--

CREATE TABLE `tratamento` (
  `id_tratamento` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  `preco_base` decimal(8,2) NOT NULL,
  `duracao_minutos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tratamento`
--

INSERT INTO `tratamento` (`id_tratamento`, `nome`, `categoria`, `descricao`, `preco_base`, `duracao_minutos`) VALUES
(1, 'Vacina Polivalente Canina', 'Vacinação', 'Imunização anual contra esgana, parvovirose, hepatite infeciosa, leptospirose e parainfluenza.', 38.00, 20),
(2, 'Vacina Antirrábica', 'Vacinação', 'Vacinação obrigatória contra o vírus da raiva com registo no boletim sanitário e SIAC.', 28.00, 15),
(3, 'Vacina Tríplice Felina', 'Vacinação', 'Proteção contra panleucopenia, rinotraqueíte viral felina e calicivirose.', 36.00, 20),
(4, 'Desparasitação Interna Completa', 'Preventivo', 'Administração oral de antiparasitário de largo espetro ajustado ao peso corporal.', 16.50, 15),
(5, 'Desparasitação Externa Spot-On', 'Preventivo', 'Aplicação tópica mensal contra pulgas, carraças, flebótomos e mosquitos.', 22.00, 15),
(6, 'Colocação de Microchip e Registo SIAC', 'Identificação', 'Implantação subcutânea de transponder ISO 11784/11785 e registo oficial no SIAC.', 35.00, 20),
(7, 'Hemograma e Bioquímica Sanguínea', 'Diagnóstico', 'Colheita de sangue venoso e análise laboratorial completa de função renal e hepática.', 65.00, 30),
(8, 'Ecografia Abdominal', 'Diagnóstico', 'Exame ecográfico detalhado aos órgãos abdominais com relatório imagiológico.', 75.00, 40),
(9, 'Radiografia Digital Torácica', 'Diagnóstico', 'Estudo radiográfico em duas projeções para avaliação pulmonar e silhueta cardíaca.', 58.00, 30),
(10, 'Ecocardiograma com Doppler', 'Diagnóstico', 'Avaliação morfológica e funcional das válvulas e câmaras cardíacas com Doppler a cores.', 95.00, 45),
(11, 'Destartarização e Polimento Dentário', 'Estomatologia', 'Remoção de tártaro por ultrassons e polimento dentário sob sedação monitorizada.', 120.00, 60),
(12, 'Esterilização Felina (Ovariohisterectomia)', 'Cirurgia', 'Intervenção cirúrgica eletiva em gata sob anestesia geral inalatória e analgesia multimodal.', 145.00, 75),
(13, 'Orquiectomia Canina', 'Cirurgia', 'Castração cirúrgica eletiva de cão macho com monitorização multiparamétrica.', 135.00, 60),
(14, 'Citologia Dermatológica e Raspagem', 'Dermatologia', 'Colheita e observação microscópica para pesquisa de ácaros, fungos, bactérias e leveduras.', 34.00, 25),
(15, 'Limpeza Auricular e Terapia Otite', 'Dermatologia', 'Lavagem vídeo-otoscópica do canal auditivo externo e aplicação tópica anti-inflamatória.', 29.00, 25),
(16, 'Teste de Fluoresceína Ocular', 'Oftalmologia', 'Avaliação da integridade corneana para deteção precoce de úlceras de córnea.', 26.00, 20),
(17, 'Fluidoterapia Endovenosa (Sessão)', 'Urgência', 'Reposição hidroeletrolítica endovenosa com bomba de infusão contínua.', 48.00, 90),
(18, 'Corte Técnico de Bico e Unhas (Exóticos)', 'Exóticos', 'Aparagem clínica segura de bico ou unhas em aves, coelhos e pequenos mamíferos.', 24.00, 20),
(19, 'Sessão de Acupuntura Veterinária', 'Reabilitação', 'Estimulação de pontos neuro-reativos para controlo de dor crónica osteoarticular.', 52.00, 45),
(20, 'Crioterapia Dermatológica Localizada', 'Dermatologia', 'Remoção criocirúrgica não invasiva de pequenas lesões cutâneas benignas.', 85.00, 35);

-- --------------------------------------------------------

--
-- Table structure for table `veterinario`
--

CREATE TABLE `veterinario` (
  `id_veterinario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nif` varchar(9) NOT NULL,
  `cedula_profissional` varchar(15) NOT NULL,
  `especialidade` varchar(60) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `data_contratacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `veterinario`
--

INSERT INTO `veterinario` (`id_veterinario`, `nome`, `nif`, `cedula_profissional`, `especialidade`, `telefone`, `email`, `data_contratacao`) VALUES
(1, 'Dr. Fernando José Magalhães', '201345678', 'OMV-3104', 'Clínica Geral', '911223301', 'f.magalhaes@clinicavet.pt', '2020-03-02'),
(2, 'Dra. Lúcia Maria Azevedo', '202456789', 'OMV-3428', 'Cirurgia de Tecidos Moles', '911223302', 'l.azevedo@clinicavet.pt', '2020-07-15'),
(3, 'Dr. Henrique Duarte Barros', '203567891', 'OMV-3789', 'Ortopedia e Traumatologia', '911223303', 'h.barros@clinicavet.pt', '2021-01-11'),
(4, 'Dra. Marta Isabel Figueiredo', '204678912', 'OMV-4015', 'Dermatologia Veterinária', '911223304', 'm.figueiredo@clinicavet.pt', '2021-05-24'),
(5, 'Dr. Ricardo Jorge Monteiro', '205789123', 'OMV-4290', 'Cardiologia Veterinária', '911223305', 'r.monteiro@clinicavet.pt', '2021-09-06'),
(6, 'Dra. Vera Lúcia Antunes', '206891234', 'OMV-4512', 'Medicina Felina', '911223306', 'v.antunes@clinicavet.pt', '2022-02-14'),
(7, 'Dr. André Filipe Baptista', '207912345', 'OMV-4788', 'Animais Exóticos', '911223307', 'a.baptista@clinicavet.pt', '2022-06-01'),
(8, 'Dra. Sara Cristina Peixoto', '208123456', 'OMV-5021', 'Oftalmologia Veterinária', '911223308', 's.peixoto@clinicavet.pt', '2022-10-17'),
(9, 'Dr. Bruno Alexandre Cunha', '209234567', 'OMV-5314', 'Estomatologia Veterinária', '911223309', 'b.cunha@clinicavet.pt', '2023-01-09'),
(10, 'Dra. Rita Sofia Guerreiro', '210345679', 'OMV-5580', 'Imagiologia e Ecografia', '911223310', 'r.guerreiro@clinicavet.pt', '2023-04-03'),
(11, 'Dr. Nuno Miguel Valente', '211456780', 'OMV-5803', 'Clínica Geral', '911223311', 'n.valente@clinicavet.pt', '2023-09-11'),
(12, 'Dra. Joana Patrícia Correia', '212567892', 'OMV-6049', 'Medicina Interna', '911223312', 'j.correia@clinicavet.pt', '2024-01-15'),
(13, 'Dr. Pedro Afonso Lourenço', '215678903', 'OMV-6295', 'Neurologia Veterinária', '911223313', 'p.lourenco@clinicavet.pt', '2024-04-22'),
(14, 'Dra. Filipa Alexandra Simões', '216789014', 'OMV-6510', 'Oncologia Veterinária', '911223314', 'f.simoes@clinicavet.pt', '2024-08-05'),
(15, 'Dr. Tomás Guilherme Neves', '217890125', 'OMV-6742', 'Urgências e Cuidados Intensivos', '911223315', 't.neves@clinicavet.pt', '2025-01-06'),
(16, 'Dra. Carolina Beatriz Morais', '218901236', 'OMV-6988', 'Reabilitação e Fisioterapia', '911223316', 'c.morais@clinicavet.pt', '2025-05-12'),
(17, 'Dr. Vasco Manuel Pacheco', '220123457', 'OMV-7145', 'Anestesiologia Veterinária', '911223317', 'v.pacheco@clinicavet.pt', '2025-09-01'),
(18, 'Dra. Mafalda Inês Fonseca', '221234568', 'OMV-7390', 'Clínica Geral', '911223318', 'm.fonseca@clinicavet.pt', '2026-01-12'),
(19, 'Dr. Lourenço Dinis Raposo', '222345679', 'OMV-7612', 'Nutrição Clínica', '911223319', 'l.raposo@clinicavet.pt', '2026-09-21'),
(20, 'Dra. Matilde Leonor Amaral', '223456781', 'OMV-7854', 'Comportamento Animal', '911223320', 'm.amaral@clinicavet.pt', '2026-10-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`),
  ADD UNIQUE KEY `uq_animal_microchip` (`microchip`),
  ADD KEY `fk_animal_dono` (`id_dono`);

--
-- Indexes for table `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `fk_consulta_animal` (`id_animal`),
  ADD KEY `fk_consulta_veterinario` (`id_veterinario`);

--
-- Indexes for table `consulta_tratamento`
--
ALTER TABLE `consulta_tratamento`
  ADD PRIMARY KEY (`id_consulta`,`id_tratamento`),
  ADD KEY `fk_ct_tratamento` (`id_tratamento`);

--
-- Indexes for table `dono`
--
ALTER TABLE `dono`
  ADD PRIMARY KEY (`id_dono`),
  ADD UNIQUE KEY `uq_dono_nif` (`nif`),
  ADD UNIQUE KEY `uq_dono_email` (`email`);

--
-- Indexes for table `tratamento`
--
ALTER TABLE `tratamento`
  ADD PRIMARY KEY (`id_tratamento`),
  ADD UNIQUE KEY `uq_tratamento_nome` (`nome`);

--
-- Indexes for table `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`id_veterinario`),
  ADD UNIQUE KEY `uq_veterinario_nif` (`nif`),
  ADD UNIQUE KEY `uq_veterinario_cedula` (`cedula_profissional`),
  ADD UNIQUE KEY `uq_veterinario_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dono`
--
ALTER TABLE `dono`
  MODIFY `id_dono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tratamento`
--
ALTER TABLE `tratamento`
  MODIFY `id_tratamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `veterinario`
--
ALTER TABLE `veterinario`
  MODIFY `id_veterinario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `fk_animal_dono` FOREIGN KEY (`id_dono`) REFERENCES `dono` (`id_dono`) ON UPDATE CASCADE;

--
-- Constraints for table `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `fk_consulta_animal` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_consulta_veterinario` FOREIGN KEY (`id_veterinario`) REFERENCES `veterinario` (`id_veterinario`) ON UPDATE CASCADE;

--
-- Constraints for table `consulta_tratamento`
--
ALTER TABLE `consulta_tratamento`
  ADD CONSTRAINT `fk_ct_consulta` FOREIGN KEY (`id_consulta`) REFERENCES `consulta` (`id_consulta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ct_tratamento` FOREIGN KEY (`id_tratamento`) REFERENCES `tratamento` (`id_tratamento`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
