-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: d56058.mysql.zone.ee
-- Generation Time: Apr 06, 2017 at 03:27 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d56058sd119733`
--

-- --------------------------------------------------------

--
-- Table structure for table `sarp_areas`
--

CREATE TABLE `sarp_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `complete_name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `type` enum('country','area','cost_center') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'cost_center',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_buildings`
--

CREATE TABLE `sarp_buildings` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `site_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_card_types`
--

CREATE TABLE `sarp_card_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `does_expire` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `deleted` datetime DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_clients`
--

CREATE TABLE `sarp_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `rami_nr` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `vat_nr` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `responsible_user_id` int(10) UNSIGNED NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_client_areas`
--

CREATE TABLE `sarp_client_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_contracts`
--

CREATE TABLE `sarp_contracts` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `rami_contract_nr` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `order_nr` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `contact_user_id` int(10) UNSIGNED NOT NULL,
  `seller_user_id` int(10) UNSIGNED NOT NULL,
  `supervisor_user_id` int(10) UNSIGNED NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_costs`
--

CREATE TABLE `sarp_costs` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `eur_unit` float UNSIGNED NOT NULL,
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `deleted` datetime NOT NULL,
  `deleted_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_emails`
--

CREATE TABLE `sarp_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `ref_model_name` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  `ref_model_id` int(11) DEFAULT NULL,
  `is_sent` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `has_error` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `address` varchar(200) COLLATE utf8_estonian_ci NOT NULL,
  `subject` varchar(200) COLLATE utf8_estonian_ci NOT NULL,
  `body` text COLLATE utf8_estonian_ci NOT NULL,
  `attachment_path` varchar(250) COLLATE utf8_estonian_ci DEFAULT NULL,
  `error` varchar(500) COLLATE utf8_estonian_ci NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_materials`
--

CREATE TABLE `sarp_materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `product_code` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `unit_type` enum('m','m2','pcs','rolls','pack','l') COLLATE utf8_estonian_ci NOT NULL,
  `unit_price` float UNSIGNED NOT NULL,
  `cost` float UNSIGNED NOT NULL,
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `deleted` datetime NOT NULL,
  `deleted_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_notifications`
--

CREATE TABLE `sarp_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `class` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `is_active` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_notification_assignments`
--

CREATE TABLE `sarp_notification_assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) NOT NULL,
  `notification_id` int(10) UNSIGNED NOT NULL,
  `assignment_id` int(10) UNSIGNED NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_notification_cards`
--

CREATE TABLE `sarp_notification_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `notification_id` int(10) UNSIGNED NOT NULL,
  `card_id` int(10) UNSIGNED NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_offers`
--

CREATE TABLE `sarp_offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `offer_nr` varchar(9) COLLATE utf8_estonian_ci NOT NULL,
  `raw_nr` int(10) UNSIGNED NOT NULL,
  `date_created` date NOT NULL,
  `date_start` date NOT NULL,
  `week` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `project_duration` enum('less_than_3','over_3') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'less_than_3',
  `client_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `contract_id` int(10) UNSIGNED NOT NULL,
  `order_nr` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `probability` int(10) UNSIGNED NOT NULL,
  `cost_center_id` int(10) UNSIGNED NOT NULL,
  `site_id` int(10) UNSIGNED NOT NULL,
  `contract_name` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `contact_user_id` int(10) UNSIGNED NOT NULL,
  `seller_user_id` int(10) UNSIGNED NOT NULL,
  `supervisor_user_id` int(10) UNSIGNED NOT NULL,
  `foreman_user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('draft','sent','active','archived','declined') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'draft',
  `rental_total_costs` float UNSIGNED NOT NULL,
  `rental_total_m2` float UNSIGNED NOT NULL,
  `rental_total_offer_prices` float UNSIGNED NOT NULL,
  `rental_total_eur_day_plus_profit` float UNSIGNED NOT NULL,
  `rental_total_eur_month_plus_profit` float UNSIGNED NOT NULL,
  `rental_total_profit` float UNSIGNED NOT NULL,
  `work_total_m2` float UNSIGNED NOT NULL,
  `work_total_costs` float UNSIGNED NOT NULL,
  `work_total_offer_prices` float UNSIGNED NOT NULL,
  `work_total_profit` float UNSIGNED NOT NULL,
  `transport_total_costs` float UNSIGNED NOT NULL,
  `transport_total_offer_prices` float UNSIGNED NOT NULL,
  `transport_total_profit` float UNSIGNED NOT NULL,
  `crane_total_costs` float UNSIGNED NOT NULL,
  `crane_total_offer_prices` float UNSIGNED NOT NULL,
  `crane_total_profit` float UNSIGNED NOT NULL,
  `material_total_costs` float NOT NULL,
  `material_total_offer_prices` float NOT NULL,
  `material_total_profit` float NOT NULL,
  `other_total_costs` float UNSIGNED NOT NULL,
  `other_total_offer_prices` float UNSIGNED NOT NULL,
  `other_total_profit` float UNSIGNED NOT NULL,
  `cost_total_offer_prices` float UNSIGNED NOT NULL,
  `total_offer_prices` float UNSIGNED NOT NULL,
  `total_costs` float UNSIGNED NOT NULL,
  `total_profit` float UNSIGNED NOT NULL,
  `rental_fees_estimated_total` float NOT NULL,
  `hourly_works_estimated_total` float NOT NULL,
  `material_sales_estimated_total` float NOT NULL,
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_offer_costs`
--

