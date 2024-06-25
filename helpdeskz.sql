-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2024 a las 17:16:41
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `helpdeskz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_api`
--

CREATE TABLE `hdz_api` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date` int(11) NOT NULL DEFAULT 0,
  `last_update` int(11) NOT NULL,
  `permissions` text DEFAULT NULL,
  `ip_address` mediumtext DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_articles`
--

CREATE TABLE `hdz_articles` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text DEFAULT NULL,
  `category` int(11) DEFAULT 0,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `public` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_attachments`
--

CREATE TABLE `hdz_attachments` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `enc` varchar(200) NOT NULL,
  `filetype` varchar(200) DEFAULT NULL,
  `article_id` int(11) NOT NULL DEFAULT 0,
  `ticket_id` int(11) NOT NULL DEFAULT 0,
  `msg_id` int(11) NOT NULL DEFAULT 0,
  `filesize` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_canned_response`
--

CREATE TABLE `hdz_canned_response` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `date` int(11) NOT NULL DEFAULT 0,
  `last_update` int(11) NOT NULL DEFAULT 0,
  `staff_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_config`
--

CREATE TABLE `hdz_config` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `windows_title` varchar(255) DEFAULT NULL,
  `page_size` int(11) NOT NULL DEFAULT 0,
  `date_format` varchar(100) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `maintenance_message` text DEFAULT NULL,
  `recaptcha` tinyint(1) NOT NULL DEFAULT 0,
  `recaptcha_sitekey` varchar(255) DEFAULT NULL,
  `recaptcha_privatekey` varchar(255) DEFAULT NULL,
  `login_attempt` int(11) NOT NULL DEFAULT 0,
  `login_attempt_minutes` int(11) NOT NULL DEFAULT 1,
  `reply_order` enum('asc','desc') NOT NULL DEFAULT 'asc',
  `tickets_page` int(11) NOT NULL DEFAULT 1,
  `tickets_replies` int(11) NOT NULL DEFAULT 1,
  `overdue_time` int(11) NOT NULL DEFAULT 48,
  `ticket_autoclose` int(11) NOT NULL DEFAULT 96,
  `ticket_attachment` tinyint(1) NOT NULL DEFAULT 0,
  `ticket_attachment_number` int(11) NOT NULL DEFAULT 1,
  `ticket_file_size` double NOT NULL DEFAULT 2,
  `ticket_file_type` mediumtext DEFAULT NULL,
  `kb_articles` int(11) NOT NULL DEFAULT 4,
  `kb_maxchar` int(11) NOT NULL DEFAULT 200,
  `kb_popular` int(11) NOT NULL DEFAULT 4,
  `kb_latest` int(11) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hdz_config`
--

INSERT INTO `hdz_config` (`id`, `logo`, `site_name`, `windows_title`, `page_size`, `date_format`, `timezone`, `maintenance`, `maintenance_message`, `recaptcha`, `recaptcha_sitekey`, `recaptcha_privatekey`, `login_attempt`, `login_attempt_minutes`, `reply_order`, `tickets_page`, `tickets_replies`, `overdue_time`, `ticket_autoclose`, `ticket_attachment`, `ticket_attachment_number`, `ticket_file_size`, `ticket_file_type`, `kb_articles`, `kb_maxchar`, `kb_popular`, `kb_latest`) VALUES
(1, '1718049666_bce66e551ed58adf051f.svg', 'Escritorio de ayuda', 'EDA', 25, 'd F Y h:i a', 'America/Guatemala', 0, '', 0, '', '', 3, 5, 'desc', 15, 15, 48, 96, 1, 3, 2.5, 'a:3:{i:0;s:3:\"jpg\";i:1;s:3:\"png\";i:2;s:3:\"pdf\";}', 2, 200, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_custom_fields`
--

CREATE TABLE `hdz_custom_fields` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `departments` mediumtext DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_departments`
--

CREATE TABLE `hdz_departments` (
  `id` int(11) NOT NULL,
  `dep_order` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `private` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hdz_departments`
--

