-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2021 at 04:17 PM
-- Server version: 10.3.23-MariaDB-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvics_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_balances`
--

CREATE TABLE `account_balances` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `balance` decimal(16,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_notes`
--

CREATE TABLE `app_notes` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `app_password_manager`
--

CREATE TABLE `app_password_manager` (
  `id` int(11) UNSIGNED NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_password_manager`
--

INSERT INTO `app_password_manager` (`id`, `client_id`, `type`, `name`, `url`, `username`, `password`, `notes`, `created_at`, `updated_at`) VALUES
(4, 294, NULL, 'google 2', 'http://www.google.com', 'test', 'test', '', '2017-12-09 09:28:36', '2017-12-09 10:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `app_sms`
--

CREATE TABLE `app_sms` (
  `id` int(11) NOT NULL,
  `req_time` datetime DEFAULT NULL,
  `sent_time` datetime DEFAULT NULL,
  `sms_from` text DEFAULT NULL,
  `sms_to` text DEFAULT NULL,
  `sms` text DEFAULT NULL,
  `driver` text DEFAULT NULL,
  `resp` text DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `stype` varchar(200) NOT NULL DEFAULT 'Sent',
  `cid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `trid` int(11) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `app_sms_drivers`
--

CREATE TABLE `app_sms_drivers` (
  `id` int(11) NOT NULL,
  `dname` varchar(200) DEFAULT NULL,
  `handler` varchar(200) DEFAULT NULL,
  `weburl` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `incoming_url` varchar(200) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `api_key` varchar(200) DEFAULT NULL,
  `api_secret` varchar(200) DEFAULT NULL,
  `route` varchar(200) DEFAULT NULL,
  `sender_id` varchar(100) DEFAULT NULL,
  `balance` decimal(14,2) DEFAULT NULL,
  `placeholder` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_sms_drivers`
--

INSERT INTO `app_sms_drivers` (`id`, `dname`, `handler`, `weburl`, `description`, `url`, `incoming_url`, `method`, `username`, `password`, `api_key`, `api_secret`, `route`, `sender_id`, `balance`, `placeholder`, `status`, `is_active`, `created_at`, `updated_at`) VALUES
(135, 'custom', 'custom', 'http://www.example.com', 'Your Custom Gateway', 'http://api.example.com', 'http://www.example.com/incoming/', 'GET', 'your_username', 'your_password', 'your_api_key', 'your_api_secret', '1', 'CloudOnex', 1.00, '{{url}}/send.php?username={{username}}&password={{password}}&from={{from}}&to={{to}}&message={{message}}', 'Sandbox', 0, NULL, NULL),
(136, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(137, 'custom', 'custom', 'http://www.example.com', 'Your Custom Gateway', 'http://api.example.com', 'http://www.example.com/incoming/', 'GET', 'your_username', 'your_password', 'your_api_key', 'your_api_secret', '1', 'CloudOnex', 1.00, '{{url}}/send.php?username={{username}}&password={{password}}&from={{from}}&to={{to}}&message={{message}}', 'Sandbox', 0, NULL, NULL),
(138, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(139, 'custom', 'custom', 'http://www.example.com', 'Your Custom Gateway', 'http://api.example.com', 'http://www.example.com/incoming/', 'GET', 'your_username', 'your_password', 'your_api_key', 'your_api_secret', '1', 'CloudOnex', 1.00, '{{url}}/send.php?username={{username}}&password={{password}}&from={{from}}&to={{to}}&message={{message}}', 'Sandbox', 0, NULL, NULL),
(140, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_sms_templates`
--

CREATE TABLE `app_sms_templates` (
  `id` int(11) NOT NULL,
  `tpl` varchar(200) DEFAULT NULL,
  `sms` text DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_at_2` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_sms_templates`
--

INSERT INTO `app_sms_templates` (`id`, `tpl`, `sms`, `status`, `created_at`, `updated_at`, `updated_at_2`) VALUES
(1, 'Invoice Created', 'Your Invoice- {{invoice_id}} is created. To view your invoice- {{invoice_url}}', NULL, NULL, '2017-11-22 20:59:37', NULL),
(2, 'Invoice Payment Reminder', 'We have not received payment for invoice {{invoice_id}}, dated {{invoice_date}}. To view your invoice- {{invoice_url}}', NULL, NULL, '2017-11-22 21:01:14', NULL),
(3, 'Invoice Overdue Notice', 'Your Invoice- {{invoice_id}} is now overdue. To view your invoice- {{invoice_url}}', NULL, NULL, '2017-11-22 20:59:20', NULL),
(4, 'Invoice Payment Confirmation', 'We have received your Payment for Invoice ID- {{invoice_id}}', NULL, NULL, '2017-11-22 21:02:15', NULL),
(5, 'Invoice Refund Confirmation', 'Your Payment for {{invoice_id}} has been refunded.', NULL, NULL, '2017-11-22 21:03:19', NULL),
(6, 'Quote Created', 'A Quote has been created- {{quote_id}}. You can view this Quote- {{quote_url}}', NULL, NULL, '2017-11-22 21:03:19', NULL),
(7, 'Quote Accepted', 'Thanks for Accepting Quote - {{quote_id}}. You can view this Quote- {{quote_url}}', NULL, NULL, '2017-11-22 21:03:19', NULL),
(8, 'Quote Cancelled', 'Quote has been cancelled - {{quote_id}}. You can view this Quote- {{quote_url}}', NULL, NULL, '2017-11-22 21:03:19', NULL),
(9, 'Quote Accepted: Admin Notification', 'Quote - {{quote_id}} has been accepted. You can view this Quote- {{quote_url}}', NULL, NULL, '2017-11-22 21:03:19', NULL),
(10, 'Quote Cancelled: Admin Notification', 'Quote - {{quote_id}} has been Cancelled. You can view this Quote- {{quote_url}}', NULL, NULL, NULL, NULL),
(12, 'Ticket Assigned: Admin Notification', 'Ticket - {{ticket_id}} has been assigned to you.', NULL, '2018-10-24 09:33:32', '2018-10-24 09:33:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_purchased` date DEFAULT NULL,
  `supported_until` date DEFAULT NULL,
  `price` decimal(16,4) DEFAULT NULL,
  `depreciation` decimal(16,4) DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `contact_id` int(10) UNSIGNED DEFAULT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `asset`, `name`, `brand`, `date_purchased`, `supported_until`, `price`, `depreciation`, `serial`, `image`, `status`, `notes`, `category_id`, `employee_id`, `contact_id`, `location_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, '', 'Macbook Pro', '', '2018-11-06', '2019-11-06', 1250.0000, NULL, 'SL37289274899', NULL, NULL, '', 6, NULL, NULL, NULL, NULL, '2018-11-05 21:12:09', '2018-11-05 21:12:23'),
(9, '', 'CloudOnex Business Suite', '', '2018-11-06', '2019-11-06', 299.0000, NULL, 'ABC-17284-278487-2222', NULL, NULL, '', 7, NULL, NULL, NULL, NULL, '2018-11-05 21:13:02', '2018-11-05 21:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `asset_categories`
--

CREATE TABLE `asset_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_categories`
--

INSERT INTO `asset_categories` (`id`, `parent_id`, `name`, `api_name`, `plural`, `slug`, `prefix`, `sl`, `is_active`, `is_default`, `sort_order`, `created_at`, `updated_at`) VALUES
(6, 0, 'Electronics', '', '', '', '', '', 1, 0, 1, '2018-11-05 21:11:40', '2018-11-05 21:11:40'),
(7, 0, 'Softwares', '', '', '', '', '', 1, 0, 1, '2018-11-05 21:11:46', '2018-11-05 21:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `is_present` tinyint(1) NOT NULL DEFAULT 1,
  `total_time` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(10) UNSIGNED DEFAULT NULL,
  `contact_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `next_date` date NOT NULL,
  `last_paid_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net_amount` decimal(16,8) NOT NULL,
  `recurring_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remind_days_before` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `add_transaction_automatically` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_skipped` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `title`, `from_account_id`, `contact_id`, `category_id`, `start_date`, `next_date`, `last_paid_date`, `end_date`, `currency`, `net_amount`, `recurring_type`, `website`, `remind_days_before`, `add_transaction_automatically`, `is_active`, `is_paid`, `is_skipped`, `created_at`, `updated_at`) VALUES
(1, 'UniKL', 2, 8, 43, NULL, '2021-06-29', NULL, NULL, 'MYR', 1675.00000000, 'Monthly', NULL, 0, 0, 1, 1, 0, '2021-06-28 17:21:35', '2021-06-28 17:22:06'),
(2, 'Faisal Comilla', 3, NULL, 63, NULL, '2021-06-29', NULL, NULL, 'MYR', 1000.00000000, 'Monthly', NULL, 0, 0, 1, 1, 0, '2021-06-28 17:26:59', '2021-06-28 17:27:11'),
(3, 'Personal Expenses', 5, NULL, 14, NULL, '2021-06-29', NULL, NULL, 'MYR', 35.00000000, 'Monthly', NULL, 0, 0, 1, 1, 0, '2021-06-28 17:33:56', '2021-06-28 17:34:02'),
(4, 'Anwar Vai', 2, NULL, 63, NULL, '2021-06-29', NULL, NULL, 'MYR', 210.00000000, 'Monthly', NULL, 0, 0, 1, 1, 0, '2021-06-28 17:37:36', '2021-06-28 17:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `clx_integrations`
--

CREATE TABLE `clx_integrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clx_integrations`
--

INSERT INTO `clx_integrations` (`id`, `type`, `name`, `url`, `key`, `secret`, `is_active`, `is_default`, `created_at`, `updated_at`) VALUES
(4, 'woocommerce', 'woocommerce local', 'https://wp.test', 'ck_9b08a41676e8aca0ad7f7df64d74ae18dad64289', 'cs_d3ce9458a3a5335c03f0bc9d2ef381a1fbaee7e7', 1, 0, '2018-07-22 21:11:56', '2018-10-21 23:30:28'),
(5, 'woocommerce', 'eawal', 'https://awalvape.com', 'ck_c55f0b944883d2ce258197e1181221fcf51d0aa4', 'cs_c19393b428f072f63e7dc1d8c234e23fed072a78', 1, 1, '2018-10-21 23:30:25', '2018-10-21 23:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `clx_shared_preferences`
--

CREATE TABLE `clx_shared_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `relation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_cards`
--

CREATE TABLE `credit_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `card_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_month` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_year` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvv` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_cards`
--

INSERT INTO `credit_cards` (`id`, `contact_id`, `card_type`, `card_holder_name`, `card_number`, `expiry_month`, `expiry_year`, `cvv`, `created_at`, `updated_at`) VALUES
(1, 294, '', 'Maria Elizabeth', '424242424242424242', '07', '22', '456', '2018-04-22 23:17:45', '2018-04-23 03:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounts`
--

CREATE TABLE `crm_accounts` (
  `id` int(11) NOT NULL,
  `account` varchar(200) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `business_number` varchar(200) DEFAULT NULL,
  `jobtitle` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `o` int(11) DEFAULT 0,
  `phone` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `balance` decimal(16,2) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `notes` text DEFAULT NULL,
  `options` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `token` text DEFAULT NULL,
  `ts` text DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `google` varchar(100) DEFAULT NULL,
  `linkedin` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `tax_number` varchar(100) DEFAULT NULL,
  `entity_number` varchar(100) DEFAULT NULL,
  `currency` int(11) DEFAULT 0,
  `pmethod` varchar(100) DEFAULT NULL,
  `autologin` varchar(100) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `lastloginip` varchar(100) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `isp` varchar(100) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT 0,
  `sid` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `country_idd` varchar(20) DEFAULT NULL,
  `signed_up_by` varchar(100) DEFAULT NULL,
  `signed_up_ip` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ct` varchar(200) DEFAULT NULL,
  `assistant` varchar(200) DEFAULT NULL,
  `asst_phone` varchar(100) DEFAULT NULL,
  `second_email` varchar(100) DEFAULT NULL,
  `second_phone` varchar(100) DEFAULT NULL,
  `taxexempt` varchar(50) DEFAULT NULL,
  `latefeeoveride` varchar(50) DEFAULT NULL,
  `overideduenotices` varchar(50) DEFAULT NULL,
  `separateinvoices` varchar(50) DEFAULT NULL,
  `disableautocc` varchar(50) DEFAULT NULL,
  `billingcid` int(10) NOT NULL DEFAULT 0,
  `securityqid` int(10) NOT NULL DEFAULT 0,
  `securityqans` text DEFAULT NULL,
  `cardtype` varchar(200) DEFAULT NULL,
  `cardlastfour` varchar(20) DEFAULT NULL,
  `cardnum` text DEFAULT NULL,
  `startdate` varchar(50) DEFAULT NULL,
  `expdate` varchar(50) DEFAULT NULL,
  `issuenumber` varchar(200) DEFAULT NULL,
  `bankname` varchar(200) DEFAULT NULL,
  `banktype` varchar(200) DEFAULT NULL,
  `bankcode` varchar(200) DEFAULT NULL,
  `bankacct` varchar(200) DEFAULT NULL,
  `gatewayid` int(10) NOT NULL DEFAULT 0,
  `language` text DEFAULT NULL,
  `pwresetkey` varchar(100) DEFAULT NULL,
  `emailoptout` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pwresetexpiry` datetime DEFAULT NULL,
  `is_email_verified` int(1) NOT NULL DEFAULT 0,
  `is_phone_veirifed` int(1) NOT NULL DEFAULT 0,
  `photo_id_type` varchar(100) DEFAULT NULL,
  `photo_id` varchar(100) DEFAULT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'Customer',
  `drive` varchar(50) DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(100) DEFAULT NULL,
  `display_name` varchar(200) DEFAULT NULL,
  `secondary_email` varchar(200) DEFAULT NULL,
  `secondary_phone` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounts`
--

INSERT INTO `crm_accounts` (`id`, `account`, `fname`, `lname`, `company`, `business_number`, `jobtitle`, `cid`, `o`, `phone`, `fax`, `email`, `username`, `address`, `city`, `state`, `zip`, `country`, `balance`, `status`, `notes`, `options`, `tags`, `password`, `token`, `ts`, `img`, `web`, `facebook`, `google`, `linkedin`, `twitter`, `skype`, `tax_number`, `entity_number`, `currency`, `pmethod`, `autologin`, `lastlogin`, `lastloginip`, `stage`, `timezone`, `isp`, `lat`, `lon`, `gname`, `gid`, `sid`, `role`, `country_code`, `country_idd`, `signed_up_by`, `signed_up_ip`, `dob`, `ct`, `assistant`, `asst_phone`, `second_email`, `second_phone`, `taxexempt`, `latefeeoveride`, `overideduenotices`, `separateinvoices`, `disableautocc`, `billingcid`, `securityqid`, `securityqans`, `cardtype`, `cardlastfour`, `cardnum`, `startdate`, `expdate`, `issuenumber`, `bankname`, `banktype`, `bankcode`, `bankacct`, `gatewayid`, `language`, `pwresetkey`, `emailoptout`, `created_at`, `updated_at`, `pwresetexpiry`, `is_email_verified`, `is_phone_veirifed`, `photo_id_type`, `photo_id`, `type`, `drive`, `workspace_id`, `parent_id`, `code`, `display_name`, `secondary_email`, `secondary_phone`) VALUES
(5, 'Rafiqul Islam', '', '', 'CVICS', '', '', 2, 1, '008801670519765', '', 'roiproney@gmail.com', '', '', 'Dhaka', 'Dhaka', '1217', 'Bangladesh', 0.00, 'Active', '', NULL, '', '$2y$10$fVqRxGcgGGGwmZfFxBdUme6ka9z4k.H1dVNh0DqgzFEPHVQk.OXk2', 'jce6k02egvydebci75ny3fe2f73c892334bca62f171da2dfe63a', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 'iy21goehldrv1qbynh6b51624608762', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Agent', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-06-25 13:42:15', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1624606935app2vw0b5ks9', 0, 0, 'CUS-21020005', NULL, '', NULL),
(6, 'Rahat Vai', '', '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', 'Malaysia', 0.00, 'Active', '', NULL, '', '$2y$10$mbWliXcDG/e3KOiFUlh0PeZqXcSJ8Tv/kTAp5Qzelu2M6LcroZLMq', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-06-27 23:53:48', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1624809228p49tyhxkvp4d', 0, 0, 'CUS-21020006', NULL, '', NULL),
(7, 'Loai Salloum', '', '', '', '', '', 0, 1, '+6011 1155 8430', '', 'loaisalloum12@gmail.com', '', '', '', '', '', 'Malaysia', 0.00, 'Active', '', NULL, '', '$2y$10$cKzyQ6xi9zAJma0bFVZOGe/QiIqSi1G.vFleCPDCuY0TbioeZzvdq', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-06-28 13:57:10', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1624859830ny5pxvlk3gcn', 0, 0, 'STU-2100001', NULL, '', NULL),
(8, 'UNIKL', '', '', 'University Kuala Lumpur', '', '', 3, 0, '', '', '', NULL, '', '', '', '', 'Malaysia', 0.00, 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-06-28 17:16:45', NULL, NULL, 0, 0, NULL, NULL, 'Supplier', '1624871805009vtchd7ajj', 0, 0, '', NULL, '', NULL),
(9, 'Anwar Vai CTG', '', '', '', '', '', 0, 1, '', '', '', NULL, '', '', '', '', 'Malaysia', 0.00, 'Active', '', NULL, '', '$2y$10$gqgurFk1cKb3/Ae8cglmEeKlxXPcosnL0BySmcR7EdNj9nRPvEo2y', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-06-28 18:31:59', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '162487631951lhuwqdb68i', 0, 0, 'CUS-2100002', NULL, '', NULL),
(10, 'Sadek Hussen Tapader', '', '', '', '', '', 0, 1, '+60 11-6416 5873', '', 'hussensadek07@gmail.com', NULL, '', '', '', '', 'Bangladesh', 0.00, 'Active', '', NULL, '', '$2y$10$Zft44GdvAWh8m.HgOjPmcOGFrMPyMU/K2o5h7qnYPCcoIM8IHMb4G', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-09-14 21:31:43', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1631626303tgyzz97e8jkn', 0, 0, 'CUS-2100003', NULL, '', NULL),
(11, 'Sanjit Suttradhor', '', '', 'BQ0126127', '', '', 4, 0, '+60 11-1157 2295', '', 'suttradhor92@gmail.com', NULL, '', '', '', '', 'Malaysia', 0.00, 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-10-16 00:11:10', NULL, NULL, 0, 0, NULL, NULL, 'Customer', '1634314270iubea9kavjqu', 0, 0, '', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_customfields`
--

CREATE TABLE `crm_customfields` (
  `id` int(10) NOT NULL,
  `ctype` text DEFAULT NULL,
  `relid` int(10) NOT NULL DEFAULT 0,
  `fieldname` text DEFAULT NULL,
  `fieldtype` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fieldoptions` text DEFAULT NULL,
  `regexpr` text DEFAULT NULL,
  `adminonly` text DEFAULT NULL,
  `required` text DEFAULT NULL,
  `showorder` text DEFAULT NULL,
  `showinvoice` text DEFAULT NULL,
  `sorder` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_customfields`
--

INSERT INTO `crm_customfields` (`id`, `ctype`, `relid`, `fieldname`, `fieldtype`, `description`, `fieldoptions`, `regexpr`, `adminonly`, `required`, `showorder`, `showinvoice`, `sorder`) VALUES
(1, 'crm', 0, 'Comments', 'text', 'Comments', '', '', '', '', '', 'No', 0),
(2, 'crm', 0, 'Passport Number', 'text', '', '', '', '', '', '', 'Yes', 0),
(3, 'crm', 0, 'Institute', 'text', '', '', '', '', '', '', 'No', 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_customfieldsvalues`
--

CREATE TABLE `crm_customfieldsvalues` (
  `id` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `fvalue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_customfieldsvalues`
--

INSERT INTO `crm_customfieldsvalues` (`id`, `fieldid`, `relid`, `fvalue`) VALUES
(1, 1, 1, 'Arshed vhi'),
(2, 2, 1, '123AQE'),
(3, 1, 2, 'Comments'),
(4, 2, 2, '123qwe'),
(5, 1, 3, 'Full Name*'),
(6, 2, 3, 'Full Name*'),
(7, 1, 4, ''),
(8, 2, 4, ''),
(9, 3, 4, ''),
(13, 1, 5, ''),
(14, 2, 5, 'BR0593666'),
(15, 3, 5, ''),
(19, 1, 6, ''),
(20, 2, 6, ''),
(21, 3, 6, ''),
(25, 1, 7, ''),
(26, 2, 7, 'N013684157'),
(27, 3, 7, ''),
(28, 1, 8, ''),
(29, 2, 8, ''),
(30, 3, 8, ''),
(31, 1, 9, ''),
(32, 2, 9, ''),
(33, 3, 9, ''),
(34, 1, 10, ''),
(35, 2, 10, 'BQ0817919'),
(36, 3, 10, ''),
(37, 1, 11, ''),
(38, 2, 11, ''),
(39, 3, 11, '');

-- --------------------------------------------------------

--
-- Table structure for table `crm_groups`
--

CREATE TABLE `crm_groups` (
  `id` int(11) NOT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `parent` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `exempt` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `separateinvoices` text DEFAULT NULL,
  `sorder` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_groups`
--

INSERT INTO `crm_groups` (`id`, `gname`, `color`, `discount`, `parent`, `pid`, `exempt`, `description`, `separateinvoices`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Student', '', '', '', 0, '', '', '', 0, NULL, NULL),
(2, 'General Workers', '', '', '', 0, '', '', '', 0, NULL, NULL),
(3, 'Agent', '', '', '', 0, '', '', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_industries`
--

CREATE TABLE `crm_industries` (
  `id` int(11) NOT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_industries`
--

INSERT INTO `crm_industries` (`id`, `industry`, `is_active`, `is_default`, `sorder`) VALUES
(1, 'Agriculture', 1, 0, 0),
(2, 'Apparel', 1, 0, 0),
(3, 'Banking', 1, 0, 0),
(4, 'Biotechnology', 1, 0, 0),
(5, 'Chemicals', 1, 0, 0),
(6, 'Communications', 1, 0, 0),
(7, 'Construction', 1, 0, 0),
(8, 'Consulting', 1, 0, 0),
(9, 'Education', 1, 0, 0),
(10, 'Electronics', 1, 0, 0),
(11, 'Energy', 1, 0, 0),
(12, 'Engineering', 1, 0, 0),
(13, 'Entertainment', 1, 0, 0),
(14, 'Environmental', 1, 0, 0),
(15, 'Finance', 1, 0, 0),
(16, 'Food & Beverage', 1, 0, 0),
(17, 'Government', 1, 0, 0),
(18, 'Healthcare', 1, 0, 0),
(19, 'Hospitality', 1, 0, 0),
(20, 'Insurance', 1, 0, 0),
(21, 'Machinery', 1, 0, 0),
(22, 'Manufacturing', 1, 0, 0),
(23, 'Media', 1, 0, 0),
(24, 'Not For Profit', 1, 0, 0),
(25, 'Other', 1, 0, 0),
(26, 'Recreation', 1, 0, 0),
(27, 'Retail', 1, 0, 0),
(28, 'Shipping', 1, 0, 0),
(29, 'Technology', 1, 0, 0),
(30, 'Telecommunications', 1, 0, 0),
(31, 'Transportation', 1, 0, 0),
(32, 'Utilities', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_leads`
--

CREATE TABLE `crm_leads` (
  `id` int(11) NOT NULL,
  `secret` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `oid` int(11) NOT NULL DEFAULT 0,
  `salutation` varchar(200) DEFAULT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `middle_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `suffix` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `website` varchar(200) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `employees` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `viewed_at` datetime DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT 0,
  `ratings` varchar(50) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `lost` int(1) NOT NULL DEFAULT 0,
  `junk` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `memo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_lead_sources`
--

CREATE TABLE `crm_lead_sources` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 1,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_lead_sources`
--

INSERT INTO `crm_lead_sources` (`id`, `sname`, `is_active`, `is_default`, `sorder`) VALUES
(1, 'Advertisement', 1, 1, 0),
(2, 'Customer Event', 1, 1, 0),
(3, 'Employee Referral', 1, 1, 0),
(4, 'Google AdWords', 1, 1, 0),
(5, 'Other', 1, 1, 0),
(6, 'Partner', 1, 1, 0),
(7, 'Purchased List', 1, 1, 0),
(8, 'Trade Show', 1, 1, 0),
(9, 'Webinar', 1, 1, 0),
(10, 'Website', 1, 1, 0),
(11, 'Facebook', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_lead_status`
--

CREATE TABLE `crm_lead_status` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `is_converted` int(1) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_lead_status`
--

INSERT INTO `crm_lead_status` (`id`, `sname`, `is_active`, `is_default`, `is_converted`, `sorder`) VALUES
(1, 'Unqualified', 1, 0, 0, 0),
(2, 'New', 1, 1, 0, 0),
(3, 'Working', 1, 0, 0, 0),
(4, 'Nurturing', 1, 0, 0, 0),
(5, 'Qualified', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_salutations`
--

CREATE TABLE `crm_salutations` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_salutations`
--

INSERT INTO `crm_salutations` (`id`, `sname`, `is_active`, `is_default`, `sorder`) VALUES
(1, 'Mr.', 1, 0, 0),
(2, 'Ms.', 1, 0, 0),
(3, 'Mrs.', 1, 0, 0),
(4, 'Dr.', 1, 0, 0),
(5, 'Prof.', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `manager_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(16,8) NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_first` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_mi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_last` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banking_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birht` date DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_citizen` tinyint(1) NOT NULL DEFAULT 1,
  `ethnicity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_i9_form` tinyint(1) DEFAULT NULL,
  `work_authorization_expires` date DEFAULT NULL,
  `address_line_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_name_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_phone_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_relation_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_name_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_phone_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_relation_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_day_worked` date DEFAULT NULL,
  `last_day_on_benefits` date DEFAULT NULL,
  `last_day_on_payroll` date DEFAULT NULL,
  `termination_type` date DEFAULT NULL,
  `termination_reason` date DEFAULT NULL,
  `is_recommended` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `job_title`, `date_hired`, `department_id`, `manager_id`, `image`, `pay_frequency`, `currency`, `amount`, `employee_id`, `legal_name_title`, `legal_name_first`, `legal_name_mi`, `legal_name_last`, `banking_name`, `ssn`, `gender`, `date_of_birht`, `marital_status`, `is_citizen`, `ethnicity`, `has_i9_form`, `work_authorization_expires`, `address_line_1`, `address_line_2`, `city`, `state`, `zip`, `country`, `phone`, `email`, `work_phone`, `work_mobile`, `work_fax`, `cc_email`, `other`, `emergency_contact_name_1`, `emergency_contact_phone_1`, `emergency_contact_relation_1`, `emergency_contact_name_2`, `emergency_contact_phone_2`, `emergency_contact_relation_2`, `last_day_worked`, `last_day_on_benefits`, `last_day_on_payroll`, `termination_type`, `termination_reason`, `is_recommended`, `is_active`, `facebook`, `google`, `linkedin`, `skype`, `twitter`, `summary`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Jakub Swierczak', 'Customer Success Manager', '2018-11-16', NULL, NULL, NULL, 'Monthly', 'USD', 7500.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '1101 Marina Villae Parkway, Suite 201', NULL, 'Alameda', 'California', '94501', 'United States', '(650) 488-7772', 'Jakub@cloudonex.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, '', NULL, '', 'His work motto is “If our customers are happy it means I’m doing a good job”. In his free time he’s improving his guitar skills and beginning his running adventure, hoping one day he will cross a marathon finish line.', NULL, '2018-11-15 21:12:15', '2018-11-15 21:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `end_users`
--

CREATE TABLE `end_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sorder` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ib_assets`
--

CREATE TABLE `ib_assets` (
  `id` int(11) NOT NULL,
  `asset_name` varchar(200) DEFAULT NULL,
  `price` decimal(14,2) NOT NULL DEFAULT 0.00,
  `date_purchased` date DEFAULT NULL,
  `warranty_period` date DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_doc_rel`
--

CREATE TABLE `ib_doc_rel` (
  `id` int(11) NOT NULL,
  `rtype` varchar(100) NOT NULL DEFAULT 'contact',
  `rid` int(11) NOT NULL DEFAULT 0,
  `did` int(11) NOT NULL DEFAULT 0,
  `can_download` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_invoice_access_log`
--

CREATE TABLE `ib_invoice_access_log` (
  `id` int(11) NOT NULL,
  `lid` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `customer` varchar(200) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `referer` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `country_iso` varchar(20) DEFAULT NULL,
  `viewed_at` varchar(200) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_kb`
--

CREATE TABLE `ib_kb` (
  `id` int(11) NOT NULL,
  `gid` int(11) DEFAULT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `groups` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `is_public` int(1) NOT NULL DEFAULT 1,
  `sorder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_kb_groups`
--

CREATE TABLE `ib_kb_groups` (
  `id` int(11) NOT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `sorder` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_kb_rel`
--

CREATE TABLE `ib_kb_rel` (
  `id` int(11) NOT NULL,
  `kbid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_kb_replies`
--

CREATE TABLE `ib_kb_replies` (
  `id` int(11) NOT NULL,
  `kbid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `currency_symbol` varchar(20) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `unit_price` decimal(16,2) DEFAULT NULL,
  `tax_rate` decimal(16,2) DEFAULT NULL,
  `total` decimal(16,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_accounts`
--

CREATE TABLE `sys_accounts` (
  `id` int(11) NOT NULL,
  `account` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `balance` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_person` varchar(200) DEFAULT NULL,
  `contact_phone` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ib_url` varchar(200) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `sorder` int(11) DEFAULT NULL,
  `e` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `owner_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_accounts`
--

INSERT INTO `sys_accounts` (`id`, `account`, `description`, `balance`, `bank_name`, `account_number`, `currency`, `branch`, `address`, `contact_person`, `contact_phone`, `website`, `ib_url`, `created`, `notes`, `sorder`, `e`, `token`, `status`, `owner_id`, `created_at`, `updated_at`) VALUES
(2, 'May Bank', '', -50.92, '', '112353186841', '', '', '', 'Mohammed Kaosar', '', '', 'https://www.maybank2u.com.my/', '2021-06-28', '', 1, '', '', '', 1, NULL, NULL),
(3, 'RHB Bank Personal', 'Mohammed Kaosar', 0.00, '', '11234900110348', '', '', '', 'Mohammed Kaosar', '', '', 'https://logon.rhb.com.my/', '2021-06-28', '', 1, '', '', '', 1, NULL, NULL),
(4, 'RHB Bank Coxs View', '', 0.00, '', '26212000021080', '', '', '', 'Mohammed Kaosar', '', '', '', '2021-06-28', '', 1, '', '', '', 1, NULL, NULL),
(5, 'Cash Counter', '', 0.00, '', '', '', '', '', 'Mohammed Kaosar', '', '', '', '2021-06-28', '', 1, '', '', '', 1, NULL, NULL),
(6, 'UCB Bank', '', 0.00, '', '1623201000011529', '', '', '', '', '', '', '', '2021-06-28', '', 1, '', '', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_activity`
--

CREATE TABLE `sys_activity` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `msg` text NOT NULL,
  `icon` varchar(100) NOT NULL DEFAULT '',
  `stime` varchar(50) NOT NULL,
  `sdate` date NOT NULL,
  `o` int(11) NOT NULL DEFAULT 0,
  `oname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_api`
--

CREATE TABLE `sys_api` (
  `id` int(11) NOT NULL,
  `label` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `apikey` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_appconfig`
--

CREATE TABLE `sys_appconfig` (
  `id` int(11) NOT NULL,
  `setting` varchar(200) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_appconfig`
--

INSERT INTO `sys_appconfig` (`id`, `setting`, `value`) VALUES
(1, 'CompanyName', 'CVI Group of Company'),
(29, 'theme', 'default'),
(37, 'currency_code', 'RM'),
(56, 'language', 'en'),
(57, 'show-logo', '1'),
(58, 'nstyle', 'light_blue'),
(63, 'dec_point', '.'),
(64, 'thousands_sep', ','),
(65, 'timezone', 'Asia/Kuala_Lumpur'),
(66, 'country', 'Malaysia'),
(67, 'country_code', 'US'),
(68, 'df', 'd-m-Y'),
(69, 'caddress', '<p>B1-20, Jalan 1/152,<br>TMN OUG Parklane,<br>58200 Kuala Lumpur<br>Malaysia</p>'),
(70, 'account_search', '1'),
(71, 'redirect_url', 'dashboard'),
(72, 'rtl', '0'),
(73, 'ckey', '0982995697'),
(74, 'networth_goal', '350000'),
(75, 'sysEmail', 'demo@example.com'),
(76, 'url_rewrite', '0'),
(77, 'build', '402'),
(78, 'animate', '0'),
(79, 'pdf_font', 'dejavusanscondensed'),
(80, 'accounting', '1'),
(81, 'invoicing', '1'),
(82, 'quotes', '1'),
(83, 'client_dashboard', '1'),
(84, 'contact_set_view_mode', 'search'),
(85, 'invoice_terms', ''),
(86, 'console_notify_invoice_created', '0'),
(87, 'i_driver', 'v2'),
(88, 'purchase_key', 'B5VE-SNP4-KB15-1179-7948'),
(89, 'c_cache', ''),
(90, 'mininav', '0'),
(91, 'hide_footer', '1'),
(92, 'design', 'default'),
(93, 'default_landing_page', 'login'),
(94, 'recaptcha', '0'),
(95, 'recaptcha_sitekey', ''),
(96, 'recaptcha_secretkey', ''),
(97, 'home_currency', 'MYR'),
(98, 'currency_decimal_digits', 'true'),
(99, 'currency_symbol_position', 'p'),
(100, 'thousand_separator_placement', '3'),
(101, 'dashboard', 'canvas'),
(102, 'header_scripts', ''),
(103, 'footer_scripts', ''),
(104, 'ib_key', 'vLBLfhA6DNi1R2MFHO8IvFWr4Cn9665eHUF+L/sqAKM='),
(105, 'ib_s', 'PNhjeZ0sOFF3JNfzT2mLxvNNKPeh6ltqpE+G5LVSDSvgp/z79Sco7W4tJEoXYIl8'),
(106, 'ib_u_t', '1512841700'),
(107, 'ib_u_a', '0'),
(108, 'momentLocale', 'en'),
(109, 'contentAnimation', 'animated fadeIn'),
(110, 'calendar', '1'),
(111, 'leads', '1'),
(112, 'tasks', '1'),
(113, 'orders', '1'),
(114, 'show_quantity_as', ''),
(115, 'gmap_api_key', ''),
(116, 'license_key', '5FEB-2E39-D4DF-24C0-5DF8-2090-AC98-5962'),
(117, 'local_key', ''),
(118, 'ib_installed_at', '1485170108'),
(119, 'maxmind_installed', '1'),
(120, 'maxmind_db_version', ''),
(121, 'add_fund', '1'),
(122, 'add_fund_minimum_deposit', '100'),
(123, 'add_fund_maximum_deposit', '2500'),
(124, 'add_fund_maximum_balance', '25000'),
(125, 'add_fund_require_active_order', '0'),
(126, 'industry', 'default'),
(127, 'sales_target', '10000'),
(128, 'inventory', '1'),
(129, 'secondary_currency', ''),
(130, 'customer_custom_username', '1'),
(131, 'documents', '1'),
(132, 'projects', '0'),
(133, 'purchase', '1'),
(134, 'suppliers', '1'),
(135, 'support', '0'),
(136, 'hrm', '1'),
(137, 'companies', '1'),
(138, 'plugins', '1'),
(139, 'country_flag_code', 'my'),
(140, 'graph_primary_color', '2196f3'),
(141, 'graph_secondary_color', 'eb3c00'),
(142, 'expense_type_1', 'Personal'),
(143, 'expense_type_2', 'Business'),
(144, 'edition', 'default'),
(147, 'assets', '1'),
(148, 'kb', '0'),
(149, 'business_id_1', ''),
(150, 'business_id_2', ''),
(151, 'logo_default', 'logo_1952106634.png'),
(152, 'logo_inverse', 'logo_inverse_6068924074.png'),
(153, 'add_fund_client', '1'),
(154, 'order_method', 'default'),
(155, 'purchase_code', ''),
(156, 'invoice_receipt_number', '1'),
(157, 'allow_customer_registration', '1'),
(158, 'fax_field', '0'),
(159, 'show_business_number', '1'),
(160, 'label_business_number', 'Business Number'),
(161, 'sms', '1'),
(162, 'sms_request_method', 'POST'),
(163, 'sms_auth_header', ''),
(164, 'sms_req_url', ''),
(165, 'sms_notify_admin_new_deposit', '0'),
(166, 'sms_notify_customer_signed_up', '0'),
(167, 'sms_notify_customer_invoice_created', '0'),
(168, 'sms_notify_customer_invoice_paid', '0'),
(169, 'sms_notify_customer_payment_received', '0'),
(170, 'sms_api_handler', 'Nexmo'),
(171, 'sms_auth_username', ''),
(172, 'sms_auth_password', ''),
(173, 'sms_sender_name', 'CLX'),
(175, 'sms_http_params', ''),
(176, 'purchase_invoice_payment_status', '0'),
(177, 'quote_confirmation_email', '1'),
(178, 'client_drive', '1'),
(179, 's_version', '7'),
(180, 'latest_file', '4618152936941418.zip'),
(181, 'invoice_show_watermark', '1'),
(183, 'show_country_flag', '0'),
(184, 'drive', '0'),
(185, 'tax_system', 'default'),
(186, 'pos', '0'),
(187, 'password_manager', 'default'),
(188, 'update_manager', '1'),
(189, 'app_credentials', '0'),
(190, 'business_location', ''),
(191, 'hr', '1'),
(192, 'mailgun_api_key', ''),
(193, 'sparkpost_api_key', ''),
(194, 'mailgun_domain', ''),
(195, 'show_sidebar_header', '1'),
(196, 'top_bar_is_dark', '1'),
(198, 'slack_webhook_url', ''),
(199, 'config_recaptcha_in_client_login', '0'),
(200, 'config_recaptcha_in_admin_login', '0'),
(201, 'contact_list_show_company_column', '0'),
(202, 'config_contact_list_show_group_column', '1'),
(203, 'contact_list_show_group_column', '0'),
(208, 'tickets_assigned_sms_notification', '1'),
(209, 'number_pad', '5'),
(210, 'customer_code_prefix', 'CUS-'),
(211, 'customer_code_template', ''),
(212, 'customer_code_current_number', '1'),
(213, 'supplier_code_prefix', 'SUP-'),
(214, 'supplier_code_template', ''),
(215, 'supplier_code_current_number', '1'),
(216, 'income_code_prefix', 'INC-'),
(217, 'income_code_template', ''),
(218, 'income_code_current_number', '2'),
(219, 'expense_code_prefix', 'EXP-'),
(220, 'expense_code_template', ''),
(221, 'expense_code_current_number', '5'),
(222, 'invoice_code_prefix', 'INV-'),
(223, 'invoice_code_template', ''),
(224, 'invoice_code_current_number', '4'),
(225, 'quotation_code_prefix', 'QUOTE-'),
(226, 'quotation_code_template', ''),
(227, 'quotation_code_current_number', '4'),
(228, 'purchase_code_prefix', 'PO-'),
(229, 'purchase_code_template', ''),
(230, 'purchase_code_current_number', '2'),
(231, 'contact_display_name_string', 'Display Name'),
(232, 'contact_extra_field', 'Display Name'),
(233, 'company_code_prefix', 'COMP-'),
(234, 'company_code_template', ''),
(235, 'company_code_current_number', '3'),
(236, 'address_format', 'default'),
(237, 'vat_number', '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_canned_responses`
--

CREATE TABLE `sys_canned_responses` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `sorder` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_cart`
--

CREATE TABLE `sys_cart` (
  `id` int(11) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `items` text DEFAULT NULL,
  `total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `ip` varchar(100) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `currency` varchar(200) DEFAULT NULL,
  `language` varchar(200) DEFAULT NULL,
  `coupon` varchar(200) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `lid` int(11) NOT NULL DEFAULT 0,
  `currency_id` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `memo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_cats`
--

CREATE TABLE `sys_cats` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('Income','Expense') NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `total_amount` decimal(16,4) DEFAULT 0.0000,
  `budget` decimal(16,4) DEFAULT 0.0000,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `total_spend` decimal(16,4) DEFAULT 0.0000,
  `current_month_spend` decimal(16,4) DEFAULT 0.0000,
  `current_year_spend` decimal(16,4) DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_cats`
--

INSERT INTO `sys_cats` (`id`, `name`, `type`, `sorder`, `total_amount`, `budget`, `created_at`, `updated_at`, `total_spend`, `current_month_spend`, `current_year_spend`) VALUES
(14, 'Advertising', 'Expense', 1, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(15, 'Bank and Credit Card Interest', 'Expense', 23, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(16, 'Car and Truck', 'Expense', 24, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(17, 'Commissions and Fees', 'Expense', 25, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(18, 'Contract Labor', 'Expense', 26, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(19, 'Contributions', 'Expense', 27, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(20, 'Cost of Goods Sold', 'Expense', 28, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(21, 'Credit Card Interest', 'Expense', 29, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(22, 'Depreciation', 'Expense', 31, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(23, 'Dividend Payments', 'Expense', 32, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(24, 'Employee Benefit Programs', 'Expense', 33, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(25, 'Entertainment', 'Expense', 34, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(26, 'Gift', 'Expense', 35, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(27, 'Insurance', 'Expense', 36, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(28, 'Legal, Accountant &amp; Other Professional Services', 'Expense', 37, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(29, 'Meals', 'Expense', 38, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(30, 'Mortgage Interest', 'Expense', 39, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(31, 'Non-Deductible Expense', 'Expense', 40, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(33, 'Other Business Property Leasing', 'Expense', 22, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(34, 'Owner Draws', 'Expense', 21, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(35, 'Payroll Taxes', 'Expense', 8, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(37, 'Phone', 'Expense', 9, 10.0000, 0.0000, NULL, '2021-06-29 01:41:32', 0.0000, 0.0000, 0.0000),
(38, 'Postage', 'Expense', 10, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(39, 'Rent', 'Expense', 12, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(40, 'Repairs &amp; Maintenance', 'Expense', 11, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(41, 'Supplies', 'Expense', 13, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(42, 'Taxes and Licenses', 'Expense', 14, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(43, 'Transfer Funds', 'Expense', 15, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(44, 'Travel', 'Expense', 16, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(45, 'Utilities', 'Expense', 17, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(46, 'Vehicle, Machinery &amp; Equipment Rental or Leasing', 'Expense', 18, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(47, 'Wages', 'Expense', 19, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(48, 'Regular Income', 'Income', 1, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(49, 'Owner Contribution', 'Income', 12, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(50, 'Interest Income', 'Income', 11, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(51, 'Expense Refund', 'Income', 10, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(52, 'Other Income', 'Income', 9, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(53, 'Salary', 'Income', 8, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(54, 'Equities', 'Income', 7, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(55, 'Rent &amp; Royalties', 'Income', 6, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(56, 'Home equity', 'Income', 5, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(57, 'Part Time Work', 'Income', 3, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(58, 'Account Transfer', 'Income', 4, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(60, 'Health Care', 'Expense', 20, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(63, 'Loans', 'Expense', 30, 1875.0000, 0.0000, NULL, '2021-06-29 01:40:39', 0.0000, 0.0000, 0.0000),
(64, 'Selling Software', 'Income', 2, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(65, 'Software Customization', 'Income', 13, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(67, 'Salary', 'Expense', 7, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(68, 'Paypal', 'Expense', 6, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(69, 'Office Equipment', 'Expense', 5, 0.0000, 0.0000, NULL, '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000),
(70, 'Staff Entertaining', 'Expense', 3, 45.0000, 0.0000, NULL, '2021-06-29 01:43:10', 0.0000, 0.0000, 0.0000),
(71, 'Uncategorized', 'Income', 0, 0.0000, 0.0000, '2018-04-05 04:59:50', '2021-06-28 01:17:58', 0.0000, 0.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `sys_companies`
--

CREATE TABLE `sys_companies` (
  `id` int(11) NOT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `business_number` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `logo_url` varchar(200) DEFAULT NULL,
  `logo_path` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `emails` text DEFAULT NULL,
  `phones` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `ratings` varchar(50) DEFAULT NULL,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL,
  `c3` text DEFAULT NULL,
  `c4` text DEFAULT NULL,
  `c5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_companies`
--

INSERT INTO `sys_companies` (`id`, `company_name`, `code`, `business_number`, `url`, `logo_url`, `logo_path`, `email`, `phone`, `emails`, `phones`, `tags`, `description`, `notes`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `source`, `added_from`, `o`, `cid`, `aid`, `pid`, `oid`, `rid`, `assigned`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_contact`, `last_contact_by`, `ratings`, `trash`, `archived`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(2, 'CVICS', 'COMP-00002', '', 'http://', '', NULL, 'roiproney@gmail.com', '', NULL, NULL, NULL, NULL, NULL, '', NULL, 'Dhaka', 'Dhaka', '1217', 'Bangladesh', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '2021-06-25 05:40:40', NULL, '2021-06-25 05:40:40', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(3, 'University Kuala Lumpur', NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', '', 'Malaysia', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '2021-06-28 09:16:45', NULL, '2021-06-28 09:16:45', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(4, 'BQ0126127', NULL, NULL, NULL, NULL, NULL, 'suttradhor92@gmail.com', '+60 11-1157 2295', NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', '', 'Malaysia', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '2021-10-15 16:11:10', NULL, '2021-10-15 16:11:10', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_currencies`
--

CREATE TABLE `sys_currencies` (
  `id` int(11) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `iso_code` varchar(10) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `rate` decimal(16,8) NOT NULL DEFAULT 1.00000000,
  `prefix` varchar(20) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `decimal_separator` varchar(10) DEFAULT NULL,
  `thousand_separator` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `available_in` text DEFAULT NULL,
  `isdefault` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_currencies`
--

INSERT INTO `sys_currencies` (`id`, `cname`, `iso_code`, `symbol`, `rate`, `prefix`, `suffix`, `format`, `decimal_separator`, `thousand_separator`, `created_at`, `created_by`, `updated_at`, `updated_by`, `available_in`, `isdefault`, `trash`, `archived`) VALUES
(1, 'BDT', 'BDT', '', 0.05000000, NULL, NULL, NULL, NULL, NULL, '2018-11-20 16:57:47', NULL, '2021-06-28 00:59:38', NULL, NULL, 0, 0, 0),
(2, 'MYR', 'MYR', '', 1.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(3, 'EUR', 'EUR', '', 5.00000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_documents`
--

CREATE TABLE `sys_documents` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `file_o_name` varchar(200) DEFAULT NULL,
  `file_r_name` varchar(200) DEFAULT NULL,
  `file_mime_type` varchar(200) DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL,
  `file_dl_token` varchar(200) DEFAULT NULL,
  `file_owner` int(11) NOT NULL DEFAULT 0,
  `version` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `sha1` varchar(40) DEFAULT NULL,
  `md5` varchar(32) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `gid` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `contacts` text DEFAULT NULL,
  `deals` text DEFAULT NULL,
  `leads` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `customer_can_download` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `is_global` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_emailconfig`
--

CREATE TABLE `sys_emailconfig` (
  `id` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `apikey` varchar(200) NOT NULL,
  `port` varchar(10) NOT NULL,
  `secure` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_emailconfig`
--

INSERT INTO `sys_emailconfig` (`id`, `method`, `host`, `username`, `password`, `apikey`, `port`, `secure`) VALUES
(1, 'phpmail', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_email_logs`
--

CREATE TABLE `sys_email_logs` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `iid` int(11) NOT NULL DEFAULT 0,
  `rel_type` varchar(100) DEFAULT NULL,
  `rel_id` int(11) NOT NULL DEFAULT 0,
  `purchase_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_email_logs`
--

INSERT INTO `sys_email_logs` (`id`, `userid`, `sender`, `email`, `subject`, `message`, `date`, `iid`, `rel_type`, `rel_id`, `purchase_id`) VALUES
(1, 0, '', 'showmitro2112@gmail.com', 'Your Cvics.org Login Info', '<p>Dear Full Name*,</p>\n<p>Welcome to Cvics.org.</p>\n<p>You can track your billing, profile, transactions from this portal.</p>\n<p>Your login information is as follows:</p>\n<p>---------------------------------------------------------------------------------------</p>\n<p>Login URL: https://cvics.org/app/?ng=client/login/ <br />Email Address: showmitro2112@gmail.com<br /> Password: Your chosen password.</p>\n<p>----------------------------------------------------------------------------------------</p>\n<p>We very much appreciate you for choosing us.</p>\n<p>Cvics.org Team</p>', '2021-06-20 20:37:14', 0, NULL, 0, NULL),
(2, 0, '', 'ashik@gmail.com', 'Your Cvics.org Login Info', '<p>Dear Ashik Iqbal,</p>\n<p>Welcome to Cvics.org.</p>\n<p>You can track your billing, profile, transactions from this portal.</p>\n<p>Your login information is as follows:</p>\n<p>---------------------------------------------------------------------------------------</p>\n<p>Login URL: https://cvics.org/app/?ng=client/login/ <br />Email Address: ashik@gmail.com<br /> Password: Your chosen password.</p>\n<p>----------------------------------------------------------------------------------------</p>\n<p>We very much appreciate you for choosing us.</p>\n<p>Cvics.org Team</p>', '2021-06-20 21:55:12', 0, NULL, 0, NULL),
(3, 0, '', 'roiproney@gmail.com', 'Your CVI Group of Company Login Info', '<p>Dear Rafiqul Islam,</p>\n<p>Welcome to CVI Group of Company.</p>\n<p>You can track your billing, profile, transactions from this portal.</p>\n<p>Your login information is as follows:</p>\n<p>---------------------------------------------------------------------------------------</p>\n<p>Login URL: https://cvics.org/app/?ng=client/login/ <br />Email Address: roiproney@gmail.com<br /> Password: Your chosen password.</p>\n<p>----------------------------------------------------------------------------------------</p>\n<p>We very much appreciate you for choosing us.</p>\n<p>CVI Group of Company Team</p>', '2021-06-25 13:42:15', 0, NULL, 0, NULL),
(4, 0, '', 'loaisalloum12@gmail.com', 'Your CVI Group of Company Login Info', '<p>Dear Loai Salloum,</p>\n<p>Welcome to CVI Group of Company.</p>\n<p>You can track your billing, profile, transactions from this portal.</p>\n<p>Your login information is as follows:</p>\n<p>---------------------------------------------------------------------------------------</p>\n<p>Login URL: https://cvics.org/app/?ng=client/login/ <br />Email Address: loaisalloum12@gmail.com<br /> Password: Your chosen password.</p>\n<p>----------------------------------------------------------------------------------------</p>\n<p>We very much appreciate you for choosing us.</p>\n<p>CVI Group of Company Team</p>', '2021-06-28 13:57:10', 0, NULL, 0, NULL),
(5, 0, '', 'hussensadek07@gmail.com', 'Your CVI Group of Company Login Info', '<p>Dear Sadek Hussen Tapader,</p>\n<p>Welcome to CVI Group of Company.</p>\n<p>You can track your billing, profile, transactions from this portal.</p>\n<p>Your login information is as follows:</p>\n<p>---------------------------------------------------------------------------------------</p>\n<p>Login URL: https://cvics.org/app/?ng=client/login/ <br />Email Address: hussensadek07@gmail.com<br /> Password: Your chosen password.</p>\n<p>----------------------------------------------------------------------------------------</p>\n<p>We very much appreciate you for choosing us.</p>\n<p>CVI Group of Company Team</p>', '2021-09-14 21:31:43', 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_email_templates`
--

CREATE TABLE `sys_email_templates` (
  `id` int(11) NOT NULL,
  `tplname` varchar(128) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `send` varchar(50) DEFAULT 'Active',
  `core` enum('Yes','No') DEFAULT 'Yes',
  `hidden` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_email_templates`
--

INSERT INTO `sys_email_templates` (`id`, `tplname`, `language_id`, `subject`, `message`, `send`, `core`, `hidden`) VALUES
(3, 'Invoice:Invoice Created', 1, '{{business_name}} Invoice', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This email serves as your official invoice from <strong>{{business_name}}. </strong>	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(7, 'Admin:Password Change Request', 1, '{{business_name}} password change request', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Hi {{name}},</div>	<div style=\"padding:5px\">		This is to confirm that we have received a Forgot Password request for your Account Username - {{username}} <br>From the IP Address - {{ip_address}}	</div>	<div style=\"padding:5px\">		Click this linke to reset your password- <br><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{password_reset_link}}\">{{password_reset_link}}</a>	</div><div style=\"padding:5px\">Please note: until your password has been changed, your current password will remain valid. The Forgot Password Link will be available for a limited time only.</div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(10, 'Admin:New Password', 1, '{{business_name}} New Password for Admin', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding:5px;font-size:11pt;font-weight:bold\">\n   Hello {{name}}\n</div>\n\n\n	<div style=\"padding:5px\">\n		Here is your new password for <strong>{{business_name}}. </strong>\n	</div>\n\n	\n<div style=\"padding:10px 5px\">\n    Log in URL: <a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{login_url}}\">{{login_url}}</a><br>Username: {{username}}<br>Password: {{password}}</div>\n\n<div style=\"padding:5px\">For security reason, Please change your password after login. </div>\n\n<div style=\"padding:0px 5px\">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n</div>\n\n</div>', 'Yes', 'Yes', 0),
(12, 'Invoice:Invoice Payment Reminder', 1, '{{business_name}} Invoice Payment Reminder', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is a billing reminder that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is due on {{invoice_due_date}}. 	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(13, 'Invoice:Invoice Overdue Notice', 1, '{{business_name}} Invoice Overdue Notice', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is the notice that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is now overdue.	</div>	<div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(14, 'Invoice:Invoice Payment Confirmation', 1, '{{business_name}} Invoice Payment Confirmation', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding:5px;font-size:11pt;font-weight:bold\">\n   Greetings,\n</div>\n\n\n\n	<div style=\"padding:5px\">\n		This is a payment receipt for Invoice {{invoice_id}} sent on {{invoice_date}}.\n	</div>\n\n\n	<div style=\"padding:5px\">\n		Login to your client Portal to view this invoice.\n	</div>\n\n\n<div style=\"padding:10px 5px\">\n    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div>\n\n\n<div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div>\n\n\n<div style=\"padding:0px 5px\">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n\n</div>\n\n\n</div>', 'Yes', 'Yes', 0),
(15, 'Invoice:Invoice Refund Confirmation', 1, '{{business_name}} Invoice Refund Confirmation', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is confirmation that a refund has been processed for Invoice {{invoice_id}} sent on {{invoice_date}}.	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(16, 'Quote:Quote Created', 1, '{{quote_subject}}', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		Dear {{contact_name}},&nbsp;<br> Here is the quote you requested for.  The quote is valid until {{valid_until}}.	</div><div style=\"padding:10px 5px\">    Quote Unique URL: <a href=\"{{quote_url}}\" target=\"_blank\">{{quote_url}}</a><br></div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(17, 'Client:Client Signup Email', 1, 'Your {{business_name}} Login Info', '<p>Dear {{client_name}},</p>\n<p>Welcome to {{business_name}}.</p>\n<p>You can track your billing, profile, transactions from this portal.</p>\n<p>Your login information is as follows:</p>\n<p>---------------------------------------------------------------------------------------</p>\n<p>Login URL: {{client_login_url}} <br />Email Address: {{client_email}}<br /> Password: Your chosen password.</p>\n<p>----------------------------------------------------------------------------------------</p>\n<p>We very much appreciate you for choosing us.</p>\n<p>{{business_name}} Team</p>', 'Yes', 'Yes', 0),
(18, 'Tickets:Client Ticket Created', 1, '{{subject}}', '<p>{{client_name}},</p>\n<p>Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email. Your ticket ID is {{ticket_id}} and a copy of your original message is included below.</p>\n<p>Subject: {{ticket_subject}} <br /> Message: <br /> {{message}} <br /> Priority: {{ticket_priority}} <br /> Status: {{ticket_status}}</p>\n<p>You can view the ticket at any time at {{ticket_link}}</p>', 'Yes', 'Yes', 0),
(19, 'Tickets:Admin Ticket Created', 1, '{{subject}}', '<p>{{admin_view_link}}</p> {{message}}', 'Yes', 'Yes', 0),
(20, 'Tickets:Client Response', 1, '{{subject}}', '<p>{{ticket_message}}</p>\n<p>----------------------------------------------<br /> Ticket ID: #{{ticket_id}}<br /> Subject: {{ticket_subject}}<br /> Status: {{ticket_status}}<br /> Ticket URL: {{ticket_link}}<br /> ----------------------------------------------</p>', 'Yes', 'Yes', 0),
(21, 'Tickets:Admin Response', 1, '{{subject}}', '<p>{$ticket_message}</p>\n<p>----------------------------------------------<br /> Ticket ID: #{{ticket_id}}<br /> Subject: {{ticket_subject}}<br /> Status: {{ticket_status}}<br /> Ticket URL: {{ticket_link}}<br /> ----------------------------------------------</p>', 'Yes', 'Yes', 0),
(23, 'Purchase Invoice:Invoice Created', 1, '{{business_name}} Invoice', '<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,\'droid sans\',\'lucida sans\',sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">This email serves as your official invoice from <strong>{{business_name}}. </strong></div>\n<div style=\"padding: 10px 5px;\">Invoice URL: {{invoice_url}}<br />Invoice ID: {{invoice_id}}<br />Invoice Amount: {{invoice_amount}}</div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />{{business_name}} Team</div>\n</div>\n</div>', 'Yes', 'Yes', 0),
(24, 'Quote:Quote Cancelled', 1, '{{business_name}} Quote', '<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">Dear {{contact_name}},&nbsp;<br />We are sorry to see you go. If you chnage your mind, you can Accept it again from following url. The quote is valid until {{valid_until}}.</div>\n<div style=\"padding: 10px 5px;\">Quote Unique URL: <a href=\"http://stackb.dev/{{quote_url}}\" target=\"_blank\" rel=\"noopener noreferrer\">{{quote_url}}</a></div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />{{business_name}} Team</div>\n</div>\n</div>', 'Yes', 'Yes', 0),
(25, 'Quote:Quote Accepted', 1, '{{business_name}} Quote', '<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">Dear {{contact_name}},&nbsp;<br />Thank you for accepting the Quote.</div>\n<div style=\"padding: 10px 5px;\">Quote: <a href=\"{{quote_url}}\" target=\"_blank\" rel=\"noopener noreferrer\">{{quote_url}}</a></div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />{{business_name}} Team</div>\n</div>\n</div>', 'Yes', 'Yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_events`
--

CREATE TABLE `sys_events` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `contacts` text DEFAULT NULL,
  `deals` text DEFAULT NULL,
  `owner` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `etype` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `allday` int(1) NOT NULL DEFAULT 0,
  `notification` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_invoiceitems`
--

CREATE TABLE `sys_invoiceitems` (
  `id` int(10) NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT 0,
  `userid` int(10) NOT NULL,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `tax_code` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `qty` varchar(20) NOT NULL DEFAULT '1',
  `amount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `taxed` int(1) NOT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `tax_rate` decimal(16,3) DEFAULT NULL,
  `taxamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax1` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax2` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax3` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `discount_type` varchar(100) DEFAULT NULL,
  `discount_amount` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(14,2) NOT NULL DEFAULT 0.00,
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_invoiceitems`
--

INSERT INTO `sys_invoiceitems` (`id`, `invoiceid`, `userid`, `type`, `relid`, `itemcode`, `tax_code`, `description`, `qty`, `amount`, `taxed`, `tax_name`, `tax_rate`, `taxamount`, `tax1`, `tax2`, `tax3`, `discount_type`, `discount_amount`, `total`, `duedate`, `paymentmethod`, `notes`, `business_id`, `created_at`, `updated_at`) VALUES
(11, 5, 7, '', 0, '', NULL, 'Success Service Fee (University of Pannonia) 800.00 Euro*5.00=4,000.00 Rm', '1', 4000.00, 0, NULL, NULL, 0.00, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 4000.00, '2021-06-28', '', '', NULL, NULL, NULL),
(20, 6, 10, '', 0, '', '', '<p>Visa Success Fee (Service Charge)</p>', '1', 1000.00, 0, NULL, 0.000, 0.00, 0.0000, 0.0000, 0.0000, 'f', 400.0000, 600.00, '2021-09-18', '', '', NULL, NULL, NULL),
(22, 7, 6, '', 0, '', '', '<p>Application fee</p>', '1', 10000.00, 0, NULL, 0.000, 0.00, 0.0000, 0.0000, 0.0000, 'f', 0.0000, 10000.00, '2021-10-10', '', '', NULL, NULL, NULL),
(24, 8, 11, '', 0, '', '', '', '1', 6500.00, 0, NULL, 0.000, 0.00, 0.0000, 0.0000, 0.0000, 'p', 0.0000, 6500.00, '2021-10-16', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_invoices`
--

CREATE TABLE `sys_invoices` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `account` varchar(200) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `cn` varchar(100) NOT NULL DEFAULT '',
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime DEFAULT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` varchar(1) NOT NULL DEFAULT 'f',
  `discount_value` decimal(14,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `taxname` varchar(100) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `tax_total` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `taxrate` decimal(10,2) NOT NULL,
  `taxrate2` decimal(10,2) NOT NULL,
  `status` text NOT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `vtoken` varchar(20) NOT NULL,
  `ptoken` varchar(20) NOT NULL,
  `r` varchar(100) NOT NULL DEFAULT '0',
  `nd` date DEFAULT NULL,
  `eid` int(10) NOT NULL DEFAULT 0,
  `ename` varchar(200) NOT NULL DEFAULT '',
  `vid` int(11) NOT NULL DEFAULT 0,
  `quote_id` int(11) NOT NULL DEFAULT 0,
  `ticket_id` int(11) DEFAULT 0,
  `currency` int(11) NOT NULL DEFAULT 0,
  `currency_iso_code` char(3) DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT 1.0000,
  `recurring` tinyint(1) NOT NULL DEFAULT 0,
  `recurring_ends` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `last_overdue_reminder` date DEFAULT NULL,
  `allowed_payment_methods` text DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(50) DEFAULT NULL,
  `billing_country` varchar(100) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` varchar(100) DEFAULT NULL,
  `q_hide` tinyint(1) NOT NULL DEFAULT 0,
  `show_quantity_as` varchar(100) DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `is_credit_invoice` int(1) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `aname` varchar(200) DEFAULT NULL,
  `receipt_number` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `c1` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  `c3` varchar(255) DEFAULT NULL,
  `c4` varchar(255) DEFAULT NULL,
  `c5` text DEFAULT NULL,
  `signature_data_source` text DEFAULT NULL,
  `signature_data_base64` text DEFAULT NULL,
  `signature_data_svg` text DEFAULT NULL,
  `is_same_state` tinyint(1) DEFAULT 1,
  `code` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_invoices`
--

INSERT INTO `sys_invoices` (`id`, `userid`, `account`, `title`, `cn`, `invoicenum`, `date`, `duedate`, `datepaid`, `subtotal`, `discount_type`, `discount_value`, `discount`, `credit`, `taxname`, `tax`, `tax2`, `tax_total`, `total`, `taxrate`, `taxrate2`, `status`, `paymentmethod`, `notes`, `vtoken`, `ptoken`, `r`, `nd`, `eid`, `ename`, `vid`, `quote_id`, `ticket_id`, `currency`, `currency_iso_code`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `recurring`, `recurring_ends`, `last_recurring_date`, `source`, `sale_agent`, `last_overdue_reminder`, `allowed_payment_methods`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `q_hide`, `show_quantity_as`, `pid`, `is_credit_invoice`, `aid`, `aname`, `receipt_number`, `updated_at`, `created_at`, `workspace_id`, `parent_id`, `c1`, `c2`, `c3`, `c4`, `c5`, `signature_data_source`, `signature_data_base64`, `signature_data_svg`, `is_same_state`, `code`) VALUES
(5, 7, 'Loai Salloum', NULL, '', '', '2021-06-28', '2021-06-28', NULL, 4000.00, 'p', 0.00, 0.00, 2500.00, '', 0.00, 0.00, 0.0000, 4000.00, 0.00, 0.00, 'Partially Paid', '', '', '4976701498', '2870045643', '0', '2021-06-28', 0, '', 0, 3, 0, 0, NULL, NULL, NULL, NULL, 1.0000, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(6, 10, 'Sadek Hussen Tapader', '', '00001', 'INV-', '2021-09-14', '2021-09-14', '2021-09-18 15:15:53', 1000.00, 'f', 0.00, 400.00, 0.00, '', 0.00, 0.00, 0.0000, 600.00, 0.00, 0.00, 'Unpaid', '', '<p>Note: Euro 600X5=3000 Rm Transfer to: </p><p>COXS VIEW INTERNATIONAL SDN BHD</p><p>RHB BANK CURRENT ACCOUN</p><p>2621 2000 021080</p><p>Thank You</p>', '7575137721', '3702084994', '0', '2021-09-14', 0, '', 0, 0, 0, 3, 'EUR', '', NULL, NULL, 5.0000, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2021-09-18 07:15:53', '2021-09-14 13:40:37', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(7, 6, 'Rahat Vai', '', '00002', 'INV-', '2021-10-10', '2021-10-10', '2021-10-10 22:20:15', 10000.00, 'f', 0.00, 0.00, 0.00, '', 0.00, 0.00, 0.0000, 10000.00, 0.00, 0.00, 'Unpaid', '', '<p>Some terms </p>', '5046682273', '9833480083', '0', '2021-10-10', 0, '', 0, 0, 0, 2, 'MYR', '', NULL, NULL, 1.0000, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2021-10-10 14:20:15', '2021-10-10 14:18:17', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(8, 11, 'Sanjit Suttradhor', '', '00003', 'INV-', '2021-10-16', '2021-10-16', '2021-10-16 00:13:41', 6500.00, 'p', 0.00, 0.00, 4000.00, '', 0.00, 0.00, 0.0000, 6500.00, 0.00, 0.00, 'Unpaid', '', '', '5856084080', '9357684170', '0', '2021-10-16', 0, '', 0, 0, 0, 2, 'MYR', '', NULL, NULL, 1.0000, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 1, NULL, '', '2021-10-15 16:13:41', '2021-10-15 16:12:39', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_items`
--

CREATE TABLE `sys_items` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `unit` varchar(100) NOT NULL DEFAULT '',
  `sales_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `inventory` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `weight` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `width` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `length` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `height` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sku` varchar(50) DEFAULT NULL,
  `upc` varchar(50) DEFAULT NULL,
  `ean` varchar(50) DEFAULT NULL,
  `mpn` varchar(50) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `sid` int(11) NOT NULL DEFAULT 0,
  `supplier` varchar(200) DEFAULT NULL,
  `bid` int(11) NOT NULL DEFAULT 0,
  `brand` varchar(200) DEFAULT NULL,
  `sell_account` int(11) NOT NULL DEFAULT 0,
  `purchase_account` int(11) NOT NULL DEFAULT 0,
  `inventory_account` int(11) NOT NULL DEFAULT 0,
  `taxable` int(1) NOT NULL DEFAULT 0,
  `location` varchar(200) DEFAULT NULL,
  `item_number` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` enum('Service','Product') NOT NULL,
  `track_inventroy` enum('Yes','No') NOT NULL DEFAULT 'No',
  `negative_stock` enum('Yes','No') NOT NULL DEFAULT 'No',
  `available` int(11) NOT NULL DEFAULT 0,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added` date DEFAULT NULL,
  `last_sold` date DEFAULT NULL,
  `e` mediumtext NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `gid` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `gname` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `expire_days` int(11) NOT NULL DEFAULT 0,
  `image` text DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `is_service` int(1) NOT NULL DEFAULT 0,
  `commission_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `commission_percent_type` varchar(100) DEFAULT NULL,
  `commission_fixed` decimal(16,2) NOT NULL DEFAULT 0.00,
  `trash` int(1) NOT NULL DEFAULT 0,
  `payterm` varchar(200) DEFAULT NULL,
  `cost_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `promo_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `setup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `onetime` decimal(16,2) NOT NULL DEFAULT 0.00,
  `monthly` decimal(16,2) NOT NULL DEFAULT 0.00,
  `monthlysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `quarterly` decimal(16,2) NOT NULL DEFAULT 0.00,
  `quarterlysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `halfyearly` decimal(16,2) NOT NULL DEFAULT 0.00,
  `halfyearlysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `annually` decimal(16,2) NOT NULL DEFAULT 0.00,
  `annuallysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `biennially` decimal(16,2) NOT NULL DEFAULT 0.00,
  `bienniallysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `triennially` decimal(16,2) NOT NULL DEFAULT 0.00,
  `trienniallysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `has_domain` varchar(100) DEFAULT NULL,
  `free_domain` varchar(100) DEFAULT NULL,
  `email_rel` int(11) NOT NULL DEFAULT 0,
  `tags` text DEFAULT NULL,
  `sold_count` decimal(16,4) DEFAULT 0.0000,
  `total_amount` decimal(16,4) DEFAULT 0.0000,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tax_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_item_cats`
--

CREATE TABLE `sys_item_cats` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_leads`
--

CREATE TABLE `sys_leads` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT 0,
  `ratings` varchar(50) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `lost` int(1) NOT NULL DEFAULT 0,
  `junk` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_logs`
--

CREATE TABLE `sys_logs` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `userid` int(10) NOT NULL,
  `ip` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_logs`
--

INSERT INTO `sys_logs` (`id`, `date`, `type`, `description`, `userid`, `ip`) VALUES
(1, '2021-06-20 05:10:48', 'Admin', 'Login Successful info@cvics.org', 1, '103.214.202.167'),
(2, '2021-06-20 15:54:17', 'Admin', 'Login Successful info@cvics.org', 1, '118.179.80.166'),
(3, '2021-06-20 17:20:12', 'Admin', 'Login Successful info@cvics.org', 1, '103.214.202.167'),
(4, '2021-06-20 18:30:27', 'Admin', 'Login Successful info@cvics.org', 1, '103.214.202.167'),
(5, '2021-06-20 20:04:21', 'Admin', 'Login Successful info@cvics.org', 1, '103.214.202.166'),
(6, '2021-06-20 20:34:17', 'Admin', 'New Contact Added Full Name [CID: 1]', 1, '103.214.202.166'),
(7, '2021-06-20 20:35:47', 'Admin', 'New Contact Added Full Name [CID: 2]', 1, '103.214.202.166'),
(8, '2021-06-20 20:37:14', 'Admin', 'New Contact Added Full Name* [CID: 3]', 1, '103.214.202.166'),
(9, '2021-06-20 21:03:19', 'Admin', 'Login Successful info@cvics.org', 1, '113.210.99.27'),
(10, '2021-06-20 21:55:12', 'Admin', 'New Contact Added Ashik Iqbal [CID: 4]', 1, '113.210.99.27'),
(11, '2021-06-20 21:55:39', 'Client', 'Amount 100000 Added by Admin [CVICS] Customer - Ashik Iqbal Previous Balance: 0.00 New Balance: 100000', 4, '113.210.99.27'),
(12, '2021-06-20 21:55:54', 'Client', 'Amount 50000 Balance returned by Admin [CVICS] Customer - Ashik Iqbal Previous Balance: 100000.00 New Balance: 50000', 4, '113.210.99.27'),
(13, '2021-06-20 23:33:30', 'Admin', 'Login Successful info@cvics.org', 1, '113.210.99.27'),
(14, '2021-06-20 23:43:14', 'Admin', 'New Deposit: Invoice 2 Payment [TrID: 1 | Amount: 200000]', 1, '113.210.99.27'),
(15, '2021-06-20 23:51:53', 'Admin', 'New Deposit: Invoice 2 Payment [TrID: 2 | Amount: 1500000]', 1, '113.210.99.27'),
(16, '2021-06-20 23:54:32', 'Admin', 'New Deposit: Invoice 2 Payment [TrID: 3 | Amount: 150000]', 1, '113.210.99.27'),
(17, '2021-06-21 00:34:07', 'Admin', 'Login Successful info@cvics.org', 1, '113.210.99.27'),
(18, '2021-06-21 00:38:02', 'Admin', 'New Deposit: payment [TrID: 4 | Amount: 50000]', 1, '113.210.99.27'),
(19, '2021-06-21 01:39:23', 'Admin', 'Login Successful info@cvics.org', 1, '113.210.99.27'),
(20, '2021-06-25 12:35:31', 'Admin', 'Login Successful info@cvics.org', 1, '113.210.110.176'),
(21, '2021-06-25 12:36:36', 'Admin', 'Failed Login info@cvics.org', 0, '118.179.80.166'),
(22, '2021-06-25 12:36:53', 'Admin', 'Login Successful info@cvics.org', 1, '118.179.80.166'),
(23, '2021-06-25 13:35:05', 'Admin', 'Contact Deleted: Ashik Iqbal', 1, '113.210.110.176'),
(24, '2021-06-25 13:42:15', 'Admin', 'New Contact Added Rafiqul Islam [CID: 5]', 1, '113.210.110.176'),
(25, '2021-06-25 14:04:27', 'Admin', 'New Deposit: Invoice 3 Payment [TrID: 5 | Amount: 100000]', 1, '113.210.110.176'),
(26, '2021-06-25 14:15:00', 'Admin', 'New Deposit: Invoice 3 Payment [TrID: 6 | Amount: 200000]', 1, '113.210.110.176'),
(27, '2021-06-25 23:47:09', 'Admin', 'Login Successful info@cvics.org', 1, '113.210.54.110'),
(28, '2021-06-26 20:43:43', 'Admin', 'Login Successful info@cvics.org', 1, '113.210.57.112'),
(29, '2021-06-27 21:34:35', 'Admin', 'Login Successful info@cvics.org', 1, '113.210.101.218'),
(30, '2021-06-27 23:53:48', 'Admin', 'New Contact Added Rahat Vai [CID: 6]', 1, '113.210.101.218'),
(31, '2021-06-28 00:11:55', 'Admin', 'New Deposit: Invoice 4 Payment [TrID: 7 | Amount: 310]', 1, '113.210.101.218'),
(32, '2021-06-28 00:12:33', 'Admin', 'New Deposit: Invoice 4 Payment [TrID: 8 | Amount: 300]', 1, '113.210.101.218'),
(33, '2021-06-28 01:21:11', 'Admin', 'Contact Deleted: Full Name*', 1, '113.210.101.218'),
(34, '2021-06-28 01:21:23', 'Admin', 'Contact Deleted: Full Name', 1, '113.210.101.218'),
(35, '2021-06-28 01:21:46', 'Admin', 'Contact Deleted: Full Name', 1, '113.210.101.218'),
(36, '2021-06-28 01:22:14', 'Client', 'Autologin Successful', 5, '77.111.246.37'),
(37, '2021-06-28 01:23:37', 'Client', 'Amount 610 Added by Admin [CVICS] Customer - Rahat Vai Previous Balance: 0.00 New Balance: 610', 6, '113.210.101.218'),
(38, '2021-06-28 01:23:53', 'Client', 'Amount 523 Balance returned by Admin [CVICS] Customer - Rahat Vai Previous Balance: 610.00 New Balance: 87', 6, '113.210.101.218'),
(39, '2021-06-28 01:25:44', 'Client', 'Amount 87 Balance returned by Admin [CVICS] Customer - Rahat Vai Previous Balance: 87.00 New Balance: 0', 6, '113.210.101.218'),
(40, '2021-06-28 13:52:49', 'Admin', 'Login Successful info@cvics.org', 1, '113.211.154.253'),
(41, '2021-06-28 13:57:10', 'Admin', 'New Contact Added Loai Salloum [CID: 7]', 1, '113.211.154.253'),
(42, '2021-06-28 14:03:27', 'Admin', 'New Deposit: Invoice 5 Payment [TrID: 20 | Amount: 2500]', 1, '113.211.154.253'),
(43, '2021-06-28 17:05:02', 'Admin', 'Login Successful info@cvics.org', 1, '113.211.154.253'),
(44, '2021-06-28 17:16:45', 'Admin', 'New Contact Added UNIKL [CID: 8]', 1, '113.211.154.253'),
(45, '2021-06-28 18:29:18', 'Admin', 'Login Successful info@cvics.org', 1, '113.211.154.253'),
(46, '2021-06-28 18:30:50', 'Admin', 'New Expense: Loan Return [TrID: 28 | Amount: 1675]', 1, '113.211.154.253'),
(47, '2021-06-28 18:31:59', 'Admin', 'New Contact Added Anwar Vai CTG [CID: 9]', 1, '113.211.154.253'),
(48, '2021-06-28 21:36:45', 'Admin', 'Login Successful info@cvics.org', 1, '113.211.152.189'),
(49, '2021-06-29 01:19:36', 'Admin', 'Login Successful info@cvics.org', 1, '113.211.152.189'),
(50, '2021-06-29 01:40:39', 'Admin', 'New Expense: Loan Return [TrID: 33 | Amount: 200]', 1, '113.211.152.189'),
(51, '2021-06-29 01:41:32', 'Admin', 'New Expense: Rahad Vai reload [TrID: 34 | Amount: 10]', 1, '113.211.152.189'),
(52, '2021-06-29 01:43:10', 'Admin', 'New Expense: Personal Expenses [TrID: 37 | Amount: 45]', 1, '113.211.152.189'),
(53, '2021-07-04 23:12:39', 'Admin', 'Login Successful info@cvics.org', 1, '113.210.53.98'),
(54, '2021-07-08 11:53:06', 'Admin', 'Login Successful info@cvics.org', 1, '113.210.106.72'),
(55, '2021-07-08 13:48:48', 'Admin', 'Login Successful info@cvics.org', 1, '113.210.106.72'),
(56, '2021-07-24 23:02:42', 'Admin', 'Login Successful info@cvics.org', 1, '118.100.61.80'),
(57, '2021-09-13 20:24:41', 'Admin', 'Login Successful info@cvics.org', 1, '115.132.230.71'),
(58, '2021-09-14 20:52:30', 'Admin', 'Login Successful info@cvics.org', 1, '115.132.130.135'),
(59, '2021-09-14 21:31:43', 'Admin', 'New Contact Added Sadek Hussen Tapader [CID: 10]', 1, '115.132.130.135'),
(60, '2021-09-14 23:38:06', 'Admin', 'Login Successful info@cvics.org', 1, '115.132.130.135'),
(61, '2021-09-18 15:11:20', 'Admin', 'Login Successful info@cvics.org', 1, '175.145.71.182'),
(62, '2021-10-05 20:39:29', 'Admin', 'Login Successful info@cvics.org', 1, '103.204.87.155'),
(63, '2021-10-05 20:39:29', 'Admin', 'Login Successful info@cvics.org', 1, '103.204.87.155'),
(64, '2021-10-10 17:15:09', 'Admin', 'Login Successful info@cvics.org', 1, '103.204.87.155'),
(65, '2021-10-10 21:54:24', 'Admin', 'Login Successful info@cvics.org', 1, '103.204.87.155'),
(66, '2021-10-10 21:54:43', 'Admin', 'Login Successful info@cvics.org', 1, '103.204.87.155'),
(67, '2021-10-15 20:12:41', 'Admin', 'Login Successful info@cvics.org', 1, '103.204.87.155'),
(68, '2021-10-15 20:13:45', 'Admin', 'Login Successful info@cvics.org', 1, '103.138.125.197'),
(69, '2021-10-16 00:06:02', 'Admin', 'Login Successful info@cvics.org', 1, '124.82.197.40'),
(70, '2021-10-16 00:11:10', 'Admin', 'New Contact Added Sanjit Suttradhor [CID: 11]', 1, '124.82.197.40'),
(71, '2021-10-16 00:13:04', 'Admin', 'New Deposit: Invoice 8 Payment [TrID: 38 | Amount: 4000]', 1, '124.82.197.40'),
(72, '2021-10-16 01:01:17', 'Admin', 'Login Successful info@cvics.org', 1, '124.82.197.40'),
(73, '2021-10-20 14:12:45', 'Admin', 'Login Successful info@cvics.org', 1, '118.100.155.1'),
(74, '2021-10-22 11:41:10', 'Admin', 'Login Successful info@cvics.org', 1, '60.49.116.16');

-- --------------------------------------------------------

--
-- Table structure for table `sys_orders`
--

CREATE TABLE `sys_orders` (
  `id` int(11) NOT NULL,
  `ordernum` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `sales_person` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_expiry` date DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `stitle` varchar(200) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `recurring` decimal(16,2) NOT NULL DEFAULT 0.00,
  `setup_fee` decimal(16,2) NOT NULL DEFAULT 0.00,
  `billing_cycle` text DEFAULT NULL,
  `addon_ids` text DEFAULT NULL,
  `related_orders` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `upgrade_ids` text DEFAULT NULL,
  `xdata` text DEFAULT NULL,
  `xsecret` varchar(100) DEFAULT NULL,
  `promo_code` text DEFAULT NULL,
  `promo_type` text DEFAULT NULL,
  `promo_value` text DEFAULT NULL,
  `payment_method` text DEFAULT NULL,
  `ipaddress` text DEFAULT NULL,
  `fraud_module` text DEFAULT NULL,
  `fraud_output` text DEFAULT NULL,
  `activation_subject` text DEFAULT NULL,
  `activation_message` text DEFAULT NULL,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL,
  `c3` text DEFAULT NULL,
  `c4` text DEFAULT NULL,
  `c5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_permissions`
--

CREATE TABLE `sys_permissions` (
  `id` int(11) NOT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `shortname` varchar(200) DEFAULT NULL,
  `available` int(1) NOT NULL DEFAULT 0,
  `core` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_permissions`
--

INSERT INTO `sys_permissions` (`id`, `pname`, `shortname`, `available`, `core`) VALUES
(1, 'Customers', 'customers', 0, 1),
(2, 'Companies', 'companies', 0, 1),
(3, 'Transactions', 'transactions', 0, 1),
(4, 'Sales', 'sales', 0, 1),
(5, 'Bank & Cash', 'bank_n_cash', 0, 1),
(6, 'Products & Services', 'products_n_services', 0, 1),
(7, 'Reports', 'reports', 0, 1),
(8, 'Utilities', 'utilities', 0, 1),
(9, 'Appearance', 'appearance', 0, 1),
(10, 'Plugins', 'plugins', 0, 1),
(11, 'Calendar', 'calendar', 0, 1),
(12, 'Leads', 'leads', 0, 1),
(13, 'Tasks', 'tasks', 0, 1),
(14, 'Contracts', 'contracts', 0, 1),
(15, 'Orders', 'orders', 0, 1),
(16, 'Settings', 'settings', 0, 1),
(17, 'Documents', 'documents', 0, 1),
(18, 'Purchase', 'purchase', 0, 1),
(19, 'Suppliers', 'suppliers', 0, 1),
(20, 'SMS', 'sms', 0, 1),
(21, 'Support', 'support', 0, 1),
(22, 'Knowledgebase', 'kb', 0, 1),
(23, 'Password Manager', 'password_manager', 0, 1),
(24, 'HRM', 'hr', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_pg`
--

CREATE TABLE `sys_pg` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `settings` text NOT NULL,
  `value` text NOT NULL,
  `processor` text NOT NULL,
  `ins` text NOT NULL,
  `c1` text NOT NULL,
  `c2` text NOT NULL,
  `c3` text NOT NULL,
  `c4` text NOT NULL,
  `c5` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `sorder` int(2) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `mode` varchar(200) DEFAULT NULL,
  `account_id` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_pg`
--

INSERT INTO `sys_pg` (`id`, `name`, `settings`, `value`, `processor`, `ins`, `c1`, `c2`, `c3`, `c4`, `c5`, `status`, `sorder`, `logo`, `mode`, `account_id`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', 'Paypal Email', 'demo@example.com', 'paypal', 'Invoices', 'USD', '1', '', '', '', 'Inactive', 2, NULL, '', NULL, NULL, NULL),
(2, 'Stripe', 'API Key', 'sk_test_ARblMczqDw61NusMMs7o1RVK', 'stripe', '', 'USD', '', '', '', '', 'Inactive', 3, NULL, '', NULL, NULL, NULL),
(3, 'Bank / Cash', 'Instructions', 'Make a Payment to Our Bank Account <br>Bank Name: DBBL <br>Account Name: Nurul Islam <br>Account Number: 102.151.6761 <br>', 'manualpayment', '', '', '', '', '', '', 'Inactive', 4, NULL, '', NULL, NULL, NULL),
(4, 'Authorize.net', 'API_LOGIN_ID', 'Insert API Login ID here', 'authorize_net', '', 'Insert Transaction Key Here', '', '', '', '', 'Inactive', 5, NULL, '', NULL, NULL, NULL),
(5, 'Braintree', 'Merchant ID', 'your merchant id', 'braintree', '', 'your public key', 'your private key', 'bank account', 'sandbox', '', 'Inactive', 6, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_pl`
--

CREATE TABLE `sys_pl` (
  `id` int(11) NOT NULL,
  `c` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `build` int(10) DEFAULT 1,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_pmethods`
--

CREATE TABLE `sys_pmethods` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_pmethods`
--

INSERT INTO `sys_pmethods` (`id`, `name`, `sorder`) VALUES
(1, 'Cash', 1),
(2, 'Check', 4),
(3, 'Credit Card', 5),
(4, 'Debit', 6),
(5, 'Electronic Transfer', 7),
(9, 'Paypal', 2),
(10, 'ATM Withdrawals', 3),
(11, 'Pagseguro', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_purchaseitems`
--

CREATE TABLE `sys_purchaseitems` (
  `id` int(10) NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT 0,
  `userid` int(10) NOT NULL,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `tax_code` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `qty` varchar(20) NOT NULL DEFAULT '1',
  `amount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `taxed` int(1) NOT NULL,
  `tax_rate` decimal(16,2) DEFAULT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `taxamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax1` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax2` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax3` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `discount_type` varchar(100) DEFAULT NULL,
  `discount_amount` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(14,2) NOT NULL DEFAULT 0.00,
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_purchaseitems`
--

INSERT INTO `sys_purchaseitems` (`id`, `invoiceid`, `userid`, `type`, `relid`, `itemcode`, `tax_code`, `description`, `qty`, `amount`, `taxed`, `tax_rate`, `tax_name`, `taxamount`, `tax1`, `tax2`, `tax3`, `discount_type`, `discount_amount`, `total`, `duedate`, `paymentmethod`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 8, '', 0, '', NULL, 'Personal Tuition Fees', '1', 1675.00, 0, 0.00, NULL, 0.00, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 1675.00, '2021-06-28', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_purchases`
--

CREATE TABLE `sys_purchases` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `supplier_id` int(10) DEFAULT NULL,
  `supplier_name` varchar(200) DEFAULT NULL,
  `account` varchar(200) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `cn` varchar(100) NOT NULL DEFAULT '',
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime DEFAULT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` varchar(1) NOT NULL DEFAULT 'f',
  `discount_value` decimal(14,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `taxname` varchar(100) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `tax2` decimal(10,2) DEFAULT NULL,
  `tax1_total` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax2_total` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax3_total` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `tax_total` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `taxrate` decimal(10,2) DEFAULT NULL,
  `taxrate2` decimal(10,2) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `vtoken` varchar(20) NOT NULL,
  `ptoken` varchar(20) NOT NULL,
  `r` varchar(100) NOT NULL DEFAULT '0',
  `nd` date DEFAULT NULL,
  `eid` int(10) NOT NULL DEFAULT 0,
  `ename` varchar(200) NOT NULL DEFAULT '',
  `vid` int(11) NOT NULL DEFAULT 0,
  `currency` int(11) NOT NULL DEFAULT 0,
  `currency_iso_code` char(3) DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT 1.0000,
  `recurring` tinyint(1) NOT NULL DEFAULT 0,
  `recurring_ends` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `last_overdue_reminder` date DEFAULT NULL,
  `allowed_payment_methods` text DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(50) DEFAULT NULL,
  `billing_country` varchar(100) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` varchar(100) DEFAULT NULL,
  `q_hide` tinyint(1) NOT NULL DEFAULT 0,
  `show_quantity_as` varchar(100) DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `is_credit_invoice` int(1) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `aname` varchar(200) DEFAULT NULL,
  `receipt_number` varchar(200) DEFAULT NULL,
  `stage` varchar(200) DEFAULT 'Pending',
  `subject` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_purchases`
--

INSERT INTO `sys_purchases` (`id`, `userid`, `supplier_id`, `supplier_name`, `account`, `title`, `cn`, `invoicenum`, `date`, `duedate`, `datepaid`, `subtotal`, `discount_type`, `discount_value`, `discount`, `credit`, `taxname`, `tax`, `tax2`, `tax1_total`, `tax2_total`, `tax3_total`, `tax_total`, `total`, `taxrate`, `taxrate2`, `status`, `paymentmethod`, `notes`, `vtoken`, `ptoken`, `r`, `nd`, `eid`, `ename`, `vid`, `currency`, `currency_iso_code`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `recurring`, `recurring_ends`, `last_recurring_date`, `source`, `sale_agent`, `last_overdue_reminder`, `allowed_payment_methods`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `q_hide`, `show_quantity_as`, `pid`, `is_credit_invoice`, `aid`, `aname`, `receipt_number`, `stage`, `subject`, `created_at`, `updated_at`, `code`) VALUES
(1, 8, NULL, NULL, 'UNIKL', NULL, '00001', 'PO-', '2021-06-28', '2021-06-28', '2021-06-28 17:46:58', 1675.00, 'p', 0.00, 0.00, 0.00, '', 0.00, 0.00, 0.0000, 0.0000, 0.0000, 0.0000, 1675.00, 0.00, 0.00, 'Unpaid', '', '', '9367494497', '4956023229', '0', '2021-06-28', 0, '', 0, 0, 'MYR', 'RM', NULL, NULL, 1.0000, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Qty', 0, 0, 0, NULL, '', 'Pending', 'Tuition Fees', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_quoteitems`
--

CREATE TABLE `sys_quoteitems` (
  `id` int(10) NOT NULL,
  `qid` int(10) NOT NULL,
  `itemcode` text NOT NULL,
  `description` text NOT NULL,
  `qty` text NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `taxable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_quoteitems`
--

INSERT INTO `sys_quoteitems` (`id`, `qid`, `itemcode`, `description`, `qty`, `amount`, `discount`, `total`, `taxable`) VALUES
(15, 3, '', 'Success Service Fee (University of Pannonia) 800.00 Euro*5.00=4,000.00 Rm', '1', 4000.00, 0.00, 4000.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_quotes`
--

CREATE TABLE `sys_quotes` (
  `id` int(10) NOT NULL,
  `subject` text NOT NULL,
  `stage` enum('Draft','Delivered','On Hold','Accepted','Lost','Dead') NOT NULL,
  `validuntil` date NOT NULL,
  `userid` int(10) NOT NULL,
  `invoicenum` text NOT NULL,
  `cn` text NOT NULL,
  `account` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `companyname` text NOT NULL,
  `email` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` text NOT NULL,
  `country` text NOT NULL,
  `phonenumber` text NOT NULL,
  `currency` int(10) NOT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` text NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `taxname` text NOT NULL,
  `taxrate` decimal(10,2) NOT NULL,
  `tax1` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `proposal` text NOT NULL,
  `customernotes` text NOT NULL,
  `adminnotes` text NOT NULL,
  `datecreated` date NOT NULL,
  `lastmodified` date NOT NULL,
  `datesent` date NOT NULL,
  `dateaccepted` date NOT NULL,
  `vtoken` text NOT NULL,
  `code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_quotes`
--

INSERT INTO `sys_quotes` (`id`, `subject`, `stage`, `validuntil`, `userid`, `invoicenum`, `cn`, `account`, `firstname`, `lastname`, `companyname`, `email`, `address1`, `address2`, `city`, `state`, `postcode`, `country`, `phonenumber`, `currency`, `subtotal`, `discount_type`, `discount_value`, `discount`, `taxname`, `taxrate`, `tax1`, `tax2`, `total`, `proposal`, `customernotes`, `adminnotes`, `datecreated`, `lastmodified`, `datesent`, `dateaccepted`, `vtoken`, `code`) VALUES
(3, 'Student Reqruitment', 'Draft', '2021-07-28', 7, 'QUOTE-', '00003', 'Loai Salloum', '', '', '', '', '', '', '', '', '', '', '', 1, 4000.00, 'p', 0.00, 0.00, '', 0.00, 0.00, 0.00, 4000.00, '', '', '', '2021-04-01', '2021-06-28', '2021-06-28', '2021-06-28', '2158997312', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_roles`
--

CREATE TABLE `sys_roles` (
  `id` int(11) NOT NULL,
  `rname` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_roles`
--

INSERT INTO `sys_roles` (`id`, `rname`) VALUES
(3, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `sys_sales`
--

CREATE TABLE `sys_sales` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `oname` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `term` varchar(100) NOT NULL,
  `milestone` varchar(100) NOT NULL,
  `p` int(11) NOT NULL,
  `o` int(11) NOT NULL,
  `open` date NOT NULL,
  `close` date NOT NULL,
  `status` enum('New','In Progress','Won','Lost') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_schedule`
--

CREATE TABLE `sys_schedule` (
  `id` int(11) NOT NULL,
  `cname` mediumtext NOT NULL,
  `val` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_schedule`
--

INSERT INTO `sys_schedule` (`id`, `cname`, `val`) VALUES
(1, 'accounting_snapshot', 'Active'),
(2, 'recurring_invoice', 'Active'),
(3, 'notify', 'Active'),
(4, 'notifyemail', 'demo@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `sys_schedulelogs`
--

CREATE TABLE `sys_schedulelogs` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `logs` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_schedulelogs`
--

INSERT INTO `sys_schedulelogs` (`id`, `date`, `logs`) VALUES
(4, '2015-03-14', '2015-03-14 20:17:15 : Schedule Jobs Started....... <br>2015-03-14 20:17:15 : Creating Accounting Snapshot <br>2015-03-14 20:17:15 : Accounting Snapshot created! <br>=============== Accounting Snaphsot ==================== <br>Accounting Snaphsot - Date: 2015-03-13<br>Total Income: Tk. 0.00<br>Total Expense: Tk. 0.00<br>================================================== <br>2015-03-14 20:17:15 : Creating Recurring Invoice <br>2015-03-14 20:17:15 : 1 Invoice created! <br>================================================== <br>'),
(5, '2018-07-24', '================================================== <br>2018-07-24 13:27:38 : Schedule Jobs Started....... <br>2018-07-24 13:27:38 : Creating Accounting Snapshot <br>2018-07-24 13:27:38 : Accounting Snapshot created! <br>=============== Accounting Snaphsot ==================== <br>Accounting Snaphsot - Date: 2018-07-23<br>Total Income: $ 13,800.00<br>Total Expense: $ 0.00<br>================================================== <br>2018-07-24 13:27:38 : Creating Recurring Invoice <br>2018-07-24 13:27:38 : 0 Invoice created! <br>================================================== <br>');

-- --------------------------------------------------------

--
-- Table structure for table `sys_staffpermissions`
--

CREATE TABLE `sys_staffpermissions` (
  `id` int(11) NOT NULL,
  `rid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `can_view` int(1) NOT NULL DEFAULT 0,
  `can_edit` int(1) NOT NULL DEFAULT 0,
  `can_create` int(1) NOT NULL DEFAULT 0,
  `can_delete` int(1) NOT NULL DEFAULT 0,
  `all_data` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_status`
--

CREATE TABLE `sys_status` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sorder` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_status`
--

INSERT INTO `sys_status` (`id`, `type`, `name`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Purchase Invoice', 'Pending', NULL, NULL, NULL),
(2, 'Purchase Invoice', 'Accepted', NULL, NULL, NULL),
(3, 'Purchase Invoice', 'Declined', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_tags`
--

CREATE TABLE `sys_tags` (
  `id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_tags`
--

INSERT INTO `sys_tags` (`id`, `text`, `type`) VALUES
(1, 'Full Name*', 'Contacts');

-- --------------------------------------------------------

--
-- Table structure for table `sys_tasks`
--

CREATE TABLE `sys_tasks` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `tid` int(11) NOT NULL DEFAULT 0,
  `eid` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `did` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `subscribers` text DEFAULT NULL,
  `assigned_to` text DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `vtoken` varchar(50) DEFAULT NULL,
  `ptoken` varchar(50) DEFAULT NULL,
  `started` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `stime` varchar(50) DEFAULT NULL,
  `dtime` varchar(50) DEFAULT NULL,
  `time_spent` varchar(50) DEFAULT NULL,
  `date_finished` date DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `finished` int(1) NOT NULL DEFAULT 0,
  `ratings` varchar(50) DEFAULT NULL,
  `rel_type` varchar(50) DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `is_public` int(1) NOT NULL DEFAULT 0,
  `billable` int(1) NOT NULL DEFAULT 0,
  `billed` int(1) NOT NULL DEFAULT 0,
  `hourly_rate` decimal(14,2) NOT NULL DEFAULT 0.00,
  `milestone` int(11) DEFAULT NULL,
  `progress` int(3) DEFAULT NULL,
  `visible_to_client` int(1) NOT NULL DEFAULT 0,
  `notification` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_tax`
--

CREATE TABLE `sys_tax` (
  `id` int(10) NOT NULL,
  `name` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `bal` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_tax`
--

INSERT INTO `sys_tax` (`id`, `name`, `state`, `country`, `rate`, `aid`, `bal`, `created_at`, `updated_at`, `is_default`) VALUES
(1, 'None', NULL, NULL, 0.00, NULL, 0.00, '2018-11-20 08:57:47', '2018-11-20 08:57:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticketdepartments`
--

CREATE TABLE `sys_ticketdepartments` (
  `id` int(11) NOT NULL,
  `dname` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `hidden` int(1) NOT NULL DEFAULT 0,
  `delete_after_import` int(1) NOT NULL DEFAULT 0,
  `host` varchar(200) DEFAULT NULL,
  `port` varchar(50) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `encryption` varchar(100) DEFAULT NULL,
  `calendar_id` varchar(200) DEFAULT NULL,
  `sorder` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_ticketdepartments`
--

INSERT INTO `sys_ticketdepartments` (`id`, `dname`, `description`, `email`, `hidden`, `delete_after_import`, `host`, `port`, `username`, `password`, `encryption`, `calendar_id`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Sales', NULL, '', 0, 0, '', '', '', '', 'no', NULL, 1, NULL, NULL),
(2, 'Support', NULL, '', 0, 0, '', '', '', '', 'no', NULL, 1, NULL, NULL),
(3, 'Billing', NULL, '', 0, 0, '', '', '', '', 'no', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticketmaillog`
--

CREATE TABLE `sys_ticketmaillog` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `account` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticketpredefinedreplies`
--

CREATE TABLE `sys_ticketpredefinedreplies` (
  `id` int(11) NOT NULL,
  `rname` varchar(200) DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `attachments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticketreplies`
--

CREATE TABLE `sys_ticketreplies` (
  `id` int(11) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `account` varchar(200) DEFAULT NULL,
  `reply_type` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` text DEFAULT NULL,
  `replied_by` varchar(200) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `client_read` varchar(100) DEFAULT NULL,
  `admin_read` varchar(100) DEFAULT NULL,
  `rating` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_tickets`
--

CREATE TABLE `sys_tickets` (
  `id` int(11) NOT NULL,
  `tid` varchar(100) DEFAULT NULL,
  `did` int(10) DEFAULT NULL,
  `aid` int(10) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `sid` int(10) DEFAULT NULL,
  `lid` int(10) DEFAULT NULL,
  `oid` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `dname` varchar(100) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `account` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `cc` varchar(200) DEFAULT NULL,
  `bcc` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `urgency` varchar(100) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `last_reply` varchar(100) DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  `escalated` int(1) DEFAULT NULL,
  `replying` int(1) DEFAULT NULL,
  `is_spam` int(1) DEFAULT NULL,
  `rating` int(2) DEFAULT NULL,
  `client_read` varchar(100) DEFAULT NULL,
  `admin_read` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `ttype` varchar(100) DEFAULT NULL,
  `tstart` varchar(100) DEFAULT NULL,
  `tend` varchar(100) DEFAULT NULL,
  `ttotal` varchar(100) DEFAULT NULL,
  `todo` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `c1` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  `c3` varchar(255) DEFAULT NULL,
  `c4` varchar(255) DEFAULT NULL,
  `c5` text DEFAULT NULL,
  `end_user_id` int(10) UNSIGNED DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_transactions`
--

CREATE TABLE `sys_transactions` (
  `id` int(11) NOT NULL,
  `account` varchar(200) NOT NULL,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(200) DEFAULT NULL,
  `sub_type` varchar(200) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `payer` varchar(200) DEFAULT NULL,
  `payee` varchar(200) DEFAULT NULL,
  `payerid` int(11) NOT NULL DEFAULT 0,
  `payeeid` int(11) NOT NULL DEFAULT 0,
  `method` varchar(200) DEFAULT NULL,
  `ref` varchar(200) DEFAULT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') NOT NULL DEFAULT 'Cleared',
  `description` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `tax` decimal(18,2) NOT NULL DEFAULT 0.00,
  `date` date DEFAULT NULL,
  `dr` decimal(18,2) NOT NULL DEFAULT 0.00,
  `cr` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bal` decimal(18,2) NOT NULL DEFAULT 0.00,
  `iid` int(11) NOT NULL DEFAULT 0,
  `currency_iso_code` char(3) DEFAULT NULL,
  `currency` int(11) NOT NULL DEFAULT 0,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT 1.0000,
  `base_amount` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `vid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT 0,
  `attachments` text DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `flag` int(1) NOT NULL DEFAULT 0,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL,
  `c3` text DEFAULT NULL,
  `c4` text DEFAULT NULL,
  `c5` text DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_transactions`
--

INSERT INTO `sys_transactions` (`id`, `account`, `account_id`, `type`, `sub_type`, `cat_id`, `category`, `amount`, `payer`, `payee`, `payerid`, `payeeid`, `method`, `ref`, `status`, `description`, `tags`, `tax`, `date`, `dr`, `cr`, `bal`, `iid`, `currency_iso_code`, `currency`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `base_amount`, `company_id`, `vid`, `aid`, `created_at`, `updated_at`, `updated_by`, `attachments`, `source`, `rid`, `pid`, `archived`, `trash`, `flag`, `c1`, `c2`, `c3`, `c4`, `c5`, `purchase_id`, `code`) VALUES
(12, 'May Bank', 2, 'Equity', NULL, 0, '', 26.80, '', '', 0, 0, '', '', 'Cleared', 'Opening balance', '', 0.00, '2021-06-28', 0.00, 26.80, 26.80, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 12875439, 1, '2021-06-27 16:35:53', '2021-06-27 16:35:53', 0, '', 'Opening balance', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'RHB Bank Personal', 3, 'Equity', NULL, 0, '', 1.60, '', '', 0, 0, '', '', 'Cleared', 'Opening balance', '', 0.00, '2021-06-28', 0.00, 1.60, 1.60, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 92958673, 1, '2021-06-27 16:41:09', '2021-06-27 16:41:09', 0, '', 'Opening balance', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'RHB Bank Coxs View', 4, 'Equity', NULL, 0, '', 365.67, '', '', 0, 0, '', '', 'Cleared', 'Opening balance', '', 0.00, '2021-06-28', 0.00, 365.67, 365.67, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 67261995, 1, '2021-06-27 16:49:26', '2021-06-27 16:49:26', 0, '', 'Opening balance', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Cash Counter', 5, 'Equity', NULL, 0, '', 45.00, '', '', 0, 0, '', '', 'Cleared', 'Opening balance', '', 0.00, '2021-06-28', 0.00, 45.00, 45.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 79110552, 1, '2021-06-27 16:54:05', '2021-06-27 16:54:05', 0, '', 'Opening balance', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'UCB Bank', 6, 'Equity', NULL, 0, '', 841.72, '', '', 0, 0, '', '', 'Cleared', 'Opening balance', '', 0.00, '2021-06-28', 0.00, 841.72, 841.72, 0, 'BDT', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 87414027, 1, '2021-06-27 16:56:30', '2021-06-27 16:56:30', 0, '', 'Opening balance', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'RHB Bank Coxs View', 4, 'Income', NULL, NULL, 'Other Income', 2500.00, 'Loai Salloum', '', 7, 0, 'Electronic Transfer', '', 'Cleared', 'Invoice 5 Payment', '', 0.00, '2021-06-28', 0.00, 2500.00, 0.00, 5, 'MYR', 0, '', NULL, NULL, 1.0000, 0.0000, 0, 21233974, 1, NULL, '2021-06-28 06:03:27', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'RHB Bank Coxs View', 4, 'Out', NULL, NULL, '', 2650.00, '', '', 0, 0, '', '', 'Cleared', 'Personal Use', '', 0.00, '2021-06-28', 2650.00, 0.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 71263090, 1, NULL, '2021-06-28 09:05:32', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'RHB Bank Personal', 3, 'In', NULL, NULL, '', 2650.00, '', '', 0, 0, '', '', 'Cleared', 'Personal Use', '', 0.00, '2021-06-28', 0.00, 2650.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 46149195, 0, NULL, '2021-06-28 09:05:32', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'RHB Bank Personal', 3, 'Out', NULL, NULL, '', 1700.00, '', '', 0, 0, '', '', 'Cleared', 'Personal Use', '', 0.00, '2021-06-28', 1700.00, 0.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 16229835, 1, NULL, '2021-06-28 09:14:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'May Bank', 2, 'In', NULL, NULL, '', 1700.00, '', '', 0, 0, '', '', 'Cleared', 'Personal Use', '', 0.00, '2021-06-28', 0.00, 1700.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 54329011, 0, NULL, '2021-06-28 09:14:21', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'RHB Bank Personal', 3, 'Out', NULL, NULL, '', 20000.00, '', '', 0, 0, '', '', 'Cleared', 'Pay to Faisal', '', 0.00, '2021-06-28', 20000.00, 0.00, 0.00, 0, 'BDT', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 70771409, 1, NULL, '2021-06-28 09:51:02', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Personal use', 7, 'In', NULL, NULL, '', 20000.00, '', '', 0, 0, '', '', 'Cleared', 'Pay to Faisal', '', 0.00, '2021-06-28', 0.00, 20000.00, 0.00, 0, 'BDT', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 51630591, 0, NULL, '2021-06-28 09:51:02', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'RHB Bank Personal', 3, 'Equity', NULL, 0, '', 57.08, '', '', 0, 0, '', '', 'Cleared', 'Opening balance', '', 0.00, '2021-06-28', 0.00, 57.08, 57.08, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 77355837, 1, '2021-06-28 09:53:51', '2021-06-28 09:53:51', 0, '', 'Opening balance', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'May Bank', 2, 'Expense', '', 63, 'Loans', 1675.00, '', '', 0, 8, 'Electronic Transfer', '', 'Cleared', 'Loan Return', '', 0.00, '2021-06-28', 1675.00, 0.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 19489646, 1, NULL, '2021-06-28 10:30:50', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00001'),
(29, 'RHB Bank Personal', 3, 'Out', NULL, NULL, '', 5.00, '', '', 0, 0, '', '', 'Cleared', 'Fund Transfer', '', 0.00, '2021-06-29', 5.00, 0.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 59707768, 1, NULL, '2021-06-28 17:30:27', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'May Bank', 2, 'In', NULL, NULL, '', 5.00, '', '', 0, 0, '', '', 'Cleared', 'Fund Transfer', '', 0.00, '2021-06-29', 0.00, 5.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 51293730, 0, NULL, '2021-06-28 17:30:27', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'RHB Bank Coxs View', 4, 'Out', NULL, NULL, '', 215.00, '', '', 0, 0, '', '', 'Cleared', 'Fund transfer', '', 0.00, '2021-06-29', 215.00, 0.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 30973415, 1, NULL, '2021-06-28 17:31:28', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'May Bank', 2, 'In', NULL, NULL, '', 215.00, '', '', 0, 0, '', '', 'Cleared', 'Fund transfer', '', 0.00, '2021-06-29', 0.00, 215.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 90970614, 0, NULL, '2021-06-28 17:31:28', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'May Bank', 2, 'Expense', '', 63, 'Loans', 200.00, '', '', 0, 9, 'Electronic Transfer', '', 'Cleared', 'Loan Return', '', 0.00, '2021-06-29', 200.00, 0.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 92528616, 1, NULL, '2021-06-28 17:40:39', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00002'),
(34, 'May Bank', 2, 'Expense', '', 37, 'Phone', 10.00, '', '', 0, 6, 'Electronic Transfer', '', 'Cleared', 'Rahad Vai reload', '', 0.00, '2021-06-29', 10.00, 0.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 91025500, 1, NULL, '2021-06-28 17:41:32', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00003'),
(35, 'May Bank', 2, 'Out', NULL, NULL, '', 50.00, '', '', 0, 0, '', '', 'Cleared', 'Fund transfer', '', 0.00, '2021-06-29', 50.00, 0.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 9911845, 1, NULL, '2021-06-28 17:41:58', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'RHB Bank Coxs View', 4, 'In', NULL, NULL, '', 50.00, '', '', 0, 0, '', '', 'Cleared', 'Fund transfer', '', 0.00, '2021-06-29', 0.00, 50.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 64097285, 0, NULL, '2021-06-28 17:41:58', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Cash Counter', 5, 'Expense', '', 70, 'Staff Entertaining', 45.00, '', '', 0, 7, '', '', 'Cleared', 'Personal Expenses', '', 0.00, '2021-06-29', 45.00, 0.00, 0.00, 0, 'MYR', 0, NULL, NULL, NULL, 1.0000, 0.0000, 0, 96715062, 1, NULL, '2021-06-28 17:43:10', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'EXP-00004'),
(38, 'May Bank', 2, 'Income', NULL, NULL, 'Uncategorized', 4000.00, 'Sanjit Suttradhor', '', 11, 0, 'Electronic Transfer', '', 'Cleared', 'Invoice 8 Payment', '', 0.00, '2021-10-16', 0.00, 4000.00, 0.00, 8, 'MYR', 0, '', NULL, NULL, 1.0000, 0.0000, 0, 5507631, 1, NULL, '2021-10-15 16:13:04', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_units`
--

CREATE TABLE `sys_units` (
  `id` int(11) NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `reference` varchar(200) DEFAULT NULL,
  `conversion_factor` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_users`
--

CREATE TABLE `sys_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `phonenumber` varchar(20) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'Full Access',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `last_login` datetime DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `creationdate` datetime NOT NULL,
  `otp` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin` mediumtext NOT NULL,
  `img` text NOT NULL,
  `api` enum('Yes','No') DEFAULT 'No',
  `pwresetkey` varchar(100) NOT NULL,
  `keyexpire` varchar(100) NOT NULL,
  `roleid` int(11) NOT NULL DEFAULT 0,
  `role` varchar(200) DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `autologin` varchar(200) DEFAULT NULL,
  `at` varchar(200) DEFAULT NULL,
  `landing_page` varchar(200) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sms_notify` int(1) DEFAULT NULL,
  `email_notify` int(1) DEFAULT NULL,
  `slack_notify` int(1) DEFAULT NULL,
  `job_title` varchar(150) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `department_id` int(11) DEFAULT 0,
  `manager_id` int(11) DEFAULT 0,
  `pay_frequency` varchar(150) DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `employee_id` varchar(150) DEFAULT NULL,
  `legal_name_title` varchar(150) DEFAULT NULL,
  `legal_name_first` varchar(150) DEFAULT NULL,
  `legal_name_mi` varchar(150) DEFAULT NULL,
  `legal_name_last` varchar(150) DEFAULT NULL,
  `banking_name` varchar(150) DEFAULT NULL,
  `ssn` varchar(150) DEFAULT NULL,
  `gender` varchar(150) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `marital_status` varchar(150) DEFAULT NULL,
  `ethnicity` varchar(150) DEFAULT NULL,
  `is_citizen` tinyint(1) NOT NULL DEFAULT 1,
  `has_i9_form` varchar(150) DEFAULT NULL,
  `work_authorization_expires` date DEFAULT NULL,
  `address_line_1` varchar(150) DEFAULT NULL,
  `address_line_2` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `zip` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `work_phone` varchar(150) DEFAULT NULL,
  `work_mobile` varchar(150) DEFAULT NULL,
  `work_fax` varchar(150) DEFAULT NULL,
  `cc_email` varchar(150) DEFAULT NULL,
  `other` varchar(150) DEFAULT NULL,
  `emergency_contact_name_1` varchar(150) DEFAULT NULL,
  `emergency_contact_phone_1` varchar(150) DEFAULT NULL,
  `emergency_contact_relation_1` varchar(150) DEFAULT NULL,
  `emergency_contact_name_2` varchar(150) DEFAULT NULL,
  `emergency_contact_phone_2` varchar(150) DEFAULT NULL,
  `emergency_contact_relation_2` varchar(150) DEFAULT NULL,
  `last_day_worked` date DEFAULT NULL,
  `last_day_on_benefits` date DEFAULT NULL,
  `last_day_on_payroll` date DEFAULT NULL,
  `termination_type` varchar(150) DEFAULT NULL,
  `termination_reason` varchar(150) DEFAULT NULL,
  `is_recommended` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `facebook` varchar(150) DEFAULT NULL,
  `google` varchar(150) DEFAULT NULL,
  `linkedin` varchar(150) DEFAULT NULL,
  `skype` varchar(150) DEFAULT NULL,
  `twitter` varchar(150) DEFAULT NULL,
  `summary` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_users`
--

INSERT INTO `sys_users` (`id`, `username`, `fullname`, `phonenumber`, `password`, `user_type`, `status`, `last_login`, `email`, `creationdate`, `otp`, `pin_enabled`, `pin`, `img`, `api`, `pwresetkey`, `keyexpire`, `roleid`, `role`, `last_activity`, `autologin`, `at`, `landing_page`, `language`, `notes`, `created_at`, `updated_at`, `sms_notify`, `email_notify`, `slack_notify`, `job_title`, `date_hired`, `department_id`, `manager_id`, `pay_frequency`, `currency`, `amount`, `employee_id`, `legal_name_title`, `legal_name_first`, `legal_name_mi`, `legal_name_last`, `banking_name`, `ssn`, `gender`, `date_of_birth`, `marital_status`, `ethnicity`, `is_citizen`, `has_i9_form`, `work_authorization_expires`, `address_line_1`, `address_line_2`, `city`, `state`, `zip`, `country`, `work_phone`, `work_mobile`, `work_fax`, `cc_email`, `other`, `emergency_contact_name_1`, `emergency_contact_phone_1`, `emergency_contact_relation_1`, `emergency_contact_name_2`, `emergency_contact_phone_2`, `emergency_contact_relation_2`, `last_day_worked`, `last_day_on_benefits`, `last_day_on_payroll`, `termination_type`, `termination_reason`, `is_recommended`, `is_active`, `facebook`, `google`, `linkedin`, `skype`, `twitter`, `summary`) VALUES
(1, 'info@cvics.org', 'CVICS', '738072957', '$2y$10$8Jr5tZboV921jedxwiTeK.xBqfHyoh1m0SS3xoXazkbpFuF1emBj6', 'Admin', 'Active', '2021-10-22 11:41:10', '', '2014-10-20 01:43:07', 'No', 'No', 'Y6AOTKNSQ5D7J4FU', '', 'No', '', '0', 0, NULL, NULL, 'juse9zso1fl3tj3ed70g1', NULL, NULL, 'en', NULL, NULL, '2021-06-27 21:36:55', 1, 1, NULL, '', NULL, 0, 0, 'Monthly', 'BDT', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', '', '', 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_balances`
--
ALTER TABLE `account_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_notes`
--
ALTER TABLE `app_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_password_manager`
--
ALTER TABLE `app_password_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_sms`
--
ALTER TABLE `app_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_sms_drivers`
--
ALTER TABLE `app_sms_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_sms_templates`
--
ALTER TABLE `app_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_categories`
--
ALTER TABLE `asset_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clx_integrations`
--
ALTER TABLE `clx_integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clx_shared_preferences`
--
ALTER TABLE `clx_shared_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_cards`
--
ALTER TABLE `credit_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_accounts`
--
ALTER TABLE `crm_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_customfields`
--
ALTER TABLE `crm_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_customfieldsvalues`
--
ALTER TABLE `crm_customfieldsvalues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_groups`
--
ALTER TABLE `crm_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_industries`
--
ALTER TABLE `crm_industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_leads`
--
ALTER TABLE `crm_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_lead_sources`
--
ALTER TABLE `crm_lead_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_lead_status`
--
ALTER TABLE `crm_lead_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_salutations`
--
ALTER TABLE `crm_salutations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `end_users`
--
ALTER TABLE `end_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_assets`
--
ALTER TABLE `ib_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_doc_rel`
--
ALTER TABLE `ib_doc_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_invoice_access_log`
--
ALTER TABLE `ib_invoice_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_kb`
--
ALTER TABLE `ib_kb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_kb_groups`
--
ALTER TABLE `ib_kb_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_kb_rel`
--
ALTER TABLE `ib_kb_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_kb_replies`
--
ALTER TABLE `ib_kb_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_accounts`
--
ALTER TABLE `sys_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_activity`
--
ALTER TABLE `sys_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_api`
--
ALTER TABLE `sys_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_appconfig`
--
ALTER TABLE `sys_appconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_canned_responses`
--
ALTER TABLE `sys_canned_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_cart`
--
ALTER TABLE `sys_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_cats`
--
ALTER TABLE `sys_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_companies`
--
ALTER TABLE `sys_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_currencies`
--
ALTER TABLE `sys_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_documents`
--
ALTER TABLE `sys_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_emailconfig`
--
ALTER TABLE `sys_emailconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_email_logs`
--
ALTER TABLE `sys_email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  ADD PRIMARY KEY (`id`,`language_id`),
  ADD KEY `tplname` (`tplname`(32));

--
-- Indexes for table `sys_events`
--
ALTER TABLE `sys_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_invoiceitems`
--
ALTER TABLE `sys_invoiceitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`);

--
-- Indexes for table `sys_invoices`
--
ALTER TABLE `sys_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`(3));

--
-- Indexes for table `sys_items`
--
ALTER TABLE `sys_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_item_cats`
--
ALTER TABLE `sys_item_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_leads`
--
ALTER TABLE `sys_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_logs`
--
ALTER TABLE `sys_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_orders`
--
ALTER TABLE `sys_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_permissions`
--
ALTER TABLE `sys_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_pg`
--
ALTER TABLE `sys_pg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gateway_setting` (`name`(32),`processor`(32)),
  ADD KEY `setting_value` (`processor`(32),`ins`(32));

--
-- Indexes for table `sys_pl`
--
ALTER TABLE `sys_pl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_pmethods`
--
ALTER TABLE `sys_pmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_purchaseitems`
--
ALTER TABLE `sys_purchaseitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_purchases`
--
ALTER TABLE `sys_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_quoteitems`
--
ALTER TABLE `sys_quoteitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_quotes`
--
ALTER TABLE `sys_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_roles`
--
ALTER TABLE `sys_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sales`
--
ALTER TABLE `sys_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_schedule`
--
ALTER TABLE `sys_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_schedulelogs`
--
ALTER TABLE `sys_schedulelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_staffpermissions`
--
ALTER TABLE `sys_staffpermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_status`
--
ALTER TABLE `sys_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tags`
--
ALTER TABLE `sys_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tasks`
--
ALTER TABLE `sys_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tax`
--
ALTER TABLE `sys_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_country` (`state`(32),`country`(2));

--
-- Indexes for table `sys_ticketdepartments`
--
ALTER TABLE `sys_ticketdepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_ticketmaillog`
--
ALTER TABLE `sys_ticketmaillog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_ticketpredefinedreplies`
--
ALTER TABLE `sys_ticketpredefinedreplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_ticketreplies`
--
ALTER TABLE `sys_ticketreplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tickets`
--
ALTER TABLE `sys_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_transactions`
--
ALTER TABLE `sys_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_units`
--
ALTER TABLE `sys_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_balances`
--
ALTER TABLE `account_balances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_notes`
--
ALTER TABLE `app_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_password_manager`
--
ALTER TABLE `app_password_manager`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_sms`
--
ALTER TABLE `app_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_sms_drivers`
--
ALTER TABLE `app_sms_drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `app_sms_templates`
--
ALTER TABLE `app_sms_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `asset_categories`
--
ALTER TABLE `asset_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clx_integrations`
--
ALTER TABLE `clx_integrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clx_shared_preferences`
--
ALTER TABLE `clx_shared_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_cards`
--
ALTER TABLE `credit_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crm_accounts`
--
ALTER TABLE `crm_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `crm_customfields`
--
ALTER TABLE `crm_customfields`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crm_customfieldsvalues`
--
ALTER TABLE `crm_customfieldsvalues`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `crm_groups`
--
ALTER TABLE `crm_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crm_industries`
--
ALTER TABLE `crm_industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `crm_leads`
--
ALTER TABLE `crm_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_lead_sources`
--
ALTER TABLE `crm_lead_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `crm_lead_status`
--
ALTER TABLE `crm_lead_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crm_salutations`
--
ALTER TABLE `crm_salutations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `end_users`
--
ALTER TABLE `end_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_assets`
--
ALTER TABLE `ib_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_doc_rel`
--
ALTER TABLE `ib_doc_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_invoice_access_log`
--
ALTER TABLE `ib_invoice_access_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_kb`
--
ALTER TABLE `ib_kb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_kb_groups`
--
ALTER TABLE `ib_kb_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_kb_rel`
--
ALTER TABLE `ib_kb_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_kb_replies`
--
ALTER TABLE `ib_kb_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_accounts`
--
ALTER TABLE `sys_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sys_activity`
--
ALTER TABLE `sys_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_api`
--
ALTER TABLE `sys_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_appconfig`
--
ALTER TABLE `sys_appconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `sys_canned_responses`
--
ALTER TABLE `sys_canned_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_cart`
--
ALTER TABLE `sys_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_cats`
--
ALTER TABLE `sys_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `sys_companies`
--
ALTER TABLE `sys_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_currencies`
--
ALTER TABLE `sys_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_documents`
--
ALTER TABLE `sys_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_emailconfig`
--
ALTER TABLE `sys_emailconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_email_logs`
--
ALTER TABLE `sys_email_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sys_events`
--
ALTER TABLE `sys_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_invoiceitems`
--
ALTER TABLE `sys_invoiceitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sys_invoices`
--
ALTER TABLE `sys_invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sys_items`
--
ALTER TABLE `sys_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_item_cats`
--
ALTER TABLE `sys_item_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_leads`
--
ALTER TABLE `sys_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_logs`
--
ALTER TABLE `sys_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `sys_orders`
--
ALTER TABLE `sys_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_permissions`
--
ALTER TABLE `sys_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sys_pg`
--
ALTER TABLE `sys_pg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_pl`
--
ALTER TABLE `sys_pl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_pmethods`
--
ALTER TABLE `sys_pmethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sys_purchaseitems`
--
ALTER TABLE `sys_purchaseitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_purchases`
--
ALTER TABLE `sys_purchases`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_quoteitems`
--
ALTER TABLE `sys_quoteitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sys_quotes`
--
ALTER TABLE `sys_quotes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_roles`
--
ALTER TABLE `sys_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_sales`
--
ALTER TABLE `sys_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_schedule`
--
ALTER TABLE `sys_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_schedulelogs`
--
ALTER TABLE `sys_schedulelogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_staffpermissions`
--
ALTER TABLE `sys_staffpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `sys_status`
--
ALTER TABLE `sys_status`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_tags`
--
ALTER TABLE `sys_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_tasks`
--
ALTER TABLE `sys_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_tax`
--
ALTER TABLE `sys_tax`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_ticketdepartments`
--
ALTER TABLE `sys_ticketdepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_ticketmaillog`
--
ALTER TABLE `sys_ticketmaillog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_ticketpredefinedreplies`
--
ALTER TABLE `sys_ticketpredefinedreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_ticketreplies`
--
ALTER TABLE `sys_ticketreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_tickets`
--
ALTER TABLE `sys_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_transactions`
--
ALTER TABLE `sys_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sys_units`
--
ALTER TABLE `sys_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