CREATE TABLE `sarp_offer_costs` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `cost_id` int(10) UNSIGNED NOT NULL,
  `amount` float UNSIGNED NOT NULL,
  `unit` varchar(10) COLLATE utf8_estonian_ci NOT NULL,
  `eur_unit` float UNSIGNED NOT NULL,
  `total_eur` float UNSIGNED NOT NULL,
  `profit_percentage` float UNSIGNED NOT NULL,
  `offer_eur` float UNSIGNED NOT NULL,
  `notes` varchar(500) COLLATE utf8_estonian_ci NOT NULL,
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `deleted` datetime NOT NULL,
  `deleted_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_offer_fees`
--

CREATE TABLE `sarp_offer_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `scaffold_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `eur_unit_day` float UNSIGNED NOT NULL,
  `min_eur_day` float UNSIGNED NOT NULL,
  `estimated_m2` float UNSIGNED NOT NULL,
  `estimated_total` float UNSIGNED NOT NULL,
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `deleted` datetime NOT NULL,
  `deleted_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_offer_infos`
--

CREATE TABLE `sarp_offer_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `type` enum('info','service') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'info',
  `label` varchar(500) COLLATE utf8_estonian_ci NOT NULL,
  `is_checked` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_offer_materials`
--

CREATE TABLE `sarp_offer_materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `material_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `eur_unit` float UNSIGNED NOT NULL,
  `amount` float UNSIGNED NOT NULL,
  `total_eur` float UNSIGNED NOT NULL,
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `deleted` datetime NOT NULL,
  `deleted_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_offer_rates`
--

CREATE TABLE `sarp_offer_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `base` float UNSIGNED NOT NULL,
  `percent50` float UNSIGNED NOT NULL,
  `percent100` float UNSIGNED NOT NULL,
  `percent150` float UNSIGNED NOT NULL,
  `percent200` float UNSIGNED NOT NULL,
  `percent300` float UNSIGNED NOT NULL,
  `day_shift` float NOT NULL,
  `night_shift` float NOT NULL,
  `KM` float NOT NULL,
  `travel_h` float NOT NULL,
  `daily_allowance` float NOT NULL,
  `estimated_hours` float UNSIGNED NOT NULL,
  `estimated_total` float UNSIGNED NOT NULL,
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `deleted` datetime NOT NULL,
  `deleted_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_offer_rentals`
--

CREATE TABLE `sarp_offer_rentals` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `nr` int(10) UNSIGNED NOT NULL,
  `scaffold_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `work_step` int(10) UNSIGNED NOT NULL,
  `eur_m2` float UNSIGNED NOT NULL,
  `tot_eur` float UNSIGNED NOT NULL,
  `profit_percentage` float UNSIGNED NOT NULL,
  `m2` float UNSIGNED NOT NULL,
  `eur_m2_plus_profit` float UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `tot_eur_plus_profit` float UNSIGNED NOT NULL,
  `eur_day_plus_profit` float UNSIGNED NOT NULL,
  `eur_month_plus_profit` float UNSIGNED NOT NULL,
  `rack_type` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `length` float UNSIGNED NOT NULL,
  `width` float UNSIGNED NOT NULL,
  `height` float UNSIGNED NOT NULL,
  `notes` varchar(500) COLLATE utf8_estonian_ci NOT NULL,
  `building_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `room_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `deleted` datetime NOT NULL,
  `deleted_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_offer_works`