INSERT INTO `hdz_departments` (`id`, `dep_order`, `name`, `private`) VALUES
(1, 9, 'General', 0),
(4, 6, 'Leticia Eugenia Padilla Zuleta', 0),
(5, 5, 'Geimy Fabiola Vega Espina', 0),
(6, 4, 'Kattie Briana Alexandra Salazar Ortíz', 0),
(7, 2, 'Lilian Aleyda Rojas Guzmán', 0),
(8, 1, 'Marvin René Solorzano Tello', 0),
(9, 3, 'Byron Enrique López Recinos', 0),
(10, 8, 'Shirly Pamela De León López', 0),
(11, 7, 'Carlos Alberto Zuñiga y Zuñiga', 0),
(12, 10, 'Josué Daniel Rosales Arché', 0),
(13, 11, 'Wendy Catalina García Mejía', 0),
(14, 12, 'Allan Francisco Platero Armas', 0),
(15, 13, 'Sergio Antonio Paiz Loarca', 0),
(16, 14, 'Evelyn Gabriela Mis Juárez', 0),
(17, 15, 'Mirna Irasema Siliezar Tello', 0),
(18, 16, 'Shirley Carolina Cardona Castillo', 0),
(19, 17, 'Jenny Paola Lemus Temu', 0),
(20, 18, 'Sally del Carmen Maldonado Molina de Pedroza', 0),
(21, 19, 'Sonia Elizabeth Ixchop  Alvarez', 0),
(22, 20, 'Lara Masiel González Arriaga', 0),
(23, 21, 'Sergio Daniel Gonzáles López', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_emails`
--

CREATE TABLE `hdz_emails` (
  `id` int(11) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `department_id` int(11) NOT NULL DEFAULT 0,
  `created` int(11) NOT NULL DEFAULT 0,
  `last_update` int(11) NOT NULL DEFAULT 0,
  `outgoing_type` enum('php','smtp') NOT NULL,
  `smtp_host` varchar(200) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT NULL,
  `smtp_encryption` varchar(10) DEFAULT NULL,
  `smtp_username` varchar(200) DEFAULT NULL,
  `smtp_password` varchar(200) DEFAULT NULL,
  `incoming_type` varchar(10) DEFAULT NULL,
  `imap_host` varchar(200) DEFAULT NULL,
  `imap_port` varchar(10) DEFAULT NULL,
  `imap_username` varchar(200) DEFAULT NULL,
  `imap_password` varchar(200) DEFAULT NULL,
  `imap_minutes` double NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hdz_emails`
--

INSERT INTO `hdz_emails` (`id`, `default`, `name`, `email`, `department_id`, `created`, `last_update`, `outgoing_type`, `smtp_host`, `smtp_port`, `smtp_encryption`, `smtp_username`, `smtp_password`, `incoming_type`, `imap_host`, `imap_port`, `imap_username`, `imap_password`, `imap_minutes`) VALUES
(1, 1, 'SARH', 'sarh.conred@gmail.com', 1, 1718027080, 1718051692, 'smtp', 'mail.gmail.com', '587', 'tls', 'sarh.conred@gmail.com', 'cgmv rguh vuap ayta', '', '', '', '', '', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_emails_tpl`
--

CREATE TABLE `hdz_emails_tpl` (
  `id` varchar(255) NOT NULL,
  `position` smallint(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hdz_emails_tpl`
--

INSERT INTO `hdz_emails_tpl` (`id`, `position`, `name`, `subject`, `message`, `last_update`, `status`) VALUES
('autoresponse', 4, 'New Message Autoresponse', '[#%ticket_id%] %ticket_subject%', '<p>Dear %client_name%,</p>\r\n<p>Your reply to support request #%ticket_id% has been noted.</p>\r\n<p>Ticket Details <br />--------------------<br />Ticket ID: %ticket_id% <br />Department: %ticket_department% <br />Status: %ticket_status% <br />Priority: %ticket_priority% <br />Helpdesk: %support_url%</p>', 0, 0),
('lost_password', 2, 'Lost password confirmation', 'Password recovery for %company_name%', '<p>We have received a request to reset your account password for the %company_name% helpdesk (%helpdesk_url%).</p>\r\n<p>Your new passsword is: %client_password%</p>\r\n<p>Thank you, <br />%company_name% <br />Helpdesk: %support_url%</p>', 0, 2),
('new_ticket', 3, 'New ticket creation', '[#%ticket_id%] %ticket_subject%', '<p>Dear %client_name%,</p>\r\n<p>Thank you for contacting us. This is an automated response confirming the receipt of your ticket. One of our agents will get back to you as soon as possible.</p>\r\n<p>For your records, the details of the ticket are listed below. When replying, please make sure that the ticket ID is kept in the subject line to ensure that your replies are tracked appropriately.</p>\r\n<p>Ticket ID: %ticket_id% <br />Subject: %ticket_subject% <br />Department: %ticket_department% <br />Status: %ticket_status% <br />Priority: %ticket_priority%</p>\r\n<p>You can check the status of or reply to this ticket online at: %support_url%</p>\r\n<p>Regards, <br />%company_name%</p>', 0, 1),
('new_user', 1, 'Welcome email registration', 'Welcome to %company_name% helpdesk', '<p>Hello,</p>\r\n<p>This email is confirmation that you are now registered at our helpdesk.</p>\r\n<p><strong>Registered email:</strong> %client_email% <br /><strong>Password:</strong> %client_password%</p>\r\n<p>You can visit the helpdesk to browse articles and contact us at any time:</p>\r\n<p>%support_url%</p>\r\n<p>Thank you for registering!</p>\r\n<p>%company_name%<br />Helpdesk: %support_url%</p>', 0, 1),
('staff_reply', 5, 'Staff Reply', 'Re: [#%ticket_id%] %ticket_subject%', '<p>%message% </p>\r\n<p>-------------------------------------------------------------<br />Ticket Details<br />-------------------------------------------------------------<br /><strong>Ticket ID:</strong> %ticket_id% <br /><strong>Department:</strong> %ticket_department% <br /><strong>Status:</strong> %ticket_status% <br /><strong>Priority:</strong> %ticket_priority% <br /><strong>Helpdesk:</strong> %support_url%</p>', 0, 2),
('staff_ticketnotification', 6, 'New ticket notification to staff', 'New ticket notification', '<p>Dear %staff_name%,</p>\r\n<p>A new ticket has been created in department assigned for you, please login to staff panel to answer it.</p>\r\n<p>Ticket Details<br />-------------------<br />Ticket ID: %ticket_id% <br />Department: %ticket_department% <br />Status: %ticket_status% <br />Priority: %ticket_priority% <br />Helpdesk: %support_url%</p>', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_kb_category`
--

CREATE TABLE `hdz_kb_category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `position` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `public` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_login_attempt`
--

CREATE TABLE `hdz_login_attempt` (
  `ip` varchar(200) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_login_log`
--

CREATE TABLE `hdz_login_log` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `success` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_priority`
--

CREATE TABLE `hdz_priority` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(10) NOT NULL DEFAULT '#000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hdz_priority`
--

INSERT INTO `hdz_priority` (`id`, `name`, `color`) VALUES
(1, 'Low', '#8A8A8A'),
(2, 'Medium', '#000000'),
(3, 'High', '#F07D18'),
(4, 'Urgent', '#E826C6'),
(5, 'Emergency', '#E06161'),
(6, 'Critical', '#FF0000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_staff`
--

CREATE TABLE `hdz_staff` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `registration` int(11) NOT NULL DEFAULT 0,
  `login` int(11) NOT NULL DEFAULT 0,
  `last_login` int(11) NOT NULL DEFAULT 0,
  `department` mediumtext DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `signature` longtext DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `two_factor` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hdz_staff`
--

INSERT INTO `hdz_staff` (`id`, `username`, `password`, `fullname`, `email`, `token`, `registration`, `login`, `last_login`, `department`, `timezone`, `signature`, `avatar`, `two_factor`, `admin`, `active`) VALUES
(1, 'sdgonzales', '$2y$10$z80Sxjzn7wEds7ZL9roeM.XonoqthozUplUwslLvQRV2P.6u8aad.', 'Sergio Daniel Gonzales Lopez', 'sdgonzales@conred.gob.gt', '89d830809b38f30a7c2ecc9a560d8747f8ee0dcf', 1718027079, 1719240714, 1719240502, NULL, NULL, NULL, NULL, NULL, 1, 1),
(3, 'mrsolorzano', '$2y$10$4C4AxuxbIZOjQKp.ehAzgOZEDtnhBIKToqzlStX6BqLCkDvujyN8i', 'Marvin René Solorzano Tello', 'mrsolorzano@conred.gob.gt', NULL, 1719242669, 0, 0, 'a:21:{i:0;s:1:\"8\";i:1;s:1:\"7\";i:2;s:1:\"9\";i:3;s:1:\"6\";i:4;s:1:\"5\";i:5;s:1:\"4\";i:6;s:2:\"11\";i:7;s:2:\"10\";i:8;s:1:\"1\";i:9;s:2:\"12\";i:10;s:2:\"13\";i:11;s:2:\"14\";i:12;s:2:\"15\";i:13;s:2:\"16\";i:14;s:2:\"17\";i:15;s:2:\"18\";i:16;s:2:\"19\";i:17;s:2:\"20\";i:18;s:2:\"21\";i:19;s:2:\"22\";i:20;s:2:\"23\";}', NULL, NULL, NULL, NULL, 0, 1),
(4, 'larojas', '$2y$10$kdCsi2IgRRZIfzPWczzas.vQRalFjKKYy6c6tHtjDdll.S7UcXf2K', 'Lilian Aleyda Rojas Guzmán', 'larojas@conred.gob.gt', NULL, 1719242763, 0, 0, 'a:20:{i:0;s:1:\"7\";i:1;s:1:\"9\";i:2;s:1:\"6\";i:3;s:1:\"5\";i:4;s:1:\"4\";i:5;s:2:\"11\";i:6;s:2:\"10\";i:7;s:1:\"1\";i:8;s:2:\"12\";i:9;s:2:\"13\";i:10;s:2:\"14\";i:11;s:2:\"15\";i:12;s:2:\"16\";i:13;s:2:\"17\";i:14;s:2:\"18\";i:15;s:2:\"19\";i:16;s:2:\"20\";i:17;s:2:\"21\";i:18;s:2:\"22\";i:19;s:2:\"23\";}', NULL, NULL, NULL, NULL, 0, 1),
(5, 'belopez', '$2y$10$hELuRkrdLeJqlEZ/28V4YehFHr2uVcL2Oa9SlRnXq6RoMWOWOapOu', 'Byron Enrique López Recinos', 'belopez@conred.gob.gt', NULL, 1719242805, 0, 0, 'a:3:{i:0;s:1:\"9\";i:1;s:2:\"11\";i:2;s:2:\"17\";}', NULL, NULL, NULL, NULL, 0, 1),
(6, 'kbsalazar', '$2y$10$Xx1IaegkquCvdmHS0gYh1OP4yEeDwFhuGRjs7Vpq5MQaaJude1EWq', 'Kattie Briana Alexandra Salazar Ortíz', 'kbsalazar@conred.gob.gt', NULL, 1719242845, 0, 0, 'a:3:{i:0;s:1:\"6\";i:1;s:2:\"12\";i:2;s:2:\"14\";}', NULL, NULL, NULL, NULL, 0, 1),
(7, 'gfvega', '$2y$10$HkO8CUMt9tYuG1bJB2bhT.qRbSY6hCD8jMQn21FTxa3d5sqE9mqh6', 'Geimy Fabiola Vega Espina', 'gfvega@conred.gob.gt', NULL, 1719242906, 0, 0, 'a:6:{i:0;s:1:\"5\";i:1;s:2:\"10\";i:2;s:2:\"16\";i:3;s:2:\"18\";i:4;s:2:\"19\";i:5;s:2:\"22\";}', NULL, NULL, NULL, NULL, 0, 1),
(8, 'lepadilla', '$2y$10$xvtKgWSfS7fzDuAAXcbJduaCidHRscOvShgEfZQmmn6nWd9owExq2', 'Leticia Eugenia Padilla Zuleta', 'lepadilla@conred.gob.gt', NULL, 1719242982, 0, 0, 'a:2:{i:0;s:1:\"4\";i:1;s:2:\"13\";}', NULL, NULL, NULL, NULL, 0, 1),
(9, 'cazuniga', '$2y$10$xEYHuznuFNqoRAnTdkWl4.OT.5gKcGOCWXl2oL/R89BySCYd0kGfy', 'Carlos Alberto Zuñiga y Zuñiga', 'cazuniga@conred.gob.gt', NULL, 1719243399, 0, 0, 'a:1:{i:0;s:2:\"11\";}', NULL, NULL, NULL, NULL, 0, 1),
(10, 'spdeleon', '$2y$10$LyyknRpPp5JwlzK0TXXjE.0D0Ccc8KUgbB0AhYQUhrJ0KfQl5kIai', 'Shirly Pamela De León López', 'spdeleon@conred.gob.gt', NULL, 1719243451, 0, 0, 'a:1:{i:0;s:2:\"10\";}', NULL, NULL, NULL, NULL, 0, 1),
(11, 'jdrosales', '$2y$10$43ONNCRnGWakEjunFZ3Qr.AjZ16r3hjjoLuyctl8gyT3M9PA/Y.Zu', 'Josué Daniel Rosales Arché', 'jdrosales@conred.gob.gt', NULL, 1719243501, 0, 0, 'a:1:{i:0;s:2:\"12\";}', NULL, NULL, NULL, NULL, 0, 1),
(12, 'wcgarcia', '$2y$10$lYwBn16lAwidhW81G0e00OJcOaifAs3P4hBERGf0LjSzNYK9EwDZ2', 'Wendy Catalina García Mejía', 'wcgarcia@conred.gob.gt', NULL, 1719243813, 0, 0, 'a:1:{i:0;s:2:\"13\";}', NULL, NULL, NULL, NULL, 0, 1),
(13, 'afplatero', '$2y$10$HQK3W1Xi44az3GhuAdDVrOiiAwEvUER33MyJGR4okeWiVNReTTDyi', 'Allan Francisco Platero Armas', 'afplatero@conred.gob.gt', NULL, 1719243898, 0, 0, 'a:1:{i:0;s:2:\"14\";}', NULL, NULL, NULL, NULL, 0, 1),
(14, 'sapaiz', '$2y$10$vnnsjrxHHnCGWNmzjTGZcuy5UofBiKJtJ1Efc/y4CSe9wsXtN1Lvq', 'Sergio Antonio Paiz Loarca', 'sapaiz@conred.gob.gt', NULL, 1719243985, 0, 0, 'a:1:{i:0;s:2:\"15\";}', NULL, NULL, NULL, NULL, 0, 1),
(15, 'egmis', '$2y$10$Sl4WCdTmq3WOvFXY..1Ywu4eBtnUNrmAO7BUB7gl39EkCGt1XoGcS', 'Evelyn Gabriela Mis Juárez', 'egmis@conred.gob.gt', NULL, 1719244022, 0, 0, 'a:1:{i:0;s:2:\"16\";}', NULL, NULL, NULL, NULL, 0, 1),
(16, 'misiliezar', '$2y$10$sEveNCVnAEobwzEnj8ziNuLiJFeHjDbQvxorMRUOgS/AgHA6PO3pe', 'Mirna Irasema Siliezar Tello', 'misiliezar@conred.gob.gt', NULL, 1719244052, 0, 0, 'a:0:{}', NULL, NULL, NULL, NULL, 0, 1),
(17, 'sccardona', '$2y$10$BvFdhRZRspkOjGUZv.Frm.pKX.RLlx00J3KAvt.oAfGGg8LGDZe0q', 'Shirley Carolina Cardona Castillo', 'sccardona@conred.gob.gt', NULL, 1719244109, 0, 0, 'a:1:{i:0;s:2:\"18\";}', NULL, NULL, NULL, NULL, 0, 1),
(18, 'jplemus', '$2y$10$Ufu/VIH3s/XmDJRE0EBMV.iejLKoj8QJODcPmiAypKehWlDIS3nGa', 'Jenny Paola Lemus Temu', 'jplemus@conred.gob.gt', NULL, 1719244193, 0, 0, 'a:1:{i:0;s:2:\"19\";}', NULL, NULL, NULL, NULL, 0, 1),
(19, 'sdmaldonado', '$2y$10$AMq/P2rpkkl.drSaiXsX1eAs4XHaKNNzkPsbEGXsAaFgHrvmIlMea', 'Sally del Carmen Maldonado Molina de Pedroza', 'sdmaldonado@conred.gob.gt', NULL, 1719244246, 0, 0, 'a:1:{i:0;s:2:\"20\";}', NULL, NULL, NULL, NULL, 0, 1),
(20, 'seixchop', '$2y$10$9YsZv5LmVYzmudmGWZMMWe0w8tk8rF3d/gfVwE4YnKhVBxeSZgMdS', 'Sonia Elizabeth Ixchop Alvarez', 'seixchop@conred.gob.gt', NULL, 1719244302, 0, 0, 'a:1:{i:0;s:2:\"21\";}', NULL, NULL, NULL, NULL, 0, 1),
(21, 'lmgonzalez', '$2y$10$GXXoT2B8CChIdnQ4mmdaq.lmw9rnULMtVJQLwGgWFuBFo8DfHJk2.', 'Lara Masiel González Arriaga', 'lmgonzalez@conred.gob.gt', NULL, 1719244342, 0, 0, 'a:1:{i:0;s:2:\"22\";}', NULL, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_tickets`
--

CREATE TABLE `hdz_tickets` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL DEFAULT 0,
  `priority_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL,
  `date` int(11) NOT NULL DEFAULT 0,
  `last_update` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `replies` int(11) NOT NULL DEFAULT 0,
  `last_replier` tinyint(1) DEFAULT 0,
  `custom_vars` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_tickets_messages`
--

CREATE TABLE `hdz_tickets_messages` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `customer` int(11) NOT NULL DEFAULT 1,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `message` text DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `email` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_ticket_notes`
--

CREATE TABLE `hdz_ticket_notes` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdz_users`
--

CREATE TABLE `hdz_users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL DEFAULT 'Guest',
  `email` varchar(250) NOT NULL,
  `password` varchar(150) NOT NULL,
  `registration` int(11) NOT NULL DEFAULT 0,
  `last_login` int(11) NOT NULL DEFAULT 0,
  `token` varchar(255) DEFAULT NULL,
  `timezone` varchar(200) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hdz_users`
--

INSERT INTO `hdz_users` (`id`, `fullname`, `email`, `password`, `registration`, `last_login`, `token`, `timezone`, `avatar`, `status`) VALUES
(4, 'Prueba', 'prueba@test.com', '$2y$10$oIjYI29Rg3b/3q/l4us/XO.oF3TdLuQ8YUGftlWPr6j664h7TayI.', 1718134538, 1719240615, 'd0fb90c4aab9939ebf55f0615532b71a', NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hdz_api`
--
ALTER TABLE `hdz_api`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`);

--
-- Indices de la tabla `hdz_articles`
--
ALTER TABLE `hdz_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indices de la tabla `hdz_attachments`
--
ALTER TABLE `hdz_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `msg_id` (`msg_id`);

--
-- Indices de la tabla `hdz_canned_response`
--
ALTER TABLE `hdz_canned_response`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hdz_config`
--
ALTER TABLE `hdz_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hdz_custom_fields`
--
ALTER TABLE `hdz_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hdz_departments`
--
ALTER TABLE `hdz_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hdz_emails`
--
ALTER TABLE `hdz_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hdz_emails_tpl`
--
ALTER TABLE `hdz_emails_tpl`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hdz_kb_category`
--
ALTER TABLE `hdz_kb_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hdz_login_attempt`
--
ALTER TABLE `hdz_login_attempt`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indices de la tabla `hdz_login_log`
--
ALTER TABLE `hdz_login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indices de la tabla `hdz_priority`
--
ALTER TABLE `hdz_priority`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hdz_staff`
--
ALTER TABLE `hdz_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hdz_tickets`
--
ALTER TABLE `hdz_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hdz_tickets_messages`
--
ALTER TABLE `hdz_tickets_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indices de la tabla `hdz_ticket_notes`
--
ALTER TABLE `hdz_ticket_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hdz_users`
--
ALTER TABLE `hdz_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hdz_api`
--
ALTER TABLE `hdz_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hdz_articles`
--
ALTER TABLE `hdz_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hdz_attachments`
--
ALTER TABLE `hdz_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `hdz_canned_response`
--
ALTER TABLE `hdz_canned_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hdz_config`
--
ALTER TABLE `hdz_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `hdz_custom_fields`
--
ALTER TABLE `hdz_custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `hdz_departments`
--
ALTER TABLE `hdz_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `hdz_emails`
--
ALTER TABLE `hdz_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `hdz_kb_category`
--
ALTER TABLE `hdz_kb_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hdz_login_log`
--
ALTER TABLE `hdz_login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `hdz_priority`
--
ALTER TABLE `hdz_priority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `hdz_staff`
--
ALTER TABLE `hdz_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `hdz_tickets`
--
ALTER TABLE `hdz_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `hdz_tickets_messages`
--
ALTER TABLE `hdz_tickets_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `hdz_ticket_notes`
--
ALTER TABLE `hdz_ticket_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hdz_users`
--
ALTER TABLE `hdz_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