--

CREATE TABLE `sarp_offer_works` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `rental_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nr` int(10) UNSIGNED NOT NULL,
  `scaffold_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `work_step` int(10) UNSIGNED NOT NULL,
  `work_total_percent` int(11) NOT NULL DEFAULT '0',
  `work_total_percent_dismantling` int(11) NOT NULL DEFAULT '0',
  `work_total_percent_crane` int(11) NOT NULL DEFAULT '0',
  `work_total_percent_transport` int(11) NOT NULL DEFAULT '0',
  `work_total_percent_other` int(11) NOT NULL DEFAULT '0',
  `work_total_percent_material` int(11) NOT NULL DEFAULT '0',
  `rental_nr` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `cost_m2` float UNSIGNED NOT NULL,
  `cost_eur_m2` float UNSIGNED NOT NULL,
  `cost_tot_eur` float UNSIGNED NOT NULL,
  `profit_percentage` float UNSIGNED NOT NULL,
  `bargain_eur_m2` float UNSIGNED NOT NULL,
  `bargain_tot_eur` float UNSIGNED NOT NULL,
  `transport_cost_eur` float UNSIGNED NOT NULL,
  `transport_profit_percentage` float UNSIGNED NOT NULL,
  `transport_offer_eur` float UNSIGNED NOT NULL,
  `crane_cost_eur` float UNSIGNED NOT NULL,
  `crane_profit_percentage` float UNSIGNED NOT NULL,
  `crane_offer_eur` float UNSIGNED NOT NULL,
  `material_cost_eur` float UNSIGNED NOT NULL,
  `material_profit_percentage` float UNSIGNED NOT NULL,
  `material_offer_eur` float UNSIGNED NOT NULL,
  `material_notes` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `other_cost_eur` float UNSIGNED NOT NULL,
  `other_profit_percentage` float UNSIGNED NOT NULL,
  `other_offer_eur` float UNSIGNED NOT NULL,
  `other_notes` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `deleted` datetime NOT NULL,
  `deleted_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_options`
--

CREATE TABLE `sarp_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_key` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `option_value` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_projects`
--

CREATE TABLE `sarp_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `project_nr` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `cost_center_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `site_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `client_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `invoice_emails` varchar(500) COLLATE utf8_estonian_ci NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_reports`
--

CREATE TABLE `sarp_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `followup_nr` int(10) UNSIGNED NOT NULL,
  `status` enum('not_sent','sent','accepted','invoiced') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'not_sent',
  `client_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `contract_id` int(10) UNSIGNED NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `rent` float(10,2) NOT NULL,
  `work` float(10,2) NOT NULL,
  `material` float(10,2) NOT NULL,
  `transport` float(10,2) NOT NULL,
  `total` float(10,2) NOT NULL,
  `confirm_hash` varchar(60) COLLATE utf8_estonian_ci DEFAULT NULL,
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_rooms`
--

CREATE TABLE `sarp_rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `building_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_scaffolds`
--

CREATE TABLE `sarp_scaffolds` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `scaffold_type_id` int(10) UNSIGNED NOT NULL,
  `status` enum('assembling','enlarging','modification','partly_dismantled','up_and_running','dismantling','transport','stopped') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'assembling',
  `offer_id` int(10) UNSIGNED NOT NULL,
  `rental_nr` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `is_contract` int(11) NOT NULL DEFAULT '0',
  `offer_rental_id` int(11) NOT NULL DEFAULT '0',
  `offer_step` int(11) NOT NULL,
  `is_rent_100` int(11) NOT NULL DEFAULT '1',
  `building_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `date_assembling` date NOT NULL,
  `date_up_and_running` date NOT NULL,
  `date_dismantling` date NOT NULL,
  `date_stopped` date NOT NULL,
  `comment` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `deleted` datetime NOT NULL,
  `deleted_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_scaffold_rentals`
--

CREATE TABLE `sarp_scaffold_rentals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `rental_nr` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `total` float NOT NULL,
  `work_id` int(11) NOT NULL,
  `rent_percent` int(11) NOT NULL DEFAULT '0',
  `status` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `comment` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `sizes` text COLLATE utf8_estonian_ci NOT NULL,
  `date_up_and_running` date NOT NULL,
  `date_dismantling` date NOT NULL,
  `date_stopped` date NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_scaffold_sizes`
--

CREATE TABLE `sarp_scaffold_sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `scaffold_id` int(10) UNSIGNED NOT NULL,
  `length` float UNSIGNED NOT NULL,
  `width` float UNSIGNED NOT NULL,
  `height` float UNSIGNED NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_scaffold_types`
--

CREATE TABLE `sarp_scaffold_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `type` enum('scaffold','tent') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'scaffold',
  `season_price_m2_over_3_months` float UNSIGNED NOT NULL,
  `season_price_m2_fewer_3_months` float UNSIGNED NOT NULL,
  `winter_price_m2_over_3_months` float UNSIGNED NOT NULL,
  `winter_price_m2_fewer_3_months` float UNSIGNED NOT NULL,
  `cost` float UNSIGNED NOT NULL,
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `deleted` datetime NOT NULL,
  `deleted_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_sites`
--

CREATE TABLE `sarp_sites` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `cost_center_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `is_draft` int(11) NOT NULL DEFAULT '1',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_subcontractors`
--

CREATE TABLE `sarp_subcontractors` (
  `id` int(11) NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `reg_code` varchar(10) COLLATE utf8_estonian_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_estonian_ci DEFAULT NULL,
  `email_report` varchar(50) COLLATE utf8_estonian_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_estonian_ci DEFAULT NULL,
  `has_logo` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `responsible_user_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(3) NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_subcontractor_areas`
--

CREATE TABLE `sarp_subcontractor_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `subcontractor_id` int(10) UNSIGNED NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_subcontractor_comments`
--

CREATE TABLE `sarp_subcontractor_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `subcontractor_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8_estonian_ci NOT NULL,
  `date_comment` date NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_trainings`
--

CREATE TABLE `sarp_trainings` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `name` varchar(500) COLLATE utf8_estonian_ci NOT NULL,
  `description` text COLLATE utf8_estonian_ci NOT NULL,
  `link` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `has_file` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `file_name` varchar(200) COLLATE utf8_estonian_ci NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_training_assignments`
--

CREATE TABLE `sarp_training_assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `training_id` int(10) UNSIGNED NOT NULL,
  `worker_id` int(10) UNSIGNED NOT NULL,
  `date_deadline` date NOT NULL,
  `is_opened` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_opened` date NOT NULL,
  `is_accepted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_accepted` date NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_users`
--

CREATE TABLE `sarp_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `main_role` enum('subcontractor','client','rami') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'subcontractor',
  `sub_role` enum('user','worker','foreman','safety','supervisor','supervisor_rr','supervisor_pt','manager_cc','manager','admin') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'worker',
  `subcontractor_id` int(10) UNSIGNED DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `first_name` varchar(200) COLLATE utf8_estonian_ci DEFAULT NULL,
  `last_name` varchar(200) COLLATE utf8_estonian_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_estonian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_estonian_ci DEFAULT NULL,
  `language` enum('en','et','fi','pl') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'fi',
  `is_active` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_workers`
--

CREATE TABLE `sarp_workers` (
  `id` int(11) NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date_birth` date NOT NULL,
  `tax_number` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `greencard_nr` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `date_greencard_expire` date NOT NULL,
  `has_greencard_picture` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `bluecard_nr` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `date_bluecard_expire` date NOT NULL,
  `has_bluecard_picture` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `valtti_nr` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `date_valtti_expire` date NOT NULL,
  `has_valtti_picture` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `accident_contact` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `accident_phone` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `local_address` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `home_address` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `has_picture` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `hour_price1` float NOT NULL,
  `hour_price2` float NOT NULL,
  `hour_price3` float NOT NULL,
  `date_inspection` date NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_worker_areas`
--

CREATE TABLE `sarp_worker_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `worker_id` int(10) UNSIGNED NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_worker_cards`
--

CREATE TABLE `sarp_worker_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `worker_id` int(10) UNSIGNED NOT NULL,
  `card_type_id` int(10) UNSIGNED NOT NULL,
  `number` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `date_expire` date NOT NULL,
  `has_picture` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` datetime DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_worker_comments`
--

CREATE TABLE `sarp_worker_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `worker_id` int(10) UNSIGNED NOT NULL,
  `visibility` int(4) NOT NULL DEFAULT '1000',
  `content` text COLLATE utf8_estonian_ci NOT NULL,
  `date_comment` date NOT NULL,
  `has_file` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `file_name` varchar(200) COLLATE utf8_estonian_ci NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_works`
--

CREATE TABLE `sarp_works` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `work_nr` varchar(10) COLLATE utf8_estonian_ci NOT NULL,
  `raw_nr` int(10) UNSIGNED NOT NULL,
  `type` enum('new','contract') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'new',
  `status` enum('queued','ongoing','ended') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'queued',
  `client_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `contract_id` int(10) UNSIGNED NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `offer_work_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `work_percent` int(11) NOT NULL DEFAULT '0',
  `work_type` enum('assembling','enlarging','modification','modification_for_other_client','partly_dismantled','dismantling','transport','other_work','foil','crane','contract_other_work','material_other_work') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'assembling',
  `other_work` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `is_foil` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `offer_fixed_hour` int(11) NOT NULL DEFAULT '0',
  `scaffold_type_id` int(10) UNSIGNED NOT NULL,
  `scaffold_id` int(10) UNSIGNED NOT NULL,
  `building_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `client_work_nr` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `is_no_work_needed` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `supervisor_user_id` int(10) UNSIGNED NOT NULL,
  `other_offer_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_work_evaluations`
--

CREATE TABLE `sarp_work_evaluations` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `work_id` int(10) UNSIGNED NOT NULL,
  `people_present` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `date_evaluation` date NOT NULL,
  `site_functions` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `have_read` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `radio_1` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_1` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `radio_2` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_2` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `radio_3` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_3` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `radio_4` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_4` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `radio_4_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_4_1` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_4_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_4_2` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_4_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_4_3` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_4_4` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_4_4` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_4_5` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_4_5` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_4_6` int(10) UNSIGNED NOT NULL,
  `steps_4_6` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_4_7` int(10) UNSIGNED NOT NULL,
  `steps_4_7` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_4_8` int(10) UNSIGNED NOT NULL,
  `steps_4_8` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_4_9` int(10) UNSIGNED NOT NULL,
  `steps_4_9` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_4_10` int(10) UNSIGNED NOT NULL,
  `steps_4_10` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_5` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_5` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `radio_5_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_5_1` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_5_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_5_2` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_5_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_5_3` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_5_4` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_5_4` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_5_5` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_5_5` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_5_6` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_5_6` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_5_7` int(10) UNSIGNED DEFAULT '0',
  `steps_5_7` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_5_8` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_5_8` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_5_9` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_5_9` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_6` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_6` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `radio_7` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_7` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `radio_8` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_8` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `radio_9` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_9` varchar(1000) COLLATE utf8_estonian_ci NOT NULL,
  `radio_9_1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_9_1` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_9_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_9_2` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_9_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_9_3` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_9_4` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_9_4` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_9_5` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_9_5` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_9_6` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_9_6` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_9_7` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `steps_9_7` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_10` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_10` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_11` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_11` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_12` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_12` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `radio_13` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `steps_13` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `inspector` varchar(200) COLLATE utf8_estonian_ci NOT NULL,
  `person_in_charge` varchar(200) COLLATE utf8_estonian_ci NOT NULL,
  `fitters` varchar(200) COLLATE utf8_estonian_ci NOT NULL,
  `canvas_inspector` text COLLATE utf8_estonian_ci NOT NULL,
  `canvas_person_in_charge` text COLLATE utf8_estonian_ci NOT NULL,
  `canvas_fitters` text COLLATE utf8_estonian_ci NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_work_materials`
--

CREATE TABLE `sarp_work_materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `work_id` int(10) UNSIGNED NOT NULL,
  `material_id` int(10) UNSIGNED NOT NULL,
  `amount` float UNSIGNED NOT NULL,
  `work_start_date` date NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_work_workers`
--

CREATE TABLE `sarp_work_workers` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `work_id` int(10) UNSIGNED NOT NULL,
  `worker_id` int(10) UNSIGNED NOT NULL,
  `role` enum('worker','supervisor') COLLATE utf8_estonian_ci NOT NULL DEFAULT 'worker',
  `is_no_work_needed` tinyint(3) UNSIGNED DEFAULT '0',
  `is_done` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `work_start_date` date NOT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarp_work_worker_times`
--

CREATE TABLE `sarp_work_worker_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `work_worker_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `norm` float UNSIGNED NOT NULL,
  `percent_50` float UNSIGNED NOT NULL,
  `percent_100` float UNSIGNED NOT NULL,
  `percent_150` float UNSIGNED NOT NULL,
  `percent_200` float NOT NULL,
  `percent_300` float UNSIGNED NOT NULL,
  `client_norm` float UNSIGNED NOT NULL,
  `client_50` float UNSIGNED NOT NULL,
  `client_100` float UNSIGNED NOT NULL,
  `client_150` float UNSIGNED NOT NULL,
  `client_200` float NOT NULL,
  `client_300` float UNSIGNED NOT NULL,
  `day_shift` float NOT NULL,
  `night_shift` float NOT NULL,
  `KM` float NOT NULL,
  `travel_h` float NOT NULL,
  `daily_allowance` float NOT NULL,
  `client_day_shift` float NOT NULL,
  `client_night_shift` float NOT NULL,
  `client_KM` float NOT NULL,
  `client_travel_h` float NOT NULL,
  `client_daily_allowance` float NOT NULL,
  `client_time_start` time NOT NULL,
  `client_time_end` time NOT NULL,
  `is_accepted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) UNSIGNED NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sarp_areas`
--
ALTER TABLE `sarp_areas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_buildings`
--
ALTER TABLE `sarp_buildings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_card_types`
--
ALTER TABLE `sarp_card_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_clients`
--
ALTER TABLE `sarp_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_client_areas`
--
ALTER TABLE `sarp_client_areas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_contracts`
--
ALTER TABLE `sarp_contracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_costs`
--
ALTER TABLE `sarp_costs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_emails`
--
ALTER TABLE `sarp_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sarp_materials`
--
ALTER TABLE `sarp_materials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_notifications`
--
ALTER TABLE `sarp_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`) USING BTREE;

--
-- Indexes for table `sarp_notification_assignments`
--
ALTER TABLE `sarp_notification_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`) USING BTREE;

--
-- Indexes for table `sarp_notification_cards`
--
ALTER TABLE `sarp_notification_cards`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `hash` (`hash`) USING BTREE;

--
-- Indexes for table `sarp_offers`
--
ALTER TABLE `sarp_offers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_offer_costs`
--
ALTER TABLE `sarp_offer_costs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_offer_fees`
--
ALTER TABLE `sarp_offer_fees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_offer_infos`
--
ALTER TABLE `sarp_offer_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_offer_materials`
--
ALTER TABLE `sarp_offer_materials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_offer_rates`
--
ALTER TABLE `sarp_offer_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_offer_rentals`
--
ALTER TABLE `sarp_offer_rentals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_offer_works`
--
ALTER TABLE `sarp_offer_works`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_options`
--
ALTER TABLE `sarp_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sarp_projects`
--
ALTER TABLE `sarp_projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_reports`
--
ALTER TABLE `sarp_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_rooms`
--
ALTER TABLE `sarp_rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_scaffolds`
--
ALTER TABLE `sarp_scaffolds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_scaffold_rentals`
--
ALTER TABLE `sarp_scaffold_rentals`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `sarp_scaffold_sizes`
--
ALTER TABLE `sarp_scaffold_sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_scaffold_types`
--
ALTER TABLE `sarp_scaffold_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_sites`
--
ALTER TABLE `sarp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_subcontractors`
--
ALTER TABLE `sarp_subcontractors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_subcontractor_areas`
--
ALTER TABLE `sarp_subcontractor_areas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_subcontractor_comments`
--
ALTER TABLE `sarp_subcontractor_comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_trainings`
--
ALTER TABLE `sarp_trainings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_training_assignments`
--
ALTER TABLE `sarp_training_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_users`
--
ALTER TABLE `sarp_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_workers`
--
ALTER TABLE `sarp_workers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_worker_areas`
--
ALTER TABLE `sarp_worker_areas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_worker_cards`
--
ALTER TABLE `sarp_worker_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_worker_comments`
--
ALTER TABLE `sarp_worker_comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_works`
--
ALTER TABLE `sarp_works`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_work_evaluations`
--
ALTER TABLE `sarp_work_evaluations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_work_materials`
--
ALTER TABLE `sarp_work_materials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_work_workers`
--
ALTER TABLE `sarp_work_workers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `sarp_work_worker_times`
--
ALTER TABLE `sarp_work_worker_times`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sarp_areas`
--
ALTER TABLE `sarp_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `sarp_buildings`
--
ALTER TABLE `sarp_buildings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `sarp_card_types`
--
ALTER TABLE `sarp_card_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `sarp_clients`
--
ALTER TABLE `sarp_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `sarp_client_areas`
--
ALTER TABLE `sarp_client_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `sarp_contracts`
--
ALTER TABLE `sarp_contracts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `sarp_costs`
--
ALTER TABLE `sarp_costs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sarp_emails`
--
ALTER TABLE `sarp_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1925;
--
-- AUTO_INCREMENT for table `sarp_materials`
--
ALTER TABLE `sarp_materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `sarp_notifications`
--
ALTER TABLE `sarp_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2381;
--
-- AUTO_INCREMENT for table `sarp_notification_assignments`
--
ALTER TABLE `sarp_notification_assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2194;
--
-- AUTO_INCREMENT for table `sarp_notification_cards`
--
ALTER TABLE `sarp_notification_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT for table `sarp_offers`
--
ALTER TABLE `sarp_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `sarp_offer_costs`
--
ALTER TABLE `sarp_offer_costs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;
--
-- AUTO_INCREMENT for table `sarp_offer_fees`
--
ALTER TABLE `sarp_offer_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `sarp_offer_infos`
--
ALTER TABLE `sarp_offer_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT for table `sarp_offer_materials`
--
ALTER TABLE `sarp_offer_materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;
--
-- AUTO_INCREMENT for table `sarp_offer_rates`
--
ALTER TABLE `sarp_offer_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `sarp_offer_rentals`
--
ALTER TABLE `sarp_offer_rentals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `sarp_offer_works`
--
ALTER TABLE `sarp_offer_works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `sarp_options`
--
ALTER TABLE `sarp_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sarp_projects`
--
ALTER TABLE `sarp_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `sarp_reports`
--
ALTER TABLE `sarp_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;
--
-- AUTO_INCREMENT for table `sarp_rooms`
--
ALTER TABLE `sarp_rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3890;
--
-- AUTO_INCREMENT for table `sarp_scaffolds`
--
ALTER TABLE `sarp_scaffolds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4004;
--
-- AUTO_INCREMENT for table `sarp_scaffold_rentals`
--
ALTER TABLE `sarp_scaffold_rentals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4616;
--
-- AUTO_INCREMENT for table `sarp_scaffold_sizes`
--
ALTER TABLE `sarp_scaffold_sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4063;
--
-- AUTO_INCREMENT for table `sarp_scaffold_types`
--
ALTER TABLE `sarp_scaffold_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `sarp_sites`
--
ALTER TABLE `sarp_sites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sarp_subcontractors`
--
ALTER TABLE `sarp_subcontractors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `sarp_subcontractor_areas`
--
ALTER TABLE `sarp_subcontractor_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;
--
-- AUTO_INCREMENT for table `sarp_subcontractor_comments`
--
ALTER TABLE `sarp_subcontractor_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sarp_trainings`
--
ALTER TABLE `sarp_trainings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `sarp_training_assignments`
--
ALTER TABLE `sarp_training_assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3789;
--
-- AUTO_INCREMENT for table `sarp_users`
--
ALTER TABLE `sarp_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1145;
--
-- AUTO_INCREMENT for table `sarp_workers`
--
ALTER TABLE `sarp_workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=965;
--
-- AUTO_INCREMENT for table `sarp_worker_areas`
--
ALTER TABLE `sarp_worker_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1705;
--
-- AUTO_INCREMENT for table `sarp_worker_cards`
--
ALTER TABLE `sarp_worker_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;
--
-- AUTO_INCREMENT for table `sarp_worker_comments`
--
ALTER TABLE `sarp_worker_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `sarp_works`
--
ALTER TABLE `sarp_works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10644;
--
-- AUTO_INCREMENT for table `sarp_work_evaluations`
--
ALTER TABLE `sarp_work_evaluations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8510;
--
-- AUTO_INCREMENT for table `sarp_work_materials`
--
ALTER TABLE `sarp_work_materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=658;
--
-- AUTO_INCREMENT for table `sarp_work_workers`
--
ALTER TABLE `sarp_work_workers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36092;
--
-- AUTO_INCREMENT for table `sarp_work_worker_times`
--
ALTER TABLE `sarp_work_worker_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36458;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
