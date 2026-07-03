-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2026 at 06:48 AM
-- Server version: 11.4.12-MariaDB-cll-lve-log
-- PHP Version: 8.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uacbmibc_uac`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

CREATE TABLE `account_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_transaction_auto_id` bigint(20) UNSIGNED NOT NULL,
  `voucher_no` varchar(255) NOT NULL,
  `voucher_type` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `coa_id` bigint(20) UNSIGNED NOT NULL,
  `coa_head_code` bigint(20) NOT NULL,
  `narration` text DEFAULT NULL,
  `debit_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `credit_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `document` varchar(255) DEFAULT NULL,
  `posted` tinyint(1) NOT NULL DEFAULT 0,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_transaction_autos`
--

CREATE TABLE `account_transaction_autos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `voucher_no` varchar(255) NOT NULL,
  `voucher_type` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `coa_id` bigint(20) UNSIGNED NOT NULL,
  `coa_head_code` bigint(20) NOT NULL,
  `narration` text DEFAULT NULL,
  `debit_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `credit_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `document` varchar(255) DEFAULT NULL,
  `posted` tinyint(1) NOT NULL DEFAULT 0,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_transaction_autos`
--

INSERT INTO `account_transaction_autos` (`id`, `voucher_no`, `voucher_type`, `date`, `coa_id`, `coa_head_code`, `narration`, `debit_amount`, `credit_amount`, `document`, `posted`, `approved`, `approved_by`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(101, 'CS2606001', 'Client Sales', '2026-06-18', 304, 1010181, 'Client Sales Against Invoice No - CS2606001', 12650.00, 0.00, NULL, 0, 0, NULL, 1, NULL, NULL, NULL, '2026-06-18 18:37:38', '2026-06-18 18:37:38'),
(102, 'CS2606001', 'Client Sales', '2026-06-18', 63, 30201, 'Client Sales Against Invoice No - CS2606001', 0.00, 12650.00, NULL, 0, 0, NULL, 1, NULL, NULL, NULL, '2026-06-18 18:37:38', '2026-06-18 18:37:38'),
(103, 'CS2606002', 'Client Sales', '1970-01-01', 304, 1010181, 'Client Sales Against Invoice No - CS2606002', 0.00, 0.00, NULL, 0, 0, NULL, 1, NULL, NULL, NULL, '2026-06-18 18:46:00', '2026-06-18 18:46:00'),
(104, 'CS2606002', 'Client Sales', '1970-01-01', 63, 30201, 'Client Sales Against Invoice No - CS2606002', 0.00, 0.00, NULL, 0, 0, NULL, 1, NULL, NULL, NULL, '2026-06-18 18:46:00', '2026-06-18 18:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menus`
--

CREATE TABLE `admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `route` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menus`
--

INSERT INTO `admin_menus` (`id`, `permission_id`, `parent_id`, `name`, `route`, `icon`, `order`, `status`, `is_deletable`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Dashboard', 'admin.dashboard', '<span class=\"material-symbols-outlined fs-22\"> home_app_logo </span>', 1, 1, 1, '2026-01-19 05:33:09', '2026-01-19 05:33:09'),
(2, 2, NULL, 'User & Role Manage', NULL, '<span class=\"material-symbols-outlined fs-22\"> settings_cinematic_blur </span>', 2, 1, 1, '2026-01-19 05:34:47', '2026-02-25 23:25:47'),
(3, 3, 2, 'Roles', 'admin.role.index', NULL, 1, 1, 1, '2026-01-19 05:35:46', '2026-01-19 05:35:46'),
(4, 4, 2, 'Users', 'admin.user.index', NULL, 2, 1, 1, '2026-01-19 05:36:43', '2026-01-19 05:36:43'),
(6, 6, 26, 'Admin Settings', 'admin.admin-settings.index', NULL, 4, 1, 1, '2026-01-19 05:37:50', '2026-02-25 23:45:51'),
(9, 21, NULL, 'Books Management', NULL, '<span class=\"material-symbols-outlined fs-22\"> menu_book </span>', 4, 1, 1, '2026-01-20 03:47:59', '2026-02-25 23:42:20'),
(10, 22, 9, 'Category', 'admin.category.index', NULL, 4, 1, 1, '2026-01-20 03:49:56', '2026-01-20 03:49:56'),
(11, 26, 9, 'Manage Book', 'admin.product.index', NULL, 4, 1, 1, '2026-01-20 03:56:07', '2026-02-25 23:43:47'),
(12, 27, 9, 'Editor/Translator', 'admin.uom.index', NULL, 4, 1, 1, '2026-01-20 04:04:00', '2026-04-26 02:48:01'),
(13, 28, 9, 'Brand', 'admin.brand.index', NULL, 4, 1, 1, '2026-01-20 04:04:36', '2026-01-20 04:04:36'),
(15, 32, 9, 'Vendor', 'admin.vendor.index', NULL, 4, 1, 1, '2026-01-20 04:12:04', '2026-01-20 04:12:04'),
(16, 34, 9, 'Attribute', 'admin.attribute.index', NULL, 4, 1, 1, '2026-01-20 04:19:04', '2026-01-20 04:19:04'),
(17, 36, 9, 'publication', 'admin.publication.index', NULL, 4, 1, 1, '2026-01-20 04:22:54', '2026-01-20 04:22:54'),
(18, 39, NULL, 'User Menu', NULL, NULL, 5, 0, 1, '2026-01-20 05:21:16', '2026-01-28 23:16:55'),
(19, 40, 18, 'Main Menu', 'admin.menu.index', NULL, 5, 1, 1, '2026-01-20 05:22:04', '2026-01-20 05:22:04'),
(21, 45, 27, 'UI Settings', 'admin.settings.index', NULL, 2, 1, 1, '2026-01-20 06:07:06', '2026-02-25 23:24:47'),
(22, 47, 9, 'Author', 'admin.author.index', NULL, 5, 1, 1, '2026-01-22 04:29:15', '2026-01-22 04:29:15'),
(23, 55, NULL, 'Orders Management', NULL, '<span class=\"material-symbols-outlined fs-22\"> receipt_long </span>', 6, 1, 1, '2026-01-31 22:22:32', '2026-02-25 23:43:01'),
(24, 56, 23, 'Order List', 'admin.orders.index', NULL, 6, 1, 1, '2026-01-31 22:25:06', '2026-01-31 22:28:50'),
(25, 57, 27, 'Slider', 'admin.slider.index', '#', 2, 1, 1, '2026-02-02 04:09:16', '2026-02-25 23:45:04'),
(26, 59, NULL, 'Business Setup', NULL, '<span class=\"material-symbols-outlined fs-24\"> api </span>', 2, 1, 1, '2026-02-25 23:12:24', '2026-02-25 23:12:24'),
(27, 60, NULL, 'Website Setup', NULL, '<span class=\"material-symbols-outlined fs-22\"> build </span>', 11, 1, 1, '2026-02-25 23:23:51', '2026-03-02 01:02:23'),
(28, 61, NULL, 'Inventory', NULL, '<span class=\"material-symbols-outlined fs-24\"> inventory </span>', 8, 1, 1, '2026-02-26 01:33:52', '2026-02-26 01:33:52'),
(29, 62, 28, 'Production', 'admin.production.index', NULL, 1, 1, 1, '2026-02-26 01:35:08', '2026-02-26 01:35:08'),
(30, 65, 26, 'Stores', 'admin.store.index', NULL, 5, 1, 1, '2026-02-26 01:49:40', '2026-02-26 01:49:40'),
(31, 68, 28, 'Stock', 'admin.stock-status.index', NULL, 2, 1, 1, '2026-02-26 02:01:06', '2026-02-26 02:01:06'),
(32, 69, NULL, 'Investor Panel', NULL, '<span class=\"material-symbols-outlined fs-22\"> account_balance </span>', 9, 1, 1, '2026-03-01 21:58:22', '2026-03-01 21:59:14'),
(33, 70, 32, 'Investor', 'admin.investor.index', NULL, 1, 1, 1, '2026-03-01 22:00:26', '2026-03-01 22:02:17'),
(34, 71, 32, 'Invest Process', 'admin.invest.index', NULL, 2, 1, 1, '2026-03-01 22:04:26', '2026-03-01 22:04:26'),
(35, 72, 32, 'Profit Distribution', 'admin.profit-distribution.index', NULL, 3, 1, 1, '2026-03-01 22:06:32', '2026-03-01 22:06:32'),
(36, 73, 32, 'Investor Payment', 'admin.investor-payment.index', NULL, 4, 1, 1, '2026-03-01 22:08:13', '2026-03-01 22:08:13'),
(37, 74, 32, 'Invest Settlements', 'admin.invest-sattlement.index', NULL, 5, 1, 1, '2026-03-01 22:10:04', '2026-03-01 22:10:04'),
(38, 75, 32, 'Investor Statement', 'admin.investor-statement.index', NULL, 6, 1, 1, '2026-03-01 22:15:11', '2026-03-01 22:15:11'),
(39, 86, NULL, 'Sales Management', NULL, '<span class=\"material-symbols-outlined fs-24\"> bar_chart_4_bars </span>', 5, 1, 1, '2026-03-01 22:34:26', '2026-03-02 02:35:58'),
(40, 87, 39, 'Clients', 'admin.client.index', NULL, 1, 1, 1, '2026-03-01 22:42:47', '2026-03-01 22:42:47'),
(41, 90, 39, 'Sales', 'admin.sales.index', NULL, 2, 1, 1, '2026-03-01 22:45:09', '2026-03-01 22:45:09'),
(42, 93, 39, 'Collections', 'admin.collection.index', NULL, 3, 1, 1, '2026-03-01 22:50:23', '2026-03-01 22:50:23'),
(43, 96, NULL, 'Reports', NULL, '<span class=\"material-symbols-outlined fs-22\"> article </span>', 10, 1, 1, '2026-03-01 22:57:48', '2026-03-01 22:57:48'),
(44, 97, 43, 'Sales Report', 'admin.sales-report.index', NULL, 1, 1, 1, '2026-03-01 23:55:22', '2026-03-01 23:55:22'),
(45, 98, 43, 'Collection Report', 'admin.collection-report.index', NULL, 2, 1, 1, '2026-03-01 23:57:00', '2026-03-01 23:57:00'),
(46, 99, 43, 'Sales Return Report', 'admin.sales-return-report.index', NULL, 3, 1, 1, '2026-03-02 00:03:47', '2026-03-02 00:03:47'),
(47, 100, NULL, 'Expenses', NULL, '<span class=\"material-symbols-outlined fs-22\"> payment </span>', 5, 1, 1, '2026-03-02 00:16:46', '2026-03-12 00:35:42'),
(48, 104, 43, 'Income Statement', 'admin.income-statement.index', NULL, 4, 1, 1, '2026-03-02 00:29:11', '2026-03-02 00:29:11'),
(49, 105, 26, 'Admin Menu', 'admin.admin-menu.index', NULL, 6, 1, 1, '2026-03-02 00:35:14', '2026-03-02 00:35:14'),
(50, 113, NULL, 'Purchase Manage', NULL, '<span class=\"material-symbols-outlined fs-22\"> receipt_long </span>', 4, 1, 1, '2026-03-02 02:34:09', '2026-03-02 02:39:06'),
(51, 114, 50, 'Purchase Order', 'admin.purchase-order.index', NULL, 1, 1, 1, '2026-03-02 02:38:30', '2026-03-02 02:38:30'),
(52, 117, 50, 'Purchase Create', 'admin.purchase-order.create', NULL, 2, 1, 1, '2026-03-02 23:47:17', '2026-03-02 23:47:17'),
(53, 118, 26, 'Coa Setup', 'admin.coa.index', NULL, 7, 1, 1, '2026-03-08 00:05:14', '2026-03-08 00:11:51'),
(54, 123, 39, 'Sales Return', 'admin.sales-return.index', NULL, 4, 1, 1, '2026-03-10 03:05:29', '2026-03-10 03:05:29'),
(55, 127, 47, 'Expense List', 'admin.expense.index', NULL, 1, 1, 1, '2026-03-12 00:52:34', '2026-03-12 00:52:34'),
(56, 128, 47, 'Expense Create', 'admin.expense.create', NULL, 2, 1, 1, '2026-03-12 00:53:19', '2026-03-12 00:53:19'),
(57, 131, 9, 'Book Create', 'admin.product.create', NULL, 2, 1, 1, '2026-03-12 02:04:23', '2026-03-12 02:24:58'),
(58, 132, 39, 'Sales Create', 'admin.sales.create', NULL, 5, 1, 1, '2026-03-12 02:17:34', '2026-03-12 02:17:34'),
(59, 133, 39, 'Collection Create', 'admin.collection.create', NULL, 6, 1, 1, '2026-03-12 02:19:17', '2026-03-12 02:19:17'),
(60, 134, 39, 'Sales Return Create', 'admin.sales-return.create', NULL, 7, 1, 1, '2026-03-12 02:20:29', '2026-03-12 02:20:29'),
(61, 135, 28, 'Production Create', 'admin.production.create', NULL, 1, 1, 1, '2026-03-12 02:23:36', '2026-03-12 02:42:47'),
(62, 140, NULL, 'Merchant Panel', NULL, '<span class=\"material-symbols-outlined fs-22\">storefront</span>', 6, 1, 1, '2026-04-22 03:29:23', '2026-04-22 03:29:23'),
(63, 144, 62, 'Merchant Product', 'admin.merchant-product.index', NULL, 1, 1, 1, '2026-04-22 03:31:59', '2026-04-22 03:31:59'),
(64, 147, 62, 'Merchant Orders', 'admin.merchant.orders.index', NULL, 2, 1, 1, '2026-04-22 03:33:54', '2026-04-22 03:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu_actions`
--

CREATE TABLE `admin_menu_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `admin_menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `route` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu_actions`
--

INSERT INTO `admin_menu_actions` (`id`, `permission_id`, `admin_menu_id`, `name`, `route`, `status`, `created_at`, `updated_at`) VALUES
(8, 14, 3, 'create', 'admin.role.create', 1, '2026-01-19 23:59:12', '2026-01-19 23:59:12'),
(10, 18, 3, 'edit', 'admin.role.edit', 1, '2026-01-20 03:24:24', '2026-01-20 03:24:24'),
(11, 19, 3, 'delete', 'admin.role.destroy', 1, '2026-01-20 03:25:16', '2026-01-20 03:29:11'),
(12, 20, 3, 'Edit Permission', 'admin.role-permission.edit', 1, '2026-01-20 03:31:59', '2026-01-20 03:31:59'),
(13, 23, 11, 'create', 'admin.product.create', 1, '2026-01-20 03:51:53', '2026-01-20 03:51:53'),
(14, 24, 11, 'edit', 'admin.product.edit', 1, '2026-01-20 03:52:09', '2026-01-20 03:52:09'),
(16, 29, 12, 'create', 'admin.uom.create', 1, '2026-01-20 04:06:48', '2026-01-20 04:06:48'),
(17, 31, 13, 'create', 'admin.brand.create', 1, '2026-01-20 04:09:27', '2026-01-20 04:09:27'),
(18, 33, 15, 'create', 'admin.vendor.create', 1, '2026-01-20 04:12:41', '2026-01-20 04:12:41'),
(19, 35, 16, 'create', 'admin.attribute.create', 1, '2026-01-20 04:21:01', '2026-01-20 04:21:01'),
(20, 37, 17, 'create', 'admin.publication.create', 1, '2026-01-20 04:23:43', '2026-01-20 04:23:43'),
(21, 38, 11, 'show', 'admin.product.show', 1, '2026-01-20 04:59:33', '2026-01-20 04:59:33'),
(22, 41, 19, 'create', 'admin.menu.create', 1, '2026-01-20 05:23:01', '2026-01-20 05:23:01'),
(24, 44, 19, 'menu-item', 'admin.menu-item.index', 1, '2026-01-20 05:33:58', '2026-01-20 05:33:58'),
(25, 46, 19, 'edit', 'admin.menu.edit', 1, '2026-01-21 00:48:49', '2026-01-21 00:48:49'),
(26, 48, 22, 'create', 'admin.author.create', 1, '2026-01-22 04:30:36', '2026-01-22 04:30:36'),
(27, 49, 22, 'edit', 'admin.author.edit', 1, '2026-01-22 04:30:52', '2026-01-22 04:30:52'),
(28, 50, 22, 'delete', 'admin.author.destroy', 1, '2026-01-22 04:31:06', '2026-01-22 04:31:06'),
(29, 51, 22, 'show', 'admin.author.show', 1, '2026-01-22 04:31:22', '2026-01-22 04:31:22'),
(30, 52, 17, 'edit', 'admin.publication.edit', 1, '2026-01-22 04:33:21', '2026-01-22 04:33:21'),
(31, 53, 17, 'show', 'admin.publication.show', 1, '2026-01-22 04:33:41', '2026-01-22 04:33:41'),
(32, 54, 18, 'delete', 'admin.menu.destroy', 1, '2026-01-28 23:15:51', '2026-01-28 23:15:51'),
(33, 58, 25, 'edit', 'admin.slider.edit', 1, '2026-02-02 04:09:53', '2026-02-02 04:09:53'),
(34, 63, 29, 'create', 'admin.production.create', 1, '2026-02-26 01:35:53', '2026-02-26 01:35:53'),
(35, 64, 29, 'edit', 'admin.production.edit', 1, '2026-02-26 01:36:39', '2026-02-26 01:36:39'),
(36, 66, 30, 'create', 'admin.store.create', 1, '2026-02-26 01:50:44', '2026-02-26 01:50:44'),
(37, 67, 30, 'edit', 'admin.store.edit', 1, '2026-02-26 01:51:03', '2026-02-26 01:51:03'),
(38, 76, 33, 'create', 'admin.investor.create', 1, '2026-03-01 22:17:06', '2026-03-01 22:17:06'),
(40, 78, 34, 'create', 'admin.invest.create', 1, '2026-03-01 22:20:32', '2026-03-01 22:20:32'),
(41, 79, 33, 'edit', 'admin.investor.edit', 1, '2026-03-01 22:21:50', '2026-03-01 22:21:50'),
(42, 80, 35, 'create', 'admin.profit-distribution.create', 1, '2026-03-01 22:22:35', '2026-03-01 22:22:35'),
(43, 81, 35, 'show', 'admin.profit-distribution.show', 1, '2026-03-01 22:24:39', '2026-03-01 22:24:39'),
(44, 82, 36, 'create', 'admin.investor-payment.create', 1, '2026-03-01 22:25:41', '2026-03-01 22:25:41'),
(45, 83, 36, 'edit', 'admin.investor-payment.edit', 1, '2026-03-01 22:26:02', '2026-03-01 22:26:02'),
(46, 84, 37, 'create', 'admin.invest-sattlement.create', 1, '2026-03-01 22:26:57', '2026-03-01 22:26:57'),
(47, 85, 37, 'show', 'admin.invest-sattlement.show', 1, '2026-03-01 22:27:09', '2026-03-01 22:27:09'),
(48, 88, 40, 'create', 'admin.client.create', 1, '2026-03-01 22:43:16', '2026-03-01 22:43:16'),
(49, 89, 40, 'edit', 'admin.client.edit', 1, '2026-03-01 22:43:27', '2026-03-01 22:43:27'),
(50, 91, 41, 'create', 'admin.sales.create', 1, '2026-03-01 22:46:57', '2026-03-01 22:46:57'),
(51, 92, 41, 'show', 'admin.sales.show', 1, '2026-03-01 22:47:20', '2026-03-01 22:47:20'),
(52, 94, 42, 'create', 'admin.collection.create', 1, '2026-03-01 22:51:54', '2026-03-01 22:51:54'),
(53, 95, 42, 'show', 'admin.collection.show', 1, '2026-03-01 22:52:07', '2026-03-01 22:52:07'),
(57, 106, 49, 'create', 'admin.admin-menu.create', 1, '2026-03-02 00:51:22', '2026-03-02 00:51:22'),
(58, 107, 49, 'edit', 'admin.admin-menu.edit', 1, '2026-03-02 00:52:37', '2026-03-02 00:52:37'),
(59, 108, 49, 'view actions', 'admin.admin-menu-action.index', 1, '2026-03-02 00:56:38', '2026-03-02 00:56:38'),
(60, 109, 49, 'create action', 'admin.admin-menu-action.create', 1, '2026-03-02 00:57:37', '2026-03-02 00:57:37'),
(61, 110, 49, 'edit action', 'admin.admin-menu-action.edit', 1, '2026-03-02 00:58:54', '2026-03-02 00:58:54'),
(62, 111, 49, 'delete action', 'admin.admin-menu-action.destroy', 1, '2026-03-02 00:59:45', '2026-03-02 00:59:45'),
(63, 112, 49, 'destroy', 'admin.admin-menu.destroy', 1, '2026-03-02 01:00:30', '2026-03-02 01:00:30'),
(64, 115, 51, 'create', 'admin.purchase-order.create', 1, '2026-03-02 02:39:57', '2026-03-02 02:39:57'),
(65, 116, 51, 'show', 'admin.purchase-order.show', 1, '2026-03-02 02:40:17', '2026-03-02 02:40:17'),
(67, 120, 53, 'edit', 'admin.coa.edit', 1, '2026-03-08 00:06:01', '2026-03-08 00:06:01'),
(68, 121, 53, 'create', 'admin.coa.create', 1, '2026-03-08 00:13:54', '2026-03-08 00:13:54'),
(69, 122, 29, 'view', 'admin.production.show', 1, '2026-03-09 02:24:08', '2026-03-09 02:24:08'),
(70, 124, 54, 'create', 'admin.sales-return.create', 1, '2026-03-10 03:06:59', '2026-03-10 03:06:59'),
(71, 125, 54, 'show', 'admin.sales-return.show', 1, '2026-03-10 03:07:41', '2026-03-10 03:07:41'),
(73, 129, 55, 'show', 'admin.expense.show', 1, '2026-03-12 00:54:01', '2026-03-12 00:54:01'),
(74, 130, 55, 'create', 'admin.expense.create', 1, '2026-03-12 00:54:22', '2026-03-12 00:54:22'),
(75, 136, 15, 'admin.vendor.edit', 'admin.vendor.edit', 1, '2026-04-01 03:02:59', '2026-04-01 03:02:59'),
(76, 137, 4, 'create', 'admin.user.create', 1, '2026-04-08 22:33:06', '2026-04-08 22:33:06'),
(77, 138, 4, 'edit', 'admin.user.edit', 1, '2026-04-08 23:02:36', '2026-04-08 23:02:36'),
(78, 139, 12, 'edit', 'admin.uom.edit', 1, '2026-04-08 23:43:51', '2026-04-08 23:43:51'),
(82, 145, 63, 'edit', 'admin.merchant-product.edit', 1, '2026-04-22 03:32:51', '2026-04-22 03:32:51'),
(83, 146, 63, 'create', 'admin.merchant-product.create', 1, '2026-04-22 03:33:02', '2026-04-22 03:33:02'),
(84, 148, 11, 'delete', 'admin.product.destroy', 1, '2026-04-29 04:08:34', '2026-04-30 02:45:03'),
(85, 149, 63, 'delete', 'admin.merchant-product.destroy', 1, '2026-04-30 02:24:22', '2026-04-30 02:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `small_logo` varchar(255) DEFAULT NULL,
  `invest_value` double DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `secondary_color` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `logo`, `small_logo`, `invest_value`, `favicon`, `title`, `footer_text`, `primary_color`, `secondary_color`, `facebook`, `twitter`, `linkedin`, `whatsapp`, `google`, `created_at`, `updated_at`) VALUES
(1, 'storage/admin-setting//2026-06-01-qh0dVEv59ceIYAk3NEO7vgXLkkht6m69txdermaI.webp', 'storage/admin-setting//2026-06-01-ixtjTtoEIHPG543gIUqOhGcwD2vHgFVMLUYG18LI.webp', 10000, 'storage/admin-setting//2026-06-01-S3lG0P9UHQNyLmR7XGXdgiB641wPs5cv8OsPWVJe.webp', 'UAC', 'All right reserved by UAC', '#e80c9b', '#18ba64', 'UAC', 'UAC', 'UAC', 'UAC', NULL, '2026-01-19 05:04:11', '2026-06-01 08:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `incharge` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `region_id`, `code`, `name`, `incharge`, `phone`, `email`, `address`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'নীলক্ষেত', NULL, NULL, NULL, NULL, 1, 1, 10, NULL, NULL, '2025-07-22 03:18:40', '2025-10-26 00:13:31'),
(2, 2, NULL, 'ভোলা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:52:58', '2025-10-25 23:52:58'),
(3, 5, NULL, 'বগুড়া', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:04:06', '2025-10-26 00:04:06'),
(4, 2, NULL, 'পটুয়াখালী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:05:53', '2025-10-26 00:05:53'),
(5, 5, NULL, 'নওগাঁ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:07:44', '2025-10-26 00:07:44'),
(6, 4, NULL, 'শেরপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:08:25', '2025-10-26 00:08:25'),
(7, 3, NULL, 'কুষ্টিয়া', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:09:43', '2025-10-26 00:09:43'),
(8, 6, NULL, 'গাইবান্ধা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:10:24', '2025-10-26 00:10:24'),
(9, 6, NULL, 'দিনাজপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:14:44', '2025-10-26 00:14:44'),
(10, 6, NULL, 'লালমনিরহাট', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:15:15', '2025-10-26 00:15:15'),
(11, 1, NULL, 'নরসিংদী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:15:47', '2025-10-26 00:15:47'),
(12, 5, NULL, 'চাঁপাইনবাবগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:16:47', '2025-10-26 00:16:47'),
(13, 5, NULL, 'ঈশ্বরদী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:17:29', '2025-10-26 00:17:29'),
(14, 9, NULL, 'Area-1', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:19:33', '2025-10-26 00:19:33'),
(15, 5, NULL, 'Area-1', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:31:22', '2025-10-26 00:31:22'),
(16, 7, NULL, 'Area-1', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 01:11:55', '2025-10-26 01:11:55'),
(17, 7, NULL, 'কুমিল্লা', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-10-30 05:19:41', '2025-10-26 01:12:36', '2025-10-30 05:19:41'),
(18, 7, NULL, 'ফেনী', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-10-30 05:19:47', '2025-10-26 01:12:56', '2025-10-30 05:19:47'),
(19, 7, NULL, 'চাঁদপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-10-30 05:19:12', '2025-10-26 01:13:17', '2025-10-30 05:19:12'),
(20, 1, NULL, 'সাভার', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 04:29:58', '2025-10-30 04:29:58'),
(21, 1, NULL, 'মুন্সীগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-30 04:34:11', '2025-11-01 01:20:01'),
(22, 1, NULL, 'মাধবদী,নরসিংদী', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-30 04:35:11', '2025-11-01 01:26:48'),
(23, 1, NULL, 'গাজীপুর, মাওনা', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-30 05:10:16', '2025-10-30 05:10:40'),
(24, 2, NULL, 'পিরোজপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:11:18', '2025-10-30 05:11:18'),
(25, 2, NULL, 'বরগুনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:11:45', '2025-10-30 05:11:45'),
(26, 3, NULL, 'যশোর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:12:55', '2025-10-30 05:12:55'),
(27, 3, NULL, 'নোয়াপাড়া, খুলনা', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-30 05:14:38', '2025-11-01 00:30:35'),
(28, 4, NULL, 'জামালপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:15:09', '2025-10-30 05:15:09'),
(29, 4, NULL, 'নেত্রকোনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:15:31', '2025-10-30 05:15:31'),
(30, 4, NULL, 'টাঙ্গাইল', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:15:56', '2025-10-30 05:15:56'),
(31, 4, NULL, 'ময়মনসিংহ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:17:27', '2025-10-30 05:17:27'),
(32, 7, NULL, 'কুমিল্লা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:17:49', '2025-10-30 05:17:49'),
(33, 7, NULL, 'চট্টগ্রাম', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:18:09', '2025-10-30 05:18:09'),
(34, 7, NULL, 'ফেনী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:18:28', '2025-10-30 05:18:28'),
(35, 7, NULL, 'চাঁদপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:18:42', '2025-10-30 05:18:42'),
(36, 8, NULL, 'সিলেট', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:20:59', '2025-10-30 05:20:59'),
(37, 8, NULL, 'হবিগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:21:36', '2025-10-30 05:21:36'),
(38, 8, NULL, 'মৌলভীবাজার', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:22:37', '2025-10-30 05:22:37'),
(39, 8, NULL, 'সুনামগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:23:16', '2025-10-30 05:23:16'),
(40, 5, NULL, 'সিরাজগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:23:36', '2025-10-30 05:23:36'),
(41, 5, NULL, 'পাবনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:23:56', '2025-10-30 05:23:56'),
(42, 5, NULL, 'রাজশাহী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:24:37', '2025-10-30 05:24:37'),
(43, 5, NULL, 'বগুড়া', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 01:54:26', '2025-10-30 05:25:11', '2025-11-01 01:54:26'),
(44, 6, NULL, 'রংপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:25:35', '2025-10-30 05:25:35'),
(45, 6, NULL, 'পঞ্চগড়', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:26:38', '2025-10-30 05:26:38'),
(46, 3, NULL, 'খুলনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:30:57', '2025-11-01 00:30:57'),
(47, 1, NULL, 'মালিবাগ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:08:45', '2025-11-01 01:08:45'),
(48, 2, NULL, 'ঝালকাঠি', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:17:09', '2025-11-01 01:17:09'),
(49, 1, NULL, 'নারায়ণগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:20:16', '2025-11-01 01:20:16'),
(50, 2, NULL, 'বরিশাল', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 03:05:45', '2025-11-02 03:05:45'),
(51, 1, NULL, 'বাংলা বাজার', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-01-24 05:20:36', '2026-01-24 05:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `slug`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'attrbuts', 'attrbuts', 'zzzxczxcz', 1, 1, NULL, NULL, NULL, '2026-01-20 04:21:28', '2026-01-20 04:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `image`, `cover_image`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'বুকস অ্যান্ড বুকস', 'buks-ozand-buks', 'storage/author/2026-01-22-zeIQ6hqzq0S5fMSdNwjKvP71YvOQVfeDJdi8CtFq.webp', NULL, 'sadas', 1, 1, 1, NULL, NULL, '2026-01-22 04:32:15', '2026-03-30 03:44:57'),
(2, 'জন সি মাক্সওয়েল', 'jn-si-makswel', 'storage/author/2026-01-22-T02ZWzSpmM23u47w1cOI5T34THWIlNdQq4nuDjUA.webp', NULL, 'জন সি মাক্সওয়েল', 1, 1, 1, NULL, NULL, '2026-01-22 04:32:35', '2026-02-02 05:31:07'),
(3, 'রবীন্দ্রনাথ ঠাকুর', 'rbeendrnath-thakur', 'storage/author/2026-04-01-b9UYJVj2yySrZlaw2rUCqkSkZgdbotP6VZUHXzP5.webp', NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-01 00:21:45', '2026-04-01 00:21:45'),
(4, 'হিল্লোল তালুকদার', 'hillol-talukdar', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-01 00:23:44', '2026-04-01 00:23:44'),
(5, 'মুনতাসীর মামুন', 'muntaseer-mamun', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-01 00:24:11', '2026-04-01 00:24:11'),
(6, 'রমা চৌধুরী', 'rma-coudhuree', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-01 00:24:32', '2026-04-01 00:24:32'),
(7, 'সুনীল গঙ্গোপাধ্যায়', 'suneel-gngoopadhzay', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-01 00:26:43', '2026-04-01 00:26:43'),
(8, 'সোলায়মান সুখন', 'solazman-sukhn', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, '2026-04-01 00:27:06', '2026-04-01 23:18:31'),
(9, 'হুমায়ূন আহমেদ', 'humazuun-ahmed', 'storage/author/2026-04-22-n2yZ5b18OLH0qWgN7j20ORkB2P1V7CsoA3jl1Kjz.webp', NULL, NULL, 1, 1, 1, NULL, NULL, '2026-04-01 00:27:26', '2026-04-21 22:54:15'),
(10, 'সত্যেন সেন', 'stzen-sen', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-01 00:27:46', '2026-04-01 00:27:46'),
(11, 'বুদ্ধদেব গুহ', 'buddhdeb-guh', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-01 00:28:07', '2026-04-01 00:28:07'),
(12, 'শরৎচন্দ্র চট্টোপাধ্যায়', 'srttcndr-cttopadhzay', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-01 00:29:09', '2026-04-01 00:29:09'),
(13, 'বনফুল', 'bnful', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-01 00:29:25', '2026-04-01 00:29:25'),
(14, 'আবুল মনসুর আহমদ', 'abul-mnsur-ahmd', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, '2026-04-01 00:29:44', '2026-04-01 03:12:28'),
(15, 'অ্যান্থনি মাসকারেনহাস', 'ozanthni-maskarenhas', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, '2026-04-01 00:30:08', '2026-04-01 03:15:45'),
(16, 'হালিম খান ট্রয়', 'halim-khan-try', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-01 00:30:37', '2026-04-01 00:30:37'),
(17, 'হরিশংকর জলদাস', 'hrisngkr-jldas', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-01 00:31:18', '2026-04-01 00:31:18'),
(18, 'আনিসুল হক', 'anisul-hk', 'storage/author/2026-04-22-zJiQH4jsd8yhLLhJTbWLnbsbGLgQnHjN0tWa7MmF.webp', NULL, NULL, 1, 1, 1, NULL, NULL, '2026-04-01 00:47:35', '2026-04-21 22:55:52'),
(19, 'জামাল হোসেন ইমন', 'jamal-hosen-imn', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-02 03:59:50', '2026-04-02 03:59:50'),
(20, 'ইমদাদুল হক মিলন', 'imdadul-hk-miln', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-02 04:48:30', '2026-04-02 04:48:30'),
(21, 'কমান্ডার খন্দকার আল মইন', 'kmandar-khndkar-al-min', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:08:56', '2026-04-05 02:08:56'),
(22, 'কাসেম বিন আবুবাকার', 'kasem-bin-abubakar', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:09:10', '2026-04-05 02:09:10'),
(23, 'কে. এস. এম. স্বপ্নিল চৌধুরী সোহাগ', 'ke-es-em-swpnil-coudhuree-sohag', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, '2026-04-05 02:09:19', '2026-04-06 04:15:42'),
(24, 'ড. মোঃ সবুর খান', 'd-mo-sbur-khan', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:09:27', '2026-04-05 02:09:27'),
(25, 'সুরেন্দ্র কুমার সিনহা', 'surendr-kumar-sinha', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:09:37', '2026-04-05 02:09:37'),
(26, 'এনামুল হক এনাম', 'enamul-hk-enam', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:09:46', '2026-04-05 02:09:46'),
(27, 'আবুল হায়াত', 'abul-hayat', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:09:55', '2026-04-05 02:09:55'),
(28, 'রোমেনা আফাজ', 'romena-afaj', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:10:08', '2026-04-05 02:10:08'),
(29, 'অরুন্ধতী রায়', 'orundhtee-ray', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:10:20', '2026-04-05 02:10:20'),
(30, 'জাহাঙ্গীর আলম জাহিদ', 'jahangoeer-alm-jahid', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:10:28', '2026-04-05 02:10:28'),
(31, 'অসীম হিমেল', 'oseem-himel', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:10:39', '2026-04-05 02:10:39'),
(32, 'জান্নাতুল বাকী', 'jannatul-bakee', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:10:51', '2026-04-05 02:10:51'),
(33, 'হুমায়ূন আজাদ', 'humayuun-ajad', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:11:05', '2026-04-05 02:11:05'),
(34, 'বদরুদ্দীন উমর', 'bdruddeen-umr', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-05 02:11:34', '2026-04-05 02:11:34'),
(35, 'মুনজেরিন শহীদ', 'munjerin-sheed', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-07 05:03:14', '2026-04-07 05:03:14'),
(36, 'রকিব হাসান', 'rkib-hasan', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-07 05:03:29', '2026-04-07 05:03:29'),
(37, 'সবুজ আহাম্মদ মুরসালিন', 'sbuj-ahammd-mursalin', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-08 00:29:25', '2026-04-08 00:29:25'),
(38, 'কাবিদ হাসান শিবলী', 'kabid-hasan-siblee', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-08 00:52:25', '2026-04-08 00:52:25'),
(39, 'ইসমাইল আরমান', 'ismail-arman', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-08 00:55:18', '2026-04-08 00:55:18'),
(40, 'সুস্ময় সুমন', 'susmy-sumn', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-08 01:01:19', '2026-04-08 01:01:19'),
(41, 'আলী ইমাম', 'alee-imam', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-08 01:02:57', '2026-04-08 01:02:57'),
(42, 'মোঃ দেলোয়ার হোসেন', 'mo-deloyar-hosen', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-08 23:54:33', '2026-04-08 23:54:33'),
(43, 'লতিফুল ইসলাম শিবলী', 'ltiful-islam-siblee', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:31:05', '2026-04-12 23:31:05'),
(44, 'হাসনা আক্তার মীম', 'hasna-aktar-meem', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:31:46', '2026-04-12 23:31:46'),
(45, 'শায়লা ইসলাম বিথী', 'sayla-islam-bithee', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:32:42', '2026-04-12 23:32:42'),
(46, 'আরমান হোসেন', 'arman-hosen', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:38:17', '2026-04-12 23:38:17'),
(47, 'একরাম হোসেন', 'ekram-hosen', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:39:14', '2026-04-12 23:39:14'),
(48, 'মহসিন দিনু', 'mhsin-dinu', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:40:01', '2026-04-12 23:40:01'),
(49, 'যাইনাব বিনতে মুহাম্মাদ আলী', 'zainab-binte-muhammad-alee', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:40:39', '2026-04-12 23:40:39'),
(50, 'সাইফুল আলভী', 'saiful-alvee', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:42:14', '2026-04-12 23:42:14'),
(51, 'তাকিয়া আফরোজ লিমা', 'takiya-afroj-lima', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:43:59', '2026-04-12 23:43:59'),
(52, 'শফিকুল ইসলাম', 'sfikul-islam', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:45:02', '2026-04-12 23:45:02'),
(53, 'স্টিভ অ্যান্ডারসন', 'stiv-ozandarsn', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:47:22', '2026-04-12 23:47:22'),
(54, 'ক্যারেন অ্যান্ডারসন', 'kzaren-ozandarsn', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:54:03', '2026-04-12 23:54:03'),
(55, 'ব্রায়ান ট্রেসি', 'brayan-tresi', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:55:20', '2026-04-12 23:55:20'),
(56, 'বিজু কিমার ডেকা', 'biju-kimar-deka', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:56:38', '2026-04-12 23:56:38'),
(57, 'মুনতাসির বিল্লাহ', 'muntasir-billah', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:58:15', '2026-04-12 23:58:15'),
(58, 'ওয়াহিদ তুষার', 'wahid-tushar', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:58:38', '2026-04-12 23:58:38'),
(59, 'সেথ গোডিন', 'seth-godin', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:59:29', '2026-04-12 23:59:29'),
(60, 'প্রাইস প্রিচেট', 'prais-pricet', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-13 00:00:39', '2026-04-13 00:00:39'),
(61, 'নাউরা হেইডেন', 'naura-heiden', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-13 00:02:22', '2026-04-13 00:02:22'),
(62, 'ওয়ালিদ বিদ্যুৎ', 'walid-bidzutt', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-13 00:05:45', '2026-04-13 00:05:45'),
(63, 'ডোনাল্ড মিলার', 'donald-milar', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-13 00:06:49', '2026-04-13 00:06:49'),
(64, 'ল্যারি কিং', 'lzari-king', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-13 00:09:05', '2026-04-13 00:09:05'),
(65, 'স্টিভ চ্যান্ডলার', 'stiv-czandlar', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-13 00:10:50', '2026-04-13 00:10:50'),
(66, 'আফসান খান', 'afsan-khan', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-13 00:11:58', '2026-04-13 00:11:58'),
(67, 'জিম এডওয়ার্ডস', 'jim-edoozards', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-13 00:13:20', '2026-04-13 00:13:20'),
(68, 'লিভিংস্টোন ইমনাইটি', 'livingston-imnaiti', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 22:46:19', '2026-04-14 22:46:19'),
(69, 'এস জে স্কট', 'es-je-skt', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 22:49:42', '2026-04-14 22:49:42'),
(70, 'ব্রায়ান ট্রেসি', 'brayan-tresi-1', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 22:51:05', '2026-04-14 22:51:05'),
(71, 'মুহাম্মদ মিজানুর রহমান (পাইক)', 'muhammd-mijanur-rhman-paik', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, '2026-04-14 22:52:13', '2026-04-14 22:53:57'),
(72, 'বব শার্লি', 'bb-sarli', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 22:57:17', '2026-04-14 22:57:17'),
(73, 'জেমস্ এলেন', 'jems-elen', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 22:58:22', '2026-04-14 22:58:22'),
(74, 'ক্রিস্টোফার এডগার', 'kristofar-edgar', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:01:17', '2026-04-14 23:01:17'),
(75, 'মনোজ চিন্তামারাকশান', 'mnoj-cintamarakshan', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:11:47', '2026-04-14 23:11:47'),
(76, 'প্যাট্রিক এডব্লাড', 'pzatrik-edblad', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:14:03', '2026-04-14 23:14:03'),
(77, 'থিবো মেরিস', 'thibo-meris', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:14:54', '2026-04-14 23:14:54'),
(78, 'নেপোলিয়ন হিল', 'nepoliyn-hil', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:15:48', '2026-04-14 23:15:48'),
(79, 'বেনজামিন ফ্রাঙ্কলিন', 'benjamin-franklin', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:17:23', '2026-04-14 23:17:23'),
(80, 'হ্যাল এলরড', 'hzal-elrd', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:17:57', '2026-04-14 23:17:57'),
(81, 'রবার্ট টি. কিয়োসাকি', 'rbart-ti-kizosaki', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:21:21', '2026-04-14 23:21:21'),
(82, 'এডউইন আর কুইম্বি', 'eduin-ar-kuimbi', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:24:50', '2026-04-14 23:24:50'),
(83, 'কার্টিস লিওন', 'kartis-lioon', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:27:05', '2026-04-14 23:27:05'),
(84, 'নিক ট্রিনটন', 'nik-trintn', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:28:05', '2026-04-14 23:28:05'),
(85, 'স্কট এইচ ইয়ং', 'skt-eic-izng', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:29:05', '2026-04-14 23:29:05'),
(86, 'সেলেস্টাইন চুয়া', 'selestain-cuya', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 23:30:04', '2026-04-14 23:30:04'),
(87, 'এম আর রাজু', 'em-ar-raju', NULL, NULL, NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 02:17:43', '2026-04-16 02:17:43'),
(88, 'আল মামুন খান এমিল', 'al-mamun-khan-emil', NULL, NULL, NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 02:20:50', '2026-04-16 02:20:50'),
(89, 'মেহেরুন্নেসা কাকলী', 'meherunnesa-kaklee', NULL, NULL, NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 02:23:24', '2026-04-16 02:23:24'),
(90, 'মোঃ হযরত আলী মামুন', 'mo-hzrt-alee-mamun', NULL, NULL, NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 02:25:24', '2026-04-16 02:25:24'),
(91, 'মাওলানা মুফতি মিজানুর রহমান', 'maoolana-mufti-mijanur-rhman', NULL, NULL, NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 02:27:03', '2026-04-16 02:27:03'),
(92, 'মোঃ রেজাউল করিম জুয়েল', 'mo-rejaul-krim-juyel', NULL, NULL, NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 04:04:32', '2026-04-16 04:04:32'),
(93, 'আব্দুল মালেক', 'abdul-malek', NULL, NULL, NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 04:04:54', '2026-04-16 04:04:54'),
(94, 'মুফতি মোঃ আইয়ুব আলী', 'mufti-mo-ayub-alee', NULL, NULL, NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 04:05:10', '2026-04-16 04:05:10'),
(95, 'মোঃ এরশাদ হোসেন', 'mo-ersad-hosen', NULL, NULL, NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 04:05:23', '2026-04-16 04:05:23'),
(96, 'ফাহিম চৌধুরী', 'fahim-coudhuree', NULL, NULL, NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 04:05:28', '2026-04-16 04:05:28'),
(97, 'এম এম মুজাহিদ উদ্দীন', 'em-em-mujahid-uddeen', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-04-21 07:05:47', '2026-04-21 07:05:47'),
(98, 'কাজী নজরুল ইসলাম', 'kajee-njrul-islam', 'storage/author/2026-04-22-Di4WdYHG2eEjx7UlA3a3615nr8xHdp5geSREc4a4.webp', NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-21 22:51:41', '2026-04-21 22:51:41'),
(99, 'মুহম্মদ জাফর ইকবাল', 'muhmmd-jafr-ikbal', 'storage/author/2026-04-22-negmkcGFnKVyWhlnWqMNRsoPwLph0HWdJPZZZzTj.webp', NULL, NULL, 1, 1, 25, NULL, NULL, '2026-04-21 22:57:00', '2026-05-18 00:55:48'),
(100, 'কাজী আনোয়ার হোসেন', 'kajee-anozar-hosen', 'storage/author/2026-04-22-hc92DSYlRiQhmZKAfDDJpAFOaN2Rm0KoUFtxKOWQ.webp', NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-21 22:58:47', '2026-04-21 22:58:47'),
(101, 'শাহরিয়ার জাহান রাফি', 'sahriyar-jahan-rafi', NULL, NULL, NULL, 1, 18, NULL, NULL, NULL, '2026-04-22 02:40:44', '2026-04-22 02:40:44'),
(102, 'সুকুমার রায়', 'sukumar-raz', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-26 23:15:21', '2026-04-26 23:15:21'),
(103, 'সেলিনা হোসেন', 'selina-hosen', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-26 23:17:51', '2026-04-26 23:17:51'),
(104, 'বিভূতিভূষণ বন্দ্যোপাধ্যায়', 'bivuutivuushn-bndzopadhzay', 'storage/author/2026-04-27-oueDif0WGPW9Ag26IHrb12Ghb4PIOPxr5CjMuG8f.webp', NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-27 01:06:08', '2026-04-27 01:06:08'),
(105, 'আশরাফুল ইসলাম জীবন', 'asraful-islam-jeebn', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-04-28 05:48:11', '2026-04-28 05:48:11'),
(106, 'ইমাম ইবনু কায়্যিমিল জাওযিয়্যাহ (রহ.)', 'imam-ibnu-kayzimil-jaooziyzah-rh', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-04-28 20:57:55', '2026-04-28 20:57:55'),
(107, 'শাইখুল ইসলাম মুফতী মুহাম্মাদ তাকী উসমানী', 'saikhul-islam-muftee-muhammad-takee-usmanee', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-04-29 00:50:49', '2026-04-29 00:50:49'),
(108, 'আবু বকর মুহাম্মদ ইবনে সীরীন আল-বসরী (রহ.)', 'abu-bkr-muhammd-ibne-seereen-al-bsree-rh', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-04-29 02:05:40', '2026-04-29 02:05:40'),
(109, 'আদিল মোর্শেদ', 'adil-morsed', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-04-29 04:51:49', '2026-04-29 04:51:49'),
(110, 'আব্দুল হাই মুহাম্মদ সাইফুল্লাহ', 'abdul-hai-muhammd-saifullah', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-04-29 21:01:34', '2026-04-29 21:01:34'),
(111, 'শায়েখ আবদুল ফাত্তাহ আবু গুদ্দাহ (রহ.)', 'sayekh-abdul-fattah-abu-guddah-rh', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-04-30 01:30:22', '2026-04-30 01:30:22'),
(112, 'শাইখ মুহাম্মাদ সালেহ আল মুনাজ্জিদ', 'saikh-muhammad-saleh-al-munajjid', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-04-30 04:38:08', '2026-04-30 04:38:08'),
(113, 'মুফতী ফিদাউল্লাহ হাফিযাহুল্লাহ', 'muftee-fidaullah-hafizahullah', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-04-30 06:07:02', '2026-04-30 06:07:02'),
(114, 'ইমাম ইবনে রজব আল-হাম্বলী (রহঃ)', 'imam-ibne-rjb-al-hamblee-rh', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-04-30 08:13:56', '2026-04-30 08:13:56'),
(115, 'মাহফুজুল হক, উম্মে মুসআব', 'mahfujul-hk-umme-musab', NULL, NULL, NULL, 1, 23, 23, NULL, NULL, '2026-04-30 09:40:20', '2026-04-30 09:45:22'),
(116, 'সাইয়্যেদ সুলাইমান নদভি (রহ.)', 'sayzed-sulaiman-ndvi-rh', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-04-30 22:22:37', '2026-04-30 22:22:37'),
(117, 'মুফতি মুহাম্মাদ শফি রাহিমাহুল্লাহ', 'mufti-muhammad-sfi-rahimahullah', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-01 22:29:41', '2026-05-01 22:29:41'),
(118, 'শাইখ আহমাদ মামুর আল-আসিরি', 'saikh-ahmad-mamur-al-asiri', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-02 04:43:07', '2026-05-02 04:43:07'),
(119, 'ইমাম বাইহাকি (রহ.)', 'imam-baihaki-rh', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-02 23:51:48', '2026-05-02 23:51:48'),
(120, 'ইমাম আহমদ ইবনু হাম্বল (রহ.)', 'imam-ahmd-ibnu-hambl-rh', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-03 01:59:59', '2026-05-03 01:59:59'),
(121, 'ইমাম ইবনু আবিদ দুনইয়া (রহ.)', 'imam-ibnu-abid-duniza-rh', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-03 07:59:40', '2026-05-03 07:59:40'),
(122, 'আবু আবদুর রহমান আস-সুলামী (রহ.)', 'abu-abdur-rhman-as-sulamee-rh', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-03 22:30:55', '2026-05-03 22:30:55'),
(123, 'শাইখ আব্দুল মালিক আল-কাসিম', 'saikh-abdul-malik-al-kasim', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-04 05:20:13', '2026-05-04 05:20:13'),
(124, 'ড. আইশা হামদান', 'd-aisa-hamdan', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-04 08:04:11', '2026-05-04 08:04:11'),
(125, 'জাকারিয়া মাসুদ', 'jakariya-masud', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-04 09:58:09', '2026-05-04 09:58:09'),
(126, 'সন্দীপন প্রকাশন', 'sndeepn-prkasn', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-04 09:58:32', '2026-05-04 09:58:32'),
(127, 'ড. ইয়াসির ক্বাদি', 'd-yasir-kwadi', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-04 22:41:39', '2026-05-04 22:41:39'),
(128, 'গার্ডিয়ান পাবলিকেশন্স', 'gardiyan-pablikesns', NULL, NULL, NULL, 1, 23, NULL, 23, '2026-05-04 22:42:36', '2026-05-04 22:42:24', '2026-05-04 22:42:36'),
(129, 'মোরশেদা কাইয়ূমী', 'morseda-kayuumee', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-05 04:08:49', '2026-05-05 04:08:49'),
(130, 'জ্যাক ন্যাপ ও জন জেরাস্কি', 'jzak-nzap-oo-jn-jeraski', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-05 06:09:28', '2026-05-05 06:09:28'),
(131, 'নুরুন আজম', 'nurun-ajm', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-05 06:47:52', '2026-05-05 06:47:52'),
(132, 'আদিব সালেহ', 'adib-saleh', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-06 23:40:11', '2026-05-06 23:40:11'),
(133, 'শাইখ নিদা আবু আহমাদ', 'saikh-nida-abu-ahmad', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-07 01:06:54', '2026-05-07 01:06:54'),
(134, 'উসতাজ হাসসান শামসি পাশা', 'ustaj-hassan-samsi-pasa', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-07 02:14:44', '2026-05-07 02:14:44'),
(135, 'ইমাম মুহিউদ্দীন ইয়াহইয়া আন নববী (রাহ.)', 'imam-muhiuddeen-izahiza-an-nbbee-rah', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-08 03:56:22', '2026-05-08 03:56:22'),
(136, 'ইমাম ডঃ মোহাম্মদ সাইয়েদ তানতাবী (রাহ.)', 'imam-d-mohammd-sayed-tantabee-rah', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-08 05:19:52', '2026-05-08 05:19:52'),
(137, 'ইমাম গাযযালী (রহঃ)', 'imam-gazzalee-rh', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-09 02:30:55', '2026-05-09 02:30:55'),
(138, 'আবু আম্মার মাহমুদ আল মিসরি', 'abu-ammar-mahmud-al-misri', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-09 05:30:47', '2026-05-09 05:30:47'),
(139, 'ডা. শামসুল আরেফীন', 'da-samsul-arefeen', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-09 06:18:29', '2026-05-09 06:18:29'),
(140, 'শায়খ আহমাদুল্লাহ', 'sazkh-ahmadullah', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-09 23:07:45', '2026-05-09 23:07:45'),
(141, 'আনোয়ার দাউদ আননাবরাবি', 'anozar-daud-annabrabi', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-11 02:30:09', '2026-05-11 02:30:09'),
(142, 'ফয়সাল আহমেদ', 'fysal-ahmed', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 04:58:49', '2026-05-11 04:58:49'),
(143, 'ইশরাত জাহান রোজী', 'israt-jahan-rojee', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:10:21', '2026-05-11 05:10:21'),
(144, 'মো. মিজানুর রহমান', 'mo-mijanur-rhman', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:12:09', '2026-05-11 05:12:09'),
(145, 'ইউ.জে. তাসনিম', 'iuje-tasnim', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:12:51', '2026-05-11 05:12:51'),
(146, 'আওলিয়া খানম টুলটুল', 'aooliya-khanm-tultul', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:13:30', '2026-05-11 05:13:30'),
(147, 'মোঃ নূরে আলম', 'mo-nuure-alm', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:14:07', '2026-05-11 05:14:07'),
(148, 'Abdullah Imam Khan', 'abdullah-imam-khan', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:14:49', '2026-05-11 05:14:49'),
(149, 'ড. সমর চক্রবর্তী', 'd-smr-ckrbrtee', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:15:29', '2026-05-11 05:15:29'),
(150, 'সাঈদা নাঈম', 'saeeda-naeem', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:16:09', '2026-05-11 05:16:09'),
(151, 'আহমেদ রাজু', 'ahmed-raju', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:16:37', '2026-05-11 05:16:37'),
(152, 'জেরিন সিঁথি', 'jerin-sinnthi', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:17:22', '2026-05-11 05:17:22'),
(153, 'নিপা খান', 'nipa-khan', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:18:18', '2026-05-11 05:18:18'),
(154, 'শতাব্দী ঘোষ', 'stabdee-ghosh', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:19:13', '2026-05-11 05:19:13'),
(155, 'মোঃ আইয়ুব আলী', 'mo-ayub-alee', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:19:40', '2026-05-11 05:19:40'),
(156, 'সরকার মো. হিটলার ম্যান রাজু', 'srkar-mo-hitlar-mzan-raju', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:20:19', '2026-05-11 05:20:19'),
(157, 'আসাদুজ্জামান আসাদ', 'asadujjaman-asad', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:21:47', '2026-05-11 05:21:47'),
(158, 'শাহজাহান সোহাগ', 'sahjahan-sohag', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:22:47', '2026-05-11 05:22:47'),
(159, 'মনিরুল ইসলাম', 'mnirul-islam', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 05:23:37', '2026-05-11 05:23:37'),
(160, 'কয়েদি', 'kyedi', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 06:53:46', '2026-05-11 06:53:46'),
(161, 'ডা. এহছানুল বারী আরিফ', 'da-ehchanul-baree-arif', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-11 07:21:26', '2026-05-11 07:21:26'),
(162, 'জমির উদ্দিন মিলন', 'jmir-uddin-miln', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-13 08:29:39', '2026-05-13 08:29:39'),
(163, 'ড. মো: আলমাসুর রহমান', 'd-mo-almasur-rhman', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-14 01:31:52', '2026-05-14 01:31:52'),
(164, 'ব্রিগেডিয়ার জেনারেল (অব.) অধ্যাপক ডাঃ মোঃ আজিজুল ইসলাম', 'brigedizar-jenarel-ob-odhzapk-da-mo-ajijul-islam', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-14 05:11:48', '2026-05-14 05:11:48'),
(165, 'সারা বুশরা দ্যুতি', 'sara-busra-dzuti', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:21:04', '2026-05-14 06:21:04'),
(166, 'আসিফ মাহমুদ', 'asif-mahmud', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:21:29', '2026-05-14 06:21:29'),
(167, 'রাজীব হোসাইন সরকার', 'rajeeb-hosain-srkar', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:22:26', '2026-05-14 06:22:26'),
(168, 'এ. টি. এম. খোকন', 'e-ti-em-khokn', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:22:49', '2026-05-14 06:22:49'),
(169, 'সুজিত দেব রায়', 'sujit-deb-ray', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:23:22', '2026-05-14 06:23:22'),
(170, 'Md. Rukon Uddin (Setu)', 'md-rukon-uddin-setu', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:23:50', '2026-05-14 06:23:50'),
(171, 'আর এন নিঝুম', 'ar-en-nijhum', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:24:15', '2026-05-14 06:24:15'),
(172, 'রহিমা আক্তার মৌ', 'rhima-aktar-mou', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:24:48', '2026-05-14 06:24:48'),
(173, 'রুকসানা হক', 'ruksana-hk', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:25:26', '2026-05-14 06:25:26'),
(174, 'আলামিন মোহাম্মদ', 'alamin-mohammd', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:25:47', '2026-05-14 06:25:47'),
(175, 'মহিউদ্দিন মোহাম্মাদ যুনাইদ', 'mhiuddin-mohammad-zunaid', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:26:18', '2026-05-14 06:26:18'),
(176, 'মো. রোকন উদ্দিন (সেতু)', 'mo-rokn-uddin-setu', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:27:26', '2026-05-14 06:27:26'),
(177, 'রশীদ আবরার রিয়াদ', 'rseed-abrar-riyad', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:27:49', '2026-05-14 06:27:49'),
(178, 'মাহবুবা বিথী', 'mahbuba-bithee', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:28:21', '2026-05-14 06:28:21'),
(179, 'প্রজ্ঞা জামান দৃঢ়তা', 'prjnga-jaman-drridhta', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:28:55', '2026-05-14 06:28:55'),
(180, 'আবু শাহেদ চৌধুরী', 'abu-sahed-coudhuree', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:29:26', '2026-05-14 06:29:26'),
(181, 'তাসমিয়া তাসনিন প্রিয়া', 'tasmiya-tasnin-priya', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:29:55', '2026-05-14 06:29:55'),
(182, 'মো: আমিনুল ইসলাম শাহিন', 'mo-aminul-islam-sahin', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:30:27', '2026-05-14 06:30:27'),
(183, 'রোকেয়া পপি', 'rokeya-ppi', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:30:56', '2026-05-14 06:30:56'),
(184, 'সুলতানা ইসলাম ছন্দা', 'sultana-islam-chnda', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:31:21', '2026-05-14 06:31:21'),
(185, 'শিমুল ফরিদ', 'simul-frid', NULL, NULL, NULL, 1, 21, NULL, NULL, NULL, '2026-05-14 06:31:57', '2026-05-14 06:31:57'),
(186, 'ডা. এম. এ. হালিম ও ডা. রেহানা আক্তার (বেবী)', 'da-em-e-halim-oo-da-rehana-aktar-bebee', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-15 22:52:16', '2026-05-15 22:52:16'),
(187, 'ডা. শাহাদাৎ হোসেন', 'da-sahadatt-hosen', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-16 00:08:52', '2026-05-16 00:08:52'),
(188, 'ডা. আলমগীর মতি', 'da-almgeer-mti', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-16 01:38:02', '2026-05-16 01:38:02'),
(189, 'তামান্না চৌধুরী', 'tamanna-coudhuree', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-16 04:34:47', '2026-05-16 04:34:47'),
(190, 'অধ্যাপক ডা. মুহাম্মদ রফিকুল আলম', 'odhzapk-da-muhammd-rfikul-alm', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-16 21:58:49', '2026-05-16 21:58:49'),
(191, 'শাইখ সফিউর রহমান মুবারকপুরি', 'saikh-sfiur-rhman-mubarkpuri', NULL, NULL, NULL, 1, 25, NULL, NULL, NULL, '2026-05-17 05:52:29', '2026-05-17 05:52:29'),
(192, 'ড. আব্দুল্লাহ আযযাম রহ.', 'd-abdullah-azzam-rh', NULL, NULL, NULL, 1, 25, NULL, NULL, NULL, '2026-05-17 05:52:58', '2026-05-17 05:52:58'),
(193, 'ড. আলি মুহাম্মাদ সাল্লাবি', 'd-ali-muhammad-sallabi', NULL, NULL, NULL, 1, 25, NULL, NULL, NULL, '2026-05-17 05:53:15', '2026-05-17 05:53:15'),
(194, 'শায়খ সালেহ আহমাদ শামি', 'sazkh-saleh-ahmad-sami', NULL, NULL, NULL, 1, 25, NULL, NULL, NULL, '2026-05-17 05:53:28', '2026-05-17 05:53:28'),
(195, 'অধ্যাপক ডাঃ এইচ.এন.সরকার', 'odhzapk-da-eicensrkar', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-18 05:47:55', '2026-05-18 05:47:55'),
(196, 'হায়াৎ মামুদের', 'hazatt-mamuder', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, '2026-05-19 00:03:05', '2026-05-19 00:08:49'),
(197, 'ডা. মো. মফিজুর রহমান', 'da-mo-mfijur-rhman', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-19 00:18:44', '2026-05-19 00:18:44'),
(198, 'পুষ্টিবিদ উম্মে সালমা তামান্না', 'pushtibid-umme-salma-tamanna', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-19 01:44:48', '2026-05-19 01:44:48'),
(199, 'ফারহানা নীলা', 'farhana-neela', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-19 05:44:30', '2026-05-19 05:44:30'),
(200, 'ডা. মিজানুর রহমান কল্লোল', 'da-mijanur-rhman-kllol', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-19 21:48:52', '2026-05-19 21:48:52'),
(201, 'ডা. সানি আমির, দিব্যেন্দু দ্বীপ এবং ফাহমিদা আহমেদ মনিকা', 'da-sani-amir-dibzendu-dweep-ebng-fahmida-ahmed-mnika', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-20 01:21:48', '2026-05-20 01:21:48'),
(202, 'ডা. শাহীন আরা আনওয়ারী', 'da-saheen-ara-anoozaree', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-20 01:50:51', '2026-05-20 01:50:51'),
(203, 'ডা. কামরুল আহসান', 'da-kamrul-ahsan', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-20 06:47:07', '2026-05-20 06:47:07'),
(204, 'ডা: এ.আর.এম. জামিল', 'da-earem-jamil', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-21 01:44:11', '2026-05-21 01:44:11'),
(205, 'আহমদ ছফা', 'ahmd-chfa', NULL, NULL, NULL, 1, 25, NULL, NULL, NULL, '2026-05-21 05:57:03', '2026-05-21 05:57:03'),
(206, 'ডা. মো. জাকারিয়া', 'da-mo-jakariza', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-21 08:38:48', '2026-05-21 08:38:48'),
(207, 'অধ্যাপক ড. অরূপ রতন চৌধুরী', 'odhzapk-d-oruup-rtn-coudhuree', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-31 00:44:42', '2026-05-31 00:44:42'),
(208, 'ডাঃ এ. এফ. এম শহীদুর রহমান (লিমন) ও ডাঃ নাছির উদ্দিন', 'da-e-ef-em-sheedur-rhman-limn-oo-da-nachir-uddin', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-31 01:44:38', '2026-05-31 01:44:38'),
(209, 'প্রফেসর ডা. আলতাফ হোসেন সরকার', 'prfesr-da-altaf-hosen-srkar', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-31 05:09:17', '2026-05-31 05:09:17'),
(210, 'অধ্যাপক ডা. জামানুল ইসলাম ভূইয়া', 'odhzapk-da-jamanul-islam-vuuiza', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-05-31 07:05:58', '2026-05-31 07:05:58'),
(211, 'ডা. এ এম আসিফ রহিম', 'da-e-em-asif-rhim', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-06-01 02:28:00', '2026-06-01 02:28:00'),
(212, 'আলমগীর আলম', 'almgeer-alm', NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, '2026-06-01 04:25:14', '2026-06-01 04:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'BRAND NAME WASKER', 'brand-name-wasker', 'storage/brand/2026-01-20-mH033TDt5IhVVLvH7rpLvNfYNUawDwaI0kR4lDnL.webp', 'sdsdsadasd', 1, 1, NULL, NULL, NULL, '2026-01-20 04:10:04', '2026-01-20 04:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('books_books_cache_admin_menus', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:6:{i:0;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:13:\"permission_id\";i:1;s:9:\"parent_id\";N;s:4:\"name\";s:9:\"Dashboard\";s:5:\"route\";s:15:\"admin.dashboard\";s:4:\"icon\";s:68:\"<span class=\"material-symbols-outlined fs-22\"> home_app_logo </span>\";s:5:\"order\";i:1;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:33:09\";s:10:\"updated_at\";s:19:\"2026-01-19 11:33:09\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:13:\"permission_id\";i:1;s:9:\"parent_id\";N;s:4:\"name\";s:9:\"Dashboard\";s:5:\"route\";s:15:\"admin.dashboard\";s:4:\"icon\";s:68:\"<span class=\"material-symbols-outlined fs-22\"> home_app_logo </span>\";s:5:\"order\";i:1;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:33:09\";s:10:\"updated_at\";s:19:\"2026-01-19 11:33:09\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"actions\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:2;s:13:\"permission_id\";i:2;s:9:\"parent_id\";N;s:4:\"name\";s:15:\"System Settings\";s:5:\"route\";N;s:4:\"icon\";s:78:\"<span class=\"material-symbols-outlined fs-22\"> settings_cinematic_blur </span>\";s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:34:47\";s:10:\"updated_at\";s:19:\"2026-01-19 11:34:47\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:2;s:13:\"permission_id\";i:2;s:9:\"parent_id\";N;s:4:\"name\";s:15:\"System Settings\";s:5:\"route\";N;s:4:\"icon\";s:78:\"<span class=\"material-symbols-outlined fs-22\"> settings_cinematic_blur </span>\";s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:34:47\";s:10:\"updated_at\";s:19:\"2026-01-19 11:34:47\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:4:{i:0;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:3;s:13:\"permission_id\";i:3;s:9:\"parent_id\";i:2;s:4:\"name\";s:5:\"Roles\";s:5:\"route\";s:16:\"admin.role.index\";s:4:\"icon\";N;s:5:\"order\";i:1;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:35:46\";s:10:\"updated_at\";s:19:\"2026-01-19 11:35:46\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:3;s:13:\"permission_id\";i:3;s:9:\"parent_id\";i:2;s:4:\"name\";s:5:\"Roles\";s:5:\"route\";s:16:\"admin.role.index\";s:4:\"icon\";N;s:5:\"order\";i:1;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:35:46\";s:10:\"updated_at\";s:19:\"2026-01-19 11:35:46\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:4;s:13:\"permission_id\";i:4;s:9:\"parent_id\";i:2;s:4:\"name\";s:5:\"Users\";s:5:\"route\";s:16:\"admin.user.index\";s:4:\"icon\";N;s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:36:43\";s:10:\"updated_at\";s:19:\"2026-01-19 11:36:43\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:4;s:13:\"permission_id\";i:4;s:9:\"parent_id\";i:2;s:4:\"name\";s:5:\"Users\";s:5:\"route\";s:16:\"admin.user.index\";s:4:\"icon\";N;s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:36:43\";s:10:\"updated_at\";s:19:\"2026-01-19 11:36:43\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:25;s:13:\"permission_id\";i:57;s:9:\"parent_id\";i:2;s:4:\"name\";s:6:\"Slider\";s:5:\"route\";s:18:\"admin.slider.index\";s:4:\"icon\";s:1:\"#\";s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-02-02 10:09:16\";s:10:\"updated_at\";s:19:\"2026-02-02 10:09:16\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:25;s:13:\"permission_id\";i:57;s:9:\"parent_id\";i:2;s:4:\"name\";s:6:\"Slider\";s:5:\"route\";s:18:\"admin.slider.index\";s:4:\"icon\";s:1:\"#\";s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-02-02 10:09:16\";s:10:\"updated_at\";s:19:\"2026-02-02 10:09:16\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:6;s:13:\"permission_id\";i:6;s:9:\"parent_id\";i:2;s:4:\"name\";s:14:\"Admin Settings\";s:5:\"route\";s:26:\"admin.admin-settings.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:37:50\";s:10:\"updated_at\";s:19:\"2026-01-19 11:37:50\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:6;s:13:\"permission_id\";i:6;s:9:\"parent_id\";i:2;s:4:\"name\";s:14:\"Admin Settings\";s:5:\"route\";s:26:\"admin.admin-settings.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:37:50\";s:10:\"updated_at\";s:19:\"2026-01-19 11:37:50\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"actions\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:21;s:13:\"permission_id\";i:45;s:9:\"parent_id\";N;s:4:\"name\";s:8:\"settings\";s:5:\"route\";s:20:\"admin.settings.index\";s:4:\"icon\";N;s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 12:07:06\";s:10:\"updated_at\";s:19:\"2026-01-20 12:07:06\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:21;s:13:\"permission_id\";i:45;s:9:\"parent_id\";N;s:4:\"name\";s:8:\"settings\";s:5:\"route\";s:20:\"admin.settings.index\";s:4:\"icon\";N;s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 12:07:06\";s:10:\"updated_at\";s:19:\"2026-01-20 12:07:06\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"actions\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:5;s:13:\"permission_id\";i:5;s:9:\"parent_id\";N;s:4:\"name\";s:10:\"Admin Menu\";s:5:\"route\";s:22:\"admin.admin-menu.index\";s:4:\"icon\";N;s:5:\"order\";i:3;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:37:27\";s:10:\"updated_at\";s:19:\"2026-01-20 08:51:54\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:5;s:13:\"permission_id\";i:5;s:9:\"parent_id\";N;s:4:\"name\";s:10:\"Admin Menu\";s:5:\"route\";s:22:\"admin.admin-menu.index\";s:4:\"icon\";N;s:5:\"order\";i:3;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:37:27\";s:10:\"updated_at\";s:19:\"2026-01-20 08:51:54\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"actions\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:7:{i:0;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:13:\"permission_id\";i:7;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:6:\"create\";s:5:\"route\";s:23:\"admin.admin-menu.create\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:02\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:02\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:13:\"permission_id\";i:7;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:6:\"create\";s:5:\"route\";s:23:\"admin.admin-menu.create\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:02\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:02\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:13:\"permission_id\";i:8;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:4:\"edit\";s:5:\"route\";s:21:\"admin.admin-menu.edit\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:14\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:14\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:13:\"permission_id\";i:8;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:4:\"edit\";s:5:\"route\";s:21:\"admin.admin-menu.edit\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:14\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:14\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:3;s:13:\"permission_id\";i:9;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:6:\"delete\";s:5:\"route\";s:24:\"admin.admin-menu.destroy\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:24\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:24\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:13:\"permission_id\";i:9;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:6:\"delete\";s:5:\"route\";s:24:\"admin.admin-menu.destroy\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:24\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:4;s:13:\"permission_id\";i:10;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:12:\"view actions\";s:5:\"route\";s:29:\"admin.admin-menu-action.index\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:36\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:36\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:4;s:13:\"permission_id\";i:10;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:12:\"view actions\";s:5:\"route\";s:29:\"admin.admin-menu-action.index\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:36\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:36\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:13:\"permission_id\";i:11;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:13:\"create action\";s:5:\"route\";s:30:\"admin.admin-menu-action.create\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:45\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:45\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:13:\"permission_id\";i:11;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:13:\"create action\";s:5:\"route\";s:30:\"admin.admin-menu-action.create\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:45\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:45\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:6;s:13:\"permission_id\";i:12;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:11:\"edit action\";s:5:\"route\";s:28:\"admin.admin-menu-action.edit\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:40:14\";s:10:\"updated_at\";s:19:\"2026-01-19 11:40:14\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:6;s:13:\"permission_id\";i:12;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:11:\"edit action\";s:5:\"route\";s:28:\"admin.admin-menu-action.edit\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:40:14\";s:10:\"updated_at\";s:19:\"2026-01-19 11:40:14\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:7;s:13:\"permission_id\";i:13;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:13:\"delete action\";s:5:\"route\";s:31:\"admin.admin-menu-action.destroy\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:40:27\";s:10:\"updated_at\";s:19:\"2026-01-19 11:40:27\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:7;s:13:\"permission_id\";i:13;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:13:\"delete action\";s:5:\"route\";s:31:\"admin.admin-menu-action.destroy\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:40:27\";s:10:\"updated_at\";s:19:\"2026-01-19 11:40:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:9;s:13:\"permission_id\";i:21;s:9:\"parent_id\";N;s:4:\"name\";s:8:\"Products\";s:5:\"route\";N;s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:47:59\";s:10:\"updated_at\";s:19:\"2026-01-20 09:55:33\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:9;s:13:\"permission_id\";i:21;s:9:\"parent_id\";N;s:4:\"name\";s:8:\"Products\";s:5:\"route\";N;s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:47:59\";s:10:\"updated_at\";s:19:\"2026-01-20 09:55:33\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:8:{i:0;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:10;s:13:\"permission_id\";i:22;s:9:\"parent_id\";i:9;s:4:\"name\";s:8:\"Category\";s:5:\"route\";s:20:\"admin.category.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:49:56\";s:10:\"updated_at\";s:19:\"2026-01-20 09:49:56\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:10;s:13:\"permission_id\";i:22;s:9:\"parent_id\";i:9;s:4:\"name\";s:8:\"Category\";s:5:\"route\";s:20:\"admin.category.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:49:56\";s:10:\"updated_at\";s:19:\"2026-01-20 09:49:56\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:11;s:13:\"permission_id\";i:26;s:9:\"parent_id\";i:9;s:4:\"name\";s:14:\"Product Manage\";s:5:\"route\";s:19:\"admin.product.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:56:07\";s:10:\"updated_at\";s:19:\"2026-01-20 09:56:07\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:11;s:13:\"permission_id\";i:26;s:9:\"parent_id\";i:9;s:4:\"name\";s:14:\"Product Manage\";s:5:\"route\";s:19:\"admin.product.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:56:07\";s:10:\"updated_at\";s:19:\"2026-01-20 09:56:07\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:12;s:13:\"permission_id\";i:27;s:9:\"parent_id\";i:9;s:4:\"name\";s:3:\"UOM\";s:5:\"route\";s:15:\"admin.uom.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:04:00\";s:10:\"updated_at\";s:19:\"2026-01-20 10:04:00\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:12;s:13:\"permission_id\";i:27;s:9:\"parent_id\";i:9;s:4:\"name\";s:3:\"UOM\";s:5:\"route\";s:15:\"admin.uom.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:04:00\";s:10:\"updated_at\";s:19:\"2026-01-20 10:04:00\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:13;s:13:\"permission_id\";i:28;s:9:\"parent_id\";i:9;s:4:\"name\";s:5:\"Brand\";s:5:\"route\";s:17:\"admin.brand.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:04:36\";s:10:\"updated_at\";s:19:\"2026-01-20 10:04:36\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:13;s:13:\"permission_id\";i:28;s:9:\"parent_id\";i:9;s:4:\"name\";s:5:\"Brand\";s:5:\"route\";s:17:\"admin.brand.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:04:36\";s:10:\"updated_at\";s:19:\"2026-01-20 10:04:36\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:15;s:13:\"permission_id\";i:32;s:9:\"parent_id\";i:9;s:4:\"name\";s:6:\"Vendor\";s:5:\"route\";s:18:\"admin.vendor.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:12:04\";s:10:\"updated_at\";s:19:\"2026-01-20 10:12:04\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:15;s:13:\"permission_id\";i:32;s:9:\"parent_id\";i:9;s:4:\"name\";s:6:\"Vendor\";s:5:\"route\";s:18:\"admin.vendor.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:12:04\";s:10:\"updated_at\";s:19:\"2026-01-20 10:12:04\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:16;s:13:\"permission_id\";i:34;s:9:\"parent_id\";i:9;s:4:\"name\";s:9:\"Attribute\";s:5:\"route\";s:21:\"admin.attribute.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:19:04\";s:10:\"updated_at\";s:19:\"2026-01-20 10:19:04\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:16;s:13:\"permission_id\";i:34;s:9:\"parent_id\";i:9;s:4:\"name\";s:9:\"Attribute\";s:5:\"route\";s:21:\"admin.attribute.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:19:04\";s:10:\"updated_at\";s:19:\"2026-01-20 10:19:04\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:17;s:13:\"permission_id\";i:36;s:9:\"parent_id\";i:9;s:4:\"name\";s:11:\"publication\";s:5:\"route\";s:23:\"admin.publication.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:22:54\";s:10:\"updated_at\";s:19:\"2026-01-20 10:22:54\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:17;s:13:\"permission_id\";i:36;s:9:\"parent_id\";i:9;s:4:\"name\";s:11:\"publication\";s:5:\"route\";s:23:\"admin.publication.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:22:54\";s:10:\"updated_at\";s:19:\"2026-01-20 10:22:54\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:7;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:22;s:13:\"permission_id\";i:47;s:9:\"parent_id\";i:9;s:4:\"name\";s:6:\"Author\";s:5:\"route\";s:18:\"admin.author.index\";s:4:\"icon\";N;s:5:\"order\";i:5;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-22 10:29:15\";s:10:\"updated_at\";s:19:\"2026-01-22 10:29:15\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:22;s:13:\"permission_id\";i:47;s:9:\"parent_id\";i:9;s:4:\"name\";s:6:\"Author\";s:5:\"route\";s:18:\"admin.author.index\";s:4:\"icon\";N;s:5:\"order\";i:5;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-22 10:29:15\";s:10:\"updated_at\";s:19:\"2026-01-22 10:29:15\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"actions\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:0;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:13;s:13:\"permission_id\";i:23;s:13:\"admin_menu_id\";i:9;s:4:\"name\";s:6:\"create\";s:5:\"route\";s:20:\"admin.product.create\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:51:53\";s:10:\"updated_at\";s:19:\"2026-01-20 09:51:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:13;s:13:\"permission_id\";i:23;s:13:\"admin_menu_id\";i:9;s:4:\"name\";s:6:\"create\";s:5:\"route\";s:20:\"admin.product.create\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:51:53\";s:10:\"updated_at\";s:19:\"2026-01-20 09:51:53\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:14;s:13:\"permission_id\";i:24;s:13:\"admin_menu_id\";i:9;s:4:\"name\";s:4:\"edit\";s:5:\"route\";s:18:\"admin.product.edit\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:52:09\";s:10:\"updated_at\";s:19:\"2026-01-20 09:52:09\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:14;s:13:\"permission_id\";i:24;s:13:\"admin_menu_id\";i:9;s:4:\"name\";s:4:\"edit\";s:5:\"route\";s:18:\"admin.product.edit\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:52:09\";s:10:\"updated_at\";s:19:\"2026-01-20 09:52:09\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:15;s:13:\"permission_id\";i:25;s:13:\"admin_menu_id\";i:9;s:4:\"name\";s:6:\"delete\";s:5:\"route\";s:21:\"admin.product.destroy\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:52:34\";s:10:\"updated_at\";s:19:\"2026-01-20 09:52:34\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:15;s:13:\"permission_id\";i:25;s:13:\"admin_menu_id\";i:9;s:4:\"name\";s:6:\"delete\";s:5:\"route\";s:21:\"admin.product.destroy\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:52:34\";s:10:\"updated_at\";s:19:\"2026-01-20 09:52:34\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:23;s:13:\"permission_id\";i:55;s:9:\"parent_id\";N;s:4:\"name\";s:17:\"Orders Management\";s:5:\"route\";N;s:4:\"icon\";N;s:5:\"order\";i:6;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-02-01 04:22:32\";s:10:\"updated_at\";s:19:\"2026-02-01 04:24:38\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:23;s:13:\"permission_id\";i:55;s:9:\"parent_id\";N;s:4:\"name\";s:17:\"Orders Management\";s:5:\"route\";N;s:4:\"icon\";N;s:5:\"order\";i:6;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-02-01 04:22:32\";s:10:\"updated_at\";s:19:\"2026-02-01 04:24:38\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:24;s:13:\"permission_id\";i:56;s:9:\"parent_id\";i:23;s:4:\"name\";s:10:\"Order List\";s:5:\"route\";s:18:\"admin.orders.index\";s:4:\"icon\";N;s:5:\"order\";i:6;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-02-01 04:25:06\";s:10:\"updated_at\";s:19:\"2026-02-01 04:28:50\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:24;s:13:\"permission_id\";i:56;s:9:\"parent_id\";i:23;s:4:\"name\";s:10:\"Order List\";s:5:\"route\";s:18:\"admin.orders.index\";s:4:\"icon\";N;s:5:\"order\";i:6;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-02-01 04:25:06\";s:10:\"updated_at\";s:19:\"2026-02-01 04:28:50\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"actions\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1771919380);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('books_books_cache_admin_setting', 'O:23:\"App\\Models\\AdminSetting\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"admin_settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:1;s:4:\"logo\";s:79:\"storage/admin-setting//2026-01-19-WOkDhHTNPYsXyYppCJmHwrY9oLAUS0GyfybMRVZ0.webp\";s:10:\"small_logo\";s:79:\"storage/admin-setting//2026-01-19-OJFe5jFdx2IBzbbmhVTaY0E5lm2I5ER7OwoEGMPA.webp\";s:7:\"favicon\";s:79:\"storage/admin-setting//2026-01-19-DhG2fWtAwUI17NKIMiQKmQQZKanvyCBQnFoRYhUl.webp\";s:5:\"title\";s:5:\"Books\";s:11:\"footer_text\";s:9:\"sdfsdfsdf\";s:13:\"primary_color\";s:7:\"#e80c9b\";s:15:\"secondary_color\";s:7:\"#18ba64\";s:8:\"facebook\";s:4:\"sdfs\";s:7:\"twitter\";s:4:\"fsdf\";s:8:\"linkedin\";s:5:\"sdfsd\";s:8:\"whatsapp\";s:5:\"dfsdf\";s:6:\"google\";N;s:10:\"created_at\";s:19:\"2026-01-19 11:04:11\";s:10:\"updated_at\";s:19:\"2026-01-19 11:04:11\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:1;s:4:\"logo\";s:79:\"storage/admin-setting//2026-01-19-WOkDhHTNPYsXyYppCJmHwrY9oLAUS0GyfybMRVZ0.webp\";s:10:\"small_logo\";s:79:\"storage/admin-setting//2026-01-19-OJFe5jFdx2IBzbbmhVTaY0E5lm2I5ER7OwoEGMPA.webp\";s:7:\"favicon\";s:79:\"storage/admin-setting//2026-01-19-DhG2fWtAwUI17NKIMiQKmQQZKanvyCBQnFoRYhUl.webp\";s:5:\"title\";s:5:\"Books\";s:11:\"footer_text\";s:9:\"sdfsdfsdf\";s:13:\"primary_color\";s:7:\"#e80c9b\";s:15:\"secondary_color\";s:7:\"#18ba64\";s:8:\"facebook\";s:4:\"sdfs\";s:7:\"twitter\";s:4:\"fsdf\";s:8:\"linkedin\";s:5:\"sdfsd\";s:8:\"whatsapp\";s:5:\"dfsdf\";s:6:\"google\";N;s:10:\"created_at\";s:19:\"2026-01-19 11:04:11\";s:10:\"updated_at\";s:19:\"2026-01-19 11:04:11\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:12:{i:0;s:4:\"logo\";i:1;s:10:\"small_logo\";i:2;s:7:\"favicon\";i:3;s:5:\"title\";i:4;s:11:\"footer_text\";i:5;s:13:\"primary_color\";i:6;s:15:\"secondary_color\";i:7;s:8:\"facebook\";i:8;s:7:\"twitter\";i:9;s:8:\"linkedin\";i:10;s:8:\"whatsapp\";i:11;s:6:\"google\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1771919380),
('books_books_cache_setting', 'O:18:\"App\\Models\\Setting\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:42:{s:2:\"id\";i:1;s:8:\"app_name\";s:15:\"Books and Books\";s:5:\"title\";s:15:\"Books and Books\";s:13:\"primary_phone\";s:11:\"01575020231\";s:15:\"secondary_phone\";s:11:\"01921588567\";s:13:\"primary_email\";s:23:\"booksandbooks@gmail.com\";s:15:\"secondary_email\";s:23:\"booksandbooks@gmail.com\";s:11:\"office_time\";N;s:7:\"address\";s:22:\"Aftabnager, Dhaka-1212\";s:11:\"description\";N;s:10:\"banner_one\";s:73:\"storage/settings/2026-02-02-GF8iNzEQw10DQX3hGgXKvIxe4fI7GR7kjt8TCcXZ.webp\";s:15:\"banner_one_link\";N;s:17:\"banner_one_status\";i:1;s:10:\"banner_two\";N;s:15:\"banner_two_link\";N;s:17:\"banner_two_status\";i:1;s:15:\"page_heading_bg\";s:73:\"storage/settings/2026-02-02-6btudjpIhD9wkXsltv1kfnMekRN4YTuKpP1eUaQT.webp\";s:10:\"meta_title\";N;s:12:\"meta_keyword\";N;s:16:\"meta_description\";N;s:10:\"meta_image\";s:73:\"storage/settings/2026-02-02-9xnG106bbdYpc2rUuzNhoyqMKOGHlgoUWrK9aXuy.webp\";s:10:\"google_map\";N;s:7:\"favicon\";s:73:\"storage/settings/2026-01-21-V4Q3LAERhKBYrp5zL6fOf2BdZ83NJFuqn0lf317n.webp\";s:4:\"logo\";s:73:\"storage/settings/2026-01-21-3u5FB5fLxnC4FK4pIV24Pli0lW1d0I8gBIfHLqM3.webp\";s:11:\"footer_logo\";N;s:11:\"placeholder\";s:73:\"storage/settings/2026-02-02-JYguxUfcqzekqfG4Eh7ZmqP2bzGXy1Iuv5UxSuLC.webp\";s:13:\"facebook_page\";N;s:14:\"facebook_group\";N;s:7:\"youtube\";N;s:7:\"twitter\";N;s:8:\"linkedin\";N;s:6:\"google\";N;s:8:\"whatsapp\";N;s:9:\"instagram\";N;s:9:\"pinterest\";N;s:11:\"sms_api_url\";N;s:11:\"sms_api_key\";N;s:10:\"sms_api_id\";N;s:12:\"bkash_status\";i:1;s:12:\"nagad_status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:10:51\";s:10:\"updated_at\";s:19:\"2026-02-02 10:07:54\";}s:11:\"\0*\0original\";a:42:{s:2:\"id\";i:1;s:8:\"app_name\";s:15:\"Books and Books\";s:5:\"title\";s:15:\"Books and Books\";s:13:\"primary_phone\";s:11:\"01575020231\";s:15:\"secondary_phone\";s:11:\"01921588567\";s:13:\"primary_email\";s:23:\"booksandbooks@gmail.com\";s:15:\"secondary_email\";s:23:\"booksandbooks@gmail.com\";s:11:\"office_time\";N;s:7:\"address\";s:22:\"Aftabnager, Dhaka-1212\";s:11:\"description\";N;s:10:\"banner_one\";s:73:\"storage/settings/2026-02-02-GF8iNzEQw10DQX3hGgXKvIxe4fI7GR7kjt8TCcXZ.webp\";s:15:\"banner_one_link\";N;s:17:\"banner_one_status\";i:1;s:10:\"banner_two\";N;s:15:\"banner_two_link\";N;s:17:\"banner_two_status\";i:1;s:15:\"page_heading_bg\";s:73:\"storage/settings/2026-02-02-6btudjpIhD9wkXsltv1kfnMekRN4YTuKpP1eUaQT.webp\";s:10:\"meta_title\";N;s:12:\"meta_keyword\";N;s:16:\"meta_description\";N;s:10:\"meta_image\";s:73:\"storage/settings/2026-02-02-9xnG106bbdYpc2rUuzNhoyqMKOGHlgoUWrK9aXuy.webp\";s:10:\"google_map\";N;s:7:\"favicon\";s:73:\"storage/settings/2026-01-21-V4Q3LAERhKBYrp5zL6fOf2BdZ83NJFuqn0lf317n.webp\";s:4:\"logo\";s:73:\"storage/settings/2026-01-21-3u5FB5fLxnC4FK4pIV24Pli0lW1d0I8gBIfHLqM3.webp\";s:11:\"footer_logo\";N;s:11:\"placeholder\";s:73:\"storage/settings/2026-02-02-JYguxUfcqzekqfG4Eh7ZmqP2bzGXy1Iuv5UxSuLC.webp\";s:13:\"facebook_page\";N;s:14:\"facebook_group\";N;s:7:\"youtube\";N;s:7:\"twitter\";N;s:8:\"linkedin\";N;s:6:\"google\";N;s:8:\"whatsapp\";N;s:9:\"instagram\";N;s:9:\"pinterest\";N;s:11:\"sms_api_url\";N;s:11:\"sms_api_key\";N;s:10:\"sms_api_id\";N;s:12:\"bkash_status\";i:1;s:12:\"nagad_status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:10:51\";s:10:\"updated_at\";s:19:\"2026-02-02 10:07:54\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:39:{i:0;s:8:\"app_name\";i:1;s:5:\"title\";i:2;s:13:\"primary_phone\";i:3;s:15:\"secondary_phone\";i:4;s:13:\"primary_email\";i:5;s:15:\"secondary_email\";i:6;s:11:\"office_time\";i:7;s:7:\"address\";i:8;s:11:\"description\";i:9;s:10:\"banner_one\";i:10;s:15:\"banner_one_link\";i:11;s:17:\"banner_one_status\";i:12;s:10:\"banner_two\";i:13;s:15:\"banner_two_link\";i:14;s:17:\"banner_two_status\";i:15;s:15:\"page_heading_bg\";i:16;s:10:\"meta_title\";i:17;s:12:\"meta_keyword\";i:18;s:16:\"meta_description\";i:19;s:10:\"meta_image\";i:20;s:10:\"google_map\";i:21;s:7:\"favicon\";i:22;s:4:\"logo\";i:23;s:11:\"footer_logo\";i:24;s:11:\"placeholder\";i:25;s:13:\"facebook_page\";i:26;s:14:\"facebook_group\";i:27;s:7:\"youtube\";i:28;s:7:\"twitter\";i:29;s:8:\"linkedin\";i:30;s:6:\"google\";i:31;s:8:\"whatsapp\";i:32;s:9:\"instagram\";i:33;s:9:\"pinterest\";i:34;s:11:\"sms_api_url\";i:35;s:11:\"sms_api_key\";i:36;s:10:\"sms_api_id\";i:37;s:12:\"bkash_status\";i:38;s:12:\"nagad_status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1771919380);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `position` varchar(255) DEFAULT 'header',
  `serial` int(11) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `type`, `slug`, `image`, `description`, `status`, `position`, `serial`, `url`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(424, NULL, 'School Admission', 'book', 'school', 'storage/category/2026-06-21-cjy4sL49PZkDLXFdfGRxMVegMvKvrJF4GwAd9Edo.webp', NULL, 1, 'premium_courses', 4, '#', 1, 1, NULL, NULL, '2026-06-13 05:13:36', '2026-06-21 20:17:20'),
(425, NULL, 'College Admission', 'book', 'college', 'storage/category/2026-06-21-sDDlDaPCmf5QT6V3g1HlZXewlMwF57oDOkFR6AD3.webp', NULL, 1, 'premium_courses', 3, '#', 1, 1, NULL, NULL, '2026-06-13 05:13:43', '2026-06-21 20:18:05'),
(426, NULL, 'Private University Admission', 'book', 'university', 'storage/category/2026-06-21-OL1IVvOy7EhatADFRk5GfsNcyVY42nH5QWS1ZBOS.webp', NULL, 1, 'premium_courses', 2, '#', 1, 1, NULL, NULL, '2026-06-13 05:13:52', '2026-06-21 20:18:24'),
(427, NULL, 'Public University Admission', 'book', 'public', 'storage/category/2026-06-21-VI7RjhPXqa7pbJgJib4hn2BLYipQjf47OQv61xEc.webp', NULL, 1, 'premium_courses', 1, '#', 1, 1, NULL, NULL, '2026-06-13 05:14:03', '2026-06-21 20:10:26'),
(428, NULL, 'Private', 'book', 'private', NULL, NULL, 1, 'header_top', NULL, '#', 1, NULL, NULL, NULL, '2026-06-13 05:14:11', '2026-06-13 05:14:11'),
(429, NULL, 'Video', 'book', 'video', NULL, NULL, 1, 'header_top', NULL, '#', 1, NULL, NULL, NULL, '2026-06-13 05:14:35', '2026-06-13 05:14:35'),
(430, 429, 'Video', 'book', 'choaching1', 'storage/category/2026-06-20-x8xAzNzEl6hYG2yQlVosY0TJqdiMrNpOIZoPdj7l.webp', NULL, 1, 'video', NULL, 'keEuojg3HQY', 1, 1, NULL, NULL, '2026-06-13 05:17:40', '2026-06-20 20:07:42'),
(432, NULL, 'Gallery', 'book', 'gallery', NULL, NULL, 1, 'header_top', NULL, '#', 1, NULL, NULL, NULL, '2026-06-13 20:20:54', '2026-06-13 20:20:54'),
(433, 432, 'Gallery1', 'book', 'gallery1', 'storage/category/2026-06-13-HamnPpjbZgSMZvBN2TlnuUUWoIz2C9PaQPGqRq7V.webp', NULL, 1, 'gallery', NULL, '#', 1, 1, NULL, NULL, '2026-06-13 20:21:21', '2026-06-18 05:15:27'),
(434, 432, 'Gallery2', 'book', 'gallery2', 'storage/category/2026-06-13-lXWbZ6wxggEstg23L8fvkGN9CyhE6A28iFeaoNLA.webp', NULL, 1, 'gallery', NULL, '#', 1, 1, NULL, NULL, '2026-06-13 20:21:44', '2026-06-18 05:47:28'),
(435, 425, 'College Admission', 'book', 'college-admission', NULL, NULL, 1, 'college', NULL, '#', 1, NULL, NULL, NULL, '2026-06-18 05:21:28', '2026-06-18 05:21:28'),
(436, NULL, 'Free Class', 'book', 'free-class', 'storage/category/2026-06-18-mOq5RJfCqi5IzoWTrnlUu8VevkX1EsO6BJrD4WSF.webp', '<div class=\"container py-5\">    <div class=\"row justify-content-center\">        <div class=\"col-lg-12\">            <div class=\"card border-0 shadow-lg rounded-4 text-center overflow-hidden\">                <div class=\"card-header bg-warning text-dark py-4\">                    <h2 class=\"mb-0\">                        📢 তথ্য শীঘ্রই প্রকাশিত হবে                    </h2>                </div>                <div class=\"card-body py-5\">                    <div class=\"display-1 mb-4\">                        ⏳                    </div>                    <h3 class=\"fw-bold text-dark mb-3\">                        এখনও কোনো তথ্য প্রকাশ করা হয়নি                    </h3>                    <p class=\"text-muted fs-5 mb-4\" style=\"line-height: 32px;\">                        এই বিভাগটির তথ্য বর্তমানে প্রস্তুত করা হচ্ছে।<br>                        প্রকাশিত হওয়ার সাথে সাথেই এখানেই দেখতে পারবেন।                    </p>                    <div class=\"alert alert-info border-0 rounded-3\">                        <strong>👀 চোখ রাখুন!</strong><br>                        খুব শীঘ্রই গুরুত্বপূর্ণ তথ্য এখানে প্রকাশ করা হবে।                    </div>                    <a href=\"/\" class=\"btn btn-primary px-5 py-2 rounded-pill mt-3\">                        🏠 হোম পেজে ফিরে যান                    </a>                </div>            </div>        </div>    </div></div>', 1, 'emergency_desk', 1, '#', 1, 1, NULL, NULL, '2026-06-18 05:35:01', '2026-06-28 04:55:02'),
(437, NULL, 'Private Class', 'book', 'private-class', 'storage/category/2026-06-18-RzD9SMImGgkde76vrImIGMnKuymfQrZ1MXqstJGo.webp', '<div class=\"container py-5\">    <div class=\"row justify-content-center\">        <div class=\"col-lg-12\">            <div class=\"card border-0 shadow-lg rounded-4 text-center overflow-hidden\">                <div class=\"card-header bg-warning text-dark py-4\">                    <h2 class=\"mb-0\">                        📢 তথ্য শীঘ্রই প্রকাশিত হবে                    </h2>                </div>                <div class=\"card-body py-5\">                    <div class=\"display-1 mb-4\">                        ⏳                    </div>                    <h3 class=\"fw-bold text-dark mb-3\">                        এখনও কোনো তথ্য প্রকাশ করা হয়নি                    </h3>                    <p class=\"text-muted fs-5 mb-4\" style=\"line-height: 32px;\">                        এই বিভাগটির তথ্য বর্তমানে প্রস্তুত করা হচ্ছে।<br>                        প্রকাশিত হওয়ার সাথে সাথেই এখানেই দেখতে পারবেন।                    </p>                    <div class=\"alert alert-info border-0 rounded-3\">                        <strong>👀 চোখ রাখুন!</strong><br>                        খুব শীঘ্রই গুরুত্বপূর্ণ তথ্য এখানে প্রকাশ করা হবে।                    </div>                    <a href=\"/\" class=\"btn btn-primary px-5 py-2 rounded-pill mt-3\">                        🏠 হোম পেজে ফিরে যান                    </a>                </div>            </div>        </div>    </div></div>', 1, 'emergency_desk', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 05:37:54', '2026-06-28 04:56:24'),
(438, NULL, 'Class with Zahan Sir', 'book', 'class-with-zahan-sir', 'storage/category/2026-06-18-3oXebihpa3arczxJIyeZqvChangPxQVfnr1xBMme.webp', '<div class=\"container py-5\">    <div class=\"row justify-content-center\">        <div class=\"col-lg-12\">            <div class=\"card border-0 shadow-lg rounded-4 text-center overflow-hidden\">                <div class=\"card-header bg-warning text-dark py-4\">                    <h2 class=\"mb-0\">                        📢 তথ্য শীঘ্রই প্রকাশিত হবে                    </h2>                </div>                <div class=\"card-body py-5\">                    <div class=\"display-1 mb-4\">                        ⏳                    </div>                    <h3 class=\"fw-bold text-dark mb-3\">                        এখনও কোনো তথ্য প্রকাশ করা হয়নি                    </h3>                    <p class=\"text-muted fs-5 mb-4\" style=\"line-height: 32px;\">                        এই বিভাগটির তথ্য বর্তমানে প্রস্তুত করা হচ্ছে।<br>                        প্রকাশিত হওয়ার সাথে সাথেই এখানেই দেখতে পারবেন।                    </p>                    <div class=\"alert alert-info border-0 rounded-3\">                        <strong>👀 চোখ রাখুন!</strong><br>                        খুব শীঘ্রই গুরুত্বপূর্ণ তথ্য এখানে প্রকাশ করা হবে।                    </div>                    <a href=\"/\" class=\"btn btn-primary px-5 py-2 rounded-pill mt-3\">                        🏠 হোম পেজে ফিরে যান                    </a>                </div>            </div>        </div>    </div></div>', 1, 'emergency_desk', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 05:39:18', '2026-06-28 04:56:42'),
(439, 432, 'Galler3', 'book', 'galler3', 'storage/category/2026-06-18-sotl1ia2Xx8ftjXfqZnPYZSzg93M7dbX5C8J5bVa.webp', NULL, 1, 'gallery', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 05:47:03', '2026-06-18 05:47:46'),
(440, 432, 'Gallery4', 'book', 'galler4', 'storage/category/2026-06-18-MKGYN3esmCsZN8KR4rKpvz4qRAGe7dlvDf1H4irh.webp', NULL, 1, 'gallery', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 05:49:17', '2026-06-18 05:49:45'),
(441, NULL, 'Students Activities', 'book', 'students-activities', 'storage/category/2026-06-18-cfGItUXLD7rqsJpGlm5MjgdbR0M73scRQYklTcpV.webp', '<div class=\"container py-5\">    <div class=\"row justify-content-center\">        <div class=\"col-lg-12\">            <div class=\"card border-0 shadow-lg rounded-4 text-center overflow-hidden\">                <div class=\"card-header bg-warning text-dark py-4\">                    <h2 class=\"mb-0\">                        📢 তথ্য শীঘ্রই প্রকাশিত হবে                    </h2>                </div>                <div class=\"card-body py-5\">                    <div class=\"display-1 mb-4\">                        ⏳                    </div>                    <h3 class=\"fw-bold text-dark mb-3\">                        এখনও কোনো তথ্য প্রকাশ করা হয়নি                    </h3>                    <p class=\"text-muted fs-5 mb-4\" style=\"line-height: 32px;\">                        এই বিভাগটির তথ্য বর্তমানে প্রস্তুত করা হচ্ছে।<br>                        প্রকাশিত হওয়ার সাথে সাথেই এখানেই দেখতে পারবেন।                    </p>                    <div class=\"alert alert-info border-0 rounded-3\">                        <strong>👀 চোখ রাখুন!</strong><br>                        খুব শীঘ্রই গুরুত্বপূর্ণ তথ্য এখানে প্রকাশ করা হবে।                    </div>                    <a href=\"/\" class=\"btn btn-primary px-5 py-2 rounded-pill mt-3\">                        🏠 হোম পেজে ফিরে যান                    </a>                </div>            </div>        </div>    </div></div>', 1, 'emergency_desk', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 07:53:42', '2026-06-28 04:56:59'),
(442, NULL, 'Question & Answer', 'book', 'question-answer', 'storage/category/2026-06-18-zulCSm28IhN2tpe6yW4wYm6aOofGpgzHLXbEzHzc.webp', '<div class=\"container py-5\">    <div class=\"row justify-content-center\">        <div class=\"col-lg-12\">            <div class=\"card border-0 shadow-lg rounded-4 text-center overflow-hidden\">                <div class=\"card-header bg-warning text-dark py-4\">                    <h2 class=\"mb-0\">                        📢 তথ্য শীঘ্রই প্রকাশিত হবে                    </h2>                </div>                <div class=\"card-body py-5\">                    <div class=\"display-1 mb-4\">                        ⏳                    </div>                    <h3 class=\"fw-bold text-dark mb-3\">                        এখনও কোনো তথ্য প্রকাশ করা হয়নি                    </h3>                    <p class=\"text-muted fs-5 mb-4\" style=\"line-height: 32px;\">                        এই বিভাগটির তথ্য বর্তমানে প্রস্তুত করা হচ্ছে।<br>                        প্রকাশিত হওয়ার সাথে সাথেই এখানেই দেখতে পারবেন।                    </p>                    <div class=\"alert alert-info border-0 rounded-3\">                        <strong>👀 চোখ রাখুন!</strong><br>                        খুব শীঘ্রই গুরুত্বপূর্ণ তথ্য এখানে প্রকাশ করা হবে।                    </div>                    <a href=\"/\" class=\"btn btn-primary px-5 py-2 rounded-pill mt-3\">                        🏠 হোম পেজে ফিরে যান                    </a>                </div>            </div>        </div>    </div></div>', 1, 'emergency_desk', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 07:54:59', '2026-06-28 04:57:18'),
(443, NULL, 'Teachers', 'book', 'teachers', 'storage/category/2026-06-18-q2tfDNCCBD3S1tfwEZH91l2hPTdKq0gR9SWkK59U.webp', '<div class=\"container py-5\">    <div class=\"row justify-content-center\">        <div class=\"col-lg-12\">            <div class=\"card border-0 shadow-lg rounded-4 text-center overflow-hidden\">                <div class=\"card-header bg-warning text-dark py-4\">                    <h2 class=\"mb-0\">                        📢 তথ্য শীঘ্রই প্রকাশিত হবে                    </h2>                </div>                <div class=\"card-body py-5\">                    <div class=\"display-1 mb-4\">                        ⏳                    </div>                    <h3 class=\"fw-bold text-dark mb-3\">                        এখনও কোনো তথ্য প্রকাশ করা হয়নি                    </h3>                    <p class=\"text-muted fs-5 mb-4\" style=\"line-height: 32px;\">                        এই বিভাগটির তথ্য বর্তমানে প্রস্তুত করা হচ্ছে।<br>                        প্রকাশিত হওয়ার সাথে সাথেই এখানেই দেখতে পারবেন।                    </p>                    <div class=\"alert alert-info border-0 rounded-3\">                        <strong>👀 চোখ রাখুন!</strong><br>                        খুব শীঘ্রই গুরুত্বপূর্ণ তথ্য এখানে প্রকাশ করা হবে।                    </div>                    <a href=\"/\" class=\"btn btn-primary px-5 py-2 rounded-pill mt-3\">                        🏠 হোম পেজে ফিরে যান                    </a>                </div>            </div>        </div>    </div></div>', 1, 'emergency_desk', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 07:56:26', '2026-06-28 04:57:32'),
(444, NULL, 'Exam', 'book', 'exam', 'storage/category/2026-06-18-CRrGW8bXBe6xylBfIs4P6TG9agTZodqSLHp1CIrX.webp', '<div class=\"container py-5\">    <div class=\"row justify-content-center\">        <div class=\"col-lg-12\">            <div class=\"card border-0 shadow-lg rounded-4 text-center overflow-hidden\">                <div class=\"card-header bg-warning text-dark py-4\">                    <h2 class=\"mb-0\">                        📢 তথ্য শীঘ্রই প্রকাশিত হবে                    </h2>                </div>                <div class=\"card-body py-5\">                    <div class=\"display-1 mb-4\">                        ⏳                    </div>                    <h3 class=\"fw-bold text-dark mb-3\">                        এখনও কোনো তথ্য প্রকাশ করা হয়নি                    </h3>                    <p class=\"text-muted fs-5 mb-4\" style=\"line-height: 32px;\">                        এই বিভাগটির তথ্য বর্তমানে প্রস্তুত করা হচ্ছে।<br>                        প্রকাশিত হওয়ার সাথে সাথেই এখানেই দেখতে পারবেন।                    </p>                    <div class=\"alert alert-info border-0 rounded-3\">                        <strong>👀 চোখ রাখুন!</strong><br>                        খুব শীঘ্রই গুরুত্বপূর্ণ তথ্য এখানে প্রকাশ করা হবে।                    </div>                    <a href=\"/\" class=\"btn btn-primary px-5 py-2 rounded-pill mt-3\">                        🏠 হোম পেজে ফিরে যান                    </a>                </div>            </div>        </div>    </div></div>', 1, 'admitted_students', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 09:16:02', '2026-06-28 04:57:53'),
(445, NULL, 'Notice Board', 'book', 'notice-board', 'storage/category/2026-06-18-OkA325wAgWh64mjQbK7ZE1PFK66NrGM4aX49lPVH.webp', '<div class=\"container py-5\">    <div class=\"row justify-content-center\">        <div class=\"col-lg-12\">            <div class=\"card border-0 shadow-lg rounded-4 text-center overflow-hidden\">                <div class=\"card-header bg-warning text-dark py-4\">                    <h2 class=\"mb-0\">                        📢 তথ্য শীঘ্রই প্রকাশিত হবে                    </h2>                </div>                <div class=\"card-body py-5\">                    <div class=\"display-1 mb-4\">                        ⏳                    </div>                    <h3 class=\"fw-bold text-dark mb-3\">                        এখনও কোনো তথ্য প্রকাশ করা হয়নি                    </h3>                    <p class=\"text-muted fs-5 mb-4\" style=\"line-height: 32px;\">                        এই বিভাগটির তথ্য বর্তমানে প্রস্তুত করা হচ্ছে।<br>                        প্রকাশিত হওয়ার সাথে সাথেই এখানেই দেখতে পারবেন।                    </p>                    <div class=\"alert alert-info border-0 rounded-3\">                        <strong>👀 চোখ রাখুন!</strong><br>                        খুব শীঘ্রই গুরুত্বপূর্ণ তথ্য এখানে প্রকাশ করা হবে।                    </div>                    <a href=\"/\" class=\"btn btn-primary px-5 py-2 rounded-pill mt-3\">                        🏠 হোম পেজে ফিরে যান                    </a>                </div>            </div>        </div>    </div></div>', 1, 'admitted_students', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 09:18:17', '2026-06-28 04:58:07'),
(446, NULL, 'Results', 'book', 'results', 'storage/category/2026-06-18-tbh8ZmceqC3l01mW36nEsPo3iKx3UaYXTuFNyp4K.webp', '<div class=\"container py-5\">    <div class=\"row justify-content-center\">        <div class=\"col-lg-12\">            <div class=\"card border-0 shadow-lg rounded-4 text-center overflow-hidden\">                <div class=\"card-header bg-warning text-dark py-4\">                    <h2 class=\"mb-0\">                        📢 তথ্য শীঘ্রই প্রকাশিত হবে                    </h2>                </div>                <div class=\"card-body py-5\">                    <div class=\"display-1 mb-4\">                        ⏳                    </div>                    <h3 class=\"fw-bold text-dark mb-3\">                        এখনও কোনো তথ্য প্রকাশ করা হয়নি                    </h3>                    <p class=\"text-muted fs-5 mb-4\" style=\"line-height: 32px;\">                        এই বিভাগটির তথ্য বর্তমানে প্রস্তুত করা হচ্ছে।<br>                        প্রকাশিত হওয়ার সাথে সাথেই এখানেই দেখতে পারবেন।                    </p>                    <div class=\"alert alert-info border-0 rounded-3\">                        <strong>👀 চোখ রাখুন!</strong><br>                        খুব শীঘ্রই গুরুত্বপূর্ণ তথ্য এখানে প্রকাশ করা হবে।                    </div>                    <a href=\"/\" class=\"btn btn-primary px-5 py-2 rounded-pill mt-3\">                        🏠 হোম পেজে ফিরে যান                    </a>                </div>            </div>        </div>    </div></div>', 1, 'admitted_students', 1, '#', 1, 1, NULL, NULL, '2026-06-18 09:18:58', '2026-06-28 04:58:21'),
(447, NULL, 'Top List', 'book', 'top-list', 'storage/category/2026-06-18-rycDBQjQO68Ky2HnN0JV0WyOjqQV8GCtSvkIqbgN.webp', '<div class=\"container py-5\">    <div class=\"row justify-content-center\">        <div class=\"col-lg-12\">            <div class=\"card border-0 shadow-lg rounded-4 text-center overflow-hidden\">                <div class=\"card-header bg-warning text-dark py-4\">                    <h2 class=\"mb-0\">                        📢 তথ্য শীঘ্রই প্রকাশিত হবে                    </h2>                </div>                <div class=\"card-body py-5\">                    <div class=\"display-1 mb-4\">                        ⏳                    </div>                    <h3 class=\"fw-bold text-dark mb-3\">                        এখনও কোনো তথ্য প্রকাশ করা হয়নি                    </h3>                    <p class=\"text-muted fs-5 mb-4\" style=\"line-height: 32px;\">                        এই বিভাগটির তথ্য বর্তমানে প্রস্তুত করা হচ্ছে।<br>                        প্রকাশিত হওয়ার সাথে সাথেই এখানেই দেখতে পারবেন।                    </p>                    <div class=\"alert alert-info border-0 rounded-3\">                        <strong>👀 চোখ রাখুন!</strong><br>                        খুব শীঘ্রই গুরুত্বপূর্ণ তথ্য এখানে প্রকাশ করা হবে।                    </div>                    <a href=\"/\" class=\"btn btn-primary px-5 py-2 rounded-pill mt-3\">                        🏠 হোম পেজে ফিরে যান                    </a>                </div>            </div>        </div>    </div></div>', 1, 'admitted_students', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 09:34:03', '2026-06-28 04:58:43'),
(448, 429, 'video', 'book', 'video-1', 'storage/category/2026-06-20-VtyUqWaq9GHCwxzNJIIMTVqMy2jlzX4CTj4GdbdD.webp', NULL, 1, 'video', NULL, 'UxWFrBZwiGs', 1, 1, NULL, NULL, '2026-06-18 10:29:41', '2026-06-20 20:14:01'),
(449, 432, 'gallery', 'book', 'gallery-1', 'storage/category/2026-06-18-5Tpo0cnF8q2I2fP1b2XmmcIei0bFjRiAh0JWpudO.webp', NULL, 1, 'gallery', NULL, '#', 1, NULL, NULL, NULL, '2026-06-18 10:31:13', '2026-06-18 10:31:13'),
(450, 429, 'Video3', 'book', 'video-1', 'storage/category/2026-06-20-3WJlvw8t0gyImawiwwGLv52yAwNE9X9edDy4L0uY.webp', NULL, 1, 'video', NULL, 'UxWFrBZwiGs', 1, 1, NULL, NULL, '2026-06-18 10:32:38', '2026-06-20 20:15:26'),
(451, 432, 'gallery', 'book', 'gallery-1', 'storage/category/2026-06-18-b7FAnNzofwFr0RvCPsVPnNe6puQujZ3xSsPIzwsJ.webp', NULL, 1, 'gallery', NULL, '#', 1, NULL, NULL, NULL, '2026-06-18 10:34:50', '2026-06-18 10:34:50'),
(452, 432, 'gallery', 'book', 'gallery-1', 'storage/category/2026-06-18-bTRI4kaoeb4sjlsnY9CLwVbWu3s4KY7tBo7wU4bS.webp', NULL, 1, 'gallery', NULL, '#', 1, NULL, NULL, NULL, '2026-06-18 10:35:59', '2026-06-18 10:35:59'),
(453, 429, 'video5', 'book', 'video-1', 'storage/category/2026-06-20-a5NkQ8c4xUkpWx7kMRWJ0iwtzMWtYyDeNw6nkElE.webp', NULL, 1, 'video', NULL, 'UxWFrBZwiGs', 1, 1, NULL, NULL, '2026-06-18 10:37:22', '2026-06-20 20:18:04'),
(454, 432, 'gallery', 'book', 'gallery-1', 'storage/category/2026-06-18-cTMd0v6AIqLPxFNSVe1VddypSHh7fBIGrmdijt9N.webp', NULL, 1, 'gallery', NULL, '#', 1, NULL, NULL, NULL, '2026-06-18 10:40:35', '2026-06-18 10:40:35'),
(455, 429, 'video', 'book', 'video-1', 'storage/category/2026-06-20-Vx0bASciDn9pDsqMmEitbKdw1mj6hx7By9fa5z9A.webp', NULL, 1, 'video', NULL, 'SwvfwZfXUeo', 1, 1, NULL, NULL, '2026-06-18 10:41:47', '2026-06-20 20:18:31'),
(456, 432, 'gallery', 'book', 'gallery-1', 'storage/category/2026-06-18-jlpiWMe9E05XmjxvvyLLjQPOQCkd4CjK1BBZy6Gq.webp', NULL, 1, 'gallery', NULL, '#', 1, NULL, NULL, NULL, '2026-06-18 10:42:58', '2026-06-18 10:42:58'),
(457, 432, 'gallery', 'book', 'gallery-1', 'storage/category/2026-06-18-QEg3iVvnH5WoUHvE4CtNSRyoy6Iv2HivkMMkNt2r.webp', NULL, 1, 'gallery', NULL, '#', 1, NULL, NULL, NULL, '2026-06-18 10:44:11', '2026-06-18 10:44:11'),
(458, 432, 'gallery', 'book', 'gallery-1', 'storage/category/2026-06-18-Bjekzc8GK78PSsESPmgfdZGNYQnIif4xf0N5gTK6.webp', NULL, 1, 'gallery', NULL, '#', 1, NULL, NULL, NULL, '2026-06-18 10:44:39', '2026-06-18 10:44:39'),
(459, 432, 'gallery', 'book', 'gallery-1', 'storage/category/2026-06-18-E4obfGgKFlaF51R5RHSiGukJGIngKRW516XaoTuH.webp', NULL, 1, 'gallery', NULL, '#', 1, NULL, NULL, NULL, '2026-06-18 10:45:19', '2026-06-18 10:45:19'),
(460, NULL, 'About Us', 'book', 'about-us', NULL, '<div class=\"card shadow border-0 rounded-4\">    <div class=\"card-body p-5\">        <h2 class=\"fw-bold text-primary mb-4\">            🎓 আমাদের সম্পর্কে        </h2>        <p style=\"text-align:justify;line-height:32px;\">            UAC (University Admission Care) বাংলাদেশের অন্যতম বিশ্বস্ত ও অভিজ্ঞ ভর্তি            প্রস্তুতি প্রতিষ্ঠান। দীর্ঘদিন ধরে আমরা স্কুল, এসএসসি, এইচএসসি, বিশ্ববিদ্যালয়,            মেডিকেল, ইঞ্জিনিয়ারিং এবং কলেজ ভর্তি পরীক্ষার্থীদের মানসম্মত শিক্ষা ও            সঠিক দিকনির্দেশনা দিয়ে আসছি।        </p>        <p style=\"text-align:justify;line-height:32px;\">            আমাদের লক্ষ্য শুধু পরীক্ষায় ভালো ফলাফল নয়, বরং প্রতিটি শিক্ষার্থীকে            আত্মবিশ্বাসী, দক্ষ এবং সফল মানুষ হিসেবে গড়ে তোলা।        </p>        <h4 class=\"mt-4\">🎯 আমাদের লক্ষ্য</h4>        <ul>            <li>মানসম্মত শিক্ষা নিশ্চিত করা</li>            <li>অভিজ্ঞ শিক্ষকদের মাধ্যমে পাঠদান</li>            <li>আধুনিক প্রযুক্তিনির্ভর শিক্ষা ব্যবস্থা</li>            <li>শিক্ষার্থীদের সফল ভবিষ্যৎ গড়ে তোলা</li>        </ul>    </div></div>', 1, 'about', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 10:51:53', '2026-06-28 05:04:25'),
(461, NULL, 'Teachers', 'book', 'techears', NULL, '<div class=\"container py-5\">    <div class=\"row justify-content-center\">        <div class=\"col-lg-12\">            <div class=\"card border-0 shadow-lg rounded-4 text-center overflow-hidden\">                <div class=\"card-header bg-warning text-dark py-4\">                    <h2 class=\"mb-0\">                        📢 তথ্য শীঘ্রই প্রকাশিত হবে                    </h2>                </div>                <div class=\"card-body py-5\">                    <div class=\"display-1 mb-4\">                        ⏳                    </div>                    <h3 class=\"fw-bold text-dark mb-3\">                        এখনও কোনো তথ্য প্রকাশ করা হয়নি                    </h3>                    <p class=\"text-muted fs-5 mb-4\" style=\"line-height: 32px;\">                        এই বিভাগটির তথ্য বর্তমানে প্রস্তুত করা হচ্ছে।<br>                        প্রকাশিত হওয়ার সাথে সাথেই এখানেই দেখতে পারবেন।                    </p>                    <div class=\"alert alert-info border-0 rounded-3\">                        <strong>👀 চোখ রাখুন!</strong><br>                        খুব শীঘ্রই গুরুত্বপূর্ণ তথ্য এখানে প্রকাশ করা হবে।                    </div>                    <a href=\"/\" class=\"btn btn-primary px-5 py-2 rounded-pill mt-3\">                        🏠 হোম পেজে ফিরে যান                    </a>                </div>            </div>        </div>    </div></div>', 1, 'about', 1, '#', 1, 1, NULL, NULL, '2026-06-18 10:52:43', '2026-06-28 05:09:10'),
(462, NULL, 'Refund Policy', 'book', 'refund-policy', NULL, '<div class=\"card shadow border-0 rounded-4\"><div class=\"card-body p-5\"><h2 class=\"text-danger fw-bold mb-4\">💰 রিফান্ড নীতিমালা</h2><p style=\"text-align:justify;line-height:32px;\">কোর্সে ভর্তি সম্পন্ন হওয়ার পর সাধারণত কোর্স ফি ফেরতযোগ্য নয়।</p><ul><li>প্রযুক্তিগত সমস্যার কারণে ভর্তি সম্পন্ন না হলে যাচাই সাপেক্ষে সমাধান করা হবে।</li><li>একাধিকবার একই কোর্সের জন্য অর্থ প্রদান করলে অতিরিক্ত অর্থ ফেরত দেওয়া হবে।</li><li>বিশেষ পরিস্থিতিতে কর্তৃপক্ষের সিদ্ধান্তই চূড়ান্ত বলে গণ্য হবে।</li></ul></div></div>', 1, 'about', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 10:53:01', '2026-06-28 05:05:07'),
(463, NULL, 'Contact Us', 'book', 'contact-us', NULL, '<section class=\"py-5 bg-light\">    <div class=\"container\">        <div class=\"text-center mb-5\">            <h2 class=\"fw-bold text-primary\">📞 Contact Us</h2>            <p class=\"text-muted\">                যেকোনো তথ্য, ভর্তি সংক্রান্ত পরামর্শ অথবা সহযোগিতার জন্য আমাদের সাথে যোগাযোগ করুন।            </p>        </div>        <div class=\"row g-4\">            <!-- Head Office -->            <div class=\"col-lg-6\">                <div class=\"card border-0 shadow-lg h-100 rounded-4\">                    <div class=\"card-header bg-primary text-white py-3 rounded-top-4\">                        <h4 class=\"mb-0\">🏢 হেড অফিস</h4>                    </div>                    <div class=\"card-body\">                        <div class=\"d-flex align-items-start mb-3\">                            <div class=\"fs-2 me-3\">📍</div>                            <div>                                <h5 class=\"fw-bold\">ঠিকানা</h5>                                <p class=\"text-muted mb-0\" style=\"line-height:30px;text-align:justify;\">                                    ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের                                    ফুটওভার ব্রিজ সংলগ্ন), আরামবাগ পুলিশ বক্সের ঠিক                                    উল্টো পাশে, নটর ডেম ভবনের পাশে, ৩য় তলা,                                    মতিঝিল, ঢাকা।                                </p>                            </div>                        </div>                    </div>                </div>            </div>            <!-- Branch + Contact -->            <div class=\"col-lg-6\">                <div class=\"card border-0 shadow-lg h-100 rounded-4\">                    <div class=\"card-header bg-success text-white py-3 rounded-top-4\">                        <h4 class=\"mb-0\">📍 আমাদের শাখাসমূহ</h4>                    </div>                    <div class=\"card-body\">                        <div class=\"row text-center\">                            <div class=\"col-4 mb-3\">                                <div class=\"border rounded-3 p-3 bg-light\">                                    <h2>🏢</h2>                                    <strong>মতিঝিল</strong>                                </div>                            </div>                            <div class=\"col-4 mb-3\">                                <div class=\"border rounded-3 p-3 bg-light\">                                    <h2>🏢</h2>                                    <strong>ফার্মগেট</strong>                                </div>                            </div>                            <div class=\"col-4 mb-3\">                                <div class=\"border rounded-3 p-3 bg-light\">                                    <h2>🏢</h2>                                    <strong>বনশ্রী</strong>                                </div>                            </div>                        </div>                        <hr>                        <h5 class=\"fw-bold mb-3\">📞 যোগাযোগ</h5>                        <div class=\"d-grid gap-2\">                            <a href=\"tel:01712162412\" class=\"btn btn-outline-primary rounded-pill\">                                📱 01712-162412                            </a>                            <a href=\"tel:01894674181\" class=\"btn btn-outline-success rounded-pill\">                                📱 01894-674181                            </a>                            <a href=\"tel:01922471691\" class=\"btn btn-outline-danger rounded-pill\">                                📱 01922-471691                            </a>                        </div>                    </div>                </div>            </div>        </div>    </div></section>', 1, 'about', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 10:53:19', '2026-06-28 04:49:52'),
(464, NULL, 'Courses', 'book', 'courses', NULL, '<div class=\"card shadow border-0 rounded-4\"><div class=\"card-body p-5\"><h2 class=\"fw-bold text-primary mb-4\">📚 আমাদের কোর্সসমূহ</h2><p style=\"text-align:justify;line-height:32px;\">UAC শিক্ষার্থীদের সফলতার জন্য বিভিন্ন ধরনের ভর্তি প্রস্তুতি কোর্স পরিচালনা করে।</p><div class=\"row\"><div class=\"col-md-6\"><ul><li>🎓 স্কুল/কলেজ ভর্তি প্রস্তুতি</li><li>🏫 বিশ্ববিদ্যালয় ভর্তি প্রস্তুতি</li><li>🩺 মেডিকেল ভর্তি প্রস্তুতি</li><li>⚙️ ইঞ্জিনিয়ারিং ভর্তি প্রস্তুতি</li></ul></div><div class=\"col-md-6\"><ul><li>💻 অনলাইন লাইভ ব্যাচ</li><li>📖 অফলাইন ক্লাস</li><li>📝 মডেল টেস্ট</li><li>🎯 বিশেষ সাজেশন ক্লাস</li></ul></div></div><p class=\"mt-4\">অভিজ্ঞ শিক্ষক, মানসম্মত স্টাডি ম্যাটেরিয়াল এবং নিয়মিত মূল্যায়নের মাধ্যমে আমরা শিক্ষার্থীদের কাঙ্ক্ষিত সাফল্য অর্জনে সহায়তা করি।</p></div></div>', 1, 'resources', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 10:53:38', '2026-06-28 05:07:52'),
(465, NULL, 'Our Blog', 'book', 'our-blog', NULL, '<div class=\"card shadow border-0 rounded-4\"><div class=\"card-body p-5\"><h2 class=\"fw-bold text-warning mb-4\">📰 আমাদের ব্লগ</h2><p style=\"text-align:justify;line-height:32px;\">UAC ব্লগে শিক্ষার্থীদের জন্য নিয়মিত প্রকাশ করা হয়—</p><ul><li>বিশ্ববিদ্যালয় ভর্তি আপডেট</li><li>কলেজ ভর্তি সংক্রান্ত তথ্য</li><li>পড়াশোনার কার্যকর কৌশল</li><li>ক্যারিয়ার গাইডলাইন</li><li>মোটিভেশনাল আর্টিকেল</li><li>পরীক্ষার সাজেশন ও টিপস</li></ul><p>নিয়মিত আমাদের ব্লগ ভিজিট করুন এবং সর্বশেষ শিক্ষাসংক্রান্ত তথ্য জানতে আমাদের সঙ্গে থাকুন।</p></div></div>', 1, 'resources', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 10:53:53', '2026-06-28 05:06:54'),
(466, NULL, 'Terms & Conditions', 'book', 'terms-conditions', NULL, '<div class=\"card shadow border-0 rounded-4\"><div class=\"card-body p-5\"><h2 class=\"text-success fw-bold mb-4\">📜 শর্তাবলী</h2><ul><li>ভর্তি সম্পন্ন করার মাধ্যমে আপনি আমাদের সকল শর্তাবলীতে সম্মতি প্রদান করছেন।</li><li>কোর্সের ভিডিও, নোট বা যেকোনো কনটেন্ট অন্য কোথাও শেয়ার করা সম্পূর্ণ নিষিদ্ধ।</li><li>কর্তৃপক্ষ যেকোনো সময় কোর্সের সময়সূচি পরিবর্তনের অধিকার সংরক্ষণ করে।</li><li>যেকোনো অসদাচরণে শিক্ষার্থীর ভর্তি বাতিল হতে পারে।</li><li>ওয়েবসাইট ব্যবহারের সময় বাংলাদেশের প্রচলিত আইন মেনে চলতে হবে।</li></ul></div></div>', 1, 'resources', NULL, '#', 1, 1, NULL, NULL, '2026-06-18 10:54:16', '2026-06-28 05:05:28'),
(467, NULL, 'Privacy & Policy', 'book', 'privacy-policy', NULL, '<div class=\"card shadow border-0 rounded-4\"><div class=\"card-body p-5\"><h2 class=\"text-info fw-bold mb-4\">🔒 গোপনীয়তা নীতিমালা</h2><p style=\"text-align:justify;line-height:32px;\">আপনার ব্যক্তিগত তথ্যের নিরাপত্তা নিশ্চিত করা আমাদের অন্যতম অঙ্গীকার।</p><ul><li>আপনার তথ্য কোনো তৃতীয় পক্ষের কাছে বিক্রি বা শেয়ার করা হয় না।</li><li>শুধুমাত্র শিক্ষা সংক্রান্ত প্রয়োজনেই তথ্য ব্যবহার করা হয়।</li><li>আপনার অনুমতি ছাড়া কোনো প্রচারণামূলক তথ্য পাঠানো হয় না।</li><li>ওয়েবসাইটের নিরাপত্তার জন্য Cookies এবং নিরাপদ প্রযুক্তি ব্যবহার করা হতে পারে।</li></ul></div></div>', 1, 'resources', 1, '#', 1, 1, NULL, NULL, '2026-06-18 10:54:33', '2026-06-28 05:06:32'),
(468, NULL, 'School Admission', 'book', 'school-admission', NULL, NULL, 1, 'school', NULL, '#', 1, NULL, NULL, NULL, '2026-06-18 18:54:37', '2026-06-18 18:54:37'),
(469, 426, 'University Admission', 'book', 'university-admission', NULL, NULL, 1, 'university', NULL, '#', 1, NULL, NULL, NULL, '2026-06-18 18:58:39', '2026-06-18 18:58:39'),
(470, NULL, 'Books Sale', 'book', 'books-sale', 'storage/category/2026-07-01-kRtWHrSZX71JmZ0dTA1Qs24GvQrP2rjMKyEyfFmQ.webp', NULL, 1, 'premium_courses', 1, '#', 1, 1, NULL, NULL, '2026-07-01 20:12:49', '2026-07-01 20:29:03'),
(471, 470, 'Books Sale', 'book', 'books-sale-1', NULL, NULL, 1, 'bookssale', NULL, '#', 1, NULL, NULL, NULL, '2026-07-01 20:25:02', '2026-07-01 20:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `category_subcategory`
--

CREATE TABLE `category_subcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_subcategory`
--

INSERT INTO `category_subcategory` (`id`, `parent_id`, `subcategory_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(3, 17, 75, NULL, NULL),
(4, 17, 76, NULL, NULL),
(15, 50, 23, NULL, NULL),
(20, 18, 23, NULL, NULL),
(28, 18, 25, NULL, NULL),
(29, 4, 27, NULL, NULL),
(30, 52, 27, NULL, NULL),
(31, 18, 27, NULL, NULL),
(32, 30, 27, NULL, NULL),
(33, 58, 28, NULL, NULL),
(34, 51, 28, NULL, NULL),
(35, 18, 28, NULL, NULL),
(36, 48, 28, NULL, NULL),
(37, 52, 114, NULL, NULL),
(39, 18, 114, NULL, NULL),
(41, 58, 115, NULL, NULL),
(42, 52, 115, NULL, NULL),
(43, 18, 115, NULL, NULL),
(44, 49, 115, NULL, NULL),
(45, 51, 116, NULL, NULL),
(46, 4, 116, NULL, NULL),
(47, 18, 116, NULL, NULL),
(49, 56, 117, NULL, NULL),
(50, 21, 117, NULL, NULL),
(52, 18, 117, NULL, NULL),
(53, 51, 118, NULL, NULL),
(54, 56, 118, NULL, NULL),
(55, 21, 118, NULL, NULL),
(57, 18, 118, NULL, NULL),
(58, 58, 119, NULL, NULL),
(59, 4, 119, NULL, NULL),
(60, 50, 119, NULL, NULL),
(61, 18, 119, NULL, NULL),
(62, 5, 119, NULL, NULL),
(63, 51, 120, NULL, NULL),
(64, 21, 120, NULL, NULL),
(65, 52, 120, NULL, NULL),
(66, 18, 120, NULL, NULL),
(67, 49, 120, NULL, NULL),
(68, 51, 121, NULL, NULL),
(69, 4, 121, NULL, NULL),
(70, 52, 121, NULL, NULL),
(71, 50, 121, NULL, NULL),
(72, 18, 121, NULL, NULL),
(73, 5, 121, NULL, NULL),
(74, 51, 122, NULL, NULL),
(75, 52, 122, NULL, NULL),
(76, 18, 122, NULL, NULL),
(77, 49, 122, NULL, NULL),
(78, 51, 123, NULL, NULL),
(79, 4, 123, NULL, NULL),
(80, 52, 123, NULL, NULL),
(81, 18, 123, NULL, NULL),
(82, 51, 125, NULL, NULL),
(83, 57, 125, NULL, NULL),
(84, 53, 125, NULL, NULL),
(85, 18, 125, NULL, NULL),
(86, 30, 125, NULL, NULL),
(87, 58, 134, NULL, NULL),
(88, 51, 134, NULL, NULL),
(89, 18, 134, NULL, NULL),
(90, 48, 134, NULL, NULL),
(91, 30, 134, NULL, NULL),
(92, 57, 135, NULL, NULL),
(93, 53, 135, NULL, NULL),
(94, 18, 135, NULL, NULL),
(95, 5, 135, NULL, NULL),
(96, 30, 135, NULL, NULL),
(97, 58, 136, NULL, NULL),
(98, 51, 136, NULL, NULL),
(99, 4, 136, NULL, NULL),
(100, 52, 136, NULL, NULL),
(101, 18, 136, NULL, NULL),
(102, 30, 136, NULL, NULL),
(103, 58, 151, NULL, NULL),
(104, 51, 151, NULL, NULL),
(105, 21, 151, NULL, NULL),
(106, 52, 151, NULL, NULL),
(107, 18, 151, NULL, NULL),
(108, 48, 151, NULL, NULL),
(109, 30, 151, NULL, NULL),
(110, 1, 23, NULL, NULL),
(111, 1, 25, NULL, NULL),
(112, 1, 27, NULL, NULL),
(113, 1, 28, NULL, NULL),
(114, 1, 114, NULL, NULL),
(115, 1, 115, NULL, NULL),
(116, 1, 116, NULL, NULL),
(117, 1, 118, NULL, NULL),
(118, 1, 121, NULL, NULL),
(119, 1, 123, NULL, NULL),
(120, 1, 134, NULL, NULL),
(121, 1, 151, NULL, NULL),
(122, 17, 77, NULL, NULL),
(123, 17, 78, NULL, NULL),
(124, 17, 79, NULL, NULL),
(125, 17, 80, NULL, NULL),
(126, 17, 81, NULL, NULL),
(127, 17, 82, NULL, NULL),
(128, 17, 83, NULL, NULL),
(129, 17, 84, NULL, NULL),
(130, 17, 85, NULL, NULL),
(131, 17, 86, NULL, NULL),
(132, 17, 87, NULL, NULL),
(133, 17, 88, NULL, NULL),
(134, 17, 91, NULL, NULL),
(135, 17, 94, NULL, NULL),
(136, 17, 130, NULL, NULL),
(137, 17, 131, NULL, NULL),
(138, 17, 137, NULL, NULL),
(139, 17, 138, NULL, NULL),
(140, 17, 139, NULL, NULL),
(141, 17, 140, NULL, NULL),
(142, 1, 141, NULL, NULL),
(143, 17, 142, NULL, NULL),
(144, 17, 143, NULL, NULL),
(145, 17, 144, NULL, NULL),
(146, 1, 145, NULL, NULL),
(147, 17, 146, NULL, NULL),
(148, 17, 147, NULL, NULL),
(149, 17, 148, NULL, NULL),
(150, 17, 149, NULL, NULL),
(151, 17, 150, NULL, NULL),
(152, 17, 154, NULL, NULL),
(153, 17, 155, NULL, NULL),
(154, 17, 156, NULL, NULL),
(155, 17, 157, NULL, NULL),
(156, 17, 158, NULL, NULL),
(157, 17, 159, NULL, NULL),
(158, 18, 36, NULL, NULL),
(159, 18, 161, NULL, NULL),
(161, 17, 165, NULL, NULL),
(162, 17, 162, NULL, NULL),
(163, 17, 163, NULL, NULL),
(164, 17, 164, NULL, NULL),
(165, 17, 166, NULL, NULL),
(166, 17, 167, NULL, NULL),
(167, 17, 168, NULL, NULL),
(168, 17, 169, NULL, NULL),
(169, 17, 171, NULL, NULL),
(170, 17, 172, NULL, NULL),
(171, 17, 173, NULL, NULL),
(172, 17, 174, NULL, NULL),
(173, 17, 175, NULL, NULL),
(174, 17, 176, NULL, NULL),
(175, 17, 177, NULL, NULL),
(176, 17, 179, NULL, NULL),
(177, 17, 180, NULL, NULL),
(178, 17, 181, NULL, NULL),
(179, 17, 182, NULL, NULL),
(180, 17, 183, NULL, NULL),
(181, 17, 184, NULL, NULL),
(182, 17, 185, NULL, NULL),
(183, 17, 186, NULL, NULL),
(184, 18, 187, NULL, NULL),
(185, 21, 188, NULL, NULL),
(186, 18, 188, NULL, NULL),
(187, 54, 188, NULL, NULL),
(188, 48, 188, NULL, NULL),
(189, 19, 189, NULL, NULL),
(190, 19, 190, NULL, NULL),
(191, 19, 191, NULL, NULL),
(192, 17, 192, NULL, NULL),
(193, 17, 193, NULL, NULL),
(194, 17, 194, NULL, NULL),
(195, 17, 195, NULL, NULL),
(196, 17, 196, NULL, NULL),
(197, 17, 197, NULL, NULL),
(198, 17, 198, NULL, NULL),
(199, 17, 199, NULL, NULL),
(200, 17, 200, NULL, NULL),
(201, 17, 201, NULL, NULL),
(202, 17, 202, NULL, NULL),
(203, 17, 203, NULL, NULL),
(204, 17, 204, NULL, NULL),
(205, 17, 205, NULL, NULL),
(206, 17, 206, NULL, NULL),
(207, 17, 207, NULL, NULL),
(208, 17, 208, NULL, NULL),
(209, 17, 209, NULL, NULL),
(210, 19, 210, NULL, NULL),
(211, 17, 211, NULL, NULL),
(212, 17, 212, NULL, NULL),
(213, 17, 213, NULL, NULL),
(214, 17, 214, NULL, NULL),
(215, 17, 215, NULL, NULL),
(216, 50, 216, NULL, NULL),
(217, 21, 24, NULL, NULL),
(218, 21, 124, NULL, NULL),
(219, 21, 126, NULL, NULL),
(220, 21, 127, NULL, NULL),
(221, 21, 128, NULL, NULL),
(222, 21, 217, NULL, NULL),
(223, 17, 222, NULL, NULL),
(224, 17, 221, NULL, NULL),
(225, 17, 220, NULL, NULL),
(226, 17, 219, NULL, NULL),
(227, 17, 218, NULL, NULL),
(228, 30, 25, NULL, NULL),
(230, 17, 224, NULL, NULL),
(231, 17, 225, NULL, NULL),
(232, 17, 226, NULL, NULL),
(233, 22, 227, NULL, NULL),
(236, 17, 74, NULL, NULL),
(237, 17, 229, '2026-04-26 22:51:11', '2026-04-26 22:51:11'),
(238, 17, 230, '2026-04-26 23:15:21', '2026-04-26 23:15:21'),
(239, 17, 231, '2026-04-26 23:17:52', '2026-04-26 23:17:52'),
(241, 228, 72, NULL, NULL),
(242, 228, 83, NULL, NULL),
(243, 228, 148, NULL, NULL),
(244, 228, 224, NULL, NULL),
(245, 17, 232, '2026-04-27 00:42:25', '2026-04-27 00:42:25'),
(246, 228, 232, NULL, NULL),
(247, 17, 93, NULL, NULL),
(248, 228, 93, NULL, NULL),
(249, 17, 233, '2026-04-27 01:06:08', '2026-04-27 01:06:08'),
(250, 228, 233, NULL, NULL),
(251, 17, 235, '2026-04-27 03:20:45', '2026-04-27 03:20:45'),
(252, 17, 236, '2026-04-27 03:21:21', '2026-04-27 03:21:21'),
(253, 17, 237, NULL, NULL),
(254, 19, 238, NULL, NULL),
(255, 17, 239, '2026-04-28 05:48:11', '2026-04-28 05:48:11'),
(256, 17, 240, '2026-04-28 20:57:55', '2026-04-28 20:57:55'),
(257, 17, 241, '2026-04-28 21:01:49', '2026-04-28 21:01:49'),
(258, 17, 242, '2026-04-29 00:50:49', '2026-04-29 00:50:49'),
(259, 17, 243, '2026-04-29 00:53:07', '2026-04-29 00:53:07'),
(260, 17, 244, '2026-04-29 02:05:40', '2026-04-29 02:05:40'),
(261, 17, 245, '2026-04-29 04:12:05', '2026-04-29 04:12:05'),
(262, 17, 246, '2026-04-29 04:51:49', '2026-04-29 04:51:49'),
(263, 17, 247, '2026-04-29 21:01:34', '2026-04-29 21:01:34'),
(264, 17, 248, '2026-04-30 01:30:22', '2026-04-30 01:30:22'),
(265, 17, 249, '2026-04-30 01:43:31', '2026-04-30 01:43:31'),
(266, 17, 250, '2026-04-30 04:38:08', '2026-04-30 04:38:08'),
(267, 17, 251, '2026-04-30 06:07:02', '2026-04-30 06:07:02'),
(268, 17, 252, '2026-04-30 08:13:56', '2026-04-30 08:13:56'),
(269, 17, 253, '2026-04-30 09:40:20', '2026-04-30 09:40:20'),
(270, 17, 254, '2026-04-30 09:45:22', '2026-04-30 09:45:22'),
(271, 17, 255, '2026-04-30 22:22:37', '2026-04-30 22:22:37'),
(272, 17, 256, '2026-04-30 22:24:38', '2026-04-30 22:24:38'),
(273, 17, 257, '2026-05-01 22:29:41', '2026-05-01 22:29:41'),
(274, 17, 258, '2026-05-02 04:43:07', '2026-05-02 04:43:07'),
(275, 17, 259, '2026-05-02 04:44:42', '2026-05-02 04:44:42'),
(276, 17, 260, '2026-05-02 23:51:48', '2026-05-02 23:51:48'),
(277, 17, 261, '2026-05-02 23:53:14', '2026-05-02 23:53:14'),
(278, 17, 262, '2026-05-03 01:59:59', '2026-05-03 01:59:59'),
(279, 18, 263, NULL, NULL),
(280, 18, 264, NULL, NULL),
(281, 30, 54, NULL, NULL),
(282, 54, 117, NULL, NULL),
(283, 54, 263, NULL, NULL),
(284, 54, 264, NULL, NULL),
(285, 17, 265, '2026-05-03 07:59:40', '2026-05-03 07:59:40'),
(286, 17, 266, '2026-05-03 22:30:55', '2026-05-03 22:30:55'),
(287, 17, 267, '2026-05-04 05:20:13', '2026-05-04 05:20:13'),
(288, 17, 268, '2026-05-04 08:04:11', '2026-05-04 08:04:11'),
(289, 17, 269, '2026-05-04 09:58:09', '2026-05-04 09:58:09'),
(290, 17, 270, '2026-05-04 09:58:32', '2026-05-04 09:58:32'),
(291, 17, 271, '2026-05-04 22:41:39', '2026-05-04 22:41:39'),
(292, 17, 272, '2026-05-04 22:42:24', '2026-05-04 22:42:24'),
(293, 17, 273, '2026-05-05 04:08:49', '2026-05-05 04:08:49'),
(294, 17, 274, '2026-05-05 06:09:28', '2026-05-05 06:09:28'),
(295, 17, 275, '2026-05-05 06:47:52', '2026-05-05 06:47:52'),
(296, 17, 276, '2026-05-06 23:40:11', '2026-05-06 23:40:11'),
(297, 17, 277, '2026-05-07 01:06:54', '2026-05-07 01:06:54'),
(298, 17, 278, '2026-05-07 02:14:44', '2026-05-07 02:14:44'),
(299, 17, 279, '2026-05-08 03:56:22', '2026-05-08 03:56:22'),
(300, 17, 280, '2026-05-08 03:58:01', '2026-05-08 03:58:01'),
(301, 17, 281, '2026-05-08 05:19:52', '2026-05-08 05:19:52'),
(302, 17, 282, '2026-05-09 02:30:55', '2026-05-09 02:30:55'),
(303, 17, 283, '2026-05-09 02:31:39', '2026-05-09 02:31:39'),
(304, 17, 284, '2026-05-09 05:30:47', '2026-05-09 05:30:47'),
(305, 17, 285, '2026-05-09 06:18:29', '2026-05-09 06:18:29'),
(306, 17, 286, '2026-05-09 23:07:45', '2026-05-09 23:07:45'),
(307, 17, 287, '2026-05-11 02:30:09', '2026-05-11 02:30:09'),
(308, 17, 288, '2026-05-11 04:58:49', '2026-05-11 04:58:49'),
(309, 17, 289, '2026-05-11 05:10:21', '2026-05-11 05:10:21'),
(310, 17, 290, '2026-05-11 05:12:09', '2026-05-11 05:12:09'),
(311, 17, 291, '2026-05-11 05:12:51', '2026-05-11 05:12:51'),
(312, 17, 292, '2026-05-11 05:13:30', '2026-05-11 05:13:30'),
(313, 17, 293, '2026-05-11 05:14:07', '2026-05-11 05:14:07'),
(314, 17, 294, '2026-05-11 05:14:49', '2026-05-11 05:14:49'),
(315, 17, 295, '2026-05-11 05:15:29', '2026-05-11 05:15:29'),
(316, 17, 296, '2026-05-11 05:16:09', '2026-05-11 05:16:09'),
(317, 17, 297, '2026-05-11 05:16:37', '2026-05-11 05:16:37'),
(318, 17, 298, '2026-05-11 05:17:22', '2026-05-11 05:17:22'),
(319, 17, 299, '2026-05-11 05:18:18', '2026-05-11 05:18:18'),
(320, 17, 300, '2026-05-11 05:19:13', '2026-05-11 05:19:13'),
(321, 17, 301, '2026-05-11 05:19:40', '2026-05-11 05:19:40'),
(322, 17, 302, '2026-05-11 05:20:19', '2026-05-11 05:20:19'),
(323, 17, 303, '2026-05-11 05:21:47', '2026-05-11 05:21:47'),
(324, 17, 304, '2026-05-11 05:22:47', '2026-05-11 05:22:47'),
(325, 17, 305, '2026-05-11 05:23:37', '2026-05-11 05:23:37'),
(326, 17, 306, '2026-05-11 06:53:46', '2026-05-11 06:53:46'),
(327, 17, 307, '2026-05-11 07:21:26', '2026-05-11 07:21:26'),
(328, 18, 308, NULL, NULL),
(329, 18, 309, NULL, NULL),
(330, 18, 310, NULL, NULL),
(331, 18, 311, NULL, NULL),
(332, 18, 312, NULL, NULL),
(333, 18, 313, NULL, NULL),
(334, 18, 314, NULL, NULL),
(335, 18, 315, NULL, NULL),
(336, 18, 316, NULL, NULL),
(337, 17, 317, '2026-05-13 08:29:39', '2026-05-13 08:29:39'),
(338, 17, 318, '2026-05-14 01:31:52', '2026-05-14 01:31:52'),
(339, 17, 319, '2026-05-14 05:11:48', '2026-05-14 05:11:48'),
(340, 17, 320, '2026-05-14 06:21:04', '2026-05-14 06:21:04'),
(341, 17, 321, '2026-05-14 06:21:29', '2026-05-14 06:21:29'),
(342, 17, 322, '2026-05-14 06:22:26', '2026-05-14 06:22:26'),
(343, 17, 323, '2026-05-14 06:22:49', '2026-05-14 06:22:49'),
(344, 17, 324, '2026-05-14 06:23:22', '2026-05-14 06:23:22'),
(345, 17, 325, '2026-05-14 06:23:50', '2026-05-14 06:23:50'),
(346, 17, 326, '2026-05-14 06:24:15', '2026-05-14 06:24:15'),
(347, 17, 327, '2026-05-14 06:24:48', '2026-05-14 06:24:48'),
(348, 17, 328, '2026-05-14 06:25:26', '2026-05-14 06:25:26'),
(349, 17, 329, '2026-05-14 06:25:47', '2026-05-14 06:25:47'),
(350, 17, 330, '2026-05-14 06:26:18', '2026-05-14 06:26:18'),
(351, 17, 331, '2026-05-14 06:27:26', '2026-05-14 06:27:26'),
(352, 17, 332, '2026-05-14 06:27:49', '2026-05-14 06:27:49'),
(353, 17, 333, '2026-05-14 06:28:21', '2026-05-14 06:28:21'),
(354, 17, 334, '2026-05-14 06:28:55', '2026-05-14 06:28:55'),
(355, 17, 335, '2026-05-14 06:29:26', '2026-05-14 06:29:26'),
(356, 17, 336, '2026-05-14 06:29:55', '2026-05-14 06:29:55'),
(357, 17, 337, '2026-05-14 06:30:27', '2026-05-14 06:30:27'),
(358, 17, 338, '2026-05-14 06:30:56', '2026-05-14 06:30:56'),
(359, 17, 339, '2026-05-14 06:31:21', '2026-05-14 06:31:21'),
(360, 17, 340, '2026-05-14 06:31:57', '2026-05-14 06:31:57'),
(361, 17, 341, '2026-05-15 22:52:16', '2026-05-15 22:52:16'),
(362, 17, 342, '2026-05-16 00:08:52', '2026-05-16 00:08:52'),
(363, 48, 311, NULL, NULL),
(364, 4, 313, NULL, NULL),
(365, 49, 314, NULL, NULL),
(366, 4, 315, NULL, NULL),
(367, 52, 315, NULL, NULL),
(368, 18, 343, NULL, NULL),
(369, 18, 344, NULL, NULL),
(370, 4, 343, NULL, NULL),
(371, 52, 343, NULL, NULL),
(372, 50, 343, NULL, NULL),
(373, 4, 345, NULL, NULL),
(374, 52, 345, NULL, NULL),
(375, 18, 345, NULL, NULL),
(376, 4, 346, NULL, NULL),
(377, 52, 346, NULL, NULL),
(378, 50, 346, NULL, NULL),
(379, 1, 346, NULL, NULL),
(380, 18, 346, NULL, NULL),
(381, 1, 161, NULL, NULL),
(382, 1, 187, NULL, NULL),
(383, 1, 188, NULL, NULL),
(384, 1, 263, NULL, NULL),
(385, 1, 264, NULL, NULL),
(386, 1, 308, NULL, NULL),
(387, 1, 311, NULL, NULL),
(388, 1, 310, NULL, NULL),
(389, 1, 309, NULL, NULL),
(390, 1, 312, NULL, NULL),
(391, 1, 313, NULL, NULL),
(392, 1, 314, NULL, NULL),
(393, 1, 315, NULL, NULL),
(394, 1, 316, NULL, NULL),
(395, 1, 343, NULL, NULL),
(396, 1, 345, NULL, NULL),
(397, 56, 347, NULL, NULL),
(398, 52, 347, NULL, NULL),
(399, 1, 347, NULL, NULL),
(400, 18, 347, NULL, NULL),
(401, 21, 348, NULL, NULL),
(403, 17, 349, '2026-05-16 01:38:02', '2026-05-16 01:38:02'),
(404, 17, 350, '2026-05-16 04:34:47', '2026-05-16 04:34:47'),
(405, 17, 351, '2026-05-16 21:58:49', '2026-05-16 21:58:49'),
(409, 17, 352, '2026-05-17 05:52:29', '2026-05-17 05:52:29'),
(410, 17, 353, '2026-05-17 05:52:58', '2026-05-17 05:52:58'),
(411, 17, 354, '2026-05-17 05:53:15', '2026-05-17 05:53:15'),
(412, 17, 355, '2026-05-17 05:53:28', '2026-05-17 05:53:28'),
(414, 18, 357, NULL, NULL),
(415, 18, 358, NULL, NULL),
(416, 4, 357, NULL, NULL),
(417, 4, 358, NULL, NULL),
(418, 52, 358, NULL, NULL),
(419, 1, 357, NULL, NULL),
(420, 1, 358, NULL, NULL),
(421, 17, 359, '2026-05-18 05:47:55', '2026-05-18 05:47:55'),
(422, 19, 109, NULL, NULL),
(423, 17, 360, '2026-05-19 00:03:05', '2026-05-19 00:03:05'),
(424, 17, 361, '2026-05-19 00:08:49', '2026-05-19 00:08:49'),
(425, 17, 362, '2026-05-19 00:18:44', '2026-05-19 00:18:44'),
(426, 17, 363, '2026-05-19 01:44:48', '2026-05-19 01:44:48'),
(427, 19, 364, '2026-05-19 02:26:04', '2026-05-19 02:26:04'),
(428, 19, 365, '2026-05-19 02:26:37', '2026-05-19 02:26:37'),
(429, 19, 366, '2026-05-19 02:31:40', '2026-05-19 02:31:40'),
(430, 19, 367, '2026-05-19 02:31:49', '2026-05-19 02:31:49'),
(431, 19, 368, '2026-05-19 02:31:56', '2026-05-19 02:31:56'),
(432, 19, 369, '2026-05-19 02:32:03', '2026-05-19 02:32:03'),
(433, 19, 370, '2026-05-19 02:32:08', '2026-05-19 02:32:08'),
(434, 19, 371, '2026-05-19 02:32:13', '2026-05-19 02:32:13'),
(435, 19, 372, '2026-05-19 02:32:35', '2026-05-19 02:32:35'),
(436, 19, 373, '2026-05-19 02:32:42', '2026-05-19 02:32:42'),
(437, 19, 374, '2026-05-19 02:32:48', '2026-05-19 02:32:48'),
(438, 19, 375, '2026-05-19 02:32:54', '2026-05-19 02:32:54'),
(439, 19, 376, '2026-05-19 02:33:02', '2026-05-19 02:33:02'),
(440, 19, 377, '2026-05-19 02:34:03', '2026-05-19 02:34:03'),
(441, 19, 378, '2026-05-19 02:34:09', '2026-05-19 02:34:09'),
(442, 19, 379, '2026-05-19 02:34:16', '2026-05-19 02:34:16'),
(443, 19, 380, '2026-05-19 02:34:22', '2026-05-19 02:34:22'),
(444, 19, 381, '2026-05-19 02:34:37', '2026-05-19 02:34:37'),
(445, 19, 382, '2026-05-19 02:34:44', '2026-05-19 02:34:44'),
(446, 19, 383, '2026-05-19 02:34:49', '2026-05-19 02:34:49'),
(447, 19, 384, '2026-05-19 02:34:55', '2026-05-19 02:34:55'),
(448, 19, 385, '2026-05-19 02:35:03', '2026-05-19 02:35:03'),
(449, 19, 386, '2026-05-19 02:35:11', '2026-05-19 02:35:11'),
(450, 19, 387, '2026-05-19 02:35:19', '2026-05-19 02:35:19'),
(451, 19, 388, '2026-05-19 02:36:18', '2026-05-19 02:36:18'),
(452, 19, 389, '2026-05-19 02:36:26', '2026-05-19 02:36:26'),
(453, 19, 390, '2026-05-19 02:36:33', '2026-05-19 02:36:33'),
(454, 19, 391, '2026-05-19 02:36:38', '2026-05-19 02:36:38'),
(455, 19, 392, '2026-05-19 02:36:44', '2026-05-19 02:36:44'),
(456, 19, 393, '2026-05-19 02:36:49', '2026-05-19 02:36:49'),
(457, 19, 394, '2026-05-19 02:36:59', '2026-05-19 02:36:59'),
(458, 19, 395, '2026-05-19 02:37:05', '2026-05-19 02:37:05'),
(459, 19, 396, '2026-05-19 02:37:11', '2026-05-19 02:37:11'),
(460, 19, 397, '2026-05-19 02:37:29', '2026-05-19 02:37:29'),
(461, 19, 110, NULL, NULL),
(462, 19, 95, NULL, NULL),
(463, 17, 398, '2026-05-19 05:44:30', '2026-05-19 05:44:30'),
(464, 19, 399, '2026-05-19 05:44:55', '2026-05-19 05:44:55'),
(465, 17, 400, '2026-05-19 21:48:52', '2026-05-19 21:48:52'),
(466, 19, 401, '2026-05-19 21:49:10', '2026-05-19 21:49:10'),
(467, 20, 402, NULL, NULL),
(468, 17, 403, '2026-05-20 01:21:48', '2026-05-20 01:21:48'),
(469, 19, 404, '2026-05-20 01:22:15', '2026-05-20 01:22:15'),
(470, 17, 405, '2026-05-20 01:50:51', '2026-05-20 01:50:51'),
(471, 19, 406, '2026-05-20 03:06:04', '2026-05-20 03:06:04'),
(472, 19, 407, '2026-05-20 03:57:00', '2026-05-20 03:57:00'),
(473, 17, 408, '2026-05-20 06:47:07', '2026-05-20 06:47:07'),
(474, 17, 409, '2026-05-21 01:44:11', '2026-05-21 01:44:11'),
(475, 19, 410, '2026-05-21 01:44:52', '2026-05-21 01:44:52'),
(476, 17, 411, '2026-05-21 05:57:03', '2026-05-21 05:57:03'),
(477, 17, 412, '2026-05-21 08:38:48', '2026-05-21 08:38:48'),
(478, 19, 413, '2026-05-21 08:39:06', '2026-05-21 08:39:06'),
(479, 17, 414, '2026-05-31 00:44:42', '2026-05-31 00:44:42'),
(480, 19, 415, '2026-05-31 00:45:03', '2026-05-31 00:45:03'),
(481, 17, 416, '2026-05-31 01:44:38', '2026-05-31 01:44:38'),
(482, 17, 417, '2026-05-31 05:09:17', '2026-05-31 05:09:17'),
(483, 19, 418, '2026-05-31 05:09:45', '2026-05-31 05:09:45'),
(484, 17, 419, '2026-05-31 07:05:58', '2026-05-31 07:05:58'),
(485, 19, 420, '2026-05-31 07:06:17', '2026-05-31 07:06:17'),
(486, 17, 421, '2026-06-01 02:28:00', '2026-06-01 02:28:00'),
(487, 19, 422, '2026-06-01 02:28:20', '2026-06-01 02:28:20'),
(488, 17, 423, '2026-06-01 04:25:14', '2026-06-01 04:25:14'),
(489, 19, 431, '2026-06-13 05:21:22', '2026-06-13 05:21:22'),
(490, 425, 433, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `region_id` bigint(20) UNSIGNED DEFAULT NULL,
  `area_id` bigint(20) UNSIGNED DEFAULT NULL,
  `territory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `credit_limit` decimal(16,0) DEFAULT NULL,
  `bin_no` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `coa_id`, `region_id`, `area_id`, `territory_id`, `user_id`, `code`, `name`, `contact_person`, `phone`, `email`, `address`, `credit_limit`, `bin_no`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 127, 1, 1, 1, NULL, NULL, 'Apon Library', 'Deen Mohammad', NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 00:36:24', '2025-10-25 00:36:24'),
(4, 128, 9, 14, 1, NULL, NULL, 'Saiful Shaheb', NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, NULL, NULL, NULL, '2025-10-26 00:26:48', '2025-11-01 02:01:21'),
(5, 129, 9, 14, 1, NULL, NULL, 'Ali Ahammad Bahar', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:28:32', '2025-11-01 02:01:18'),
(6, 130, 9, 14, 1, NULL, NULL, 'Tso Mostafa', NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, NULL, NULL, NULL, '2025-10-26 00:29:20', '2025-11-01 02:01:17'),
(7, 131, 5, 15, 2, NULL, NULL, 'Moonlight Library', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-26 00:30:53', '2025-11-01 02:01:15'),
(9, 141, 7, 16, 4, NULL, NULL, 'Tso Anamul', NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, NULL, NULL, NULL, '2025-10-26 03:04:53', '2025-11-01 02:01:13'),
(10, 142, 9, 14, 1, NULL, NULL, 'Tso Bahar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, NULL, NULL, NULL, '2025-10-26 03:13:58', '2025-11-01 02:01:12'),
(11, 143, 1, 47, 49, NULL, NULL, 'কারেন্ট লাইব্রেরী মালিবাগ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-29 23:19:00', '2025-11-01 01:09:24'),
(12, 144, 1, 1, 44, NULL, NULL, 'ইউনিটি বুক সাপ্লাই নীলক্ষেত (M)', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-29 23:23:27', '2025-11-01 01:06:57'),
(13, 145, 1, 23, 47, NULL, NULL, 'গাজীপুর, মাওনা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 01:12:16', '2025-11-01 01:12:07', '2025-11-01 01:12:16'),
(14, 146, 1, 23, 47, NULL, NULL, 'গাজীপুর, মাওনা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:12:07', '2025-11-01 01:12:07'),
(15, 147, 1, 20, 32, NULL, NULL, 'সাভার', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:12:54', '2025-11-01 01:12:54'),
(16, 148, 2, 24, 28, NULL, NULL, 'পিরোজপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:24:22', '2025-11-01 01:24:22'),
(17, 149, 2, 4, 45, NULL, NULL, 'পটুয়াখালী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:24:55', '2025-11-01 01:24:55'),
(18, 150, 2, 25, 46, NULL, NULL, 'বরগুনা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:30:07', '2025-11-01 01:30:07'),
(19, 151, 3, 26, 26, NULL, NULL, 'যশোর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:32:05', '2025-11-01 01:32:05'),
(20, 152, 3, 27, 25, NULL, NULL, 'নোয়াপাড়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:32:49', '2025-11-01 01:32:49'),
(21, 153, 4, 6, 40, NULL, NULL, 'শেরপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:33:32', '2025-11-01 01:33:32'),
(22, 154, 4, 28, 24, NULL, NULL, 'জামালপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:34:07', '2025-11-01 01:34:07'),
(23, 155, 4, 29, 23, NULL, NULL, 'নেত্রকোনা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:34:30', '2025-11-01 01:34:30'),
(24, 156, 4, 30, 22, NULL, NULL, 'টাঙ্গাইল', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:35:09', '2025-11-01 01:35:09'),
(25, 157, 4, 31, 21, NULL, NULL, 'ময়মনসিংহ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:36:08', '2025-11-01 01:36:08'),
(26, 158, 7, 35, 17, NULL, NULL, 'চাঁদপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:36:45', '2025-11-01 01:36:45'),
(27, 159, 7, 32, 19, NULL, NULL, 'কুমিল্লা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:37:12', '2025-11-01 01:37:12'),
(28, 160, 7, 33, 20, NULL, NULL, 'চট্টগ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:37:41', '2025-11-01 01:37:41'),
(29, 161, 7, 34, 18, NULL, NULL, 'ফেনী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:38:15', '2025-11-01 01:38:15'),
(30, 162, 8, 36, 16, NULL, NULL, 'সিলেট', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:39:40', '2025-11-01 01:39:40'),
(31, 163, 8, 37, 15, NULL, NULL, 'হবিগঞ্জ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:40:24', '2025-11-01 01:40:24'),
(32, 164, 8, 38, 14, NULL, NULL, 'মৌলভীবাজার', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:44:44', '2025-11-01 01:44:44'),
(33, 165, 8, 39, 13, NULL, NULL, 'সুনামগঞ্জ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:45:35', '2025-11-01 01:45:35'),
(34, 166, 2, 48, 50, NULL, NULL, 'ঝালকাঠি', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:46:31', '2025-11-01 01:46:31'),
(35, 167, 2, 2, 48, NULL, NULL, 'ভোলা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:47:19', '2025-11-01 01:47:19'),
(36, 168, 1, 1, 44, NULL, NULL, 'নীলক্ষেত', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:47:43', '2025-11-01 01:47:43'),
(37, 169, 1, 11, 36, NULL, NULL, 'নরসিংদী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:48:14', '2025-11-01 01:48:14'),
(38, 170, 1, 22, 29, NULL, NULL, 'মাধবদী, নরসিংদী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:49:38', '2025-11-01 01:49:38'),
(39, 171, 1, 21, 30, NULL, NULL, 'মুন্সীগঞ্জ,', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:50:07', '2025-11-01 01:50:07'),
(40, 172, 1, 49, 51, NULL, NULL, 'নারায়ণগঞ্জ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:50:46', '2025-11-01 01:50:46'),
(41, 173, 5, 40, 12, NULL, NULL, 'সিরাজগঞ্জ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:52:22', '2025-11-01 01:52:22'),
(42, 174, 5, 41, 11, NULL, NULL, 'পাবনা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:52:57', '2025-11-01 01:52:57'),
(43, 175, 5, 42, 10, NULL, NULL, 'রাজশাহী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:53:28', '2025-11-01 01:53:28'),
(44, 176, 5, 3, 9, NULL, NULL, 'বগুড়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:54:07', '2025-11-01 01:54:07'),
(45, 177, 5, 13, 33, NULL, NULL, 'ঈশ্বরদী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:55:02', '2025-11-01 01:55:02'),
(46, 178, 5, 12, 35, NULL, NULL, 'চাঁপাইনবাবগঞ্জ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:55:34', '2025-11-01 01:55:34'),
(47, 179, 5, 12, 35, NULL, NULL, 'চাঁপাইনবাবগঞ্জ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 01:55:58', '2025-11-01 01:55:34', '2025-11-01 01:55:58'),
(48, 180, 5, 5, 41, NULL, NULL, 'নওগাঁ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:56:49', '2025-11-01 01:56:49'),
(49, 181, 6, 44, 8, NULL, NULL, 'রংপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:57:25', '2025-11-01 01:57:25'),
(50, 182, 6, 45, 5, NULL, NULL, 'পঞ্চগড়', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:57:51', '2025-11-01 01:57:51'),
(51, 183, 6, 9, 38, NULL, NULL, 'দিনাজপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:58:55', '2025-11-01 01:58:55'),
(52, 184, 6, 8, 7, NULL, NULL, 'গাইবান্ধা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:59:28', '2025-11-01 01:59:28'),
(53, 185, 6, 10, 37, NULL, NULL, 'লালমনিরহাট', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:59:46', '2025-11-01 01:59:46'),
(54, 186, 3, 7, 39, NULL, NULL, 'কুষ্টিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 02:00:34', '2025-11-01 02:00:34'),
(55, 187, 3, 46, 52, NULL, NULL, 'সোহাগ বুক ডিপো', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 02:43:36', '2025-11-02 02:43:36'),
(56, 188, 3, 46, 52, NULL, NULL, 'খুলনা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 03:01:26', '2025-11-02 03:01:26'),
(57, 189, 2, 50, 53, NULL, NULL, 'বরিশাল', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 03:06:19', '2025-11-02 03:06:19'),
(58, 228, 3, 46, 52, NULL, NULL, 'ঝিনাইদাহ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-12-21 21:52:04', '2025-12-21 21:52:04'),
(59, 229, 1, 47, 49, NULL, NULL, 'মীরপুর (১০)', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-12-21 21:54:34', '2025-12-21 21:54:34'),
(60, 230, 1, 11, 36, NULL, NULL, 'মীরপুর (2)', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-12-21 21:54:52', '2025-12-21 21:54:52'),
(61, 231, 1, 11, 36, NULL, NULL, 'ফার্মগেট', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-12-21 21:55:10', '2025-12-21 21:55:10'),
(62, 232, 1, 1, 44, NULL, NULL, 'নেক্সাস', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-12-23 21:46:21', '2025-12-23 21:46:21'),
(63, 269, 1, 51, 54, NULL, NULL, 'রকমারি', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-01-24 05:23:13', '2026-01-24 05:23:13'),
(64, 270, 5, 3, 9, NULL, NULL, 'নাটোর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-01-30 09:35:18', '2026-01-30 09:35:18'),
(65, 271, 4, 31, 21, NULL, NULL, 'পপুলার লাইব্রেরী ক্তাগাছা, ময়মনসিংহ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-01-30 09:52:50', '2026-01-30 09:52:50'),
(66, 272, 4, 31, 21, NULL, NULL, 'আরাফাত লাইব্রেরী ক্তাগাছা, ময়মনসিংহ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-01-30 09:53:11', '2026-01-30 09:53:11'),
(67, 273, 6, 45, 5, NULL, NULL, 'ঠাকুর গাঁও', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-02-04 05:38:55', '2026-02-04 05:38:55'),
(68, 277, 2, 48, 50, 9, 'cde111', 'Aira', NULL, '22222222', 'aira@gmail.com', 'Basabo Dhaka', NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-03-03 22:43:38', '2026-03-03 22:43:38'),
(69, 278, 2, 48, 50, 8, NULL, 'Mitul', NULL, '44444444', 'mitul@gmail.com', NULL, NULL, NULL, 1, 8, 1, NULL, NULL, '2026-03-03 22:57:35', '2026-03-03 22:59:46'),
(70, 279, 7, 32, 19, 1, NULL, 'Admin', NULL, '33333333333', 'wali@gmail.com', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-03-03 23:04:39', '2026-03-03 23:04:39'),
(71, 280, 7, 16, 4, 3, 'code3', 'warid', NULL, '333333333333', 'warid@gmail.com', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, '2026-03-04 00:34:21', '2026-03-04 00:34:42'),
(72, 293, 2, 4, 45, 16, NULL, 'Mr. Arif', NULL, '01921588567', '01921588567@email.com', 'asdasdasa', NULL, NULL, 1, 16, 1, NULL, NULL, '2026-03-11 01:07:31', '2026-03-12 00:49:14'),
(73, 294, NULL, NULL, NULL, 22, NULL, 'Md. Mahbubur Rahman Milon', NULL, '01572704074', '01572704074@email.com', 'Padma Toll Office janjira', NULL, NULL, 1, 22, NULL, NULL, NULL, '2026-04-13 01:21:35', '2026-04-13 01:21:35'),
(74, 295, NULL, NULL, NULL, 24, NULL, 'Ashraf Fahim', NULL, '01739089738', '01739089738@email.com', 'kanchpur uttarpara, narayangonj', NULL, NULL, 1, 24, NULL, NULL, NULL, '2026-04-30 03:49:10', '2026-04-30 03:49:10'),
(75, 297, 5, 13, 33, 26, NULL, 'Jony', NULL, '01303740757', NULL, 'চলন বিল গেট, সিংড়া নাটোর', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '2026-05-21 02:10:28'),
(76, 298, NULL, NULL, NULL, 27, NULL, 'Hossain', NULL, '0123456789', '0123456789@email.com', NULL, NULL, NULL, 1, 27, NULL, NULL, NULL, '2026-05-21 04:39:49', '2026-05-21 04:39:49'),
(77, 299, NULL, NULL, NULL, 34, NULL, 'Wasi', NULL, '01575020231', '01575020231@email.com', 'H#15, R#05, Block-D, Sector-1', NULL, NULL, 1, 34, NULL, NULL, NULL, '2026-06-02 09:45:34', '2026-06-02 09:45:34'),
(78, 300, NULL, NULL, NULL, 36, NULL, 'zahan', NULL, '01711374487', '01711374487@email.com', '3, arambag', NULL, NULL, 1, 36, NULL, NULL, NULL, '2026-06-15 17:08:11', '2026-06-15 17:08:11'),
(79, 301, NULL, NULL, NULL, 36, NULL, 'zahan', NULL, '01712162412', '01712162412@email.com', 'Ela Didar house, opposite to Ideal college gate, Ground floor & 3, Arambag, Motijheel, Dhak', NULL, NULL, 1, 36, NULL, NULL, NULL, '2026-06-15 17:09:59', '2026-06-15 17:09:59'),
(80, 302, NULL, NULL, NULL, 37, NULL, 'WWW', NULL, '01921588765', '01921588765@email.com', 'sASa', NULL, NULL, 1, 37, NULL, NULL, NULL, '2026-06-18 05:52:35', '2026-06-18 05:52:35'),
(82, 304, NULL, NULL, NULL, 40, NULL, 'sAS', NULL, '01575020235', '01575020235@email.com', NULL, NULL, NULL, 1, 40, NULL, NULL, NULL, '2026-06-18 18:34:38', '2026-06-18 18:34:38'),
(83, 305, NULL, NULL, NULL, 41, NULL, 'Walid', NULL, '01575020280', '01575020280@email.com', 'H#15, R#05, Block-D, Sector-1', NULL, NULL, 1, 41, NULL, NULL, NULL, '2026-06-19 08:09:46', '2026-06-19 08:09:46'),
(84, 306, NULL, NULL, NULL, 42, NULL, 'Foysal Ahmed Rifat', NULL, '01602240533', '01602240533@email.com', 'Faridpur, Boalmari', NULL, NULL, 1, 42, NULL, NULL, NULL, '2026-06-19 11:01:40', '2026-06-19 11:01:40'),
(85, 307, NULL, NULL, NULL, 43, NULL, 'jjj', NULL, '01721134657', '01721134657@email.com', NULL, NULL, NULL, 1, 43, NULL, NULL, NULL, '2026-06-19 20:13:25', '2026-06-19 20:13:25'),
(86, 308, NULL, NULL, NULL, 44, NULL, 'xss', NULL, '01721134657', '01721134657@email.com', NULL, NULL, NULL, 1, 44, NULL, NULL, NULL, '2026-06-19 20:18:07', '2026-06-19 20:18:07'),
(87, 309, NULL, NULL, NULL, 45, NULL, 'WaliuLLah', NULL, '01921588567', '01921588567@email.com', NULL, NULL, NULL, 1, 45, NULL, NULL, NULL, '2026-06-19 20:34:37', '2026-06-19 20:34:37'),
(89, 311, NULL, NULL, NULL, 47, NULL, 'z', NULL, '01921588567', '01921588567@email.com', NULL, NULL, NULL, 1, 47, NULL, NULL, NULL, '2026-06-19 20:42:59', '2026-06-19 20:42:59'),
(90, 312, NULL, NULL, NULL, 49, NULL, 'AsA', NULL, '01921588567', '01921588567@email.com', NULL, NULL, NULL, 1, 49, NULL, NULL, NULL, '2026-06-19 20:45:12', '2026-06-19 20:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `coas`
--

CREATE TABLE `coas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `head_code` bigint(20) NOT NULL,
  `head_name` varchar(255) NOT NULL,
  `transaction` tinyint(1) NOT NULL DEFAULT 0,
  `general` tinyint(1) NOT NULL DEFAULT 0,
  `head_type` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `updateable` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coas`
--

INSERT INTO `coas` (`id`, `parent_id`, `head_code`, `head_name`, `transaction`, `general`, `head_type`, `status`, `updateable`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Assets', 0, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 12:32:17', '2025-06-17 12:32:17'),
(2, NULL, 2, 'Liabilities', 0, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 12:32:17', '2025-06-17 12:32:17'),
(3, NULL, 3, 'Income', 0, 0, 'I', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 12:34:45', '2025-06-17 12:34:45'),
(4, NULL, 4, 'Expense', 0, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 12:34:45', '2025-06-17 12:34:45'),
(5, 1, 101, 'Current Asset', 0, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:41:07', '2025-06-17 06:41:07'),
(6, 1, 102, 'Fixed Asset', 0, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:48:44', '2025-06-17 06:48:44'),
(7, 5, 10101, 'Cash Receivable', 0, 1, 'A', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:48:58', '2025-06-17 06:48:58'),
(8, 5, 10102, 'Cash In Hand', 0, 1, 'A', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:49:12', '2025-06-17 06:49:12'),
(9, 5, 10103, 'Cash at Bank', 0, 1, 'A', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:49:30', '2025-06-17 06:49:30'),
(10, 2, 201, 'Cash Payable', 0, 1, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:50:27', '2025-06-17 06:50:27'),
(11, 2, 202, 'Investor Capital', 0, 1, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:50:42', '2025-06-17 06:50:42'),
(13, 8, 1010201, 'Cash at Fattah', 1, 0, 'A', 1, 1, 1, NULL, NULL, NULL, '2025-06-18 00:10:11', '2025-06-18 00:10:11'),
(14, 9, 1010301, 'UCB Bank (33217)', 1, 0, 'A', 1, 1, 1, NULL, NULL, NULL, '2025-06-18 00:10:23', '2025-06-18 00:10:23'),
(26, 3, 301, 'Project Income', 0, 1, 'I', 1, 0, 1, NULL, NULL, NULL, '2025-06-22 22:49:53', '2025-06-22 22:49:53'),
(27, 4, 401, 'Project Expense', 0, 1, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-06-22 22:50:06', '2025-06-22 22:50:06'),
(42, 4, 402, 'Investor Profit', 0, 1, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-07-01 21:56:15', '2025-07-01 21:56:15'),
(62, 3, 302, 'Direct Income', 0, 1, 'I', 1, 1, 1, NULL, NULL, NULL, '2025-07-20 06:35:32', '2025-07-20 06:35:32'),
(63, 62, 30201, 'Product Sales', 1, 0, 'I', 1, 1, 1, NULL, NULL, NULL, '2025-07-20 06:35:37', '2025-07-20 06:35:37'),
(64, 62, 30202, 'Sales Return', 1, 0, 'I', 1, 1, 1, NULL, NULL, NULL, '2025-07-21 07:01:16', '2025-07-21 07:01:16'),
(70, 11, 20202, 'Faysal Ovi', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-07-26 05:54:59', '2025-07-26 05:54:59'),
(71, 42, 40202, 'Faysal Ovi - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-07-26 05:54:59', '2025-07-26 05:54:59'),
(72, 11, 20203, 'SK Turag', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-07-26 05:56:27', '2025-07-26 05:56:27'),
(73, 42, 40203, 'SK Turag - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-07-26 05:56:27', '2025-07-26 05:56:27'),
(74, 11, 20204, 'Ibrahim Kholil', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-08-03 06:26:44', '2025-08-03 06:26:44'),
(75, 42, 40204, 'Ibrahim Kholil - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-08-03 06:26:44', '2025-08-03 06:26:44'),
(77, 11, 20205, 'Rana Ibrahim', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-08-04 00:29:56', '2025-08-04 00:29:56'),
(78, 42, 40205, 'Rana Ibrahim - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-08-04 00:29:56', '2025-08-04 00:29:56'),
(79, 11, 20206, 'Kartik Biswas', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-08-13 02:44:17', '2025-08-13 02:44:17'),
(80, 42, 40206, 'Kartik Biswas - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-08-13 02:44:17', '2025-08-13 02:44:17'),
(81, 2, 203, 'Share Equity', 0, 1, 'L', 1, 1, 1, 1, NULL, NULL, '2025-08-31 21:49:37', '2025-08-31 21:49:40'),
(82, 81, 20301, 'Business Box', 1, 0, 'L', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 21:49:55', '2025-08-31 21:49:55'),
(83, 11, 20207, 'Mamunur Rashid', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-08-31 22:36:09', '2025-08-31 22:36:09'),
(84, 42, 40207, 'Mamunur Rashid - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-08-31 22:36:09', '2025-08-31 22:36:09'),
(85, 4, 403, 'Operational Exp.', 0, 1, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 22:58:16', '2025-08-31 22:58:16'),
(86, 4, 404, 'Documentation Exp.', 0, 1, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 22:59:00', '2025-08-31 22:59:00'),
(87, 86, 40401, 'Agreement Prepare & Notery', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 22:59:10', '2025-08-31 22:59:10'),
(89, 6, 10201, 'Electronics & Devices', 0, 1, 'A', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 22:59:50', '2025-08-31 22:59:50'),
(90, 4, 405, 'Salary & Remunaration', 0, 1, 'E', 1, 1, 1, 1, NULL, NULL, '2025-08-31 23:00:06', '2025-08-31 23:00:17'),
(91, 89, 1020101, 'Computer, Laptop, Printer', 1, 0, 'A', 1, 1, 1, 1, NULL, NULL, '2025-08-31 23:00:46', '2025-08-31 23:01:09'),
(92, 27, 40101, 'Book Publication', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 23:08:37', '2025-08-31 23:08:37'),
(93, 85, 40301, 'Stationary Equipment', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 23:19:14', '2025-08-31 23:19:14'),
(94, 85, 40302, 'Books load unload', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 23:20:30', '2025-08-31 23:20:30'),
(95, 85, 40303, 'Office Rent', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 23:23:35', '2025-08-31 23:23:35'),
(96, 11, 20208, 'Abdullah Faysal', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-09-08 03:55:39', '2025-09-08 03:55:39'),
(97, 42, 40208, 'Abdullah Faysal - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-09-08 03:55:39', '2025-09-08 03:55:39'),
(98, 8, 1010202, 'Cash at CEO Sir', 1, 0, 'A', 1, 1, 1, NULL, NULL, NULL, '2025-09-13 23:36:20', '2025-09-13 23:36:20'),
(99, 89, 1020102, 'Mobile Purchase', 1, 0, 'A', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 04:29:43', '2025-09-18 04:29:43'),
(100, 85, 40304, 'Book Purchase', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 04:41:25', '2025-09-18 04:41:25'),
(101, 85, 40305, 'Food Expense', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 04:58:36', '2025-09-18 04:58:36'),
(102, 85, 40306, 'Compose Expense', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:02:35', '2025-09-18 05:02:35'),
(103, 85, 40307, 'Writer Expnese', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:02:50', '2025-09-18 05:02:50'),
(104, 85, 40308, 'Proof Expense', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:03:04', '2025-09-18 05:03:04'),
(105, 85, 40309, 'Conveyance Exp.', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:12:55', '2025-09-18 05:12:55'),
(106, 85, 40310, 'Mobile Recharge', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:13:20', '2025-09-18 05:13:20'),
(107, 85, 40311, 'Bkash Charge', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:13:32', '2025-09-18 05:13:32'),
(108, 85, 40312, 'Miscellaneous Expenses', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:14:31', '2025-09-18 05:14:31'),
(109, 85, 40313, 'Keyboard Purchase', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:27:32', '2025-09-18 05:27:32'),
(110, 85, 40314, 'Packaging Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-19 23:33:12', '2025-09-19 23:33:12'),
(111, 85, 40315, 'Computer Servicing', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 00:44:36', '2025-09-20 00:44:36'),
(112, 85, 40316, 'Print Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 00:48:44', '2025-09-20 00:48:44'),
(113, 90, 40501, 'zakir saheb salary', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 00:54:26', '2025-09-20 00:54:26'),
(114, 85, 40317, 'Accessories Purchase', 1, 0, 'E', 1, 1, 10, 10, NULL, NULL, '2025-09-20 01:28:52', '2025-09-20 01:29:08'),
(115, 85, 40318, 'Make up Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 01:40:00', '2025-09-20 01:40:00'),
(116, 85, 40319, 'Pen Drive', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 01:59:02', '2025-09-20 01:59:02'),
(117, 85, 40320, 'Book Cover Designer', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 03:01:06', '2025-09-20 03:01:06'),
(118, 85, 40321, 'Shaju salary', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 03:10:43', '2025-09-20 03:10:43'),
(119, 85, 40322, 'Jahangir salary', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-22 02:12:05', '2025-09-22 02:12:05'),
(120, 85, 40323, 'Telephone and Internet', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-22 02:38:24', '2025-09-22 02:38:24'),
(121, 85, 40324, 'courier', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-22 04:30:25', '2025-09-22 04:30:25'),
(122, 85, 40325, 'TSO Mostofa', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-22 04:46:23', '2025-09-22 04:46:23'),
(123, 85, 40326, 'TSO Ali Ahmed', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-22 04:57:01', '2025-09-22 04:57:01'),
(124, 5, 10104, 'Loan/Advance', 0, 1, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-10-13 00:04:24', '2025-10-13 00:04:24'),
(125, 124, 1010401, 'Loan Zakir Saheb', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-10-13 00:04:51', '2025-10-13 00:04:51'),
(126, 124, 1010402, 'Loan Delowar Sir', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-10-13 00:05:04', '2025-10-13 00:05:04'),
(127, 7, 1010102, 'Apon Library', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-10-25 00:36:24', '2025-10-25 00:36:24'),
(128, 7, 1010103, 'Saiful Shaheb', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-10-26 00:26:48', '2025-10-26 00:26:48'),
(129, 7, 1010104, 'Ali Ahammad Bahar', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-10-26 00:28:32', '2025-10-26 00:28:32'),
(130, 7, 1010105, 'Tso Mostafa', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-10-26 00:29:20', '2025-10-26 00:29:20'),
(131, 7, 1010106, 'Moonlight Library', 1, 0, 'A', 1, 0, 10, 10, NULL, NULL, '2025-10-26 00:30:53', '2025-10-26 00:31:59'),
(141, 7, 1010107, 'Tso Anamul', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-10-26 03:04:53', '2025-10-26 03:04:53'),
(142, 7, 1010108, 'Tso Bahar', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-10-26 03:13:58', '2025-10-26 03:13:58'),
(143, 7, 1010109, 'কারেন্ট লাইব্রেরী মালিবাগ', 1, 0, 'A', 1, 0, 10, 10, NULL, NULL, '2025-10-29 23:19:00', '2025-11-01 01:09:24'),
(144, 7, 1010110, 'ইউনিটি বুক সাপ্লাই নীলক্ষেত (M)', 1, 0, 'A', 1, 0, 10, 10, NULL, NULL, '2025-10-29 23:23:27', '2025-11-01 01:06:57'),
(145, 7, 1010111, 'গাজীপুর, মাওনা', 1, 0, 'A', 1, 0, 10, NULL, 10, '2025-11-01 01:12:16', '2025-11-01 01:12:07', '2025-11-01 01:12:16'),
(146, 7, 1010112, 'গাজীপুর, মাওনা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:12:07', '2025-11-01 01:12:07'),
(147, 7, 1010113, 'সাভার', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:12:54', '2025-11-01 01:12:54'),
(148, 7, 1010114, 'পিরোজপুর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:24:22', '2025-11-01 01:24:22'),
(149, 7, 1010115, 'পটুয়াখালী', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:24:55', '2025-11-01 01:24:55'),
(150, 7, 1010116, 'বরগুনা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:30:07', '2025-11-01 01:30:07'),
(151, 7, 1010117, 'যশোর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:32:05', '2025-11-01 01:32:05'),
(152, 7, 1010118, 'নোয়াপাড়া', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:32:49', '2025-11-01 01:32:49'),
(153, 7, 1010119, 'শেরপুর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:33:32', '2025-11-01 01:33:32'),
(154, 7, 1010120, 'জামালপুর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:34:07', '2025-11-01 01:34:07'),
(155, 7, 1010121, 'নেত্রকোনা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:34:30', '2025-11-01 01:34:30'),
(156, 7, 1010122, 'টাঙ্গাইল', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:35:09', '2025-11-01 01:35:09'),
(157, 7, 1010123, 'ময়মনসিংহ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:36:08', '2025-11-01 01:36:08'),
(158, 7, 1010124, 'চাঁদপুর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:36:45', '2025-11-01 01:36:45'),
(159, 7, 1010125, 'কুমিল্লা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:37:12', '2025-11-01 01:37:12'),
(160, 7, 1010126, 'চট্টগ্রাম', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:37:41', '2025-11-01 01:37:41'),
(161, 7, 1010127, 'ফেনী', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:38:15', '2025-11-01 01:38:15'),
(162, 7, 1010128, 'সিলেট', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:39:40', '2025-11-01 01:39:40'),
(163, 7, 1010129, 'হবিগঞ্জ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:40:24', '2025-11-01 01:40:24'),
(164, 7, 1010130, 'মৌলভীবাজার', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:44:44', '2025-11-01 01:44:44'),
(165, 7, 1010131, 'সুনামগঞ্জ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:45:35', '2025-11-01 01:45:35'),
(166, 7, 1010132, 'ঝালকাঠি', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:46:31', '2025-11-01 01:46:31'),
(167, 7, 1010133, 'ভোলা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:47:19', '2025-11-01 01:47:19'),
(168, 7, 1010134, 'নীলক্ষেত', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:47:43', '2025-11-01 01:47:43'),
(169, 7, 1010135, 'নরসিংদী', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:48:14', '2025-11-01 01:48:14'),
(170, 7, 1010136, 'মাধবদী, নরসিংদী', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:49:38', '2025-11-01 01:49:38'),
(171, 7, 1010137, 'মুন্সীগঞ্জ,', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:50:07', '2025-11-01 01:50:07'),
(172, 7, 1010138, 'নারায়ণগঞ্জ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:50:46', '2025-11-01 01:50:46'),
(173, 7, 1010139, 'সিরাজগঞ্জ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:52:22', '2025-11-01 01:52:22'),
(174, 7, 1010140, 'পাবনা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:52:57', '2025-11-01 01:52:57'),
(175, 7, 1010141, 'রাজশাহী', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:53:28', '2025-11-01 01:53:28'),
(176, 7, 1010142, 'বগুড়া', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:54:07', '2025-11-01 01:54:07'),
(177, 7, 1010143, 'ঈশ্বরদী', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:55:02', '2025-11-01 01:55:02'),
(178, 7, 1010144, 'চাঁপাইনবাবগঞ্জ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:55:34', '2025-11-01 01:55:34'),
(179, 7, 1010145, 'চাঁপাইনবাবগঞ্জ', 1, 0, 'A', 1, 0, 10, NULL, 10, '2025-11-01 01:55:58', '2025-11-01 01:55:34', '2025-11-01 01:55:58'),
(180, 7, 1010146, 'নওগাঁ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:56:49', '2025-11-01 01:56:49'),
(181, 7, 1010147, 'রংপুর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:57:25', '2025-11-01 01:57:25'),
(182, 7, 1010148, 'পঞ্চগড়', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:57:51', '2025-11-01 01:57:51'),
(183, 7, 1010149, 'দিনাজপুর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:58:55', '2025-11-01 01:58:55'),
(184, 7, 1010150, 'গাইবান্ধা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:59:28', '2025-11-01 01:59:28'),
(185, 7, 1010151, 'লালমনিরহাট', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:59:46', '2025-11-01 01:59:46'),
(186, 7, 1010152, 'কুষ্টিয়া', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 02:00:34', '2025-11-01 02:00:34'),
(187, 7, 1010153, 'সোহাগ বুক ডিপো', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-02 02:43:36', '2025-11-02 02:43:36'),
(188, 7, 1010154, 'খুলনা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-02 03:01:26', '2025-11-02 03:01:26'),
(189, 7, 1010155, 'বরিশাল', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-02 03:06:19', '2025-11-02 03:06:19'),
(190, 6, 10202, 'Funtiture', 0, 1, 'A', 1, 1, 1, NULL, NULL, NULL, '2025-11-18 09:49:02', '2025-11-18 09:49:02'),
(191, 190, 1020201, 'Funtiture Purchase', 1, 0, 'A', 1, 1, 1, 1, NULL, NULL, '2025-11-18 09:49:27', '2025-11-18 09:49:43'),
(192, 85, 40327, 'Software', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-11-18 09:55:25', '2025-11-18 09:55:25'),
(193, 85, 40328, 'Domain & Hosting Bill', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-11-18 09:59:44', '2025-11-18 09:59:44'),
(194, 27, 40102, 'Bad Depth', 1, 0, 'E', 1, 1, 10, 10, NULL, NULL, '2025-11-19 00:57:57', '2025-12-31 05:55:44'),
(195, 11, 20209, 'Mehedi Khan', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 22:29:00', '2025-11-22 22:29:00'),
(196, 42, 40209, 'Mehedi Khan - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 22:29:00', '2025-11-22 22:29:00'),
(197, 11, 20210, 'Al Emran', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 23:09:01', '2025-11-22 23:09:01'),
(198, 42, 40210, 'Al Emran - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 23:09:01', '2025-11-22 23:09:01'),
(199, 11, 20211, 'Subal Mahato Rahul', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 23:10:18', '2025-11-22 23:10:18'),
(200, 42, 40211, 'Subal Mahato Rahul - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 23:10:18', '2025-11-22 23:10:18'),
(201, 11, 20212, 'মুফতি মাওলানা আব্দুল্লাহ', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 23:11:49', '2025-11-22 23:11:49'),
(202, 42, 40212, 'মুফতি মাওলানা আব্দুল্লাহ - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 23:11:49', '2025-11-22 23:11:49'),
(203, 11, 20213, 'Islam Zahirul', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-23 00:05:32', '2025-11-23 00:05:32'),
(204, 42, 40213, 'Islam Zahirul - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-23 00:05:32', '2025-11-23 00:05:32'),
(205, 89, 1020103, 'Plate Purchase', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 00:24:23', '2025-11-24 00:24:23'),
(206, 6, 10203, 'Books Plate', 0, 1, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 00:37:57', '2025-11-24 00:37:57'),
(207, 11, 20214, 'Abeda Sultana', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-24 00:39:55', '2025-11-24 00:39:55'),
(208, 42, 40214, 'Abeda Sultana - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-24 00:39:55', '2025-11-24 00:39:55'),
(209, 206, 1020301, 'বিদ্যুৎ বিভাগ নিয়োগ সহায়ীকা', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 00:42:46', '2025-11-24 00:42:46'),
(210, 4, 406, 'Marketing Expense', 0, 1, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 01:21:27', '2025-11-24 01:21:27'),
(211, 210, 40601, 'বিদ্যুৎ বিভাগ নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, 10, NULL, NULL, '2025-11-24 01:21:38', '2025-11-24 01:21:55'),
(212, 206, 1020302, 'বিজিবি নিয়োগ সহায়ীকা', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:33:46', '2025-11-24 03:33:46'),
(213, 210, 40602, 'বিজিবি নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:33:53', '2025-11-24 03:33:53'),
(214, 85, 40329, 'Comp. Correction Makeup', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:40:49', '2025-11-24 03:40:49'),
(215, 206, 1020303, 'সাস্থ সহকারী নিয়োগ সহায়ীকা', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:47:08', '2025-11-24 03:47:08'),
(216, 210, 40603, 'সাস্থ সহকারী নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:47:19', '2025-11-24 03:47:19'),
(217, 206, 1020304, 'পানি উন্নয়ন বোর্ড নিয়োগ সহায়ীকা', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:52:23', '2025-11-24 03:52:23'),
(218, 210, 40604, 'পানি উন্নয়ন বোর্ড নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:52:32', '2025-11-24 03:52:32'),
(219, 210, 40605, 'পুলিশ নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 04:48:08', '2025-11-24 04:48:08'),
(220, 206, 1020305, 'নৌ, সেনা, বিমান নিয়োগ সহায়ীকা', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-25 00:34:36', '2025-11-25 00:34:36'),
(221, 210, 40606, 'নৌ, সেনা, বিমান নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-25 00:34:42', '2025-11-25 00:34:42'),
(222, 206, 1020306, 'প্রাথমিক শিক্ষক নিয়োগ সহায়ীকা', 1, 0, 'A', 1, 1, 10, 10, NULL, NULL, '2025-11-25 04:17:56', '2025-11-25 04:18:16'),
(223, 210, 40607, 'প্রাথমিক শিক্ষক নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-25 04:18:22', '2025-11-25 04:18:22'),
(224, 7, 1010156, 'Unkown Sales', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-25 04:26:13', '2025-11-25 04:26:13'),
(225, 11, 20215, 'Ahmedul Haq', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-25 23:04:21', '2025-11-25 23:04:21'),
(226, 42, 40215, 'Ahmedul Haq - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-25 23:04:21', '2025-11-25 23:04:21'),
(227, 210, 40608, 'Branding & Promotion Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-10 06:31:47', '2025-12-10 06:31:47'),
(228, 7, 1010157, 'ঝিনাইদাহ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-12-21 21:52:04', '2025-12-21 21:52:04'),
(229, 7, 1010158, 'মীরপুর (১০)', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-12-21 21:54:34', '2025-12-21 21:54:34'),
(230, 7, 1010159, 'মীরপুর (2)', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-12-21 21:54:52', '2025-12-21 21:54:52'),
(231, 7, 1010160, 'ফার্মগেট', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-12-21 21:55:10', '2025-12-21 21:55:10'),
(232, 7, 1010161, 'নেক্সাস', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-12-23 21:46:21', '2025-12-23 21:46:21'),
(233, 6, 10204, 'Documentation', 0, 1, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 05:16:26', '2025-12-31 05:16:26'),
(234, 233, 1020401, 'Membership Fee', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 05:17:04', '2025-12-31 05:17:04'),
(235, 233, 1020402, 'Trade License', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 05:27:17', '2025-12-31 05:27:17'),
(236, 7, 1010162, 'Saiful Shaheb', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 05:55:24', '2025-12-31 05:55:24'),
(237, 206, 1020307, 'পুলিশ কনস্টেবল নিয়োগ সহায়িকা', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:14:48', '2025-12-31 06:14:48'),
(238, 206, 1020308, 'Cover Plate', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:24:03', '2025-12-31 06:24:03'),
(239, 210, 40609, 'Paper Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:26:54', '2025-12-31 06:26:54'),
(240, 210, 40610, 'Cover Board', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:28:41', '2025-12-31 06:28:41'),
(241, 210, 40611, 'Cover Print', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:28:51', '2025-12-31 06:28:51'),
(242, 210, 40612, 'Cover Lamination', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:29:05', '2025-12-31 06:29:05'),
(243, 210, 40613, 'Forma Print', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:29:30', '2025-12-31 06:29:30'),
(244, 85, 40330, 'Binding', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:29:49', '2025-12-31 06:29:49'),
(245, 85, 40331, 'Salary Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 09:51:16', '2025-12-31 09:51:16'),
(246, 210, 40614, 'Marketing', 1, 0, 'E', 1, 1, 10, 10, NULL, NULL, '2025-12-31 09:52:37', '2025-12-31 09:52:46'),
(247, 85, 40332, 'Rokomari Ad', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 09:53:01', '2025-12-31 09:53:01'),
(248, 210, 40615, 'Business Card/ Pad', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 09:54:56', '2025-12-31 09:54:56'),
(249, 210, 40616, 'Poster', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 09:55:09', '2025-12-31 09:55:09'),
(250, 85, 40333, 'Office Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 09:55:25', '2025-12-31 09:55:25'),
(252, 85, 40334, 'Printing Paper', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 09:59:53', '2025-12-31 09:59:53'),
(253, 85, 40335, 'Faisal Printing', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 10:00:12', '2025-12-31 10:00:12'),
(254, 85, 40336, 'Compose/Proof etc', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 10:00:52', '2025-12-31 10:00:52'),
(255, 210, 40617, 'transport', 1, 0, 'E', 1, 1, 28, NULL, NULL, NULL, '2026-01-01 01:28:13', '2026-01-01 01:28:13'),
(256, 11, 20216, 'Ashfaque Rahman', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2026-01-01 01:45:27', '2026-01-01 01:45:27'),
(257, 42, 40216, 'Ashfaque Rahman - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2026-01-01 01:45:27', '2026-01-01 01:45:27'),
(258, 11, 20217, 'Md. Zakir Hossain suny', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2026-01-08 00:50:14', '2026-01-08 00:50:14'),
(259, 42, 40217, 'Md. Zakir Hossain suny - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2026-01-08 00:50:14', '2026-01-08 00:50:14'),
(260, 85, 40337, 'Tso Enamul Haque', 1, 0, 'E', 1, 1, 28, NULL, NULL, NULL, '2026-01-11 09:25:24', '2026-01-11 09:25:24'),
(261, 85, 40338, 'TSO Enamul Haque Salary', 1, 0, 'E', 1, 1, 28, NULL, NULL, NULL, '2026-01-11 09:27:07', '2026-01-11 09:27:07'),
(262, 85, 40339, 'Crockeries', 1, 0, 'E', 1, 1, 28, 28, NULL, NULL, '2026-01-12 01:14:19', '2026-01-12 01:15:34'),
(263, 85, 40340, 'Furniture Purchese', 1, 0, 'E', 1, 1, 28, NULL, NULL, NULL, '2026-01-14 09:56:20', '2026-01-14 09:56:20'),
(264, 206, 1020309, 'জেনারেল নলেজ', 1, 0, 'A', 1, 1, 1, NULL, NULL, NULL, '2026-01-14 23:18:14', '2026-01-14 23:18:14'),
(265, 206, 1020310, 'Inner Plate (4 books)', 1, 0, 'A', 1, 1, 1, NULL, NULL, NULL, '2026-01-19 09:16:09', '2026-01-19 09:16:09'),
(266, 85, 40341, 'Internet Connection', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2026-01-20 22:01:23', '2026-01-20 22:01:23'),
(267, 85, 40342, 'Stove', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2026-01-20 22:01:56', '2026-01-20 22:01:56'),
(268, 85, 40343, 'carpet', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2026-01-20 22:02:45', '2026-01-20 22:02:45'),
(269, 7, 1010163, 'রকমারি', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-01-24 05:23:13', '2026-01-24 05:23:13'),
(270, 7, 1010164, 'নাটোর', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-01-30 09:35:18', '2026-01-30 09:35:18'),
(271, 7, 1010165, 'পপুলার লাইব্রেরী ক্তাগাছা, ময়মনসিংহ', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-01-30 09:52:50', '2026-01-30 09:52:50'),
(272, 7, 1010166, 'আরাফাত লাইব্রেরী ক্তাগাছা, ময়মনসিংহ', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-01-30 09:53:11', '2026-01-30 09:53:11'),
(273, 7, 1010167, 'ঠাকুর গাঁও', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-02-04 05:38:55', '2026-02-04 05:38:55'),
(274, 85, 40344, 'bKash Charge', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2026-02-14 09:47:03', '2026-02-14 09:47:03'),
(277, 7, 1010168, 'Aira', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-03-03 22:43:38', '2026-03-03 22:43:38'),
(278, 7, 1010169, 'Mitul', 1, 0, 'A', 1, 0, 8, 1, NULL, NULL, '2026-03-03 22:57:35', '2026-03-03 22:59:46'),
(279, 7, 1010170, 'Admin', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-03-03 23:04:39', '2026-03-03 23:04:39'),
(280, 7, 1010171, 'warid', 1, 0, 'A', 1, 0, 1, 1, NULL, NULL, '2026-03-04 00:34:21', '2026-03-04 00:34:42'),
(289, 11, 20218, 'Mr. Ex Investor', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2026-03-09 03:13:01', '2026-03-09 03:13:01'),
(290, 42, 40218, 'Mr. Ex Investor - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2026-03-09 03:13:01', '2026-03-09 03:13:01'),
(291, 11, 20219, 'Mr. Y Investor', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2026-03-09 03:45:47', '2026-03-09 03:45:47'),
(292, 42, 40219, 'Mr. Y Investor - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2026-03-09 03:45:47', '2026-03-09 03:45:47'),
(293, 7, 1010172, 'Mr. Arif', 1, 0, 'A', 1, 0, 16, 1, NULL, NULL, '2026-03-11 01:07:31', '2026-03-12 00:49:14'),
(294, 7, 1010173, 'Md. Mahbubur Rahman Milon', 1, 0, 'A', 1, 0, 22, NULL, NULL, NULL, '2026-04-13 01:21:35', '2026-04-13 01:21:35'),
(295, 7, 1010174, 'Ashraf Fahim', 1, 0, 'A', 1, 0, 24, NULL, NULL, NULL, '2026-04-30 03:49:10', '2026-04-30 03:49:10'),
(297, 7, 1010175, 'Jony', 1, 0, 'A', 1, 0, 1, 1, NULL, NULL, '2026-05-21 01:50:55', '2026-05-21 02:10:28'),
(298, 7, 1010176, 'Hossain', 1, 0, 'A', 1, 0, 27, NULL, NULL, NULL, '2026-05-21 04:39:49', '2026-05-21 04:39:49'),
(299, 7, 1010177, 'Wasi', 1, 0, 'A', 1, 0, 34, NULL, NULL, NULL, '2026-06-02 09:45:34', '2026-06-02 09:45:34'),
(300, 7, 1010178, 'zahan', 1, 0, 'A', 1, 0, 36, NULL, NULL, NULL, '2026-06-15 17:08:11', '2026-06-15 17:08:11'),
(301, 7, 1010179, 'zahan', 1, 0, 'A', 1, 0, 36, NULL, NULL, NULL, '2026-06-15 17:09:59', '2026-06-15 17:09:59'),
(302, 7, 1010180, 'WWW', 1, 0, 'A', 1, 0, 37, NULL, NULL, NULL, '2026-06-18 05:52:35', '2026-06-18 05:52:35'),
(304, 7, 1010181, 'sAS', 1, 0, 'A', 1, 0, 40, NULL, NULL, NULL, '2026-06-18 18:34:38', '2026-06-18 18:34:38'),
(305, 7, 1010182, 'Walid', 1, 0, 'A', 1, 0, 41, NULL, NULL, NULL, '2026-06-19 08:09:46', '2026-06-19 08:09:46'),
(306, 7, 1010183, 'Foysal Ahmed Rifat', 1, 0, 'A', 1, 0, 42, NULL, NULL, NULL, '2026-06-19 11:01:40', '2026-06-19 11:01:40'),
(307, 7, 1010184, 'jjj', 1, 0, 'A', 1, 0, 43, NULL, NULL, NULL, '2026-06-19 20:13:25', '2026-06-19 20:13:25'),
(308, 7, 1010185, 'xss', 1, 0, 'A', 1, 0, 44, NULL, NULL, NULL, '2026-06-19 20:18:07', '2026-06-19 20:18:07'),
(309, 7, 1010186, 'WaliuLLah', 1, 0, 'A', 1, 0, 45, NULL, NULL, NULL, '2026-06-19 20:34:37', '2026-06-19 20:34:37'),
(311, 7, 1010187, 'z', 1, 0, 'A', 1, 0, 47, NULL, NULL, NULL, '2026-06-19 20:42:59', '2026-06-19 20:42:59'),
(312, 7, 1010188, 'AsA', 1, 0, 'A', 1, 0, 49, NULL, NULL, NULL, '2026-06-19 20:45:12', '2026-06-19 20:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `coa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sales_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sales_return_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_no` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `collection_type` varchar(255) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `client_id`, `coa_id`, `sales_id`, `sales_return_id`, `payment_no`, `date`, `payment_type`, `collection_type`, `amount`, `remarks`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, 13, NULL, NULL, 'CC2603001', '2026-03-08', 'Cash', 'Payment', 266.00, NULL, 1, NULL, NULL, NULL, '2026-03-07 23:24:04', '2026-03-07 23:24:04'),
(2, 5, 13, NULL, NULL, 'CC2603002', '2026-03-08', 'Cash', 'Payment', 774.00, NULL, 1, NULL, NULL, NULL, '2026-03-07 23:57:09', '2026-03-07 23:57:09'),
(3, 69, 13, NULL, NULL, 'CC2603003', '2026-03-08', 'Cash', 'Payment', 306.00, NULL, 1, NULL, NULL, NULL, '2026-03-07 23:59:53', '2026-03-07 23:59:53'),
(4, 68, 13, 15, NULL, 'CC2603004', '2026-03-10', 'Cash', 'Payment', 3671.00, 'Cash Sales', 1, NULL, NULL, NULL, '2026-03-10 00:58:58', '2026-03-10 00:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `collection_lists`
--

CREATE TABLE `collection_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `collection_id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collection_lists`
--

INSERT INTO `collection_lists` (`id`, `collection_id`, `sales_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 266.00, '2026-03-07 23:24:04', '2026-03-07 23:24:04'),
(2, 2, 3, 468.00, '2026-03-07 23:57:09', '2026-03-07 23:57:09'),
(3, 2, 4, 306.00, '2026-03-07 23:57:09', '2026-03-07 23:57:09'),
(4, 3, 5, 306.00, '2026-03-07 23:59:53', '2026-03-07 23:59:53'),
(5, 4, 15, 3671.00, '2026-03-10 00:58:58', '2026-03-10 00:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coa_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_no` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `remarks` text DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `coa_id`, `transaction_no`, `date`, `remarks`, `document`, `amount`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 98, 'EXP-2603001', '2026-03-08', NULL, NULL, 267.00, 1, 1, NULL, NULL, '2026-03-07 23:19:09', '2026-03-07 23:19:09'),
(2, 98, 'EXP-2603002', '2026-03-08', NULL, NULL, 267.00, 1, 1, NULL, NULL, '2026-03-07 23:56:19', '2026-03-07 23:56:19'),
(3, 98, 'EXP-2603003', '2026-03-08', 'ttt', NULL, 100.00, 1, 1, NULL, NULL, '2026-03-08 00:00:48', '2026-03-08 00:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `expense_items`
--

CREATE TABLE `expense_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_id` bigint(20) UNSIGNED NOT NULL,
  `coa_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `is_distributed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_items`
--

INSERT INTO `expense_items` (`id`, `expense_id`, `coa_id`, `amount`, `is_distributed`, `created_at`, `updated_at`) VALUES
(1, 1, 100, 267.00, 0, '2026-03-07 23:19:09', '2026-03-07 23:19:09'),
(2, 2, 100, 267.00, 0, '2026-03-07 23:56:19', '2026-03-07 23:56:19'),
(3, 3, 244, 100.00, 0, '2026-03-08 00:00:48', '2026-03-08 00:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('Category Product','Trending Product','New Product','Featured Category','Category Carousel','Popular Writter','Banner','Brand') NOT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `serial` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_section_categories`
--

CREATE TABLE `home_section_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_section_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investors`
--

CREATE TABLE `investors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profit_head` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `bkash` varchar(255) DEFAULT NULL,
  `rocket` varchar(255) DEFAULT NULL,
  `nagad` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `profit_percentage` int(11) NOT NULL DEFAULT 40,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investors`
--

INSERT INTO `investors` (`id`, `user_id`, `coa_id`, `profit_head`, `name`, `image`, `email`, `phone`, `address`, `nid`, `document`, `bkash`, `rocket`, `nagad`, `bank`, `branch`, `account_name`, `account_no`, `profit_percentage`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 14, 289, 290, 'Mr. Ex Investor', NULL, NULL, '333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 1, NULL, NULL, NULL, '2026-03-09 03:13:01', '2026-03-09 03:13:01'),
(6, 15, 291, 292, 'Mr. Y Investor', NULL, NULL, '444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 1, NULL, NULL, NULL, '2026-03-09 03:45:47', '2026-03-09 03:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `invests`
--

CREATE TABLE `invests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `investor_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `invest_no` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` decimal(16,0) NOT NULL,
  `deposit_type` varchar(255) DEFAULT NULL,
  `bkash` varchar(255) DEFAULT NULL,
  `rocket` varchar(255) DEFAULT NULL,
  `nagad` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `sattled` tinyint(1) NOT NULL DEFAULT 0,
  `coa_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invests`
--

INSERT INTO `invests` (`id`, `investor_id`, `product_id`, `invest_no`, `date`, `qty`, `amount`, `deposit_type`, `bkash`, `rocket`, `nagad`, `bank_account`, `remarks`, `approved`, `sattled`, `coa_id`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, 31, 'I2603001', '2026-03-10', 13, 130000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 1, NULL, NULL, NULL, '2026-03-09 22:28:35', '2026-03-10 00:51:17'),
(2, 5, 27, 'I2603002', '2026-03-10', 13, 130000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 1, NULL, NULL, NULL, '2026-03-09 22:59:38', '2026-03-10 00:51:17'),
(3, 5, 31, 'I2603003', '2026-03-10', 9, 90000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 1, NULL, NULL, NULL, '2026-03-10 00:52:56', '2026-03-10 00:52:56'),
(4, 5, 10, 'I2603004', '2026-03-10', 7, 70000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 1, NULL, NULL, NULL, '2026-03-10 01:15:47', '2026-03-10 01:15:47'),
(5, 5, 11, 'I2603005', '2026-03-10', 6, 60000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 1, NULL, NULL, NULL, '2026-03-10 03:41:41', '2026-03-10 03:41:41'),
(6, 5, 12, 'I2603006', '2026-03-10', 5, 50000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 1, NULL, NULL, NULL, '2026-03-10 03:55:32', '2026-03-10 03:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `invest_sattlements`
--

CREATE TABLE `invest_sattlements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `investor_id` bigint(20) UNSIGNED NOT NULL,
  `coa_id` bigint(20) UNSIGNED NOT NULL,
  `sattlement_no` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `invest_qty` decimal(16,0) NOT NULL,
  `invest_amount` decimal(16,0) NOT NULL,
  `payment` decimal(16,0) NOT NULL,
  `remarks` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invest_sattlements`
--

INSERT INTO `invest_sattlements` (`id`, `investor_id`, `coa_id`, `sattlement_no`, `date`, `invest_qty`, `invest_amount`, `payment`, `remarks`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, 13, 'IS2603001', '2026-03-10', 26, 260000, 260000, NULL, 1, NULL, NULL, NULL, '2026-03-10 00:51:17', '2026-03-10 00:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `invest_sattlement_lists`
--

CREATE TABLE `invest_sattlement_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invest_sattlement_id` bigint(20) UNSIGNED NOT NULL,
  `investor_id` bigint(20) UNSIGNED NOT NULL,
  `invest_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `invest_qty` decimal(16,0) NOT NULL,
  `invest_amount` decimal(16,0) NOT NULL,
  `payment` decimal(16,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invest_sattlement_lists`
--

INSERT INTO `invest_sattlement_lists` (`id`, `invest_sattlement_id`, `investor_id`, `invest_id`, `product_id`, `invest_qty`, `invest_amount`, `payment`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, 31, 13, 130000, 130000, '2026-03-10 00:51:17', '2026-03-10 00:51:17'),
(2, 1, 5, 2, 27, 13, 130000, 130000, '2026-03-10 00:51:17', '2026-03-10 00:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) NOT NULL DEFAULT 'footer',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` text DEFAULT NULL,
  `category_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `position`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`, `url`, `category_id`) VALUES
(1, 'ঘরে বসে আয় করুন', 'header_top', 1, 1, 1, NULL, NULL, '2026-01-20 05:19:24', '2026-01-21 02:30:12', '#', 1),
(2, 'রকমারি কুইজ', 'header_top', 1, 1, 1, NULL, NULL, '2026-01-21 00:52:21', '2026-01-21 02:28:49', '#', 1),
(3, 'রকমারি উদ্যোক্তা', 'header_top', 1, 1, 1, NULL, NULL, '2026-01-21 00:53:29', '2026-01-21 02:29:44', '#', 1),
(4, 'গল্পের বই', 'header', 1, 1, 1, NULL, NULL, '2026-01-21 00:54:37', '2026-01-25 04:35:18', '#', 2),
(5, 'উপন্যাস', 'header', 1, 1, 1, NULL, NULL, '2026-01-21 00:59:44', '2026-01-21 01:00:00', NULL, 1),
(6, 'কবিতা', 'header', 1, 1, 1, NULL, NULL, '2026-01-21 01:01:13', '2026-01-21 01:01:13', NULL, 1),
(7, 'কার্টুন গল্পের বইয়ের সকল বই', 'mega_menu', 1, 1, 1, NULL, NULL, '2026-01-21 01:01:51', '2026-01-21 01:01:51', NULL, 1),
(8, 'ইসলামিক গল্পের  বইয়ের সকল বই', 'mega_menu', 1, 1, 1, NULL, NULL, '2026-01-21 01:02:08', '2026-01-21 01:02:08', NULL, 1),
(9, 'গাড়িয়াল', 'mega_menu', 1, 1, 1, NULL, NULL, '2026-01-21 01:02:22', '2026-01-25 06:17:55', '#', 7),
(10, 'রবীন্দ্র সঙ্গিত   ', 'mega_menu', 1, 1, 1, NULL, NULL, '2026-01-21 01:02:36', '2026-01-21 01:02:36', NULL, 1),
(11, 'নজ্রুল সঙ্গিত  সকল বই ', 'mega_menu', 1, 1, 1, NULL, NULL, '2026-01-21 01:02:51', '2026-01-21 01:02:51', NULL, 1),
(12, 'সত্যের সন্ধানে', 'mega_menu', 1, 1, 1, NULL, NULL, '2026-01-21 01:03:10', '2026-01-21 01:03:10', NULL, 1),
(13, 'একাডেমিক বই', 'header', 1, 1, 1, NULL, NULL, '2026-01-21 01:03:37', '2026-01-21 23:45:52', '#', 4),
(14, 'আমার সময় ', 'footer', 1, 1, 1, NULL, NULL, '2026-01-21 01:07:17', '2026-01-21 01:07:17', NULL, 1),
(15, 'চিরকুট ', 'footer', 1, 1, 1, NULL, NULL, '2026-01-21 01:07:29', '2026-01-21 01:07:29', NULL, 1),
(16, 'হৃদয়য়ের  গহিনে', 'footer', 1, 1, 1, NULL, NULL, '2026-01-21 01:07:42', '2026-01-21 01:07:42', NULL, 1),
(17, 'আমার সপথ', 'footer_col2', 1, 1, 1, NULL, NULL, '2026-01-21 01:08:07', '2026-01-21 01:08:07', NULL, 1),
(18, 'আলোড়ন  ', 'footer_col2', 1, 1, 1, NULL, NULL, '2026-01-21 01:08:23', '2026-01-21 01:08:23', NULL, 1),
(19, 'বিড়ম্বনা', 'footer_col2', 1, 1, 1, NULL, NULL, '2026-01-21 01:08:40', '2026-01-21 01:08:40', NULL, 1),
(20, 'অর্ডার ট্র্যাক করুন', 'header_top', 1, 1, 1, NULL, NULL, '2026-01-21 02:27:20', '2026-01-21 02:27:20', '#', 1),
(21, 'বই ডোনেশন', 'header_top', 1, 1, 1, NULL, NULL, '2026-01-21 02:30:46', '2026-01-21 02:30:46', '#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('external','internal') NOT NULL,
  `link` text NOT NULL,
  `serial` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `menu_id`, `parent_id`, `type`, `link`, `serial`, `created_at`, `updated_at`) VALUES
(3, 'আরও অনেক মেনু এখানে হবে', 8, NULL, 'internal', 'adadd', 1, '2026-01-21 01:04:22', '2026-01-21 01:04:22'),
(5, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'sada', 2, '2026-01-21 01:04:54', '2026-01-21 01:04:54'),
(6, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'sds', 3, '2026-01-21 01:05:14', '2026-01-21 01:05:14'),
(7, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'sda', 4, '2026-01-21 01:05:26', '2026-01-21 01:05:26'),
(8, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'asda', 5, '2026-01-21 01:05:37', '2026-01-21 01:05:37'),
(9, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'asda', 6, '2026-01-21 01:05:39', '2026-01-21 01:05:39'),
(11, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'dasdsa', 8, '2026-01-21 01:05:52', '2026-01-21 01:05:52'),
(12, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'sa', 9, '2026-01-21 01:06:17', '2026-01-21 01:06:17'),
(13, 'সাব মেনু  যোগ করুন', 11, NULL, 'internal', '44', 1, '2026-01-21 01:53:45', '2026-01-21 01:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_07_083259_create_permission_tables', 1),
(5, '2025_05_07_083431_create_admin_menus_table', 1),
(6, '2025_05_07_083444_create_admin_menu_actions_table', 1),
(7, '2025_05_07_084137_create_admin_settings_table', 1),
(8, '2025_05_07_084409_create_settings_table', 1),
(9, '2025_08_19_172447_create_categories_table', 1),
(10, '2025_08_21_172430_create_uoms_table', 1),
(11, '2025_08_22_152908_create_stores_table', 1),
(12, '2025_08_22_160106_create_vendors_table', 1),
(13, '2025_08_23_114403_create_attributes_table', 1),
(14, '2025_08_23_114500_create_attribute_values_table', 1),
(15, '2025_08_23_122158_create_brands_table', 1),
(16, '2025_08_23_141243_create_authors_table', 1),
(17, '2025_08_23_151243_create_publications_table', 1),
(18, '2025_08_23_171640_create_products_table', 1),
(19, '2025_08_23_171642_create_product_categories_table', 1),
(20, '2025_08_23_171740_create_product_vendors_table', 1),
(21, '2025_08_23_171750_create_product_authors_table', 1),
(22, '2025_08_23_171840_create_product_tags_table', 1),
(23, '2025_08_23_172142_create_product_images_table', 1),
(24, '2025_08_23_172227_create_product_variants_table', 1),
(25, '2025_08_23_172246_create_product_variant_values_table', 1),
(26, '2025_09_02_162530_create_purchase_orders_table', 1),
(27, '2025_09_02_172432_create_purchase_order_items_table', 1),
(28, '2025_09_02_173851_create_purchase_receipts_table', 1),
(29, '2025_09_02_173857_create_purchase_receipt_items_table', 1),
(30, '2025_09_02_174309_create_stocks_table', 1),
(31, '2025_09_02_174319_create_stock_movements_table', 1),
(32, '2025_09_07_094949_create_sliders_table', 1),
(33, '2025_09_07_115753_create_home_sections_table', 1),
(34, '2025_09_10_045646_create_home_section_categories_table', 1),
(35, '2025_10_16_010234_create_menus_table', 2),
(36, '2025_10_16_010239_create_menu_items_table', 2),
(37, '2026_01_27_111709_create_wishlists_table', 3),
(40, '2026_01_28_060922_create_orders_table', 4),
(41, '2026_01_28_060938_create_order_items_table', 4),
(42, '2026_02_01_061140_create_reviews_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 17),
(4, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 20),
(4, 'App\\Models\\User', 21),
(4, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 25);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_number`, `subtotal`, `discount`, `tax`, `total`, `payment_method`, `status`, `created_at`, `updated_at`) VALUES
(18, 37, 'ORD-1781747555', 11000.00, 0.00, 0.00, 11000.00, 'cod', 'pending', '2026-06-18 05:52:35', '2026-06-18 05:52:35'),
(19, 40, 'ORD-1781793278', 11000.00, 0.00, 0.00, 11000.00, 'cod', 'processing', '2026-06-18 18:34:38', '2026-06-18 18:46:00'),
(20, 41, 'ORD-1781842186', 11000.00, 0.00, 0.00, 11000.00, 'cod', 'pending', '2026-06-19 08:09:46', '2026-06-19 08:09:46'),
(21, 42, 'ORD-1781852500', 11000.00, 0.00, 0.00, 11000.00, 'cod', 'pending', '2026-06-19 11:01:40', '2026-06-19 11:01:40'),
(22, 43, 'ORD-1781885605', 11000.00, 0.00, 0.00, 11000.00, 'cod', 'pending', '2026-06-19 20:13:25', '2026-06-19 20:13:25'),
(23, 44, 'ORD-1781885887', 11000.00, 0.00, 0.00, 11000.00, 'cod', 'pending', '2026-06-19 20:18:07', '2026-06-19 20:18:07'),
(24, 45, 'ORD-1781886877', 11000.00, 0.00, 0.00, 11000.00, 'cod', 'pending', '2026-06-19 20:34:37', '2026-06-19 20:34:37'),
(26, 47, 'ORD-1781887379', 11000.00, 0.00, 0.00, 11000.00, 'cod', 'pending', '2026-06-19 20:42:59', '2026-06-19 20:42:59'),
(27, 49, 'ORD-1781887512', 11000.00, 0.00, 0.00, 11000.00, 'cod', 'pending', '2026-06-19 20:45:12', '2026-06-19 20:45:12'),
(28, 1, 'ORD-1783057268', 600.00, 0.00, 0.00, 600.00, 'cod', 'pending', '2026-07-03 09:41:08', '2026-07-03 09:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_variant_id`, `qty`, `price`, `total`, `created_at`, `updated_at`) VALUES
(1, 18, 340, NULL, 1, 11000.00, 11000.00, '2026-06-18 05:52:35', '2026-06-18 05:52:35'),
(2, 19, 1, NULL, 1, 11000.00, 11000.00, '2026-06-18 18:34:38', '2026-06-18 18:34:38'),
(3, 20, 1, NULL, 1, 11000.00, 11000.00, '2026-06-19 08:09:46', '2026-06-19 08:09:46'),
(4, 21, 339, NULL, 1, 11000.00, 11000.00, '2026-06-19 11:01:40', '2026-06-19 11:01:40'),
(5, 22, 1, NULL, 1, 11000.00, 11000.00, '2026-06-19 20:13:25', '2026-06-19 20:13:25'),
(6, 23, 1, NULL, 1, 11000.00, 11000.00, '2026-06-19 20:18:07', '2026-06-19 20:18:07'),
(7, 24, 1, NULL, 1, 11000.00, 11000.00, '2026-06-19 20:34:37', '2026-06-19 20:34:37'),
(9, 26, 1, NULL, 1, 11000.00, 11000.00, '2026-06-19 20:42:59', '2026-06-19 20:42:59'),
(10, 27, 1, NULL, 1, 11000.00, 11000.00, '2026-06-19 20:45:12', '2026-06-19 20:45:12'),
(11, 28, 360, NULL, 1, 600.00, 600.00, '2026-07-03 09:41:08', '2026-07-03 09:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `investor_id` bigint(20) UNSIGNED NOT NULL,
  `coa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_type` enum('Advance','Payment','Adjust') NOT NULL DEFAULT 'Advance',
  `payment_no` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,0) NOT NULL,
  `remarks` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `investor_id`, `coa_id`, `payment_type`, `payment_no`, `date`, `amount`, `remarks`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, 13, 'Payment', 'IP2603001', '2026-03-10', 9, 'paid investor', 1, NULL, NULL, NULL, '2026-03-10 00:05:33', '2026-03-10 00:05:33'),
(2, 5, 13, 'Payment', 'IP2603002', '2026-03-10', 60, NULL, 1, NULL, NULL, NULL, '2026-03-10 00:50:36', '2026-03-10 00:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `payment_lists`
--

CREATE TABLE `payment_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `distribution_list_id` bigint(20) UNSIGNED NOT NULL,
  `invest_id` bigint(20) UNSIGNED NOT NULL,
  `investor_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(16,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_lists`
--

INSERT INTO `payment_lists` (`id`, `payment_id`, `distribution_list_id`, `invest_id`, `investor_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 5, 2, '2026-03-10 00:05:33', '2026-03-10 00:05:33'),
(2, 1, 2, 2, 5, 7, '2026-03-10 00:05:33', '2026-03-10 00:05:33'),
(3, 2, 2, 2, 5, 60, '2026-03-10 00:50:36', '2026-03-10 00:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'web', '2026-01-19 05:33:09', '2026-01-19 05:33:09'),
(2, 'User & Role Manage', 'web', '2026-01-19 05:34:47', '2026-02-25 23:25:47'),
(3, 'Roles', 'web', '2026-01-19 05:35:46', '2026-01-19 05:35:46'),
(4, 'Users', 'web', '2026-01-19 05:36:43', '2026-01-19 05:36:43'),
(6, 'Admin Settings', 'web', '2026-01-19 05:37:50', '2026-01-19 05:37:50'),
(14, 'admin.role.create', 'web', '2026-01-19 23:59:11', '2026-01-19 23:59:11'),
(18, 'admin.role.edit', 'web', '2026-01-20 03:24:24', '2026-01-20 03:24:24'),
(19, 'admin.role.destroy', 'web', '2026-01-20 03:25:16', '2026-01-20 03:29:11'),
(20, 'admin.role-permission.edit', 'web', '2026-01-20 03:31:59', '2026-01-20 03:31:59'),
(21, 'Books Management', 'web', '2026-01-20 03:47:59', '2026-02-25 23:41:26'),
(22, 'Category', 'web', '2026-01-20 03:49:56', '2026-01-20 03:49:56'),
(23, 'admin.product.create', 'web', '2026-01-20 03:51:53', '2026-01-20 03:51:53'),
(24, 'admin.product.edit', 'web', '2026-01-20 03:52:09', '2026-01-20 03:52:09'),
(26, 'admin.product.index', 'web', '2026-01-20 03:56:07', '2026-02-25 23:43:47'),
(27, 'admin.uom.index', 'web', '2026-01-20 04:04:00', '2026-04-26 02:48:01'),
(28, 'Brand', 'web', '2026-01-20 04:04:36', '2026-01-20 04:04:36'),
(29, 'admin.uom.create', 'web', '2026-01-20 04:06:48', '2026-01-20 04:06:48'),
(31, 'admin.brand.create', 'web', '2026-01-20 04:09:27', '2026-01-20 04:09:27'),
(32, 'Vendor', 'web', '2026-01-20 04:12:04', '2026-01-20 04:12:04'),
(33, 'admin.vendor.create', 'web', '2026-01-20 04:12:41', '2026-01-20 04:12:41'),
(34, 'Attribute', 'web', '2026-01-20 04:19:04', '2026-01-20 04:19:04'),
(35, 'admin.attribute.create', 'web', '2026-01-20 04:21:01', '2026-01-20 04:21:01'),
(36, 'publication', 'web', '2026-01-20 04:22:54', '2026-01-20 04:22:54'),
(37, 'admin.publication.create', 'web', '2026-01-20 04:23:43', '2026-01-20 04:23:43'),
(38, 'admin.product.show', 'web', '2026-01-20 04:59:33', '2026-01-20 04:59:33'),
(39, 'User Menu', 'web', '2026-01-20 05:21:16', '2026-01-20 05:21:16'),
(40, 'Main Menu', 'web', '2026-01-20 05:22:04', '2026-01-20 05:22:04'),
(41, 'admin.menu.create', 'web', '2026-01-20 05:23:01', '2026-01-20 05:23:01'),
(44, 'admin.menu-item.index', 'web', '2026-01-20 05:33:58', '2026-01-20 05:33:58'),
(45, 'admin.settings.index', 'web', '2026-01-20 06:07:05', '2026-02-25 23:24:47'),
(46, 'admin.menu.edit', 'web', '2026-01-21 00:48:49', '2026-01-21 00:48:49'),
(47, 'Author', 'web', '2026-01-22 04:29:15', '2026-01-22 04:29:15'),
(48, 'admin.author.create', 'web', '2026-01-22 04:30:36', '2026-01-22 04:30:36'),
(49, 'admin.author.edit', 'web', '2026-01-22 04:30:52', '2026-01-22 04:30:52'),
(50, 'admin.author.destroy', 'web', '2026-01-22 04:31:06', '2026-01-22 04:31:06'),
(51, 'admin.author.show', 'web', '2026-01-22 04:31:22', '2026-01-22 04:31:22'),
(52, 'admin.publication.edit', 'web', '2026-01-22 04:33:21', '2026-01-22 04:33:21'),
(53, 'admin.publication.show', 'web', '2026-01-22 04:33:41', '2026-01-22 04:33:41'),
(54, 'admin.menu.destroy', 'web', '2026-01-28 23:15:50', '2026-01-28 23:15:50'),
(55, 'Orders Management', 'web', '2026-01-31 22:22:32', '2026-01-31 22:22:32'),
(56, 'admin.orders.index', 'web', '2026-01-31 22:25:06', '2026-01-31 22:28:50'),
(57, 'Slider', 'web', '2026-02-02 04:09:16', '2026-02-02 04:09:16'),
(58, 'admin.slider.edit', 'web', '2026-02-02 04:09:53', '2026-02-02 04:09:53'),
(59, 'Business Setup', 'web', '2026-02-25 23:12:24', '2026-02-25 23:12:24'),
(60, 'Website Setup', 'web', '2026-02-25 23:23:51', '2026-02-25 23:23:51'),
(61, 'Inventory', 'web', '2026-02-26 01:33:52', '2026-02-26 01:33:52'),
(62, 'Production', 'web', '2026-02-26 01:35:08', '2026-02-26 01:35:08'),
(63, 'admin.production.create', 'web', '2026-02-26 01:35:53', '2026-02-26 01:35:53'),
(64, 'admin.production.edit', 'web', '2026-02-26 01:36:39', '2026-02-26 01:36:39'),
(65, 'Stores', 'web', '2026-02-26 01:49:40', '2026-02-26 01:49:40'),
(66, 'admin.store.create', 'web', '2026-02-26 01:50:44', '2026-02-26 01:50:44'),
(67, 'admin.store.edit', 'web', '2026-02-26 01:51:03', '2026-02-26 01:51:03'),
(68, 'Stock', 'web', '2026-02-26 02:01:06', '2026-02-26 02:01:06'),
(69, 'Investor Panel', 'web', '2026-03-01 21:58:22', '2026-03-01 21:58:22'),
(70, 'Investor 1', 'web', '2026-03-01 22:00:26', '2026-03-01 22:00:26'),
(71, 'Invest Process', 'web', '2026-03-01 22:04:26', '2026-03-01 22:04:26'),
(72, 'Profit Distribution', 'web', '2026-03-01 22:06:32', '2026-03-01 22:06:32'),
(73, 'Investor Payment', 'web', '2026-03-01 22:08:13', '2026-03-01 22:08:13'),
(74, 'Invest Settlements', 'web', '2026-03-01 22:10:04', '2026-03-01 22:10:04'),
(75, 'Investor Statement', 'web', '2026-03-01 22:15:11', '2026-03-01 22:15:11'),
(76, 'admin.investor.create', 'web', '2026-03-01 22:17:06', '2026-03-01 22:17:06'),
(78, 'admin.invest.create', 'web', '2026-03-01 22:20:32', '2026-03-01 22:20:32'),
(79, 'admin.investor.edit', 'web', '2026-03-01 22:21:50', '2026-03-01 22:21:50'),
(80, 'admin.profit-distribution.create', 'web', '2026-03-01 22:22:35', '2026-03-01 22:22:35'),
(81, 'admin.profit-distribution.show', 'web', '2026-03-01 22:24:39', '2026-03-01 22:24:39'),
(82, 'admin.investor-payment.create', 'web', '2026-03-01 22:25:41', '2026-03-01 22:25:41'),
(83, 'admin.investor-payment.edit', 'web', '2026-03-01 22:26:02', '2026-03-01 22:26:02'),
(84, 'admin.invest-sattlement.create', 'web', '2026-03-01 22:26:57', '2026-03-01 22:26:57'),
(85, 'admin.invest-sattlement.show', 'web', '2026-03-01 22:27:09', '2026-03-01 22:27:09'),
(86, 'Sales Management', 'web', '2026-03-01 22:34:26', '2026-03-01 22:34:26'),
(87, 'Clients', 'web', '2026-03-01 22:42:47', '2026-03-01 22:42:47'),
(88, 'admin.client.create', 'web', '2026-03-01 22:43:16', '2026-03-01 22:43:16'),
(89, 'admin.client.edit', 'web', '2026-03-01 22:43:27', '2026-03-01 22:43:27'),
(90, 'Sales 1', 'web', '2026-03-01 22:45:09', '2026-03-01 22:45:09'),
(91, 'admin.sales.create', 'web', '2026-03-01 22:46:57', '2026-03-01 22:46:57'),
(92, 'admin.sales.show', 'web', '2026-03-01 22:47:20', '2026-03-01 22:47:20'),
(93, 'Collections', 'web', '2026-03-01 22:50:23', '2026-03-01 22:50:23'),
(94, 'admin.collection.create', 'web', '2026-03-01 22:51:54', '2026-03-01 22:51:54'),
(95, 'admin.collection.show', 'web', '2026-03-01 22:52:07', '2026-03-01 22:52:07'),
(96, 'Reports', 'web', '2026-03-01 22:57:48', '2026-03-01 22:57:48'),
(97, 'Sales Report', 'web', '2026-03-01 23:55:22', '2026-03-01 23:55:22'),
(98, 'Collection Report', 'web', '2026-03-01 23:57:00', '2026-03-01 23:57:00'),
(99, 'Sales Return Report', 'web', '2026-03-02 00:03:47', '2026-03-02 00:03:47'),
(100, 'Expenses', 'web', '2026-03-02 00:16:46', '2026-03-02 00:16:46'),
(104, 'Income Statement', 'web', '2026-03-02 00:29:11', '2026-03-02 00:29:11'),
(105, 'Admin Menu', 'web', '2026-03-02 00:35:14', '2026-03-02 00:35:14'),
(106, 'admin.admin-menu.create', 'web', '2026-03-02 00:51:22', '2026-03-02 00:51:22'),
(107, 'admin.admin-menu.edit', 'web', '2026-03-02 00:52:36', '2026-03-02 00:52:36'),
(108, 'admin.admin-menu-action.index', 'web', '2026-03-02 00:56:38', '2026-03-02 00:56:38'),
(109, 'admin.admin-menu-action.create', 'web', '2026-03-02 00:57:37', '2026-03-02 00:57:37'),
(110, 'admin.admin-menu-action.edit', 'web', '2026-03-02 00:58:54', '2026-03-02 00:58:54'),
(111, 'admin.admin-menu-action.destroy', 'web', '2026-03-02 00:59:45', '2026-03-02 00:59:45'),
(112, 'admin.admin-menu.destroy', 'web', '2026-03-02 01:00:30', '2026-03-02 01:00:30'),
(113, 'Purchase Manage', 'web', '2026-03-02 02:34:09', '2026-03-02 02:39:06'),
(114, 'Purchase Order', 'web', '2026-03-02 02:38:30', '2026-03-02 02:38:30'),
(115, 'admin.purchase-order.create', 'web', '2026-03-02 02:39:57', '2026-03-02 02:39:57'),
(116, 'admin.purchase-order.show', 'web', '2026-03-02 02:40:17', '2026-03-03 00:06:41'),
(117, 'Purchase Create', 'web', '2026-03-02 23:47:16', '2026-03-02 23:47:16'),
(118, 'Coa Setup', 'web', '2026-03-08 00:05:13', '2026-03-08 00:05:13'),
(120, 'admin.coa.edit', 'web', '2026-03-08 00:06:01', '2026-03-08 00:06:01'),
(121, 'admin.coa.create', 'web', '2026-03-08 00:13:54', '2026-03-08 00:13:54'),
(122, 'admin.production.show', 'web', '2026-03-09 02:24:08', '2026-03-09 02:24:08'),
(123, 'Sales Return 1', 'web', '2026-03-10 03:05:29', '2026-03-10 03:05:29'),
(124, 'admin.sales-return.create', 'web', '2026-03-10 03:06:59', '2026-03-10 03:06:59'),
(125, 'admin.sales-return.show', 'web', '2026-03-10 03:07:40', '2026-03-10 03:07:40'),
(127, 'Expense List', 'web', '2026-03-12 00:52:34', '2026-03-12 00:52:34'),
(128, 'Expense Create', 'web', '2026-03-12 00:53:19', '2026-03-12 00:53:19'),
(129, 'admin.expense.show', 'web', '2026-03-12 00:54:01', '2026-03-12 00:54:01'),
(130, 'admin.expense.create', 'web', '2026-03-12 00:54:22', '2026-03-12 00:54:22'),
(131, 'Book Create', 'web', '2026-03-12 02:04:23', '2026-03-12 02:04:23'),
(132, 'Sales Create', 'web', '2026-03-12 02:17:34', '2026-03-12 02:17:34'),
(133, 'Collection Create', 'web', '2026-03-12 02:19:17', '2026-03-12 02:19:17'),
(134, 'Sales Return Create', 'web', '2026-03-12 02:20:29', '2026-03-12 02:20:29'),
(135, 'Production Create', 'web', '2026-03-12 02:23:36', '2026-03-12 02:23:36'),
(136, 'admin.vendor.edit', 'web', '2026-04-01 03:02:59', '2026-04-01 03:02:59'),
(137, 'admin.user.create', 'web', '2026-04-08 22:33:06', '2026-04-08 22:33:06'),
(138, 'admin.user.edit', 'web', '2026-04-08 23:02:36', '2026-04-08 23:02:36'),
(139, 'admin.uom.edit', 'web', '2026-04-08 23:43:51', '2026-04-08 23:43:51'),
(140, 'Merchant Panel', 'web', '2026-04-22 03:29:23', '2026-04-22 03:29:23'),
(144, 'Merchant Product', 'web', '2026-04-22 03:31:59', '2026-04-22 03:31:59'),
(145, 'admin.merchant-product.edit', 'web', '2026-04-22 03:32:51', '2026-04-22 03:32:51'),
(146, 'admin.merchant-product.create', 'web', '2026-04-22 03:33:02', '2026-04-22 03:33:02'),
(147, 'Merchant Orders', 'web', '2026-04-22 03:33:54', '2026-04-22 03:33:54'),
(148, 'admin.product.destroy', 'web', '2026-04-29 04:08:34', '2026-04-30 02:45:03'),
(149, 'admin.merchant-product.destroy', 'web', '2026-04-30 02:24:22', '2026-04-30 02:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `production_no` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `total_qty` decimal(16,0) NOT NULL,
  `remarks` text DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`id`, `store_id`, `production_no`, `date`, `total_qty`, `remarks`, `is_approved`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'PP2606001', '2026-06-18', 10000, NULL, 0, 1, NULL, NULL, NULL, '2026-06-18 18:37:15', '2026-06-18 18:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `production_lists`
--

CREATE TABLE `production_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `production_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_edition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` decimal(16,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `production_lists`
--

INSERT INTO `production_lists` (`id`, `production_id`, `store_id`, `product_id`, `product_edition_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 340, 319, 10000, '2026-06-18 18:37:15', '2026-06-18 18:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `uom_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `publication_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_type` enum('book','other') NOT NULL DEFAULT 'book',
  `barcode` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `profit` double DEFAULT 0,
  `profit_percent` double DEFAULT 0,
  `show_dashboard` int(11) DEFAULT 1,
  `serial` int(11) DEFAULT NULL,
  `required_share` double DEFAULT 0,
  `purchase_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `regular_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sale_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(10) NOT NULL DEFAULT 'amount',
  `discount_start_date` date DEFAULT NULL,
  `discount_end_date` date DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `custom_barcode` tinyint(1) NOT NULL DEFAULT 0,
  `favorite` tinyint(1) NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `new_arrival` tinyint(1) NOT NULL DEFAULT 0,
  `best_seller` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `slug`, `category_id`, `uom_id`, `brand_id`, `publication_id`, `product_type`, `barcode`, `file`, `thumbnail`, `short_description`, `description`, `profit`, `profit_percent`, `show_dashboard`, `serial`, `required_share`, `purchase_price`, `regular_price`, `sale_price`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `sku`, `meta_title`, `meta_description`, `meta_image`, `custom_barcode`, `favorite`, `trending`, `new_arrival`, `best_seller`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Science (Bangla Version) Online', 'COD202606131', 'science-bangla-version-online', NULL, 1, 1, 1, 'book', '-389923013', NULL, 'storage/media/product/2026-06-20-T4barqNxw8g1nClnbiF4sAWVbZ5q27Hxnp5Jd5mq.webp', '<div class=\"course-short-description\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-regular fa-clock\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Course Duration</p><p style=\"font-size: 15px;\">1 Month</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-video\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Total Lecture</p><p style=\"font-size: 15px;\">180</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-print\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Total Exam</p><p style=\"font-size: 15px;\">160</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-person-walking-arrow-right\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Live class</p><p style=\"font-size: 15px;\">180</p></div></div><div class=\"course-includes-area\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"title\"><h5 style=\"font-weight: 700; font-size: 18px; padding: 15px 0px;\">This Course includes :</h5></div><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> 100% online course</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-tv\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Access on mobile , tablet and Computer</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Provide exclusive recorded class</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Provide a well-structured lecture sheet in PDF format.</p><!-- Videos --><h2 class=\"text-center mb-5 section-title\">      🎥 সফল শিক্ষার্থীদের ভিডিও  </h2><div class=\"row\">      <!-- Video 1 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 2 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীর সাফল্যের গল্প।              </p>        </div>    </div>    <!-- Video 3 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 4 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।              </p>        </div>    </div>    <!-- Video 5 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।              </p>        </div>    </div>    <!-- Video 6 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।              </p>        </div>    </div>    <!-- Video 7 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 8 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।              </p>        </div>    </div></div></div>', '<!-- =========================UAC College Admission Section========================== --><link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"><style>.uac-section{    background:#f8f9fa;}.uac-title{    color:#d60000;    font-weight:700;}.uac-card{    border:none;    border-radius:15px;    overflow:hidden;    box-shadow:0 5px 20px rgba(0,0,0,.08);    transition:.3s;}.uac-card:hover{    transform:translateY(-5px);}.video-card{    background:#fff;    border-radius:15px;    overflow:hidden;    box-shadow:0 4px 15px rgba(0,0,0,.08);    height:100%;}.video-card p{    padding:15px;    margin:0;    font-size:14px;    line-height:24px;}.info-box{    background:#fff;    padding:25px;    border-radius:15px;    box-shadow:0 5px 20px rgba(0,0,0,.08);}.course-card{    background:#fff;    padding:20px;    border-radius:15px;    box-shadow:0 5px 15px rgba(0,0,0,.08);    height:100%;}.btn-uac{    background:#d60000;    color:#fff;    border-radius:50px;    padding:12px 30px;}.btn-uac:hover{    background:#b50000;    color:#fff;}.section-title{    font-weight:700;    color:#0d6efd;    margin-bottom:20px;}</style><section class=\"uac-section py-5\"><div class=\"container\">    <!-- Hero Section -->    <div class=\"text-center mb-5\">        <h1 class=\"uac-title\">            ❤️ কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল        </h1>        <p class=\"lead mt-3\">            ১৯৯৬ সাল থেকে কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছে UAC।        </p>        <h4 class=\"text-success\">            Notre Dame College | Holy Cross College | St. Joseph College</h4></div>    <!-- Main Content -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?        </h3>        <p>            ❤️ Notre Dame College এর ৯০% Students UAC\'র।        </p>        <p>            🚀 এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486, ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে।        </p>        <p>            UAC ১৯৯৬ সাল থেকে শুধুমাত্র কলেজ ভর্তি কোচিং পরিচালনা করে আসছে।            কলেজ এডমিশনের প্রতিটি ধাপ, লিখিত পরীক্ষা থেকে শুরু করে ভাইভা পর্যন্ত            শিক্ষার্থীদের সাথে থাকে UAC।        </p>        <ul>            <li>📅 সপ্তাহে ৫ দিন ক্লাস</li>            <li>📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা</li>            <li>📝 সাপ্তাহিক ও মাসিক টেস্ট</li>            <li>🥇 মডেল টেস্ট</li>            <li>🎤 ভাইভা ক্লাস</li>            <li>💻 অনলাইন ও অফলাইন ব্যাচ</li>        </ul>    </div>    <!-- Course Fee -->    <h2 class=\"text-center mb-4 section-title\">        আমাদের কোর্স সমূহ    </h2>    <div class=\"row g-4 mb-5\">        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>🏫 অফলাইন কোর্স</h4>                <hr>                <p>🎤 Science Offline Course Fee: <b>13,000 টাকা</b></p>                <p>🎤 Business Studies & Humanities Fee: <b>10,000 টাকা</b></p>            </div>        </div>        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>💻 অনলাইন কোর্স</h4>                <hr>                <p>🎤 Science Online Course Fee: <b>8,000 টাকা</b></p>                <p>🎤 Business Studies & Humanities Fee: <b>8,000 টাকা</b></p>            </div>        </div>    </div>    <!-- Payment -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            বিকাশ পেমেন্ট        </h3>        <p>            Bkash (Send Money):            <strong>01711374487</strong>        </p>        <p>            Bkash (Payment):            <strong>01712162412</strong>        </p>    </div>    <!-- Videos -->    <h2 class=\"text-center mb-5 section-title\">        🎥 সফল শিক্ষার্থীদের ভিডিও    </h2>    <div class=\"row g-4\">        <!-- Video 1 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 2 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীর সাফল্যের গল্প।                </p>            </div>        </div>        <!-- Video 3 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>                </div>                <p>                    কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 4 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>                </div>                <p>                    সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।                </p>            </div>        </div>        <!-- Video 5 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।                </p>            </div>        </div>        <!-- Video 6 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>                </div>                <p>                    ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।                </p>            </div>        </div>        <!-- Video 7 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 8 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।                </p>            </div>        </div>    </div>    <!-- Contact -->    <div class=\"info-box mt-5\">        <h3 class=\"section-title\">            📍 যোগাযোগ        </h3>        <p>            হেড অফিস: ৩, আরামবাগ, মতিঝিল, ঢাকা        </p>        <p>            🎓 ব্রাঞ্চ: মতিঝিল, ধানমন্ডি, ফার্মগেট ও বনশ্রী        </p>        <p>            📞 01712-162412<br>            📞 019224716911<br>            📞 01894674181        </p>        <p>            🌐 Website:            <a href=\"#\">UAC Website</a>        </p>        <p>            📺 YouTube:            <a href=\"https://www.youtube.com/@uac-academic-and-admission\" target=\"_blank\">                Visit Channel            </a>        </p>        <br>    </div></div></section>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 8000.00, 2000.00, 'amount', NULL, NULL, NULL, 'Science', '💻 ১৯৯৬ সাল থেকে আমরা কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছি। এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486 ও ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে! 🚀❤ কলেজ ভর্তি কোচিংয়ে UAC ই সেরা। UAC 1996 সাল থেকে শুধু কলেজ ভর্তি কোচিং করায়। UAC কলেজ কোচিংয়ের আদ্যপান্ত সব জানে। আপনি একবার ভেবে দেখুন যে কোচিং গুলো বিভিন্ন ধরনের কোচিং করায় তারা কি সব প্রোগ্রামে ১০০% মনোযোগ দিতে পারবে? SSC পরীক্ষার সময় বিজ্ঞাপন দিয়ে কিছু স্টুডেন্ট ভর্তি করিয়ে লামছাম কিছু সার্ভিস দিতে না দিতেই HSC পরীক্ষা চলে আসবে। তখন আবার কলেজ কোচিংয়ের চিন্তা বাদ দিয়ে কিভাবে বুয়েট মেডিকেল ও ভার্সিটি ভর্তির স্টূডেন্ট আনা যায় সেই চিন্তায় ব্যস্ত থাকে। মনে রাখবেন একাডেমিক লেখাপড়ার ঠিক উল্টো পড়াশোনা করতে হয় কলেজ এডমিশনে। আমরা নটর ডেম, হলিক্রস ও সেন্ট যোসেফে ভর্তির ভাইভার দিন পর্যন্ত লেগে থাকি। এজন্যই UAC সর্বাধিক স্টূডেন্ট পায় ও চান্স পায়।', 'storage/media/product/2026-06-20-T4barqNxw8g1nClnbiF4sAWVbZ5q27Hxnp5Jd5mq.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-13 05:22:23', '2026-06-25 07:51:47'),
(339, 'Humanities (Offline)', 'COD20260613339', 'humanities-offline', NULL, 1, 1, 1, 'book', '519330570', NULL, 'storage/media/product/2026-06-20-UNHwH55GXhsmRcU6sdRRgMXcDpUZJbCEPzxbAIYV.webp', '<div class=\"course-short-description\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-regular fa-clock\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Course Duration</p><p style=\"font-size: 15px;\">1 Month</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-video\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Total Lecture</p><p style=\"font-size: 15px;\">180</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-print\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Total Exam</p><p style=\"font-size: 15px;\">160</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-person-walking-arrow-right\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Live class</p><p style=\"font-size: 15px;\">180</p></div></div><div class=\"course-includes-area\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"title\"><h5 style=\"font-weight: 700; font-size: 18px; padding: 15px 0px;\">This Course includes :</h5></div><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> 100% online course</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-tv\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Access on mobile , tablet and Computer</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Provide exclusive recorded class</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Provide a well-structured lecture sheet in PDF format.</p><!-- Videos --><h2 class=\"text-center mb-5 section-title\">      🎥 সফল শিক্ষার্থীদের ভিডিও  </h2><div class=\"row\">      <!-- Video 1 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 2 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীর সাফল্যের গল্প।              </p>        </div>    </div>    <!-- Video 3 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 4 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।              </p>        </div>    </div>    <!-- Video 5 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।              </p>        </div>    </div>    <!-- Video 6 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।              </p>        </div>    </div>    <!-- Video 7 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 8 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।              </p>        </div>    </div></div></div>', '<!-- =========================UAC College Admission Section========================== --><link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"><style>.uac-section{    background:#f8f9fa;}.uac-title{    color:#d60000;    font-weight:700;}.uac-card{    border:none;    border-radius:15px;    overflow:hidden;    box-shadow:0 5px 20px rgba(0,0,0,.08);    transition:.3s;}.uac-card:hover{    transform:translateY(-5px);}.video-card{    background:#fff;    border-radius:15px;    overflow:hidden;    box-shadow:0 4px 15px rgba(0,0,0,.08);    height:100%;}.video-card p{    padding:15px;    margin:0;    font-size:14px;    line-height:24px;}.info-box{    background:#fff;    padding:25px;    border-radius:15px;    box-shadow:0 5px 20px rgba(0,0,0,.08);}.course-card{    background:#fff;    padding:20px;    border-radius:15px;    box-shadow:0 5px 15px rgba(0,0,0,.08);    height:100%;}.btn-uac{    background:#d60000;    color:#fff;    border-radius:50px;    padding:12px 30px;}.btn-uac:hover{    background:#b50000;    color:#fff;}.section-title{    font-weight:700;    color:#0d6efd;    margin-bottom:20px;}</style><section class=\"uac-section py-5\"><div class=\"container\">    <!-- Hero Section -->    <div class=\"text-center mb-5\">        <h1 class=\"uac-title\">            ❤️ কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল        </h1>        <p class=\"lead mt-3\">            ১৯৯৬ সাল থেকে কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছে UAC।        </p>        <h4 class=\"text-success\">            Notre Dame College | Holy Cross College | St. Joseph College</h4></div>    <!-- Main Content -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?        </h3>        <p>            ❤️ Notre Dame College এর ৯০% Students UAC\'র।        </p>        <p>            🚀 এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486, ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে।        </p>        <p>            UAC ১৯৯৬ সাল থেকে শুধুমাত্র কলেজ ভর্তি কোচিং পরিচালনা করে আসছে।            কলেজ এডমিশনের প্রতিটি ধাপ, লিখিত পরীক্ষা থেকে শুরু করে ভাইভা পর্যন্ত            শিক্ষার্থীদের সাথে থাকে UAC।        </p>        <ul>            <li>📅 সপ্তাহে ৫ দিন ক্লাস</li>            <li>📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা</li>            <li>📝 সাপ্তাহিক ও মাসিক টেস্ট</li>            <li>🥇 মডেল টেস্ট</li>            <li>🎤 ভাইভা ক্লাস</li>            <li>💻 অনলাইন ও অফলাইন ব্যাচ</li>        </ul>    </div>    <!-- Course Fee -->    <h2 class=\"text-center mb-4 section-title\">        আমাদের কোর্স সমূহ    </h2>    <div class=\"row g-4 mb-5\">        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>🏫 অফলাইন কোর্স</h4>                <hr>                <p>🎤 Science Offline Course Fee: <b>13,000 টাকা</b></p>                <p>🎤 Business Studies & Humanities Fee: <b>10,000 টাকা</b></p>            </div>        </div>        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>💻 অনলাইন কোর্স</h4>                <hr>                <p>🎤 Science Online Course Fee: <b>8,000 টাকা</b></p>                <p>🎤 Business Studies & Humanities Fee: <b>8,000 টাকা</b></p>            </div>        </div>    </div>    <!-- Payment -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            বিকাশ পেমেন্ট        </h3>        <p>            Bkash (Send Money):            <strong>01711374487</strong>        </p>        <p>            Bkash (Payment):            <strong>01712162412</strong>        </p>    </div>    <!-- Videos -->    <h2 class=\"text-center mb-5 section-title\">        🎥 সফল শিক্ষার্থীদের ভিডিও    </h2>    <div class=\"row g-4\">        <!-- Video 1 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 2 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীর সাফল্যের গল্প।                </p>            </div>        </div>        <!-- Video 3 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>                </div>                <p>                    কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 4 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>                </div>                <p>                    সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।                </p>            </div>        </div>        <!-- Video 5 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।                </p>            </div>        </div>        <!-- Video 6 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>                </div>                <p>                    ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।                </p>            </div>        </div>        <!-- Video 7 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 8 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।                </p>            </div>        </div>    </div>    <!-- Contact -->    <div class=\"info-box mt-5\">        <h3 class=\"section-title\">            📍 যোগাযোগ        </h3>        <p>            হেড অফিস: ৩, আরামবাগ, মতিঝিল, ঢাকা        </p>        <p>            🎓 ব্রাঞ্চ: মতিঝিল, ধানমন্ডি, ফার্মগেট ও বনশ্রী        </p>        <p>            📞 01712-162412<br>            📞 019224716911<br>            📞 01894674181        </p>        <p>            🌐 Website:            <a href=\"#\">UAC Website</a>        </p>        <p>            📺 YouTube:            <a href=\"https://www.youtube.com/@uac-academic-and-admission\" target=\"_blank\">                Visit Channel            </a>        </p>        <br>    </div></div></section>', 0, 0, 1, NULL, 0, 8000.00, 13000.00, 11000.00, 2000.00, 'amount', NULL, NULL, NULL, 'Humanities Admission', '❤️কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল। Notre Dame College এর ৯০% Students UAC\'র।💻১৯৯৬ সাল থেকে আমরা কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছি। এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486 ও ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে!❤️&nbsp;কলেজ ভর্তি কোচিংয়ে UAC ই সেরা। UAC 1996 সাল থেকে শুধু কলেজ ভর্তি কোচিং করায়। UAC কলেজ কোচিংয়ের আদ্যপান্ত সব জানে। আপনি একবার ভেবে দেখুন যে কোচিং গুলো বিভিন্ন ধরনের কোচিং করায় তারা কি সব প্রোগ্রামে ১০০% মনোযোগ দিতে পারবে? SSC পরীক্ষার সময় বিজ্ঞাপন দিয়ে কিছু স্টুডেন্ট ভর্তি করিয়ে লামছাম কিছু সার্ভিস দিতে না দিতেই HSC পরীক্ষা চলে আসবে। তখন আবার কলেজ কোচিংয়ের চিন্তা বাদ দিয়ে কিভাবে বুয়েট মেডিকেল ও ভার্সিটি ভর্তির স্টূডেন্ট আনা যায় সেই চিন্তায় ব্যস্ত থাকে। মনে রাখবেন একাডেমিক লেখাপড়ার ঠিক উল্টো পড়াশোনা করতে হয় কলেজ এডমিশনে। আমরা নটর ডেম,&nbsp; হলিক্রস ও সেন্ট যোসেফে ভর্তির ভাইভার দিন পর্যন্ত লেগে থাকি। এজন্য‌ই UAC সর্বাধিক স্টুডেন্ট পায় ও চান্স পায়।💻অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে!&nbsp;🏫📅&nbsp;সপ্তাহে ৫ দিন ক্লাস,📚&nbsp;প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা,📝&nbsp;সাপ্তাহিক ও মাসিক টেস্ট,🥇 মডেল টেস্ট🎤&nbsp;ভাইভা ক্লাস।💻এভাবে ভর্তি পরীক্ষার আগের দিন পর্যন্ত চলতে থাকবে।মনে রাখবেন কলেজ ভর্তিতে আমাদের ধারে কাছেও কেউ নেই। তাই কোন দ্বিধা না রেখে দ্রুত ভর্তি হয়ে ব্যাচ ও সময় নির্ধারণ করুন।🗺️ হেড অফিস: 3, আরামবাগ, (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রীজ সংলগ্ন বিল্ডিংয়ের সাথে) অর্থাৎ আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে নটর ডেমের বিল্ডিং সংলগ্ন, ৩য় তলা, মতিঝিল, ঢাকা।&nbsp;📞&nbsp;ফোন: 01712-162412, 01894674181', 'storage/media/product/2026-06-20-UNHwH55GXhsmRcU6sdRRgMXcDpUZJbCEPzxbAIYV.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-13 05:37:26', '2026-06-25 07:51:08');
INSERT INTO `products` (`id`, `name`, `code`, `slug`, `category_id`, `uom_id`, `brand_id`, `publication_id`, `product_type`, `barcode`, `file`, `thumbnail`, `short_description`, `description`, `profit`, `profit_percent`, `show_dashboard`, `serial`, `required_share`, `purchase_price`, `regular_price`, `sale_price`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `sku`, `meta_title`, `meta_description`, `meta_image`, `custom_barcode`, `favorite`, `trending`, `new_arrival`, `best_seller`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(340, 'Business Studies (Offline)', 'COD20260613340', 'business-studies-offline', NULL, 1, 1, 1, 'book', '1608891062', NULL, 'storage/media/product/2026-06-20-XxFjeJ41MCstPPLIzBpDpgSGPmM0Du3zUYSMCJF6.webp', '<div class=\"course-short-description\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-regular fa-clock\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Course Duration</p><p style=\"font-size: 15px;\">1 Month</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-video\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Total Lecture</p><p style=\"font-size: 15px;\">180</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-print\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Total Exam</p><p style=\"font-size: 15px;\">160</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-person-walking-arrow-right\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Live class</p><p style=\"font-size: 15px;\">180</p></div></div><div class=\"course-includes-area\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"title\"><h5 style=\"font-weight: 700; font-size: 18px; padding: 15px 0px;\">This Course includes :</h5></div><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> 100% online course</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-tv\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Access on mobile , tablet and Computer</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Provide exclusive recorded class</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Provide a well-structured lecture sheet in PDF format.</p><!-- Videos --><h2 class=\"text-center mb-5 section-title\">      🎥 সফল শিক্ষার্থীদের ভিডিও  </h2><div class=\"row\">      <!-- Video 1 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 2 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীর সাফল্যের গল্প।              </p>        </div>    </div>    <!-- Video 3 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 4 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।              </p>        </div>    </div>    <!-- Video 5 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।              </p>        </div>    </div>    <!-- Video 6 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।              </p>        </div>    </div>    <!-- Video 7 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 8 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।              </p>        </div>    </div></div></div>', '<!-- =========================UAC College Admission Section========================== --><link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"><style>.uac-section{    background:#f8f9fa;}.uac-title{    color:#d60000;    font-weight:700;}.uac-card{    border:none;    border-radius:15px;    overflow:hidden;    box-shadow:0 5px 20px rgba(0,0,0,.08);    transition:.3s;}.uac-card:hover{    transform:translateY(-5px);}.video-card{    background:#fff;    border-radius:15px;    overflow:hidden;    box-shadow:0 4px 15px rgba(0,0,0,.08);    height:100%;}.video-card p{    padding:15px;    margin:0;    font-size:14px;    line-height:24px;}.info-box{    background:#fff;    padding:25px;    border-radius:15px;    box-shadow:0 5px 20px rgba(0,0,0,.08);}.course-card{    background:#fff;    padding:20px;    border-radius:15px;    box-shadow:0 5px 15px rgba(0,0,0,.08);    height:100%;}.btn-uac{    background:#d60000;    color:#fff;    border-radius:50px;    padding:12px 30px;}.btn-uac:hover{    background:#b50000;    color:#fff;}.section-title{    font-weight:700;    color:#0d6efd;    margin-bottom:20px;}</style><section class=\"uac-section py-5\"><div class=\"container\">    <!-- Hero Section -->    <div class=\"text-center mb-5\">        <h1 class=\"uac-title\">            ❤️ কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল        </h1>        <p class=\"lead mt-3\">            ১৯৯৬ সাল থেকে কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছে UAC।        </p>        <h4 class=\"text-success\">            Notre Dame College | Holy Cross College | St. Joseph College</h4></div>    <!-- Main Content -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?        </h3>        <p>            ❤️ Notre Dame College এর ৯০% Students UAC\'র।        </p>        <p>            🚀 এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486, ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে।        </p>        <p>            UAC ১৯৯৬ সাল থেকে শুধুমাত্র কলেজ ভর্তি কোচিং পরিচালনা করে আসছে।            কলেজ এডমিশনের প্রতিটি ধাপ, লিখিত পরীক্ষা থেকে শুরু করে ভাইভা পর্যন্ত            শিক্ষার্থীদের সাথে থাকে UAC।        </p>        <ul>            <li>📅 সপ্তাহে ৫ দিন ক্লাস</li>            <li>📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা</li>            <li>📝 সাপ্তাহিক ও মাসিক টেস্ট</li>            <li>🥇 মডেল টেস্ট</li>            <li>🎤 ভাইভা ক্লাস</li>            <li>💻 অনলাইন ও অফলাইন ব্যাচ</li>        </ul>    </div>    <!-- Course Fee -->    <h2 class=\"text-center mb-4 section-title\">        আমাদের কোর্স সমূহ    </h2>    <div class=\"row g-4 mb-5\">        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>🏫 অফলাইন কোর্স</h4>                <hr>                <p>🎤 Science Offline Course Fee: <b>13,000 টাকা</b></p>                <p>🎤 Business Studies & Humanities Fee: <b>10,000 টাকা</b></p>            </div>        </div>        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>💻 অনলাইন কোর্স</h4>                <hr>                <p>🎤 Science Online Course Fee: <b>8,000 টাকা</b></p>                <p>🎤 Business Studies & Humanities Fee: <b>8,000 টাকা</b></p>            </div>        </div>    </div>    <!-- Payment -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            বিকাশ পেমেন্ট        </h3>        <p>            Bkash (Send Money):            <strong>01711374487</strong>        </p>        <p>            Bkash (Payment):            <strong>01712162412</strong>        </p>    </div>    <!-- Videos -->    <h2 class=\"text-center mb-5 section-title\">        🎥 সফল শিক্ষার্থীদের ভিডিও    </h2>    <div class=\"row g-4\">        <!-- Video 1 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 2 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীর সাফল্যের গল্প।                </p>            </div>        </div>        <!-- Video 3 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>                </div>                <p>                    কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 4 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>                </div>                <p>                    সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।                </p>            </div>        </div>        <!-- Video 5 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।                </p>            </div>        </div>        <!-- Video 6 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>                </div>                <p>                    ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।                </p>            </div>        </div>        <!-- Video 7 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 8 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।                </p>            </div>        </div>    </div>    <!-- Contact -->    <div class=\"info-box mt-5\">        <h3 class=\"section-title\">            📍 যোগাযোগ        </h3>        <p>            হেড অফিস: ৩, আরামবাগ, মতিঝিল, ঢাকা        </p>        <p>            🎓 ব্রাঞ্চ: মতিঝিল, ধানমন্ডি, ফার্মগেট ও বনশ্রী        </p>        <p>            📞 01712-162412<br>            📞 019224716911<br>            📞 01894674181        </p>        <p>            🌐 Website:            <a href=\"#\">UAC Website</a>        </p>        <p>            📺 YouTube:            <a href=\"https://www.youtube.com/@uac-academic-and-admission\" target=\"_blank\">                Visit Channel            </a>        </p>        <br>    </div></div></section>', 0, 0, 1, NULL, 0, 8000.00, 13000.00, 11000.00, 2000.00, 'amount', NULL, NULL, NULL, 'Business Studies', '❤️কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল। Notre Dame College এর ৯০% Students UAC\'র।💻১৯৯৬ সাল থেকে আমরা কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছি। এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486 ও ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে!❤️&nbsp;কলেজ ভর্তি কোচিংয়ে UAC ই সেরা। UAC 1996 সাল থেকে শুধু কলেজ ভর্তি কোচিং করায়। UAC কলেজ কোচিংয়ের আদ্যপান্ত সব জানে। আপনি একবার ভেবে দেখুন যে কোচিং গুলো বিভিন্ন ধরনের কোচিং করায় তারা কি সব প্রোগ্রামে ১০০% মনোযোগ দিতে পারবে? SSC পরীক্ষার সময় বিজ্ঞাপন দিয়ে কিছু স্টুডেন্ট ভর্তি করিয়ে লামছাম কিছু সার্ভিস দিতে না দিতেই HSC পরীক্ষা চলে আসবে। তখন আবার কলেজ কোচিংয়ের চিন্তা বাদ দিয়ে কিভাবে বুয়েট মেডিকেল ও ভার্সিটি ভর্তির স্টূডেন্ট আনা যায় সেই চিন্তায় ব্যস্ত থাকে। মনে রাখবেন একাডেমিক লেখাপড়ার ঠিক উল্টো পড়াশোনা করতে হয় কলেজ এডমিশনে। আমরা নটর ডেম,&nbsp; হলিক্রস ও সেন্ট যোসেফে ভর্তির ভাইভার দিন পর্যন্ত লেগে থাকি। এজন্য‌ই UAC সর্বাধিক স্টুডেন্ট পায় ও চান্স পায়।💻অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে!&nbsp;🏫📅&nbsp;সপ্তাহে ৫ দিন ক্লাস,📚&nbsp;প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা,📝&nbsp;সাপ্তাহিক ও মাসিক টেস্ট,🥇 মডেল টেস্ট🎤&nbsp;ভাইভা ক্লাস।💻এভাবে ভর্তি পরীক্ষার আগের দিন পর্যন্ত চলতে থাকবে।মনে রাখবেন কলেজ ভর্তিতে আমাদের ধারে কাছেও কেউ নেই। তাই কোন দ্বিধা না রেখে দ্রুত ভর্তি হয়ে ব্যাচ ও সময় নির্ধারণ করুন।🗺️ হেড অফিস: 3, আরামবাগ, (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রীজ সংলগ্ন বিল্ডিংয়ের সাথে) অর্থাৎ আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে নটর ডেমের বিল্ডিং সংলগ্ন, ৩য় তলা, মতিঝিল, ঢাকা।&nbsp;📞&nbsp;ফোন: 01712-162412, 01894674181', 'storage/media/product/2026-06-20-XxFjeJ41MCstPPLIzBpDpgSGPmM0Du3zUYSMCJF6.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-13 05:38:23', '2026-06-25 07:50:32'),
(341, 'Science (English Version) Offline', 'COD20260613341', 'science-english-version-offline', NULL, 1, 1, 1, 'book', '-1789695673', NULL, 'storage/media/product/2026-06-20-4BS54yHBnSo3Ib2bNbXDZ6DpoluRiFPpsEOWW2XX.webp', '<div class=\"course-short-description\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-regular fa-clock\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Course Duration</p><p style=\"font-size: 15px;\">1 Month</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-video\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Total Lecture</p><p style=\"font-size: 15px;\">180</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-print\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Total Exam</p><p style=\"font-size: 15px;\">160</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-person-walking-arrow-right\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Live class</p><p style=\"font-size: 15px;\">180</p></div></div><div class=\"course-includes-area\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"title\"><h5 style=\"font-weight: 700; font-size: 18px; padding: 15px 0px;\">This Course includes :</h5></div><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> 100% online course</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-tv\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Access on mobile , tablet and Computer</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Provide exclusive recorded class</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Provide a well-structured lecture sheet in PDF format.</p><!-- Videos --><h2 class=\"text-center mb-5 section-title\">      🎥 সফল শিক্ষার্থীদের ভিডিও  </h2><div class=\"row\">      <!-- Video 1 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 2 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীর সাফল্যের গল্প।              </p>        </div>    </div>    <!-- Video 3 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 4 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।              </p>        </div>    </div>    <!-- Video 5 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।              </p>        </div>    </div>    <!-- Video 6 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।              </p>        </div>    </div>    <!-- Video 7 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 8 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।              </p>        </div>    </div></div></div>', '<!-- =========================UAC College Admission Section========================== --><link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"><style>.uac-section{    background:#f8f9fa;}.uac-title{    color:#d60000;    font-weight:700;}.uac-card{    border:none;    border-radius:15px;    overflow:hidden;    box-shadow:0 5px 20px rgba(0,0,0,.08);    transition:.3s;}.uac-card:hover{    transform:translateY(-5px);}.video-card{    background:#fff;    border-radius:15px;    overflow:hidden;    box-shadow:0 4px 15px rgba(0,0,0,.08);    height:100%;}.video-card p{    padding:15px;    margin:0;    font-size:14px;    line-height:24px;}.info-box{    background:#fff;    padding:25px;    border-radius:15px;    box-shadow:0 5px 20px rgba(0,0,0,.08);}.course-card{    background:#fff;    padding:20px;    border-radius:15px;    box-shadow:0 5px 15px rgba(0,0,0,.08);    height:100%;}.btn-uac{    background:#d60000;    color:#fff;    border-radius:50px;    padding:12px 30px;}.btn-uac:hover{    background:#b50000;    color:#fff;}.section-title{    font-weight:700;    color:#0d6efd;    margin-bottom:20px;}</style><section class=\"uac-section py-5\"><div class=\"container\">    <!-- Hero Section -->    <div class=\"text-center mb-5\">        <h1 class=\"uac-title\">            ❤️ কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল        </h1>        <p class=\"lead mt-3\">            ১৯৯৬ সাল থেকে কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছে UAC।        </p>        <h4 class=\"text-success\">            Notre Dame College | Holy Cross College | St. Joseph College</h4></div>    <!-- Main Content -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?        </h3>        <p>            ❤️ Notre Dame College এর ৯০% Students UAC\'র।        </p>        <p>            🚀 এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486, ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে।        </p>        <p>            UAC ১৯৯৬ সাল থেকে শুধুমাত্র কলেজ ভর্তি কোচিং পরিচালনা করে আসছে।            কলেজ এডমিশনের প্রতিটি ধাপ, লিখিত পরীক্ষা থেকে শুরু করে ভাইভা পর্যন্ত            শিক্ষার্থীদের সাথে থাকে UAC।        </p>        <ul>            <li>📅 সপ্তাহে ৫ দিন ক্লাস</li>            <li>📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা</li>            <li>📝 সাপ্তাহিক ও মাসিক টেস্ট</li>            <li>🥇 মডেল টেস্ট</li>            <li>🎤 ভাইভা ক্লাস</li>            <li>💻 অনলাইন ও অফলাইন ব্যাচ</li>        </ul>    </div>    <!-- Course Fee -->    <h2 class=\"text-center mb-4 section-title\">        আমাদের কোর্স সমূহ    </h2>    <div class=\"row g-4 mb-5\">        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>🏫 অফলাইন কোর্স</h4>                <hr>                <p>🎤 Science Offline Course Fee: <b>13,000 টাকা</b></p>                <p>🎤 Business Studies & Humanities Fee: <b>10,000 টাকা</b></p>            </div>        </div>        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>💻 অনলাইন কোর্স</h4>                <hr>                <p>🎤 Science Online Course Fee: <b>8,000 টাকা</b></p>                <p>🎤 Business Studies & Humanities Fee: <b>8,000 টাকা</b></p>            </div>        </div>    </div>    <!-- Payment -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            বিকাশ পেমেন্ট        </h3>        <p>            Bkash (Send Money):            <strong>01711374487</strong>        </p>        <p>            Bkash (Payment):            <strong>01712162412</strong>        </p>    </div>    <!-- Videos -->    <h2 class=\"text-center mb-5 section-title\">        🎥 সফল শিক্ষার্থীদের ভিডিও    </h2>    <div class=\"row g-4\">        <!-- Video 1 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 2 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীর সাফল্যের গল্প।                </p>            </div>        </div>        <!-- Video 3 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>                </div>                <p>                    কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 4 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>                </div>                <p>                    সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।                </p>            </div>        </div>        <!-- Video 5 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।                </p>            </div>        </div>        <!-- Video 6 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>                </div>                <p>                    ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।                </p>            </div>        </div>        <!-- Video 7 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 8 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।                </p>            </div>        </div>    </div>    <!-- Contact -->    <div class=\"info-box mt-5\">        <h3 class=\"section-title\">            📍 যোগাযোগ        </h3>        <p>            হেড অফিস: ৩, আরামবাগ, মতিঝিল, ঢাকা        </p>        <p>            🎓 ব্রাঞ্চ: মতিঝিল, ধানমন্ডি, ফার্মগেট ও বনশ্রী        </p>        <p>            📞 01712-162412<br>            📞 019224716911<br>            📞 01894674181        </p>        <p>            🌐 Website:            <a href=\"#\">UAC Website</a>        </p>        <p>            📺 YouTube:            <a href=\"https://www.youtube.com/@uac-academic-and-admission\" target=\"_blank\">                Visit Channel            </a>        </p>        <br>    </div></div></section>', 0, 0, 1, NULL, 0, 8000.00, 13000.00, 11000.00, 2000.00, 'amount', NULL, NULL, NULL, 'English Version', '❤️কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক\r\nসফল। Notre Dame College এর ৯০% Students UAC\'র।💻১৯৯৬ সাল থেকে আমরা কলেজ ভর্তি কোচিংয়ে বিশেষভাবে\r\nকাজ করে আসছি। এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486 ও ইংলিশ ভার্সনে 203 এবং হলিক্রসে\r\n228 জনের চান্স পেয়েছে!❤️ কলেজ ভর্তি কোচিংয়ে UAC ই সেরা। UAC\r\n1996 সাল থেকে শুধু কলেজ ভর্তি কোচিং করায়। UAC কলেজ কোচিংয়ের আদ্যপান্ত সব জানে।\r\nআপনি একবার ভেবে দেখুন যে কোচিং গুলো বিভিন্ন ধরনের কোচিং করায় তারা কি সব প্রোগ্রামে\r\n১০০% মনোযোগ দিতে পারবে? SSC পরীক্ষার সময় বিজ্ঞাপন দিয়ে কিছু স্টুডেন্ট ভর্তি করিয়ে\r\nলামছাম কিছু সার্ভিস দিতে না দিতেই HSC পরীক্ষা চলে আসবে। তখন আবার কলেজ কোচিংয়ের\r\nচিন্তা বাদ দিয়ে কিভাবে বুয়েট মেডিকেল ও ভার্সিটি ভর্তির স্টূডেন্ট আনা যায় সেই\r\nচিন্তায় ব্যস্ত থাকে। মনে রাখবেন একাডেমিক লেখাপড়ার ঠিক উল্টো পড়াশোনা করতে হয়\r\nকলেজ এডমিশনে। আমরা নটর ডেম,&nbsp; হলিক্রস ও সেন্ট\r\nযোসেফে ভর্তির ভাইভার দিন পর্যন্ত লেগে থাকি। এজন্য‌ই UAC সর্বাধিক স্টুডেন্ট পায়\r\nও চান্স পায়।💻অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে! 🏫 📅 সপ্তাহে ৫ দিন ক্লাস, 📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা,\r\n📝 সাপ্তাহিক ও মাসিক টেস্ট, 🥇 মডেল টেস্ট 🎤 ভাইভা ক্লাস।💻এভাবে ভর্তি পরীক্ষার আগের দিন পর্যন্ত চলতে\r\nথাকবে।মনে রাখবেন কলেজ ভর্তিতে আমাদের ধারে কাছেও কেউ নেই। তাই কোন দ্বিধা না রেখে\r\nদ্রুত ভর্তি হয়ে ব্যাচ ও সময় নির্ধারণ করুন।🗺️ হেড অফিস: 3, আরামবাগ, (নটর ডেম কলেজের মেইন\r\nগেটের সামনের ফুটওভার ব্রীজ সংলগ্ন বিল্ডিংয়ের সাথে) অর্থাৎ আরামবাগ পুলিশ বক্সের ঠিক\r\nউল্টো পাশে নটর ডেমের বিল্ডিং সংলগ্ন, ৩য় তলা, মতিঝিল, ঢাকা। &nbsp;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n📞 ফোন: 01712-162412, 01894674181', 'storage/media/product/2026-06-20-4BS54yHBnSo3Ib2bNbXDZ6DpoluRiFPpsEOWW2XX.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-13 05:39:24', '2026-06-25 07:49:38'),
(342, 'Class One (Offline)', 'COD20260618342', 'class-one-offline', NULL, 1, 1, 1, 'book', '-1038668570', NULL, 'storage/media/product/2026-06-20-CYEnegeu38jIGOQSTYoiUN3b1glmzNmsTo1VlopZ.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 8000.00, 2000.00, 'amount', NULL, NULL, NULL, 'Class One', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-06-20-CYEnegeu38jIGOQSTYoiUN3b1glmzNmsTo1VlopZ.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-18 18:54:55', '2026-06-25 14:29:26'),
(343, 'A-Unit Admission (Online)', 'COD20260618343', 'a-unit-admission-online', NULL, 1, 1, 1, 'book', '-1144612245', NULL, 'storage/media/product/2026-06-20-m7Nu5rqqxqPt5mtCq68GtNr6aBgFb59xY7JcqLsu.webp', NULL, NULL, 0, 0, 1, NULL, 0, 8000.00, 10000.00, 5000.00, 5000.00, 'amount', NULL, NULL, NULL, 'A-Unit Ad mission', '', 'storage/media/product/2026-06-20-m7Nu5rqqxqPt5mtCq68GtNr6aBgFb59xY7JcqLsu.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-18 18:57:36', '2026-06-25 08:14:52'),
(344, 'B-Unit Admission (Online)', 'COD20260619344', 'b-unit-admission-online', NULL, 1, 1, 1, 'book', '1896516832', NULL, 'storage/media/product/2026-06-20-9k6etS1e1mDcrfhwDPyMAfYLhH5ObxWGIrW8iz0J.webp', NULL, NULL, 0, 0, 1, NULL, 0, 800.00, 10000.00, 5000.00, 5000.00, 'amount', NULL, NULL, NULL, 'A-Unit Admission', '', 'storage/media/product/2026-06-20-9k6etS1e1mDcrfhwDPyMAfYLhH5ObxWGIrW8iz0J.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-19 08:15:25', '2026-06-25 08:14:34');
INSERT INTO `products` (`id`, `name`, `code`, `slug`, `category_id`, `uom_id`, `brand_id`, `publication_id`, `product_type`, `barcode`, `file`, `thumbnail`, `short_description`, `description`, `profit`, `profit_percent`, `show_dashboard`, `serial`, `required_share`, `purchase_price`, `regular_price`, `sale_price`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `sku`, `meta_title`, `meta_description`, `meta_image`, `custom_barcode`, `favorite`, `trending`, `new_arrival`, `best_seller`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(345, 'Class Three (Offline)', 'COD20260619345', 'class-three-offline', NULL, 1, 1, 1, 'book', '953054359', NULL, 'storage/media/product/2026-06-20-1nvhQCw3FwVOcjXnQeRmtJq0cInSg2peHqTBXieK.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 8000.00, 2000.00, 'amount', NULL, NULL, NULL, 'Class One', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-06-20-1nvhQCw3FwVOcjXnQeRmtJq0cInSg2peHqTBXieK.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-19 09:01:33', '2026-06-25 14:36:24'),
(346, 'Class Six (Offline)', 'COD20260619346', 'class-six-offline', NULL, 1, 1, 1, 'book', '1110194401', NULL, 'storage/media/product/2026-06-20-OpHdmdCy87iWZg9b1QQCIodFN7Py0qQ21f24VaG4.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 8000.00, 2000.00, 'amount', NULL, NULL, NULL, 'Class Six', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-06-20-OpHdmdCy87iWZg9b1QQCIodFN7Py0qQ21f24VaG4.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-19 09:04:04', '2026-06-25 14:37:39'),
(347, 'Class Seven (Offline)', 'COD20260619347', 'class-seven-offline', NULL, 1, 1, 1, 'book', '1340895635', NULL, 'storage/media/product/2026-06-20-lnDlxolXGyKIa1BvYhn8FxH17MP873T0WPRSggpH.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 8000.00, 2000.00, 'amount', NULL, NULL, NULL, 'Class Seven', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-06-20-lnDlxolXGyKIa1BvYhn8FxH17MP873T0WPRSggpH.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-19 09:05:05', '2026-06-25 14:39:03'),
(348, 'Class Nine (Offline)', 'COD20260619348', 'class-nine-offline', NULL, 1, 1, 1, 'book', '-222861457', NULL, 'storage/media/product/2026-06-20-TZzEz5TTEDHvqABdyfzNZWa6cAVJrUDa8wUuaFHR.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 8000.00, 2000.00, 'amount', NULL, NULL, NULL, 'Class Nine', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-06-20-TZzEz5TTEDHvqABdyfzNZWa6cAVJrUDa8wUuaFHR.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-19 09:05:55', '2026-06-25 14:40:15'),
(349, 'Science (Bangla Version) Offline', 'COD20260619349', 'science-bangla-version-offline', NULL, 1, 1, 1, 'book', '-734277676', NULL, 'storage/media/product/2026-06-20-BShYCLqkbM5Qzt01DUKjxE6dFKYvFTNzadH8h37D.webp', '<div class=\"course-short-description\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-regular fa-clock\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Course Duration</p><p style=\"font-size: 15px;\">1 Month</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-video\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Total Lecture</p><p style=\"font-size: 15px;\">180</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-print\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Total Exam</p><p style=\"font-size: 15px;\">160</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-person-walking-arrow-right\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Live class</p><p style=\"font-size: 15px;\">180</p></div></div><div class=\"course-includes-area\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"title\"><h5 style=\"font-weight: 700; font-size: 18px; padding: 15px 0px;\">This Course includes :</h5></div><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> 100% online course</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-tv\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Access on mobile , tablet and Computer</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Provide exclusive recorded class</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Provide a well-structured lecture sheet in PDF format.</p><!-- Videos --><h2 class=\"text-center mb-5 section-title\">      🎥 সফল শিক্ষার্থীদের ভিডিও  </h2><div class=\"row\">      <!-- Video 1 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 2 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীর সাফল্যের গল্প।              </p>        </div>    </div>    <!-- Video 3 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 4 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।              </p>        </div>    </div>    <!-- Video 5 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।              </p>        </div>    </div>    <!-- Video 6 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।              </p>        </div>    </div>    <!-- Video 7 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 8 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।              </p>        </div>    </div></div></div>', '<!-- =========================UAC College Admission Section========================== --><link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"><style>.uac-section{    background:#f8f9fa;}.uac-title{    color:#d60000;    font-weight:700;}.uac-card{    border:none;    border-radius:15px;    overflow:hidden;    box-shadow:0 5px 20px rgba(0,0,0,.08);    transition:.3s;}.uac-card:hover{    transform:translateY(-5px);}.video-card{    background:#fff;    border-radius:15px;    overflow:hidden;    box-shadow:0 4px 15px rgba(0,0,0,.08);    height:100%;}.video-card p{    padding:15px;    margin:0;    font-size:14px;    line-height:24px;}.info-box{    background:#fff;    padding:25px;    border-radius:15px;    box-shadow:0 5px 20px rgba(0,0,0,.08);}.course-card{    background:#fff;    padding:20px;    border-radius:15px;    box-shadow:0 5px 15px rgba(0,0,0,.08);    height:100%;}.btn-uac{    background:#d60000;    color:#fff;    border-radius:50px;    padding:12px 30px;}.btn-uac:hover{    background:#b50000;    color:#fff;}.section-title{    font-weight:700;    color:#0d6efd;    margin-bottom:20px;}</style><section class=\"uac-section py-5\"><div class=\"container\">    <!-- Hero Section -->    <div class=\"text-center mb-5\">        <h1 class=\"uac-title\">            ❤️ কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল        </h1>        <p class=\"lead mt-3\">            ১৯৯৬ সাল থেকে কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছে UAC।        </p>        <h4 class=\"text-success\">            Notre Dame College | Holy Cross College | St. Joseph College</h4></div>    <!-- Main Content -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?        </h3>        <p>            ❤️ Notre Dame College এর ৯০% Students UAC\'র।        </p>        <p>            🚀 এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486, ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে।        </p>        <p>            UAC ১৯৯৬ সাল থেকে শুধুমাত্র কলেজ ভর্তি কোচিং পরিচালনা করে আসছে।            কলেজ এডমিশনের প্রতিটি ধাপ, লিখিত পরীক্ষা থেকে শুরু করে ভাইভা পর্যন্ত            শিক্ষার্থীদের সাথে থাকে UAC।        </p>        <ul>            <li>📅 সপ্তাহে ৫ দিন ক্লাস</li>            <li>📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা</li>            <li>📝 সাপ্তাহিক ও মাসিক টেস্ট</li>            <li>🥇 মডেল টেস্ট</li>            <li>🎤 ভাইভা ক্লাস</li>            <li>💻 অনলাইন ও অফলাইন ব্যাচ</li>        </ul>    </div>    <!-- Course Fee -->    <h2 class=\"text-center mb-4 section-title\">        আমাদের কোর্স সমূহ    </h2>    <div class=\"row g-4 mb-5\">        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>🏫 অফলাইন কোর্স</h4>                <hr>                <p>🎤 Science Offline Course Fee: <b>13,000 টাকা</b></p>                <p>🎤 Business Studies & Humanities Fee: <b>10,000 টাকা</b></p>            </div>        </div>        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>💻 অনলাইন কোর্স</h4>                <hr>                <p>🎤 Science Online Course Fee: <b>8,000 টাকা</b></p>                <p>🎤 Business Studies & Humanities Fee: <b>8,000 টাকা</b></p>            </div>        </div>    </div>    <!-- Payment -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            বিকাশ পেমেন্ট        </h3>        <p>            Bkash (Send Money):            <strong>01711374487</strong>        </p>        <p>            Bkash (Payment):            <strong>01712162412</strong>        </p>    </div>    <!-- Videos -->    <h2 class=\"text-center mb-5 section-title\">        🎥 সফল শিক্ষার্থীদের ভিডিও    </h2>    <div class=\"row g-4\">        <!-- Video 1 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 2 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীর সাফল্যের গল্প।                </p>            </div>        </div>        <!-- Video 3 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>                </div>                <p>                    কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 4 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>                </div>                <p>                    সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।                </p>            </div>        </div>        <!-- Video 5 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।                </p>            </div>        </div>        <!-- Video 6 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>                </div>                <p>                    ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।                </p>            </div>        </div>        <!-- Video 7 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 8 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।                </p>            </div>        </div>    </div>    <!-- Contact -->    <div class=\"info-box mt-5\">        <h3 class=\"section-title\">            📍 যোগাযোগ        </h3>        <p>            হেড অফিস: ৩, আরামবাগ, মতিঝিল, ঢাকা        </p>        <p>            🎓 ব্রাঞ্চ: মতিঝিল, ধানমন্ডি, ফার্মগেট ও বনশ্রী        </p>        <p>            📞 01712-162412<br>            📞 019224716911<br>            📞 01894674181        </p>        <p>            🌐 Website:            <a href=\"#\">UAC Website</a>        </p>        <p>            📺 YouTube:            <a href=\"https://www.youtube.com/@uac-academic-and-admission\" target=\"_blank\">                Visit Channel            </a>        </p>        <br>    </div></div></section>', 0, 0, 1, NULL, 0, 8000.00, 13000.00, 11000.00, 2000.00, 'amount', NULL, NULL, NULL, 'Science (Bangla Vers.)', '.uac-section{    background:#f8f9fa;}.uac-title{    color:#d60000;    font-weight:700;}.uac-card{    border:none;    border-radius:15px;    overflow:hidden;    box-shadow:0 5px 20px rgba(0,0,0,.08);    transition:.3s;}.uac-card:hover{    transform:translateY(-5px);}.video-card{    background:#fff;    border-radius:15px;    overflow:hidden;    box-shadow:0 4px 15px rgba(0,0,0,.08);    height:100%;}.video-card p{    padding:15px;    margin:0;    font-size:14px;    line-height:24px;}.info-box{    background:#fff;    padding:25px;    border-radius:15px;    box-shadow:0 5px 20px rgba(0,0,0,.08);}.course-card{    background:#fff;    padding:20px;    border-radius:15px;    box-shadow:0 5px 15px rgba(0,0,0,.08);    height:100%;}.btn-uac{    background:#d60000;    color:#fff;    border-radius:50px;    padding:12px 30px;}.btn-uac:hover{    background:#b50000;    color:#fff;}.section-title{    font-weight:700;    color:#0d6efd;    margin-bottom:20px;}                            ❤️ কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল                            ১৯৯৬ সাল থেকে কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছে UAC।                            Notre Dame College | Holy Cross College | St. Joseph College                            কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?                            ❤️ Notre Dame College এর ৯০% Students UAC\'র।                            🚀 এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486, ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে।                            UAC ১৯৯৬ সাল থেকে শুধুমাত্র কলেজ ভর্তি কোচিং পরিচালনা করে আসছে।            কলেজ এডমিশনের প্রতিটি ধাপ, লিখিত পরীক্ষা থেকে শুরু করে ভাইভা পর্যন্ত            শিক্ষার্থীদের সাথে থাকে UAC।                            📅 সপ্তাহে ৫ দিন ক্লাস            📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা            📝 সাপ্তাহিক ও মাসিক টেস্ট            🥇 মডেল টেস্ট            🎤 ভাইভা ক্লাস            💻 অনলাইন ও অফলাইন ব্যাচ                            আমাদের কোর্স সমূহ                                            🏫 অফলাইন কোর্স                                🎤 Science Offline Course Fee: 13,000 টাকা                🎤 Business Studies &amp; Humanities Fee: 10,000 টাকা                                                        💻 অনলাইন কোর্স                                🎤 Science Online Course Fee: 8,000 টাকা                🎤 Business Studies &amp; Humanities Fee: 8,000 টাকা                                                    বিকাশ পেমেন্ট                            Bkash (Send Money):            01711374487                            Bkash (Payment):            01712162412                            🎥 সফল শিক্ষার্থীদের ভিডিও                                                                                                                            Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।                                                                                                                                                        UAC শিক্ষার্থীর সাফল্যের গল্প।                                                                                                                                                        কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।                                                                                                                                                        সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।                                                                                                                                                        UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।                                                                                                                                                        ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।                                                                                                                                                        Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।                                                                                                                                                        UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।                                                                    📍 যোগাযোগ                            হেড অফিস: ৩, আরামবাগ, মতিঝিল, ঢাকা                            🎓 ব্রাঞ্চ: মতিঝিল, ধানমন্ডি, ফার্মগেট ও বনশ্রী                            📞 01712-162412            📞 019224716911            📞 01894674181                            🌐 Website:            UAC Website                            📺 YouTube:                            Visit Channel', 'storage/media/product/2026-06-20-BShYCLqkbM5Qzt01DUKjxE6dFKYvFTNzadH8h37D.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-19 09:09:20', '2026-06-25 07:52:32');
INSERT INTO `products` (`id`, `name`, `code`, `slug`, `category_id`, `uom_id`, `brand_id`, `publication_id`, `product_type`, `barcode`, `file`, `thumbnail`, `short_description`, `description`, `profit`, `profit_percent`, `show_dashboard`, `serial`, `required_share`, `purchase_price`, `regular_price`, `sale_price`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `sku`, `meta_title`, `meta_description`, `meta_image`, `custom_barcode`, `favorite`, `trending`, `new_arrival`, `best_seller`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(350, 'C-Unit Admission (Online)', 'COD20260619350', 'c-unit-admission-online', NULL, 1, 1, 1, 'book', '-1400758468', NULL, 'storage/media/product/2026-06-20-AqTXDXubpzI7dFSotsYtcqnDVBNIqegTu5pZdrnE.webp', NULL, NULL, 0, 0, 1, NULL, 0, 8000.00, 10000.00, 5000.00, 5000.00, 'amount', NULL, NULL, NULL, 'C-Unit Admission', '', 'storage/media/product/2026-06-20-AqTXDXubpzI7dFSotsYtcqnDVBNIqegTu5pZdrnE.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-19 09:24:25', '2026-06-25 08:14:03'),
(351, 'GST Admission (Online)', 'COD20260619351', 'gst-admission-online', NULL, 1, 1, 1, 'book', '1050389062', NULL, 'storage/media/product/2026-06-20-qVpyxkKOJxlgt5kjiHzJJCRLGKCwCpnfmxclLLcf.webp', NULL, NULL, 0, 0, 1, NULL, 0, 8000.00, 10000.00, 5000.00, 5000.00, 'amount', NULL, NULL, NULL, 'GST Admission', '', 'storage/media/product/2026-06-20-qVpyxkKOJxlgt5kjiHzJJCRLGKCwCpnfmxclLLcf.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-19 09:25:21', '2026-06-25 08:14:16'),
(352, 'Science (English Version) Online', 'COD20260625352', 'science-english-version-online', NULL, 1, 1, 1, 'book', '-1053147415', NULL, 'storage/media/product/2026-06-25-nuJdC6sEYmo8b7F85y2E8Crbf4OjqGXSzoRGYQ9k.webp', '<div class=\"course-short-description\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-regular fa-clock\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Course Duration</p><p style=\"font-size: 15px;\">1 Month</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-video\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Total Lecture</p><p style=\"font-size: 15px;\">180</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-print\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Total Exam</p><p style=\"font-size: 15px;\">160</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-person-walking-arrow-right\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span> Live class</p><p style=\"font-size: 15px;\">180</p></div></div><div class=\"course-includes-area\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"title\"><h5 style=\"font-weight: 700; font-size: 18px; padding: 15px 0px;\">This Course includes :</h5></div><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> 100% online course</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-tv\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Access on mobile , tablet and Computer</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Provide exclusive recorded class</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span> Provide a well-structured lecture sheet in PDF format.</p><!-- Videos --><h2 class=\"text-center mb-5 section-title\">      🎥 সফল শিক্ষার্থীদের ভিডিও  </h2><div class=\"row\">      <!-- Video 1 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 2 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীর সাফল্যের গল্প।              </p>        </div>    </div>    <!-- Video 3 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 4 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।              </p>        </div>    </div>    <!-- Video 5 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।              </p>        </div>    </div>    <!-- Video 6 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।              </p>        </div>    </div>    <!-- Video 7 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 8 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।              </p>        </div>    </div></div></div>', '<!-- =========================UAC College Admission Section========================== --><link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"><style>.uac-section{    background:#f8f9fa;}.uac-title{    color:#d60000;    font-weight:700;}.uac-card{    border:none;    border-radius:15px;    overflow:hidden;    box-shadow:0 5px 20px rgba(0,0,0,.08);    transition:.3s;}.uac-card:hover{    transform:translateY(-5px);}.video-card{    background:#fff;    border-radius:15px;    overflow:hidden;    box-shadow:0 4px 15px rgba(0,0,0,.08);    height:100%;}.video-card p{    padding:15px;    margin:0;    font-size:14px;    line-height:24px;}.info-box{    background:#fff;    padding:25px;    border-radius:15px;    box-shadow:0 5px 20px rgba(0,0,0,.08);}.course-card{    background:#fff;    padding:20px;    border-radius:15px;    box-shadow:0 5px 15px rgba(0,0,0,.08);    height:100%;}.btn-uac{    background:#d60000;    color:#fff;    border-radius:50px;    padding:12px 30px;}.btn-uac:hover{    background:#b50000;    color:#fff;}.section-title{    font-weight:700;    color:#0d6efd;    margin-bottom:20px;}</style><section class=\"uac-section py-5\"><div class=\"container\">    <!-- Hero Section -->    <div class=\"text-center mb-5\">        <h1 class=\"uac-title\">            ❤️ কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল        </h1>        <p class=\"lead mt-3\">            ১৯৯৬ সাল থেকে কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছে UAC।        </p>        <h4 class=\"text-success\">            Notre Dame College | Holy Cross College | St. Joseph College</h4></div>    <!-- Main Content -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?        </h3>        <p>            ❤️ Notre Dame College এর ৯০% Students UAC\'র।        </p>        <p>            🚀 এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486, ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে।        </p>        <p>            UAC ১৯৯৬ সাল থেকে শুধুমাত্র কলেজ ভর্তি কোচিং পরিচালনা করে আসছে।            কলেজ এডমিশনের প্রতিটি ধাপ, লিখিত পরীক্ষা থেকে শুরু করে ভাইভা পর্যন্ত            শিক্ষার্থীদের সাথে থাকে UAC।        </p>        <ul>            <li>📅 সপ্তাহে ৫ দিন ক্লাস</li>            <li>📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা</li>            <li>📝 সাপ্তাহিক ও মাসিক টেস্ট</li>            <li>🥇 মডেল টেস্ট</li>            <li>🎤 ভাইভা ক্লাস</li>            <li>💻 অনলাইন ও অফলাইন ব্যাচ</li>        </ul>    </div>    <!-- Course Fee -->    <h2 class=\"text-center mb-4 section-title\">        আমাদের কোর্স সমূহ    </h2>    <div class=\"row g-4 mb-5\">        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>🏫 অফলাইন কোর্স</h4>                <hr>                <p>🎤 Science Offline Course Fee: <b>13,000 টাকা</b></p>                <p>🎤 Business Studies & Humanities Fee: <b>10,000 টাকা</b></p>            </div>        </div>        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>💻 অনলাইন কোর্স</h4>                <hr>                <p>🎤 Science Online Course Fee: <b>8,000 টাকা</b></p>                <p>🎤 Business Studies & Humanities Fee: <b>8,000 টাকা</b></p>            </div>        </div>    </div>    <!-- Payment -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            বিকাশ পেমেন্ট        </h3>        <p>            Bkash (Send Money):            <strong>01711374487</strong>        </p>        <p>            Bkash (Payment):            <strong>01712162412</strong>        </p>    </div>    <!-- Videos -->    <h2 class=\"text-center mb-5 section-title\">        🎥 সফল শিক্ষার্থীদের ভিডিও    </h2>    <div class=\"row g-4\">        <!-- Video 1 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 2 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীর সাফল্যের গল্প।                </p>            </div>        </div>        <!-- Video 3 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>                </div>                <p>                    কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 4 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>                </div>                <p>                    সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।                </p>            </div>        </div>        <!-- Video 5 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।                </p>            </div>        </div>        <!-- Video 6 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>                </div>                <p>                    ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।                </p>            </div>        </div>        <!-- Video 7 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 8 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।                </p>            </div>        </div>    </div>    <!-- Contact -->    <div class=\"info-box mt-5\">        <h3 class=\"section-title\">            📍 যোগাযোগ        </h3>        <p>            হেড অফিস: ৩, আরামবাগ, মতিঝিল, ঢাকা        </p>        <p>            🎓 ব্রাঞ্চ: মতিঝিল, ধানমন্ডি, ফার্মগেট ও বনশ্রী        </p>        <p>            📞 01712-162412<br>            📞 019224716911<br>            📞 01894674181        </p>        <p>            🌐 Website:            <a href=\"#\">UAC Website</a>        </p>        <p>            📺 YouTube:            <a href=\"https://www.youtube.com/@uac-academic-and-admission\" target=\"_blank\">                Visit Channel            </a>        </p>        <br>    </div></div></section>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 8000.00, 2000.00, 'amount', NULL, NULL, NULL, 'Science (Online)', '.uac-section{    background:#f8f9fa;}.uac-title{    color:#d60000;    font-weight:700;}.uac-card{    border:none;    border-radius:15px;    overflow:hidden;    box-shadow:0 5px 20px rgba(0,0,0,.08);    transition:.3s;}.uac-card:hover{    transform:translateY(-5px);}.video-card{    background:#fff;    border-radius:15px;    overflow:hidden;    box-shadow:0 4px 15px rgba(0,0,0,.08);    height:100%;}.video-card p{    padding:15px;    margin:0;    font-size:14px;    line-height:24px;}.info-box{    background:#fff;    padding:25px;    border-radius:15px;    box-shadow:0 5px 20px rgba(0,0,0,.08);}.course-card{    background:#fff;    padding:20px;    border-radius:15px;    box-shadow:0 5px 15px rgba(0,0,0,.08);    height:100%;}.btn-uac{    background:#d60000;    color:#fff;    border-radius:50px;    padding:12px 30px;}.btn-uac:hover{    background:#b50000;    color:#fff;}.section-title{    font-weight:700;    color:#0d6efd;    margin-bottom:20px;}                            ❤️ কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল                            ১৯৯৬ সাল থেকে কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছে UAC।                            Notre Dame College | Holy Cross College | St. Joseph College                            কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?                            ❤️ Notre Dame College এর ৯০% Students UAC\'র।                            🚀 এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486, ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে।                            UAC ১৯৯৬ সাল থেকে শুধুমাত্র কলেজ ভর্তি কোচিং পরিচালনা করে আসছে।            কলেজ এডমিশনের প্রতিটি ধাপ, লিখিত পরীক্ষা থেকে শুরু করে ভাইভা পর্যন্ত            শিক্ষার্থীদের সাথে থাকে UAC।                            📅 সপ্তাহে ৫ দিন ক্লাস            📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা            📝 সাপ্তাহিক ও মাসিক টেস্ট            🥇 মডেল টেস্ট            🎤 ভাইভা ক্লাস            💻 অনলাইন ও অফলাইন ব্যাচ                            আমাদের কোর্স সমূহ                                            🏫 অফলাইন কোর্স                                🎤 Science Offline Course Fee: 13,000 টাকা                🎤 Business Studies &amp; Humanities Fee: 10,000 টাকা                                                        💻 অনলাইন কোর্স                                🎤 Science Online Course Fee: 8,000 টাকা                🎤 Business Studies &amp; Humanities Fee: 8,000 টাকা                                                    বিকাশ পেমেন্ট                            Bkash (Send Money):            01711374487                            Bkash (Payment):            01712162412                            🎥 সফল শিক্ষার্থীদের ভিডিও                                                                                                                            Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।                                                                                                                                                        UAC শিক্ষার্থীর সাফল্যের গল্প।                                                                                                                                                        কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।                                                                                                                                                        সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।                                                                                                                                                        UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।                                                                                                                                                        ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।                                                                                                                                                        Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।                                                                                                                                                        UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।                                                                    📍 যোগাযোগ                            হেড অফিস: ৩, আরামবাগ, মতিঝিল, ঢাকা                            🎓 ব্রাঞ্চ: মতিঝিল, ধানমন্ডি, ফার্মগেট ও বনশ্রী                            📞 01712-162412            📞 019224716911            📞 01894674181                            🌐 Website:            UAC Website                            📺 YouTube:                            Visit Channel', 'storage/media/product/2026-06-25-nuJdC6sEYmo8b7F85y2E8Crbf4OjqGXSzoRGYQ9k.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-25 07:15:23', '2026-06-25 07:54:03'),
(353, 'Business Studies (Online)', 'COD20260625353', 'business-studies-online', NULL, 1, 1, 1, 'book', '900075973', NULL, 'storage/media/product/2026-06-25-yJTmqmNNlyvNxMPVA7wjYPtmJV9V62qErc5bakCh.webp', '<div class=\"course-short-description\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-regular fa-clock\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span>&nbsp;Course Duration</p><p style=\"font-size: 15px;\">1 Month</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-video\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span>&nbsp;Total Lecture</p><p style=\"font-size: 15px;\">180</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-print\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span>&nbsp;Total Exam</p><p style=\"font-size: 15px;\">160</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-person-walking-arrow-right\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span>&nbsp;Live class</p><p style=\"font-size: 15px;\">180</p></div></div><div class=\"course-includes-area\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"title\"><h5 style=\"font-weight: 700; font-size: 18px; padding: 15px 0px;\">This Course includes :</h5></div><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span>&nbsp;100% online course</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-tv\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span>&nbsp;Access on mobile , tablet and Computer</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span>&nbsp;Provide exclusive recorded class</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span>&nbsp;Provide a well-structured lecture sheet in PDF format.</p><!-- Videos --><h2 class=\"text-center mb-5 section-title\">      🎥 সফল শিক্ষার্থীদের ভিডিও  </h2><div class=\"row\">      <!-- Video 1 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 2 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীর সাফল্যের গল্প।              </p>        </div>    </div>    <!-- Video 3 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 4 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।              </p>        </div>    </div>    <!-- Video 5 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।              </p>        </div>    </div>    <!-- Video 6 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।              </p>        </div>    </div>    <!-- Video 7 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 8 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।              </p>        </div>    </div></div></div>', '<!-- =========================UAC College Admission Section========================== --><link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"><style>.uac-section{    background:#f8f9fa;}.uac-title{    color:#d60000;    font-weight:700;}.uac-card{    border:none;    border-radius:15px;    overflow:hidden;    box-shadow:0 5px 20px rgba(0,0,0,.08);    transition:.3s;}.uac-card:hover{    transform:translateY(-5px);}.video-card{    background:#fff;    border-radius:15px;    overflow:hidden;    box-shadow:0 4px 15px rgba(0,0,0,.08);    height:100%;}.video-card p{    padding:15px;    margin:0;    font-size:14px;    line-height:24px;}.info-box{    background:#fff;    padding:25px;    border-radius:15px;    box-shadow:0 5px 20px rgba(0,0,0,.08);}.course-card{    background:#fff;    padding:20px;    border-radius:15px;    box-shadow:0 5px 15px rgba(0,0,0,.08);    height:100%;}.btn-uac{    background:#d60000;    color:#fff;    border-radius:50px;    padding:12px 30px;}.btn-uac:hover{    background:#b50000;    color:#fff;}.section-title{    font-weight:700;    color:#0d6efd;    margin-bottom:20px;}</style><section class=\"uac-section py-5\"><div class=\"container\">    <!-- Hero Section -->    <div class=\"text-center mb-5\">        <h1 class=\"uac-title\">            ❤️ কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল        </h1>        <p class=\"lead mt-3\">            ১৯৯৬ সাল থেকে কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছে UAC।        </p>        <h4 class=\"text-success\">            Notre Dame College | Holy Cross College | St. Joseph College</h4></div>    <!-- Main Content -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?        </h3>        <p>            ❤️ Notre Dame College এর ৯০% Students UAC\'র।        </p>        <p>            🚀 এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486, ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে।        </p>        <p>            UAC ১৯৯৬ সাল থেকে শুধুমাত্র কলেজ ভর্তি কোচিং পরিচালনা করে আসছে।            কলেজ এডমিশনের প্রতিটি ধাপ, লিখিত পরীক্ষা থেকে শুরু করে ভাইভা পর্যন্ত            শিক্ষার্থীদের সাথে থাকে UAC।        </p>        <ul>            <li>📅 সপ্তাহে ৫ দিন ক্লাস</li>            <li>📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা</li>            <li>📝 সাপ্তাহিক ও মাসিক টেস্ট</li>            <li>🥇 মডেল টেস্ট</li>            <li>🎤 ভাইভা ক্লাস</li>            <li>💻 অনলাইন ও অফলাইন ব্যাচ</li>        </ul>    </div>    <!-- Course Fee -->    <h2 class=\"text-center mb-4 section-title\">        আমাদের কোর্স সমূহ    </h2>    <div class=\"row g-4 mb-5\">        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>🏫 অফলাইন কোর্স</h4>                <hr>                <p>🎤 Science Offline Course Fee: <b>13,000 টাকা</b></p>                <p>🎤 Business Studies &amp; Humanities Fee: <b>10,000 টাকা</b></p>            </div>        </div>        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>💻 অনলাইন কোর্স</h4>                <hr>                <p>🎤 Science Online Course Fee: <b>8,000 টাকা</b></p>                <p>🎤 Business Studies &amp; Humanities Fee: <b>8,000 টাকা</b></p>            </div>        </div>    </div>    <!-- Payment -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            বিকাশ পেমেন্ট        </h3>        <p>            Bkash (Send Money):            <strong>01711374487</strong>        </p>        <p>            Bkash (Payment):            <strong>01712162412</strong>        </p>    </div>    <!-- Videos -->    <h2 class=\"text-center mb-5 section-title\">        🎥 সফল শিক্ষার্থীদের ভিডিও    </h2>    <div class=\"row g-4\">        <!-- Video 1 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 2 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীর সাফল্যের গল্প।                </p>            </div>        </div>        <!-- Video 3 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>                </div>                <p>                    কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 4 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>                </div>                <p>                    সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।                </p>            </div>        </div>        <!-- Video 5 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।                </p>            </div>        </div>        <!-- Video 6 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>                </div>                <p>                    ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।                </p>            </div>        </div>        <!-- Video 7 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 8 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।                </p>            </div>        </div>    </div>    <!-- Contact -->    <div class=\"info-box mt-5\">        <h3 class=\"section-title\">            📍 যোগাযোগ        </h3>        <p>            হেড অফিস: ৩, আরামবাগ, মতিঝিল, ঢাকা        </p>        <p>            🎓 ব্রাঞ্চ: মতিঝিল, ধানমন্ডি, ফার্মগেট ও বনশ্রী        </p>        <p>            📞 01712-162412<br>            📞 019224716911<br>            📞 01894674181        </p>        <p>            🌐 Website:            <a href=\"#\">UAC Website</a>        </p>        <p>            📺 YouTube:            <a href=\"https://www.youtube.com/@uac-academic-and-admission\" target=\"_blank\">                Visit Channel            </a>        </p>        <br>    </div></div></section>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 8000.00, 2000.00, 'amount', NULL, NULL, NULL, 'Business Studies (Online)', '.uac-section{    background:#f8f9fa;}.uac-title{    color:#d60000;    font-weight:700;}.uac-card{    border:none;    border-radius:15px;    overflow:hidden;    box-shadow:0 5px 20px rgba(0,0,0,.08);    transition:.3s;}.uac-card:hover{    transform:translateY(-5px);}.video-card{    background:#fff;    border-radius:15px;    overflow:hidden;    box-shadow:0 4px 15px rgba(0,0,0,.08);    height:100%;}.video-card p{    padding:15px;    margin:0;    font-size:14px;    line-height:24px;}.info-box{    background:#fff;    padding:25px;    border-radius:15px;    box-shadow:0 5px 20px rgba(0,0,0,.08);}.course-card{    background:#fff;    padding:20px;    border-radius:15px;    box-shadow:0 5px 15px rgba(0,0,0,.08);    height:100%;}.btn-uac{    background:#d60000;    color:#fff;    border-radius:50px;    padding:12px 30px;}.btn-uac:hover{    background:#b50000;    color:#fff;}.section-title{    font-weight:700;    color:#0d6efd;    margin-bottom:20px;}                            ❤️ কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল                            ১৯৯৬ সাল থেকে কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছে UAC।                            Notre Dame College | Holy Cross College | St. Joseph College                            কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?                            ❤️ Notre Dame College এর ৯০% Students UAC\'র।                            🚀 এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486, ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে।                            UAC ১৯৯৬ সাল থেকে শুধুমাত্র কলেজ ভর্তি কোচিং পরিচালনা করে আসছে।            কলেজ এডমিশনের প্রতিটি ধাপ, লিখিত পরীক্ষা থেকে শুরু করে ভাইভা পর্যন্ত            শিক্ষার্থীদের সাথে থাকে UAC।                            📅 সপ্তাহে ৫ দিন ক্লাস            📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা            📝 সাপ্তাহিক ও মাসিক টেস্ট            🥇 মডেল টেস্ট            🎤 ভাইভা ক্লাস            💻 অনলাইন ও অফলাইন ব্যাচ                            আমাদের কোর্স সমূহ                                            🏫 অফলাইন কোর্স                                🎤 Science Offline Course Fee: 13,000 টাকা                🎤 Business Studies &amp; Humanities Fee: 10,000 টাকা                                                        💻 অনলাইন কোর্স                                🎤 Science Online Course Fee: 8,000 টাকা                🎤 Business Studies &amp; Humanities Fee: 8,000 টাকা                                                    বিকাশ পেমেন্ট                            Bkash (Send Money):            01711374487                            Bkash (Payment):            01712162412                            🎥 সফল শিক্ষার্থীদের ভিডিও                                                                                                                            Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।                                                                                                                                                        UAC শিক্ষার্থীর সাফল্যের গল্প।                                                                                                                                                        কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।                                                                                                                                                        সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।                                                                                                                                                        UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।                                                                                                                                                        ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।                                                                                                                                                        Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।                                                                                                                                                        UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।                                                                    📍 যোগাযোগ                            হেড অফিস: ৩, আরামবাগ, মতিঝিল, ঢাকা                            🎓 ব্রাঞ্চ: মতিঝিল, ধানমন্ডি, ফার্মগেট ও বনশ্রী                            📞 01712-162412            📞 019224716911            📞 01894674181                            🌐 Website:            UAC Website                            📺 YouTube:                            Visit Channel                                ', 'storage/media/product/2026-06-25-yJTmqmNNlyvNxMPVA7wjYPtmJV9V62qErc5bakCh.webp', 0, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, '2026-06-25 07:55:48', '2026-06-25 07:56:04');
INSERT INTO `products` (`id`, `name`, `code`, `slug`, `category_id`, `uom_id`, `brand_id`, `publication_id`, `product_type`, `barcode`, `file`, `thumbnail`, `short_description`, `description`, `profit`, `profit_percent`, `show_dashboard`, `serial`, `required_share`, `purchase_price`, `regular_price`, `sale_price`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `sku`, `meta_title`, `meta_description`, `meta_image`, `custom_barcode`, `favorite`, `trending`, `new_arrival`, `best_seller`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(354, 'Humanities (Online)', 'COD20260625354', 'humanities-online', NULL, 1, 1, 1, 'book', '-1581911526', NULL, 'storage/media/product/2026-06-25-2D7mzyfPjVSI9u40JmZcJmkA0Hvpz3k8RVrPgPrl.webp', '<div class=\"course-short-description\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-regular fa-clock\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span>&nbsp;Course Duration</p><p style=\"font-size: 15px;\">1 Month</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-video\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span>&nbsp;Total Lecture</p><p style=\"font-size: 15px;\">180</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-print\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span>&nbsp;Total Exam</p><p style=\"font-size: 15px;\">160</p></div><div class=\"description-column d-flex justify-content-between\"><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-person-walking-arrow-right\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(197,=\"\" 195,=\"\" 195);\"=\"\"></span>&nbsp;Live class</p><p style=\"font-size: 15px;\">180</p></div></div><div class=\"course-includes-area\" style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, sans-serif; font-size: 16px;\"><div class=\"title\"><h5 style=\"font-weight: 700; font-size: 18px; padding: 15px 0px;\">This Course includes :</h5></div><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span>&nbsp;100% online course</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-tv\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span>&nbsp;Access on mobile , tablet and Computer</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span>&nbsp;Provide exclusive recorded class</p><p style=\"font-size: 15px;\"><span class=\"fa-solid fa-globe\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; line-height: 1; text-rendering: auto; font-family: \" font=\"\" awesome=\"\" 6=\"\" free\";=\"\" font-weight:=\"\" 900;=\"\" color:=\"\" rgb(137,=\"\" 24,=\"\" 26);=\"\" margin-right:=\"\" 5px;=\"\" width:=\"\" 15px;\"=\"\"></span>&nbsp;Provide a well-structured lecture sheet in PDF format.</p><!-- Videos --><h2 class=\"text-center mb-5 section-title\">      🎥 সফল শিক্ষার্থীদের ভিডিও  </h2><div class=\"row\">      <!-- Video 1 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 2 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীর সাফল্যের গল্প।              </p>        </div>    </div>    <!-- Video 3 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 4 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।              </p>        </div>    </div>    <!-- Video 5 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।              </p>        </div>    </div>    <!-- Video 6 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।              </p>        </div>    </div>    <!-- Video 7 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।              </p>        </div>    </div>    <!-- Video 8 -->      <div class=\"col-12 mb-4\">          <div class=\"video-card\">              <div class=\"ratio ratio-16x9\">                  <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>              </div>            <p class=\"mt-2\">                  UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।              </p>        </div>    </div></div></div>', '<!-- =========================UAC College Admission Section========================== --><link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"><style>.uac-section{    background:#f8f9fa;}.uac-title{    color:#d60000;    font-weight:700;}.uac-card{    border:none;    border-radius:15px;    overflow:hidden;    box-shadow:0 5px 20px rgba(0,0,0,.08);    transition:.3s;}.uac-card:hover{    transform:translateY(-5px);}.video-card{    background:#fff;    border-radius:15px;    overflow:hidden;    box-shadow:0 4px 15px rgba(0,0,0,.08);    height:100%;}.video-card p{    padding:15px;    margin:0;    font-size:14px;    line-height:24px;}.info-box{    background:#fff;    padding:25px;    border-radius:15px;    box-shadow:0 5px 20px rgba(0,0,0,.08);}.course-card{    background:#fff;    padding:20px;    border-radius:15px;    box-shadow:0 5px 15px rgba(0,0,0,.08);    height:100%;}.btn-uac{    background:#d60000;    color:#fff;    border-radius:50px;    padding:12px 30px;}.btn-uac:hover{    background:#b50000;    color:#fff;}.section-title{    font-weight:700;    color:#0d6efd;    margin-bottom:20px;}</style><section class=\"uac-section py-5\"><div class=\"container\">    <!-- Hero Section -->    <div class=\"text-center mb-5\">        <h1 class=\"uac-title\">            ❤️ কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল        </h1>        <p class=\"lead mt-3\">            ১৯৯৬ সাল থেকে কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছে UAC।        </p>        <h4 class=\"text-success\">            Notre Dame College | Holy Cross College | St. Joseph College</h4></div>    <!-- Main Content -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?        </h3>        <p>            ❤️ Notre Dame College এর ৯০% Students UAC\'র।        </p>        <p>            🚀 এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486, ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে।        </p>        <p>            UAC ১৯৯৬ সাল থেকে শুধুমাত্র কলেজ ভর্তি কোচিং পরিচালনা করে আসছে।            কলেজ এডমিশনের প্রতিটি ধাপ, লিখিত পরীক্ষা থেকে শুরু করে ভাইভা পর্যন্ত            শিক্ষার্থীদের সাথে থাকে UAC।        </p>        <ul>            <li>📅 সপ্তাহে ৫ দিন ক্লাস</li>            <li>📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা</li>            <li>📝 সাপ্তাহিক ও মাসিক টেস্ট</li>            <li>🥇 মডেল টেস্ট</li>            <li>🎤 ভাইভা ক্লাস</li>            <li>💻 অনলাইন ও অফলাইন ব্যাচ</li>        </ul>    </div>    <!-- Course Fee -->    <h2 class=\"text-center mb-4 section-title\">        আমাদের কোর্স সমূহ    </h2>    <div class=\"row g-4 mb-5\">        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>🏫 অফলাইন কোর্স</h4>                <hr>                <p>🎤 Science Offline Course Fee: <b>13,000 টাকা</b></p>                <p>🎤 Business Studies &amp; Humanities Fee: <b>10,000 টাকা</b></p>            </div>        </div>        <div class=\"col-md-6\">            <div class=\"course-card\">                <h4>💻 অনলাইন কোর্স</h4>                <hr>                <p>🎤 Science Online Course Fee: <b>8,000 টাকা</b></p>                <p>🎤 Business Studies &amp; Humanities Fee: <b>8,000 টাকা</b></p>            </div>        </div>    </div>    <!-- Payment -->    <div class=\"info-box mb-5\">        <h3 class=\"section-title\">            বিকাশ পেমেন্ট        </h3>        <p>            Bkash (Send Money):            <strong>01711374487</strong>        </p>        <p>            Bkash (Payment):            <strong>01712162412</strong>        </p>    </div>    <!-- Videos -->    <h2 class=\"text-center mb-5 section-title\">        🎥 সফল শিক্ষার্থীদের ভিডিও    </h2>    <div class=\"row g-4\">        <!-- Video 1 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/keEuojg3HQY\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 2 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/2KfPpO3zEow\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীর সাফল্যের গল্প।                </p>            </div>        </div>        <!-- Video 3 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UxWFrBZwiGs\" allowfullscreen=\"\"></iframe>                </div>                <p>                    কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 4 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/mjalKvTLyqE\" allowfullscreen=\"\"></iframe>                </div>                <p>                    সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।                </p>            </div>        </div>        <!-- Video 5 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/GPsYOLkHyoU\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।                </p>            </div>        </div>        <!-- Video 6 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/SwvfwZfXUeo\" allowfullscreen=\"\"></iframe>                </div>                <p>                    ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।                </p>            </div>        </div>        <!-- Video 7 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/UrMaQBPZhZk\" allowfullscreen=\"\"></iframe>                </div>                <p>                    Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।                </p>            </div>        </div>        <!-- Video 8 -->        <div class=\"col-lg-3 col-md-6\">            <div class=\"video-card\">                <div class=\"ratio ratio-16x9\">                    <iframe src=\"https://www.youtube.com/embed/kaNKZkWy72A\" allowfullscreen=\"\"></iframe>                </div>                <p>                    UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।                </p>            </div>        </div>    </div>    <!-- Contact -->    <div class=\"info-box mt-5\">        <h3 class=\"section-title\">            📍 যোগাযোগ        </h3>        <p>            হেড অফিস: ৩, আরামবাগ, মতিঝিল, ঢাকা        </p>        <p>            🎓 ব্রাঞ্চ: মতিঝিল, ধানমন্ডি, ফার্মগেট ও বনশ্রী        </p>        <p>            📞 01712-162412<br>            📞 019224716911<br>            📞 01894674181        </p>        <p>            🌐 Website:            <a href=\"#\">UAC Website</a>        </p>        <p>            📺 YouTube:            <a href=\"https://www.youtube.com/@uac-academic-and-admission\" target=\"_blank\">                Visit Channel            </a>        </p>        <br>    </div></div></section>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 8000.00, 2000.00, 'amount', NULL, NULL, NULL, 'Humanities (Online)', '.uac-section{    background:#f8f9fa;}.uac-title{    color:#d60000;    font-weight:700;}.uac-card{    border:none;    border-radius:15px;    overflow:hidden;    box-shadow:0 5px 20px rgba(0,0,0,.08);    transition:.3s;}.uac-card:hover{    transform:translateY(-5px);}.video-card{    background:#fff;    border-radius:15px;    overflow:hidden;    box-shadow:0 4px 15px rgba(0,0,0,.08);    height:100%;}.video-card p{    padding:15px;    margin:0;    font-size:14px;    line-height:24px;}.info-box{    background:#fff;    padding:25px;    border-radius:15px;    box-shadow:0 5px 20px rgba(0,0,0,.08);}.course-card{    background:#fff;    padding:20px;    border-radius:15px;    box-shadow:0 5px 15px rgba(0,0,0,.08);    height:100%;}.btn-uac{    background:#d60000;    color:#fff;    border-radius:50px;    padding:12px 30px;}.btn-uac:hover{    background:#b50000;    color:#fff;}.section-title{    font-weight:700;    color:#0d6efd;    margin-bottom:20px;}                            ❤️ কলেজ ভর্তিতে UAC\'ই দেশের প্রথম এবং সর্বাধিক সফল                            ১৯৯৬ সাল থেকে কলেজ ভর্তি কোচিংয়ে বিশেষভাবে কাজ করে আসছে UAC।                            Notre Dame College | Holy Cross College | St. Joseph College                            কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?                            ❤️ Notre Dame College এর ৯০% Students UAC\'র।                            🚀 এ বছর নটর ডেম কলেজে বাংলা ভার্সনে 1486, ইংলিশ ভার্সনে 203 এবং হলিক্রসে 228 জনের চান্স পেয়েছে।                            UAC ১৯৯৬ সাল থেকে শুধুমাত্র কলেজ ভর্তি কোচিং পরিচালনা করে আসছে।            কলেজ এডমিশনের প্রতিটি ধাপ, লিখিত পরীক্ষা থেকে শুরু করে ভাইভা পর্যন্ত            শিক্ষার্থীদের সাথে থাকে UAC।                            📅 সপ্তাহে ৫ দিন ক্লাস            📚 প্রতিদিন পূর্বের লেকচার সীটের উপর পরীক্ষা            📝 সাপ্তাহিক ও মাসিক টেস্ট            🥇 মডেল টেস্ট            🎤 ভাইভা ক্লাস            💻 অনলাইন ও অফলাইন ব্যাচ                            আমাদের কোর্স সমূহ                                            🏫 অফলাইন কোর্স                                🎤 Science Offline Course Fee: 13,000 টাকা                🎤 Business Studies &amp; Humanities Fee: 10,000 টাকা                                                        💻 অনলাইন কোর্স                                🎤 Science Online Course Fee: 8,000 টাকা                🎤 Business Studies &amp; Humanities Fee: 8,000 টাকা                                                    বিকাশ পেমেন্ট                            Bkash (Send Money):            01711374487                            Bkash (Payment):            01712162412                            🎥 সফল শিক্ষার্থীদের ভিডিও                                                                                                                            Notre Dame College ভর্তি পরীক্ষায় সফল শিক্ষার্থীর অভিজ্ঞতা।                                                                                                                                                        UAC শিক্ষার্থীর সাফল্যের গল্প।                                                                                                                                                        কলেজ ভর্তি প্রস্তুতির বাস্তব অভিজ্ঞতা।                                                                                                                                                        সফলতার পেছনের গল্প ও প্রস্তুতির কৌশল।                                                                                                                                                        UAC শিক্ষার্থীদের সাফল্যের ধারাবাহিকতা।                                                                                                                                                        ভর্তি পরীক্ষার প্রস্তুতি নিয়ে গুরুত্বপূর্ণ পরামর্শ।                                                                                                                                                        Notre Dame ও Holy Cross ভর্তি পরীক্ষায় সফলতার অভিজ্ঞতা।                                                                                                                                                        UAC এর মাধ্যমে কলেজ ভর্তি প্রস্তুতির পূর্ণাঙ্গ দিকনির্দেশনা।                                                                    📍 যোগাযোগ                            হেড অফিস: ৩, আরামবাগ, মতিঝিল, ঢাকা                            🎓 ব্রাঞ্চ: মতিঝিল, ধানমন্ডি, ফার্মগেট ও বনশ্রী                            📞 01712-162412            📞 019224716911            📞 01894674181                            🌐 Website:            UAC Website                            📺 YouTube:                            Visit Channel                                ', 'storage/media/product/2026-06-25-2D7mzyfPjVSI9u40JmZcJmkA0Hvpz3k8RVrPgPrl.webp', 0, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, '2026-06-25 07:57:26', '2026-06-25 08:00:54'),
(355, 'Class One (Online)', 'COD20260625355', 'class-one-online', NULL, 1, 1, 1, 'book', '1018903371', NULL, 'storage/media/product/2026-06-25-WIJPnwCsMWeCK2K3SyrECxx0KnWdQRVJGsq2HfDx.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 10000.00, 10000.00, 6000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class One (Online)', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-06-25-WIJPnwCsMWeCK2K3SyrECxx0KnWdQRVJGsq2HfDx.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-25 08:07:13', '2026-06-25 14:28:49'),
(356, 'Class Three (Online)', 'COD20260625356', 'class-three-online', NULL, 1, 1, 1, 'book', '1645424149', NULL, 'storage/media/product/2026-06-25-XmS59jSZ8KyyoMHcNtyJLFvldMtRIx2aS79DN1sY.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 6000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class Three (Online)', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-06-25-XmS59jSZ8KyyoMHcNtyJLFvldMtRIx2aS79DN1sY.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-25 08:08:50', '2026-06-25 14:35:41'),
(357, 'Class Six (Online)', 'COD20260625357', 'class-six-online', NULL, 1, 1, 1, 'book', '-917219695', NULL, 'storage/media/product/2026-06-25-KzxuxZMHqKIYjU1Q0ZYrrDe3ztLYidUV73H1ijBQ.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 6000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class Six (Online)', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-06-25-KzxuxZMHqKIYjU1Q0ZYrrDe3ztLYidUV73H1ijBQ.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-25 08:09:58', '2026-06-25 14:37:04'),
(358, 'Class Seven (Online)', 'COD20260625358', 'class-seven-online', NULL, 1, 1, 1, 'book', '-537898541', NULL, 'storage/media/product/2026-06-25-0pE9Rxu0ttDZUgSxhOSinhfdb6SKmjdIJQoytZ8q.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 6000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class Seven (Online)', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-06-25-0pE9Rxu0ttDZUgSxhOSinhfdb6SKmjdIJQoytZ8q.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-25 08:11:21', '2026-06-25 14:38:18');
INSERT INTO `products` (`id`, `name`, `code`, `slug`, `category_id`, `uom_id`, `brand_id`, `publication_id`, `product_type`, `barcode`, `file`, `thumbnail`, `short_description`, `description`, `profit`, `profit_percent`, `show_dashboard`, `serial`, `required_share`, `purchase_price`, `regular_price`, `sale_price`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `sku`, `meta_title`, `meta_description`, `meta_image`, `custom_barcode`, `favorite`, `trending`, `new_arrival`, `best_seller`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(359, 'Class Nine (Online)', 'COD20260625359', 'class-nine-online', NULL, 1, 1, 1, 'book', '-753070962', NULL, 'storage/media/product/2026-06-25-6FeHZWv5igkEiVDqDmeCW60lpaHbKlX6c1oMNeWP.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 6000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class Nine (Online)', '🎓 স্কুল ভর্তি কোচিং ২০২৬                                        ভর্তি লিংক:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।', 'storage/media/product/2026-06-25-6FeHZWv5igkEiVDqDmeCW60lpaHbKlX6c1oMNeWP.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-06-25 08:12:36', '2026-06-25 14:26:10'),
(360, 'College Admission Science Guide', 'COD20260701360', 'college-admission-science-guide', NULL, 1, 1, 1, 'book', '-959593065', NULL, 'storage/media/product/2026-07-01-8ThjvrviA8qmg5d2PipDsvcHgNQvxyGMmzQO5FjA.webp', NULL, NULL, 0, 0, 1, NULL, 0, 700.00, 800.00, 600.00, 200.00, 'amount', NULL, NULL, NULL, 'College Admission Science Guide', '', 'storage/media/product/2026-07-01-8ThjvrviA8qmg5d2PipDsvcHgNQvxyGMmzQO5FjA.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-07-01 20:20:06', '2026-07-01 20:25:45'),
(361, 'College Admission Business Guide', 'COD20260701361', 'college-admission-business-guide', NULL, 1, 1, 1, 'book', '-591207258', NULL, 'storage/media/product/2026-07-01-yX0fd3SDQZNS5aeHa6gORKfOu65B7EDlyrNSU4Vy.webp', NULL, NULL, 0, 0, 1, NULL, 0, 700.00, 700.00, 500.00, 200.00, 'amount', NULL, NULL, NULL, 'College Admission Business Guide', '', 'storage/media/product/2026-07-01-yX0fd3SDQZNS5aeHa6gORKfOu65B7EDlyrNSU4Vy.webp', 0, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, '2026-07-01 20:27:40', '2026-07-01 20:27:47'),
(362, 'Class Two (Offline)', 'COD20260701362', 'class-two-offline', NULL, 1, 1, 1, 'book', '-305091543', NULL, 'storage/media/product/2026-07-01-K0dzjFWhN4gcwLJZ9M5OI61uUMRsfRDkbAvqmmEs.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 12000.00, 12000.00, 8000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class Two (Offline)', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-07-01-K0dzjFWhN4gcwLJZ9M5OI61uUMRsfRDkbAvqmmEs.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-07-01 20:31:57', '2026-07-02 13:34:09'),
(363, 'Class Two (Online)', 'COD20260701363', 'class-two-online', NULL, 1, 1, 1, 'book', '1531427271', NULL, 'storage/media/product/2026-07-01-0uqqkbluJl9EsJHy0ZsNKeNTLVu0eJGgR1dRwWwl.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 12000.00, 10000.00, 6000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class Two (Online)', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-07-01-0uqqkbluJl9EsJHy0ZsNKeNTLVu0eJGgR1dRwWwl.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-07-01 20:33:29', '2026-07-02 13:35:42'),
(364, 'Class Four (Offline)', 'COD20260701364', 'class-four-offline', NULL, 1, 1, 1, 'book', '-1298902366', NULL, 'storage/media/product/2026-07-01-Fzx4cRnYQADfbW76kI8IJue06CZl5almaPNQ0RJi.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 12000.00, 12000.00, 8000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class Four (Offline)', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-07-01-Fzx4cRnYQADfbW76kI8IJue06CZl5almaPNQ0RJi.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-07-01 20:34:53', '2026-07-02 13:36:16'),
(365, 'Class Four (Online)', 'COD20260701365', 'class-four-online', NULL, 1, 1, 1, 'book', '-2072871174', NULL, 'storage/media/product/2026-07-01-ynkKkqu9OZH0kujZJEJZ0Ma5V5leZf0nkP3U6CVs.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 6000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class Four (Online)', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-07-01-ynkKkqu9OZH0kujZJEJZ0Ma5V5leZf0nkP3U6CVs.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-07-01 20:36:22', '2026-07-02 13:36:48'),
(366, 'Class Five (Offline)', 'COD20260702366', 'class-five-offline', NULL, 1, 1, 1, 'book', '-184644590', NULL, 'storage/media/product/2026-07-02-W6d9gjcBtL3jWEaVrmmf8GFkPw8g0UMSPUdQN4LR.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 1200.00, 12000.00, 8000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class Five (Offline)', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-07-02-W6d9gjcBtL3jWEaVrmmf8GFkPw8g0UMSPUdQN4LR.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-07-02 13:39:02', '2026-07-02 13:40:05');
INSERT INTO `products` (`id`, `name`, `code`, `slug`, `category_id`, `uom_id`, `brand_id`, `publication_id`, `product_type`, `barcode`, `file`, `thumbnail`, `short_description`, `description`, `profit`, `profit_percent`, `show_dashboard`, `serial`, `required_share`, `purchase_price`, `regular_price`, `sale_price`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `sku`, `meta_title`, `meta_description`, `meta_image`, `custom_barcode`, `favorite`, `trending`, `new_arrival`, `best_seller`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(367, 'Class Five (Online)', 'COD20260702367', 'class-five-online', NULL, 1, 1, 1, 'book', '-611250785', NULL, 'storage/media/product/2026-07-02-yvjeGCxnlRKYceOieylNfhOSjigyjEOPCCQcIUJk.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 8000.00, 10000.00, 6000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class Five (Online)', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-07-02-yvjeGCxnlRKYceOieylNfhOSjigyjEOPCCQcIUJk.webp', 0, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, '2026-07-02 13:41:51', '2026-07-02 13:43:35'),
(368, 'Class Eight (Offline)', 'COD20260702368', 'class-eight-offline', NULL, 1, 1, 1, 'book', '433565605', NULL, 'storage/media/product/2026-07-02-aTJFZNVscGrCMDNmVaBqAN7NOgj1Xwm3tli7pyrK.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 8000.00, 12000.00, 8000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class Eight (Offline)', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-07-02-aTJFZNVscGrCMDNmVaBqAN7NOgj1Xwm3tli7pyrK.webp', 0, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, '2026-07-02 13:46:14', '2026-07-02 13:46:28'),
(369, 'Class Eight (Online)', 'COD20260702369', 'class-eight-online', NULL, 1, 1, 1, 'book', '451872931', NULL, 'storage/media/product/2026-07-02-oCVBxBod7mboB5a1wQvgaZLEWTjs9An54j2dTqpO.webp', '<div class=\"col-lg-12\">    <div class=\"card shadow border-0\">        <div class=\"card-header bg-primary text-white text-center py-3\">            <h4 class=\"mb-0\">🎓 ভর্তি চলছে</h4>        </div>        <div class=\"card-body\">            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Offline Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 8,000</h2>                <small class=\"text-muted\">                    পূর্ব মূল্য: ৳12,000                </small>            </div>            <hr>            <div class=\"text-center mb-4\">                <h5 class=\"text-success\">Online Course</h5>                <h2 class=\"fw-bold text-danger\">৳ 6,000</h2>                <small class=\"text-muted\">                    সকল স্টাডি ম্যাটেরিয়ালসহ                </small>            </div>            <hr>            <h5 class=\"mb-3\">🏢 শাখাসমূহ</h5>            <ul class=\"list-group mb-4\">                <li class=\"list-group-item\">📍 মতিঝিল</li>                <li class=\"list-group-item\">📍 ফার্মগেট</li>                <li class=\"list-group-item\">📍 বনশ্রী</li>            </ul>            <h5 class=\"mb-3\">📞 যোগাযোগ</h5>            <div class=\"d-grid gap-2 mb-4\">                <a href=\"tel:01712162412\" class=\"btn btn-outline-primary\">                    01712-162412                </a>                <a href=\"tel:01894674181\" class=\"btn btn-outline-primary\">                    01894-674181                </a>                <a href=\"tel:01922471691\" class=\"btn btn-outline-primary\">                    01922-471691                </a>            </div>            <a href=\"https://uac-bd.com/category/424\" class=\"btn btn-success btn-lg w-100\">                🎓 সকল কোর্সে ফিরে আসুন           </a>        </div>    </div></div>', '<div class=\"col-lg-12\">    <div class=\"card shadow-sm border-0 h-100\">        <div class=\"card-body\">            <h2 class=\"fw-bold text-primary mb-3\">                🎓 স্কুল ভর্তি কোচিং ২০২৬            </h2>            <div class=\"alert alert-info\">                <strong>সকল কোর্সে ফিরে আসুন:</strong>                <a href=\"https://uac-bd.com/category/424\">                    এখানে ক্লিক করুন                </a>            </div>            <p>                আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                <strong>UAC</strong>।            </p>            <h4 class=\"mt-4 mb-3\">❤️ কেন UAC?</h4>            <ul class=\"list-group list-group-flush\">                <li class=\"list-group-item\">✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং</li>                <li class=\"list-group-item\">✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ</li>                <li class=\"list-group-item\">✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি</li>                <li class=\"list-group-item\">✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড</li>                <li class=\"list-group-item\">✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে</li>            </ul>            <h4 class=\"mt-4 mb-3\">📚 কোর্স সুবিধাসমূহ</h4>            <div class=\"row\">                <div class=\"col-md-6\">                    <ul>                        <li>সপ্তাহে ৩ দিন ক্লাস</li>                        <li>প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা</li>                        <li>সাপ্তাহিক ও মাসিক টেস্ট</li>                        <li>মডেল টেস্ট</li>                    </ul>                </div>                <div class=\"col-md-6\">                    <ul>                        <li>ভাইভা ক্লাস</li>                        <li>সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল</li>                        <li>পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন</li>                        <li>অনলাইন ও অফলাইন ব্যাচ</li>                    </ul>                </div>            </div>            <div class=\"alert alert-success mt-4\">                <strong>🚀 ক্লাস শুরু:</strong> ১৫ জুলাই, ২০২৬ <br>                <strong>📅 অফলাইন ক্লাস:</strong> শুক্রবার, শনিবার ও মঙ্গলবার            </div>            <div class=\"card mt-4 border-0 bg-light\">                <div class=\"card-body\">                    <h5>🗺️ হেড অফিস</h5>                    <p class=\"mb-0\">                        ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                    </p>                </div>            </div>        </div>    </div></div>', 0, 0, 1, NULL, 0, 10000.00, 10000.00, 6000.00, 4000.00, 'amount', NULL, NULL, NULL, 'Class Eight (Online)', '                                        🎓 স্কুল ভর্তি কোচিং ২০২৬                                        সকল কোর্সে ফিরে আসুন:                                    এখানে ক্লিক করুন                                                        আইডিয়াল, হলিক্রস, ভিকারুননিসা, সেন্ট যোসেফ, সেন্ট গ্রেগরী,                রেসিডেন্সিয়াল, আদমজি ক্যান্ট ও রাজউক উত্তরা সহ দেশের সকল                স্বনামধন্য স্কুলে ভর্তি প্রস্তুতির নির্ভরযোগ্য প্রতিষ্ঠান                UAC।                        ❤️ কেন UAC?                            ✅ দেশের প্রথম ও সর্বাধিক সফল স্কুল ভর্তি কোচিং                ✅ ১৯৯৬ সাল থেকে স্কুল ও কলেজ ভর্তি প্রস্তুতিতে অভিজ্ঞ                ✅ ভর্তি পরীক্ষার পাশাপাশি ভাইভা প্রস্তুতি                ✅ সর্বাধিক শিক্ষার্থী ও সর্বাধিক সাফল্যের রেকর্ড                ✅ অনলাইন ও অফলাইন উভয় ব্যাচে ভর্তি চলছে                        📚 কোর্স সুবিধাসমূহ                                                                        সপ্তাহে ৩ দিন ক্লাস                        প্রতিদিন লেকচার সীটভিত্তিক পরীক্ষা                        সাপ্তাহিক ও মাসিক টেস্ট                        মডেল টেস্ট                                                                                                ভাইভা ক্লাস                        সকল প্রয়োজনীয় স্টাডি ম্যাটেরিয়াল                        পরীক্ষার আগের দিন পর্যন্ত গাইডলাইন                        অনলাইন ও অফলাইন ব্যাচ                                                                            🚀 ক্লাস শুরু: ১৫ জুলাই, ২০২৬                 📅 অফলাইন ক্লাস: শুক্রবার, শনিবার ও মঙ্গলবার                                                            🗺️ হেড অফিস                                            ৩, আরামবাগ (নটর ডেম কলেজের মেইন গেটের সামনের ফুটওভার ব্রিজ সংলগ্ন),                        আরামবাগ পুলিশ বক্সের ঠিক উল্টো পাশে, নটর ডেম ভবনের পাশে,                        ৩য় তলা, মতিঝিল, ঢাকা।                                                            ', 'storage/media/product/2026-07-02-oCVBxBod7mboB5a1wQvgaZLEWTjs9An54j2dTqpO.webp', 0, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, '2026-07-02 13:47:52', '2026-07-02 13:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_authors`
--

CREATE TABLE `product_authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_authors`
--

INSERT INTO `product_authors` (`id`, `product_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 3, 8, '2026-01-22 04:46:02', '2026-04-01 23:18:55'),
(2, 5, 1, '2026-01-22 06:36:21', '2026-01-22 06:36:21'),
(3, 7, 1, '2026-01-25 02:06:23', '2026-01-25 02:06:23'),
(4, 10, 3, '2026-01-25 02:11:41', '2026-04-01 23:16:40'),
(5, 11, 4, '2026-01-25 02:13:34', '2026-04-01 23:15:05'),
(6, 12, 5, '2026-01-25 02:14:33', '2026-04-01 23:12:53'),
(7, 13, 6, '2026-01-25 02:18:09', '2026-04-01 23:11:15'),
(8, 27, 2, '2026-02-01 06:30:48', '2026-02-01 06:30:48'),
(9, 28, 9, '2026-02-24 22:49:29', '2026-04-01 05:33:49'),
(10, 29, 10, '2026-02-24 23:02:38', '2026-04-01 04:56:59'),
(11, 30, 3, '2026-02-24 23:03:35', '2026-04-01 04:41:54'),
(12, 31, 1, '2026-02-25 00:23:57', '2026-04-01 04:39:09'),
(13, 32, 17, '2026-02-25 00:25:11', '2026-04-01 04:35:33'),
(14, 33, 18, '2026-02-25 02:53:25', '2026-04-01 04:34:27'),
(15, 34, 12, '2026-02-26 00:12:31', '2026-04-01 04:33:00'),
(16, 35, 13, '2026-03-04 21:37:27', '2026-04-01 04:31:26'),
(17, 36, 14, '2026-03-04 22:10:40', '2026-04-01 04:25:46'),
(18, 37, 15, '2026-03-04 22:29:01', '2026-04-01 04:24:57'),
(19, 38, 14, '2026-03-04 22:32:44', '2026-04-01 04:24:15'),
(20, 39, 11, '2026-03-04 22:41:43', '2026-04-01 04:23:12'),
(21, 40, 19, '2026-04-02 04:10:05', '2026-04-02 04:10:05'),
(22, 1, 14, '2026-04-02 04:55:38', '2026-04-02 04:55:38'),
(23, 2, 20, '2026-04-02 04:56:25', '2026-04-02 04:56:25'),
(24, 41, 20, '2026-04-05 04:53:18', '2026-04-05 04:53:18'),
(25, 42, 20, '2026-04-05 04:58:13', '2026-04-05 04:58:13'),
(26, 43, 20, '2026-04-05 05:12:48', '2026-04-05 05:12:48'),
(27, 44, 21, '2026-04-05 05:18:33', '2026-04-05 05:18:33'),
(28, 45, 22, '2026-04-06 04:01:20', '2026-04-06 04:01:20'),
(29, 46, 21, '2026-04-06 04:08:16', '2026-04-06 04:08:16'),
(30, 47, 23, '2026-04-06 04:20:03', '2026-04-06 04:20:03'),
(31, 48, 24, '2026-04-06 04:22:58', '2026-04-06 04:22:58'),
(32, 49, 25, '2026-04-06 04:27:44', '2026-04-06 04:27:44'),
(33, 50, 26, '2026-04-06 04:33:42', '2026-04-06 04:33:42'),
(34, 51, 27, '2026-04-06 04:37:12', '2026-04-06 04:37:12'),
(35, 52, 28, '2026-04-06 04:48:25', '2026-04-06 04:48:25'),
(36, 53, 18, '2026-04-06 04:51:32', '2026-04-06 04:51:32'),
(37, 54, 29, '2026-04-06 05:00:18', '2026-04-06 05:00:18'),
(38, 55, 30, '2026-04-06 05:28:59', '2026-04-06 05:28:59'),
(39, 56, 31, '2026-04-06 05:36:22', '2026-04-06 05:36:22'),
(40, 57, 32, '2026-04-06 05:40:33', '2026-04-06 05:40:33'),
(41, 58, 33, '2026-04-06 05:55:35', '2026-04-06 05:55:35'),
(42, 59, 32, '2026-04-06 05:58:33', '2026-04-06 05:58:33'),
(43, 60, 32, '2026-04-06 06:02:43', '2026-04-06 06:02:43'),
(44, 61, 31, '2026-04-06 06:04:53', '2026-04-06 06:04:53'),
(45, 62, 34, '2026-04-06 06:07:22', '2026-04-06 06:07:22'),
(46, 63, 31, '2026-04-06 06:10:24', '2026-04-06 06:10:24'),
(47, 64, 20, '2026-04-06 06:15:44', '2026-04-06 06:15:44'),
(48, 65, 35, '2026-04-07 05:07:20', '2026-04-07 05:07:20'),
(49, 66, 35, '2026-04-08 00:02:55', '2026-04-08 00:02:55'),
(50, 67, 36, '2026-04-08 00:18:56', '2026-04-08 00:18:56'),
(51, 68, 36, '2026-04-08 00:28:43', '2026-04-08 00:28:43'),
(52, 69, 37, '2026-04-08 00:32:47', '2026-04-08 00:32:47'),
(53, 70, 39, '2026-04-08 00:56:55', '2026-04-08 00:56:55'),
(54, 71, 38, '2026-04-08 00:58:01', '2026-04-08 00:58:01'),
(55, 72, 40, '2026-04-08 01:02:26', '2026-04-08 01:02:26'),
(56, 73, 41, '2026-04-08 01:03:58', '2026-04-08 01:03:58'),
(57, 74, 42, '2026-04-09 00:09:13', '2026-04-09 00:09:13'),
(58, 75, 42, '2026-04-09 00:40:45', '2026-04-09 00:40:45'),
(59, 76, 42, '2026-04-09 00:47:51', '2026-04-09 00:47:51'),
(60, 77, 42, '2026-04-09 00:56:40', '2026-04-09 00:56:40'),
(61, 78, 42, '2026-04-09 01:04:40', '2026-04-09 01:04:40'),
(62, 79, 42, '2026-04-09 01:19:00', '2026-04-09 01:19:00'),
(63, 80, 42, '2026-04-09 01:24:29', '2026-04-09 01:24:29'),
(64, 81, 42, '2026-04-10 23:05:23', '2026-04-10 23:05:23'),
(65, 82, 42, '2026-04-10 23:21:01', '2026-04-10 23:21:01'),
(66, 83, 42, '2026-04-10 23:33:24', '2026-04-10 23:33:24'),
(67, 84, 42, '2026-04-10 23:52:50', '2026-04-10 23:52:50'),
(68, 85, 42, '2026-04-11 01:04:25', '2026-04-11 01:04:25'),
(69, 87, 42, '2026-04-11 01:08:15', '2026-04-11 01:08:15'),
(70, 88, 42, '2026-04-11 01:11:39', '2026-04-11 01:11:39'),
(71, 89, 42, '2026-04-11 01:14:03', '2026-04-11 01:14:03'),
(72, 90, 42, '2026-04-11 01:17:58', '2026-04-11 01:17:58'),
(73, 91, 42, '2026-04-11 01:24:03', '2026-04-11 01:24:03'),
(74, 92, 42, '2026-04-11 01:27:30', '2026-04-11 01:27:30'),
(75, 93, 42, '2026-04-11 01:50:29', '2026-04-11 01:50:29'),
(76, 94, 42, '2026-04-11 01:52:25', '2026-04-11 01:52:25'),
(77, 95, 42, '2026-04-11 01:54:55', '2026-04-11 01:54:55'),
(78, 96, 42, '2026-04-11 01:57:52', '2026-04-11 01:57:52'),
(79, 97, 43, '2026-04-13 00:23:31', '2026-04-13 00:23:31'),
(80, 98, 44, '2026-04-13 00:37:54', '2026-04-13 00:37:54'),
(81, 99, 45, '2026-04-13 00:46:41', '2026-04-13 00:46:41'),
(82, 100, 46, '2026-04-13 01:06:54', '2026-04-13 01:06:54'),
(83, 101, 47, '2026-04-13 01:08:47', '2026-04-13 01:08:47'),
(84, 102, 48, '2026-04-13 01:22:11', '2026-04-13 01:22:11'),
(85, 103, 49, '2026-04-13 01:26:56', '2026-04-13 01:26:56'),
(86, 104, 50, '2026-04-13 01:29:29', '2026-04-13 01:29:29'),
(87, 105, 51, '2026-04-13 02:00:45', '2026-04-13 02:00:45'),
(88, 106, 52, '2026-04-13 02:06:37', '2026-04-13 02:06:37'),
(89, 107, 52, '2026-04-13 02:10:24', '2026-04-13 02:10:24'),
(90, 108, 53, '2026-04-13 02:42:10', '2026-04-13 02:42:10'),
(91, 109, 55, '2026-04-13 02:46:04', '2026-04-13 02:46:04'),
(92, 110, 56, '2026-04-13 02:55:49', '2026-04-13 02:55:49'),
(93, 111, 57, '2026-04-13 03:00:26', '2026-04-13 03:00:26'),
(94, 112, 58, '2026-04-13 03:02:55', '2026-04-13 03:02:55'),
(95, 113, 59, '2026-04-13 03:05:01', '2026-04-13 03:05:01'),
(96, 114, 59, '2026-04-13 03:07:01', '2026-04-13 03:07:01'),
(97, 115, 60, '2026-04-13 03:25:48', '2026-04-13 03:25:48'),
(98, 116, 43, '2026-04-13 03:33:33', '2026-04-13 03:33:33'),
(99, 117, 43, '2026-04-13 03:36:20', '2026-04-13 03:36:20'),
(100, 118, 47, '2026-04-13 03:43:16', '2026-04-13 03:43:16'),
(101, 119, 58, '2026-04-13 03:46:22', '2026-04-13 03:46:22'),
(102, 120, 58, '2026-04-13 03:49:27', '2026-04-13 03:49:27'),
(103, 121, 61, '2026-04-13 03:51:51', '2026-04-13 03:51:51'),
(104, 122, 61, '2026-04-13 03:54:03', '2026-04-13 03:54:03'),
(105, 123, 62, '2026-04-13 03:58:48', '2026-04-13 03:58:48'),
(106, 124, 58, '2026-04-13 04:00:57', '2026-04-13 04:00:57'),
(107, 125, 63, '2026-04-13 04:03:53', '2026-04-13 04:03:53'),
(108, 126, 48, '2026-04-13 04:18:14', '2026-04-13 04:18:14'),
(109, 127, 43, '2026-04-13 04:20:35', '2026-04-13 04:20:35'),
(110, 128, 58, '2026-04-13 04:23:25', '2026-04-13 04:23:25'),
(111, 129, 43, '2026-04-13 04:27:50', '2026-04-13 04:27:50'),
(112, 130, 43, '2026-04-13 04:30:56', '2026-04-13 04:30:56'),
(113, 131, 29, '2026-04-13 04:33:13', '2026-04-13 04:33:13'),
(114, 132, 64, '2026-04-13 04:35:05', '2026-04-13 04:35:05'),
(115, 133, 43, '2026-04-13 04:38:20', '2026-04-13 04:38:20'),
(116, 134, 43, '2026-04-13 04:43:18', '2026-04-13 04:43:18'),
(117, 135, 65, '2026-04-13 04:49:35', '2026-04-13 04:49:35'),
(118, 136, 43, '2026-04-13 04:51:37', '2026-04-13 04:51:37'),
(119, 137, 43, '2026-04-13 04:55:00', '2026-04-13 04:55:00'),
(120, 138, 58, '2026-04-13 05:16:24', '2026-04-13 05:16:24'),
(121, 139, 66, '2026-04-13 05:19:17', '2026-04-13 05:19:17'),
(122, 140, 65, '2026-04-13 05:33:02', '2026-04-13 05:33:02'),
(123, 141, 58, '2026-04-13 05:34:30', '2026-04-13 05:34:30'),
(124, 142, 67, '2026-04-13 05:36:51', '2026-04-13 05:36:51'),
(125, 143, 63, '2026-04-13 05:39:18', '2026-04-13 05:39:18'),
(126, 144, 68, '2026-04-15 00:26:30', '2026-04-15 00:26:30'),
(127, 145, 69, '2026-04-15 00:38:00', '2026-04-15 00:38:00'),
(128, 146, 55, '2026-04-15 00:40:43', '2026-04-15 00:40:43'),
(129, 147, 71, '2026-04-15 00:58:07', '2026-04-15 00:58:07'),
(130, 148, 72, '2026-04-15 01:00:38', '2026-04-15 01:00:38'),
(131, 149, 73, '2026-04-15 01:04:12', '2026-04-15 01:04:12'),
(132, 150, 74, '2026-04-15 01:11:51', '2026-04-15 01:11:51'),
(133, 151, 75, '2026-04-15 01:17:40', '2026-04-15 01:17:40'),
(134, 152, 76, '2026-04-15 01:38:50', '2026-04-15 01:38:50'),
(135, 153, 77, '2026-04-15 02:07:00', '2026-04-15 02:07:00'),
(136, 154, 78, '2026-04-15 02:10:30', '2026-04-15 02:10:30'),
(137, 155, 79, '2026-04-15 02:12:34', '2026-04-15 02:12:34'),
(138, 156, 80, '2026-04-15 02:15:24', '2026-04-15 02:15:24'),
(139, 157, 10, '2026-04-15 02:18:06', '2026-04-15 02:18:06'),
(140, 158, 81, '2026-04-15 02:20:07', '2026-04-15 02:20:07'),
(141, 159, 82, '2026-04-15 02:31:41', '2026-04-15 02:31:41'),
(142, 160, 83, '2026-04-15 02:34:24', '2026-04-15 02:34:24'),
(143, 161, 76, '2026-04-15 02:36:16', '2026-04-15 02:36:16'),
(144, 162, 84, '2026-04-15 02:38:27', '2026-04-15 02:38:27'),
(145, 163, 85, '2026-04-15 02:40:42', '2026-04-15 02:40:42'),
(146, 164, 86, '2026-04-15 02:42:57', '2026-04-15 02:42:57'),
(147, 165, 76, '2026-04-15 02:44:49', '2026-04-15 02:44:49'),
(148, 166, 87, '2026-04-16 02:55:48', '2026-04-16 02:55:48'),
(149, 168, 91, '2026-04-16 03:01:32', '2026-04-16 03:01:32'),
(150, 169, 90, '2026-04-16 03:04:21', '2026-04-16 03:04:21'),
(151, 170, 88, '2026-04-16 03:09:11', '2026-04-16 03:09:11'),
(152, 171, 89, '2026-04-16 03:13:16', '2026-04-16 03:13:16'),
(153, 172, 92, '2026-04-16 04:37:26', '2026-04-16 04:37:26'),
(154, 173, 93, '2026-04-17 23:16:00', '2026-04-17 23:16:00'),
(155, 174, 90, '2026-04-17 23:21:14', '2026-04-17 23:21:14'),
(156, 175, 94, '2026-04-17 23:25:36', '2026-04-17 23:25:36'),
(157, 176, 95, '2026-04-17 23:27:42', '2026-04-17 23:27:42'),
(158, 177, 96, '2026-04-17 23:40:19', '2026-04-17 23:40:19'),
(159, 178, 97, '2026-04-21 07:10:59', '2026-04-21 07:10:59'),
(160, 179, 101, '2026-04-22 02:53:39', '2026-04-22 02:53:39'),
(161, 180, 101, '2026-04-22 04:29:59', '2026-04-22 04:29:59'),
(162, 181, 101, '2026-04-22 04:33:12', '2026-04-22 04:33:12'),
(163, 182, 9, '2026-04-27 00:17:23', '2026-04-27 00:17:23'),
(164, 183, 9, '2026-04-28 05:27:37', '2026-04-28 05:27:37'),
(165, 184, 105, '2026-04-28 05:57:15', '2026-04-28 05:57:15'),
(166, 185, 106, '2026-04-28 22:02:45', '2026-04-28 22:02:45'),
(167, 186, 107, '2026-04-29 01:07:07', '2026-04-29 01:07:07'),
(168, 187, 108, '2026-04-29 02:32:15', '2026-04-29 02:32:15'),
(169, 188, 106, '2026-04-29 04:23:56', '2026-04-29 04:23:56'),
(170, 189, 109, '2026-04-29 05:13:32', '2026-04-29 05:13:32'),
(171, 190, 110, '2026-04-29 21:38:27', '2026-04-29 21:38:27'),
(172, 191, 29, '2026-04-30 02:04:05', '2026-04-30 02:04:05'),
(173, 192, 111, '2026-04-30 02:22:21', '2026-04-30 02:22:21'),
(174, 193, 112, '2026-04-30 04:44:15', '2026-04-30 04:44:15'),
(175, 194, 113, '2026-04-30 06:14:07', '2026-04-30 06:14:07'),
(176, 195, 114, '2026-04-30 08:19:00', '2026-04-30 08:19:00'),
(177, 196, 115, '2026-04-30 09:55:38', '2026-04-30 09:55:38'),
(178, 197, 116, '2026-04-30 22:36:19', '2026-04-30 22:36:19'),
(179, 198, 112, '2026-05-01 03:07:52', '2026-05-01 03:07:52'),
(180, 199, 117, '2026-05-01 22:39:12', '2026-05-01 22:39:12'),
(181, 200, 118, '2026-05-02 05:26:40', '2026-05-02 05:26:40'),
(182, 201, 119, '2026-05-03 00:06:06', '2026-05-03 00:06:06'),
(183, 202, 120, '2026-05-03 02:06:19', '2026-05-03 02:06:19'),
(184, 203, 120, '2026-05-03 05:16:54', '2026-05-03 05:16:54'),
(185, 204, 121, '2026-05-03 08:05:37', '2026-05-03 08:05:37'),
(186, 205, 114, '2026-05-03 08:43:45', '2026-05-03 08:43:45'),
(187, 206, 122, '2026-05-03 22:37:06', '2026-05-03 22:37:06'),
(188, 207, 123, '2026-05-04 05:27:15', '2026-05-04 05:27:15'),
(189, 208, 124, '2026-05-04 08:11:30', '2026-05-04 08:11:30'),
(190, 209, 125, '2026-05-04 10:04:56', '2026-05-04 10:04:56'),
(191, 210, 125, '2026-05-04 22:15:18', '2026-05-04 22:15:18'),
(192, 211, 127, '2026-05-04 22:50:14', '2026-05-04 22:50:14'),
(193, 212, 129, '2026-05-05 04:15:41', '2026-05-05 04:15:41'),
(194, 213, 130, '2026-05-05 06:14:25', '2026-05-05 06:14:25'),
(195, 214, 131, '2026-05-05 06:52:29', '2026-05-05 06:52:29'),
(196, 215, 31, '2026-05-06 22:22:33', '2026-05-06 22:22:33'),
(197, 216, 132, '2026-05-06 23:46:55', '2026-05-06 23:46:55'),
(198, 217, 132, '2026-05-07 00:44:40', '2026-05-07 00:44:40'),
(199, 218, 133, '2026-05-07 01:12:17', '2026-05-07 01:12:17'),
(200, 219, 134, '2026-05-07 02:24:45', '2026-05-07 02:24:45'),
(201, 220, 135, '2026-05-08 04:03:43', '2026-05-08 04:03:43'),
(202, 221, 136, '2026-05-08 05:26:03', '2026-05-08 05:26:03'),
(203, 222, 137, '2026-05-09 02:37:38', '2026-05-09 02:37:38'),
(204, 223, 138, '2026-05-09 05:36:44', '2026-05-09 05:36:44'),
(205, 224, 139, '2026-05-09 06:22:57', '2026-05-09 06:22:57'),
(206, 225, 139, '2026-05-09 22:27:20', '2026-05-09 22:27:20'),
(207, 226, 140, '2026-05-09 23:11:31', '2026-05-09 23:11:31'),
(208, 227, 141, '2026-05-11 02:34:18', '2026-05-11 02:34:18'),
(209, 228, 144, '2026-05-11 05:30:03', '2026-05-11 05:30:03'),
(210, 229, 145, '2026-05-11 05:34:29', '2026-05-11 05:34:29'),
(211, 230, 146, '2026-05-11 05:37:13', '2026-05-11 05:37:13'),
(212, 231, 9, '2026-05-11 05:40:06', '2026-05-11 05:40:06'),
(213, 232, 147, '2026-05-11 05:40:16', '2026-05-11 05:40:16'),
(214, 233, 148, '2026-05-11 05:43:10', '2026-05-11 05:43:10'),
(215, 234, 149, '2026-05-11 05:45:48', '2026-05-11 05:45:48'),
(216, 235, 150, '2026-05-11 05:54:01', '2026-05-11 05:54:01'),
(217, 236, 151, '2026-05-11 05:56:34', '2026-05-11 05:56:34'),
(218, 237, 152, '2026-05-11 05:59:18', '2026-05-11 05:59:18'),
(219, 238, 153, '2026-05-11 06:41:35', '2026-05-11 06:41:35'),
(220, 239, 142, '2026-05-11 06:44:08', '2026-05-11 06:44:08'),
(221, 240, 154, '2026-05-11 06:47:15', '2026-05-11 06:47:15'),
(222, 241, 155, '2026-05-11 06:49:28', '2026-05-11 06:49:28'),
(223, 242, 156, '2026-05-11 06:51:41', '2026-05-11 06:51:41'),
(224, 243, 160, '2026-05-11 06:56:21', '2026-05-11 06:56:21'),
(225, 244, 157, '2026-05-11 06:59:12', '2026-05-11 06:59:12'),
(226, 245, 158, '2026-05-11 07:10:55', '2026-05-11 07:10:55'),
(227, 246, 159, '2026-05-11 07:13:20', '2026-05-11 07:13:20'),
(228, 247, 143, '2026-05-11 07:19:58', '2026-05-11 07:19:58'),
(229, 248, 161, '2026-05-11 07:23:13', '2026-05-11 07:23:13'),
(230, 249, 9, '2026-05-12 02:16:56', '2026-05-12 02:16:56'),
(231, 250, 9, '2026-05-12 02:26:47', '2026-05-12 02:26:47'),
(232, 251, 114, '2026-05-13 00:46:16', '2026-05-13 00:46:16'),
(233, 252, 162, '2026-05-13 08:34:51', '2026-05-13 08:34:51'),
(234, 253, 9, '2026-05-13 23:45:34', '2026-05-13 23:45:34'),
(235, 254, 9, '2026-05-14 00:03:46', '2026-05-14 00:03:46'),
(236, 255, 9, '2026-05-14 00:07:31', '2026-05-14 00:07:31'),
(237, 256, 9, '2026-05-14 00:27:12', '2026-05-14 00:27:12'),
(238, 257, 9, '2026-05-14 00:31:22', '2026-05-14 00:31:22'),
(239, 258, 9, '2026-05-14 00:33:08', '2026-05-14 00:33:08'),
(240, 259, 148, '2026-05-14 00:35:01', '2026-05-14 00:35:01'),
(241, 260, 9, '2026-05-14 00:59:17', '2026-05-14 00:59:17'),
(242, 261, 9, '2026-05-14 01:15:17', '2026-05-14 01:15:17'),
(243, 262, 9, '2026-05-14 01:19:21', '2026-05-14 01:19:21'),
(244, 263, 9, '2026-05-14 01:22:59', '2026-05-14 01:22:59'),
(245, 264, 163, '2026-05-14 01:36:59', '2026-05-14 01:36:59'),
(246, 265, 164, '2026-05-14 05:18:43', '2026-05-14 05:18:43'),
(247, 266, 185, '2026-05-14 06:40:57', '2026-05-14 06:40:57'),
(248, 267, 184, '2026-05-14 06:43:29', '2026-05-14 06:43:29'),
(249, 268, 183, '2026-05-14 06:47:44', '2026-05-14 06:47:44'),
(250, 269, 182, '2026-05-14 06:51:58', '2026-05-14 06:51:58'),
(251, 270, 181, '2026-05-14 06:55:40', '2026-05-14 06:55:40'),
(252, 271, 180, '2026-05-14 06:58:06', '2026-05-14 06:58:06'),
(253, 272, 179, '2026-05-14 07:00:19', '2026-05-14 07:00:19'),
(254, 273, 176, '2026-05-14 07:03:14', '2026-05-14 07:03:14'),
(255, 274, 178, '2026-05-14 07:06:10', '2026-05-14 07:06:10'),
(256, 275, 177, '2026-05-14 07:07:42', '2026-05-14 07:07:42'),
(257, 276, 176, '2026-05-14 07:09:45', '2026-05-14 07:09:45'),
(258, 277, 154, '2026-05-14 07:11:51', '2026-05-14 07:11:51'),
(259, 278, 154, '2026-05-14 07:13:26', '2026-05-14 07:13:26'),
(260, 279, 167, '2026-05-14 07:15:07', '2026-05-14 07:15:07'),
(261, 280, 167, '2026-05-14 07:16:57', '2026-05-14 07:16:57'),
(262, 281, 175, '2026-05-14 07:18:26', '2026-05-14 07:18:26'),
(263, 282, 174, '2026-05-14 07:20:03', '2026-05-14 07:20:03'),
(264, 283, 173, '2026-05-14 07:22:34', '2026-05-14 07:22:34'),
(265, 284, 172, '2026-05-14 07:24:34', '2026-05-14 07:24:34'),
(266, 285, 167, '2026-05-14 07:26:20', '2026-05-14 07:26:20'),
(267, 286, 171, '2026-05-14 07:28:57', '2026-05-14 07:28:57'),
(268, 287, 170, '2026-05-14 07:31:34', '2026-05-14 07:31:34'),
(269, 288, 169, '2026-05-14 07:34:20', '2026-05-14 07:34:20'),
(270, 289, 168, '2026-05-14 07:36:23', '2026-05-14 07:36:23'),
(271, 290, 167, '2026-05-14 07:38:32', '2026-05-14 07:38:32'),
(272, 291, 166, '2026-05-14 07:41:21', '2026-05-14 07:41:21'),
(273, 292, 165, '2026-05-14 07:42:40', '2026-05-14 07:42:40'),
(274, 293, 186, '2026-05-15 22:58:52', '2026-05-15 22:58:52'),
(275, 294, 187, '2026-05-16 00:15:39', '2026-05-16 00:15:39'),
(276, 295, 188, '2026-05-16 01:44:37', '2026-05-16 01:44:37'),
(277, 296, 189, '2026-05-16 04:45:47', '2026-05-16 04:45:47'),
(278, 297, 190, '2026-05-16 22:03:55', '2026-05-16 22:03:55'),
(279, 298, 191, '2026-05-17 22:14:38', '2026-05-17 22:14:38'),
(280, 299, 193, '2026-05-18 00:08:37', '2026-05-18 00:08:37'),
(281, 300, 193, '2026-05-18 00:16:58', '2026-05-18 00:16:58'),
(282, 301, 194, '2026-05-18 00:19:18', '2026-05-18 00:19:18'),
(283, 302, 99, '2026-05-18 02:25:55', '2026-05-18 02:25:55'),
(284, 303, 99, '2026-05-18 02:43:26', '2026-05-18 02:43:26'),
(285, 304, 99, '2026-05-18 03:16:59', '2026-05-18 03:16:59'),
(286, 305, 99, '2026-05-18 03:27:30', '2026-05-18 03:27:30'),
(287, 306, 99, '2026-05-18 03:35:43', '2026-05-18 03:35:43'),
(288, 307, 99, '2026-05-18 03:44:57', '2026-05-18 03:44:57'),
(289, 308, 99, '2026-05-18 04:33:25', '2026-05-18 04:33:25'),
(290, 309, 99, '2026-05-18 05:12:23', '2026-05-18 05:12:23'),
(291, 310, 195, '2026-05-18 05:53:27', '2026-05-18 05:53:27'),
(292, 311, 197, '2026-05-19 00:23:08', '2026-05-19 00:23:08'),
(293, 312, 198, '2026-05-19 01:50:25', '2026-05-19 01:50:25'),
(294, 313, 9, '2026-05-19 02:06:23', '2026-05-19 02:06:23'),
(295, 314, 199, '2026-05-19 05:49:38', '2026-05-19 05:49:38'),
(296, 315, 200, '2026-05-19 21:53:15', '2026-05-19 21:53:15'),
(297, 316, 9, '2026-05-19 22:59:00', '2026-05-19 22:59:00'),
(298, 317, 9, '2026-05-19 23:03:10', '2026-05-19 23:03:10'),
(299, 318, 9, '2026-05-19 23:07:18', '2026-05-19 23:07:18'),
(300, 319, 201, '2026-05-20 01:27:50', '2026-05-20 01:27:50'),
(301, 320, 202, '2026-05-20 01:56:14', '2026-05-20 01:56:14'),
(302, 321, 18, '2026-05-20 01:58:40', '2026-05-20 01:58:40'),
(303, 322, 18, '2026-05-20 02:52:41', '2026-05-20 02:52:41'),
(304, 323, 18, '2026-05-20 03:10:10', '2026-05-20 03:10:10'),
(305, 324, 18, '2026-05-20 03:42:46', '2026-05-20 03:42:46'),
(306, 325, 18, '2026-05-20 04:01:42', '2026-05-20 04:01:42'),
(307, 326, 18, '2026-05-20 04:08:47', '2026-05-20 04:08:47'),
(308, 327, 203, '2026-05-20 06:51:36', '2026-05-20 06:51:36'),
(309, 328, 204, '2026-05-21 01:52:53', '2026-05-21 01:52:53'),
(310, 329, 9, '2026-05-21 05:50:28', '2026-05-21 05:50:28'),
(311, 330, 205, '2026-05-21 05:59:18', '2026-05-21 05:59:18'),
(312, 331, 206, '2026-05-21 08:44:48', '2026-05-21 08:44:48'),
(313, 332, 207, '2026-05-31 00:51:37', '2026-05-31 00:51:37'),
(314, 333, 208, '2026-05-31 01:49:39', '2026-05-31 01:49:39'),
(315, 334, 209, '2026-05-31 05:19:15', '2026-05-31 05:19:15'),
(316, 335, 210, '2026-05-31 07:11:15', '2026-05-31 07:11:15'),
(317, 336, 211, '2026-06-01 02:32:56', '2026-06-01 02:32:56'),
(318, 337, 212, '2026-06-01 04:34:23', '2026-06-01 04:34:23'),
(319, 338, 148, '2026-06-13 05:22:23', '2026-06-13 05:22:23'),
(320, 339, 148, '2026-06-13 05:37:26', '2026-06-13 05:37:26'),
(321, 340, 148, '2026-06-13 05:38:23', '2026-06-13 05:38:23'),
(322, 341, 148, '2026-06-13 05:39:24', '2026-06-13 05:39:24'),
(323, 342, 148, '2026-06-18 18:54:55', '2026-06-18 18:54:55'),
(324, 343, 148, '2026-06-18 18:57:36', '2026-06-18 18:57:36'),
(325, 344, 148, '2026-06-19 08:15:25', '2026-06-19 08:15:25'),
(326, 345, 148, '2026-06-19 09:01:33', '2026-06-19 09:01:33'),
(327, 346, 148, '2026-06-19 09:04:04', '2026-06-19 09:04:04'),
(328, 347, 148, '2026-06-19 09:05:05', '2026-06-19 09:05:05'),
(329, 348, 148, '2026-06-19 09:05:55', '2026-06-19 09:05:55'),
(330, 349, 148, '2026-06-19 09:09:20', '2026-06-19 09:09:20'),
(331, 350, 148, '2026-06-19 09:24:25', '2026-06-19 09:24:25'),
(332, 351, 148, '2026-06-19 09:25:21', '2026-06-19 09:25:21'),
(333, 352, 148, '2026-06-25 07:15:23', '2026-06-25 07:15:23'),
(334, 353, 148, '2026-06-25 07:55:48', '2026-06-25 07:55:48'),
(335, 354, 148, '2026-06-25 07:57:26', '2026-06-25 07:57:26'),
(336, 355, 148, '2026-06-25 08:07:13', '2026-06-25 08:07:13'),
(337, 356, 148, '2026-06-25 08:08:50', '2026-06-25 08:08:50'),
(338, 357, 148, '2026-06-25 08:09:58', '2026-06-25 08:09:58'),
(339, 358, 148, '2026-06-25 08:11:21', '2026-06-25 08:11:21'),
(340, 359, 148, '2026-06-25 08:12:36', '2026-06-25 08:12:36'),
(341, 360, 148, '2026-07-01 20:20:06', '2026-07-01 20:20:06'),
(342, 361, 148, '2026-07-01 20:27:40', '2026-07-01 20:27:40'),
(343, 362, 148, '2026-07-01 20:31:57', '2026-07-01 20:31:57'),
(344, 363, 148, '2026-07-01 20:33:29', '2026-07-01 20:33:29'),
(345, 364, 148, '2026-07-01 20:34:53', '2026-07-01 20:34:53'),
(346, 365, 148, '2026-07-01 20:36:22', '2026-07-01 20:36:22'),
(347, 366, 148, '2026-07-02 13:39:02', '2026-07-02 13:39:02'),
(348, 367, 148, '2026-07-02 13:41:52', '2026-07-02 13:41:52'),
(349, 368, 148, '2026-07-02 13:46:14', '2026-07-02 13:46:14'),
(350, 369, 148, '2026-07-02 13:47:52', '2026-07-02 13:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 338, 425, '2026-06-13 05:22:23', '2026-06-13 05:22:23'),
(2, 339, 425, '2026-06-13 05:37:26', '2026-06-13 05:37:26'),
(3, 340, 425, '2026-06-13 05:38:23', '2026-06-13 05:38:23'),
(4, 341, 425, '2026-06-13 05:39:24', '2026-06-13 05:39:24'),
(5, 341, 435, '2026-06-18 05:22:05', '2026-06-18 05:22:05'),
(6, 340, 435, '2026-06-18 05:24:39', '2026-06-18 05:24:39'),
(7, 339, 435, '2026-06-18 05:28:12', '2026-06-18 05:28:12'),
(8, 338, 435, '2026-06-18 05:29:57', '2026-06-18 05:29:57'),
(9, 342, 424, '2026-06-18 18:54:55', '2026-06-18 18:54:55'),
(10, 342, 468, '2026-06-18 18:55:46', '2026-06-18 18:55:46'),
(11, 343, 426, '2026-06-18 18:57:36', '2026-06-18 18:57:36'),
(12, 343, 469, '2026-06-18 18:58:57', '2026-06-18 18:58:57'),
(13, 344, 426, '2026-06-19 08:15:25', '2026-06-19 08:15:25'),
(14, 344, 469, '2026-06-19 08:15:25', '2026-06-19 08:15:25'),
(15, 345, 424, '2026-06-19 09:01:33', '2026-06-19 09:01:33'),
(16, 345, 468, '2026-06-19 09:01:33', '2026-06-19 09:01:33'),
(17, 346, 424, '2026-06-19 09:04:04', '2026-06-19 09:04:04'),
(18, 346, 468, '2026-06-19 09:04:04', '2026-06-19 09:04:04'),
(19, 347, 424, '2026-06-19 09:05:05', '2026-06-19 09:05:05'),
(20, 347, 468, '2026-06-19 09:05:05', '2026-06-19 09:05:05'),
(21, 348, 424, '2026-06-19 09:05:55', '2026-06-19 09:05:55'),
(22, 348, 468, '2026-06-19 09:05:55', '2026-06-19 09:05:55'),
(23, 349, 425, '2026-06-19 09:09:20', '2026-06-19 09:09:20'),
(24, 349, 435, '2026-06-19 09:09:20', '2026-06-19 09:09:20'),
(25, 343, 427, '2026-06-19 09:11:58', '2026-06-19 09:11:58'),
(26, 344, 427, '2026-06-19 09:22:49', '2026-06-19 09:22:49'),
(27, 350, 426, '2026-06-19 09:24:25', '2026-06-19 09:24:25'),
(28, 350, 427, '2026-06-19 09:24:25', '2026-06-19 09:24:25'),
(29, 350, 469, '2026-06-19 09:24:25', '2026-06-19 09:24:25'),
(30, 351, 426, '2026-06-19 09:25:21', '2026-06-19 09:25:21'),
(31, 351, 427, '2026-06-19 09:25:21', '2026-06-19 09:25:21'),
(32, 351, 469, '2026-06-19 09:25:21', '2026-06-19 09:25:21'),
(33, 1, 425, '2026-06-20 19:48:27', '2026-06-20 19:48:27'),
(34, 1, 435, '2026-06-20 19:48:27', '2026-06-20 19:48:27'),
(35, 352, 425, '2026-06-25 07:15:23', '2026-06-25 07:15:23'),
(36, 352, 435, '2026-06-25 07:15:23', '2026-06-25 07:15:23'),
(37, 353, 425, '2026-06-25 07:55:48', '2026-06-25 07:55:48'),
(38, 353, 435, '2026-06-25 07:55:48', '2026-06-25 07:55:48'),
(39, 354, 425, '2026-06-25 07:57:26', '2026-06-25 07:57:26'),
(40, 354, 435, '2026-06-25 07:57:26', '2026-06-25 07:57:26'),
(41, 355, 424, '2026-06-25 08:07:13', '2026-06-25 08:07:13'),
(42, 355, 468, '2026-06-25 08:07:13', '2026-06-25 08:07:13'),
(43, 356, 424, '2026-06-25 08:08:50', '2026-06-25 08:08:50'),
(44, 356, 468, '2026-06-25 08:08:50', '2026-06-25 08:08:50'),
(45, 357, 424, '2026-06-25 08:09:58', '2026-06-25 08:09:58'),
(46, 357, 468, '2026-06-25 08:09:58', '2026-06-25 08:09:58'),
(47, 358, 424, '2026-06-25 08:11:21', '2026-06-25 08:11:21'),
(48, 358, 468, '2026-06-25 08:11:21', '2026-06-25 08:11:21'),
(49, 359, 424, '2026-06-25 08:12:36', '2026-06-25 08:12:36'),
(50, 359, 468, '2026-06-25 08:12:36', '2026-06-25 08:12:36'),
(51, 360, 470, '2026-07-01 20:20:06', '2026-07-01 20:20:06'),
(52, 360, 471, '2026-07-01 20:25:45', '2026-07-01 20:25:45'),
(53, 361, 470, '2026-07-01 20:27:40', '2026-07-01 20:27:40'),
(54, 361, 471, '2026-07-01 20:27:40', '2026-07-01 20:27:40'),
(55, 362, 424, '2026-07-01 20:31:57', '2026-07-01 20:31:57'),
(56, 362, 468, '2026-07-01 20:31:57', '2026-07-01 20:31:57'),
(57, 363, 424, '2026-07-01 20:33:29', '2026-07-01 20:33:29'),
(58, 363, 468, '2026-07-01 20:33:29', '2026-07-01 20:33:29'),
(59, 364, 424, '2026-07-01 20:34:53', '2026-07-01 20:34:53'),
(60, 364, 468, '2026-07-01 20:34:53', '2026-07-01 20:34:53'),
(61, 365, 424, '2026-07-01 20:36:22', '2026-07-01 20:36:22'),
(62, 365, 468, '2026-07-01 20:36:22', '2026-07-01 20:36:22'),
(63, 366, 424, '2026-07-02 13:39:02', '2026-07-02 13:39:02'),
(64, 366, 468, '2026-07-02 13:39:02', '2026-07-02 13:39:02'),
(65, 367, 424, '2026-07-02 13:41:52', '2026-07-02 13:41:52'),
(66, 367, 468, '2026-07-02 13:41:52', '2026-07-02 13:41:52'),
(67, 368, 424, '2026-07-02 13:46:14', '2026-07-02 13:46:14'),
(68, 368, 468, '2026-07-02 13:46:14', '2026-07-02 13:46:14'),
(69, 369, 424, '2026-07-02 13:47:52', '2026-07-02 13:47:52'),
(70, 369, 468, '2026-07-02 13:47:52', '2026-07-02 13:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_editions`
--

CREATE TABLE `product_editions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_editions`
--

INSERT INTO `product_editions` (`id`, `product_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 34, 'First Edition', 1, '2026-02-26 00:12:31', '2026-03-30 05:23:48'),
(2, 33, 'First Edition', 1, '2026-02-26 00:46:13', '2026-02-26 00:46:13'),
(3, 27, 'First Edition', 1, '2026-02-28 21:12:01', '2026-03-04 23:15:28'),
(4, 3, 'First Edition', 1, '2026-02-28 21:27:59', '2026-03-08 02:18:00'),
(5, 28, 'First Edition', 1, '2026-03-04 01:02:48', '2026-03-29 05:01:54'),
(6, 35, 'First Edition', 1, '2026-03-04 21:37:26', '2026-03-30 04:36:36'),
(7, 32, 'First Edition', 1, '2026-03-04 21:53:33', '2026-03-30 22:47:07'),
(8, 36, 'First Edition', 1, '2026-03-04 22:10:40', '2026-03-30 04:30:52'),
(9, 37, 'First Edition', 1, '2026-03-04 22:29:01', '2026-03-30 04:17:50'),
(10, 38, 'Second Edition', 1, '2026-03-04 22:32:44', '2026-03-04 23:01:20'),
(11, 39, 'Fourth Edition', 1, '2026-03-04 22:41:43', '2026-03-04 22:51:35'),
(12, 13, 'First Edition', 1, '2026-03-04 23:15:59', '2026-03-04 23:15:59'),
(13, 12, 'First Edition', 1, '2026-03-04 23:16:32', '2026-03-04 23:16:32'),
(14, 11, 'First Edition', 1, '2026-03-04 23:17:12', '2026-03-04 23:17:12'),
(15, 10, 'Fifth Edition', 1, '2026-03-04 23:17:45', '2026-03-04 23:17:45'),
(16, 31, 'First Edition', 1, '2026-03-07 21:05:30', '2026-03-07 21:05:30'),
(17, 29, 'First Edition', 1, '2026-03-29 04:36:55', '2026-03-29 04:36:55'),
(18, 2, 'First Edition', 1, '2026-03-29 05:32:30', '2026-03-29 05:32:30'),
(19, 30, 'First Edition', 1, '2026-03-31 21:37:08', '2026-03-31 21:37:08'),
(20, 1, 'First Edition', 1, '2026-03-31 21:44:03', '2026-03-31 21:44:03'),
(21, 40, 'First Edition', 1, '2026-04-02 04:10:05', '2026-04-02 04:10:05'),
(22, 41, 'First Edition', 1, '2026-04-05 04:53:17', '2026-04-05 04:53:17'),
(23, 42, 'First Edition', 1, '2026-04-05 04:58:13', '2026-04-05 04:58:13'),
(24, 43, 'First Edition', 1, '2026-04-05 05:12:48', '2026-04-05 05:12:48'),
(25, 44, 'First Edition', 1, '2026-04-05 05:18:33', '2026-04-05 05:18:33'),
(26, 45, 'First Edition', 1, '2026-04-06 04:01:20', '2026-04-06 04:01:20'),
(27, 46, 'First Edition', 1, '2026-04-06 04:08:16', '2026-04-06 04:08:16'),
(28, 47, 'First Edition', 1, '2026-04-06 04:20:03', '2026-04-06 04:20:03'),
(29, 48, 'First Edition', 1, '2026-04-06 04:22:58', '2026-04-06 04:22:58'),
(30, 49, 'First Edition', 1, '2026-04-06 04:27:44', '2026-04-06 04:27:44'),
(31, 50, 'First Edition', 1, '2026-04-06 04:33:42', '2026-04-06 04:33:42'),
(32, 51, 'First Edition', 1, '2026-04-06 04:37:12', '2026-04-06 04:37:12'),
(33, 52, 'First Edition', 1, '2026-04-06 04:48:25', '2026-04-06 04:48:25'),
(34, 53, 'First Edition', 1, '2026-04-06 04:51:32', '2026-04-06 04:51:32'),
(35, 54, 'First Edition', 1, '2026-04-06 05:00:18', '2026-04-06 05:00:18'),
(36, 55, 'First Edition', 1, '2026-04-06 05:28:59', '2026-04-06 05:28:59'),
(37, 56, 'First Edition', 1, '2026-04-06 05:36:22', '2026-04-06 05:36:22'),
(38, 57, 'First Edition', 1, '2026-04-06 05:40:33', '2026-04-06 05:40:33'),
(39, 58, 'First Edition', 1, '2026-04-06 05:55:35', '2026-04-06 05:55:35'),
(40, 59, 'First Edition', 1, '2026-04-06 05:58:33', '2026-04-06 05:58:33'),
(41, 60, 'First Edition', 1, '2026-04-06 06:02:43', '2026-04-06 06:02:43'),
(42, 61, 'First Edition', 1, '2026-04-06 06:04:53', '2026-04-06 06:04:53'),
(43, 62, 'First Edition', 1, '2026-04-06 06:07:22', '2026-04-06 06:07:22'),
(44, 63, 'First Edition', 1, '2026-04-06 06:10:24', '2026-04-06 06:10:24'),
(45, 64, 'First Edition', 1, '2026-04-06 06:15:44', '2026-04-06 06:15:44'),
(46, 65, 'First Edition', 1, '2026-04-07 05:07:20', '2026-04-07 05:07:20'),
(47, 66, 'First Edition', 1, '2026-04-08 00:02:55', '2026-04-08 00:02:55'),
(48, 67, 'First Edition', 1, '2026-04-08 00:18:56', '2026-04-08 00:18:56'),
(49, 68, 'First Edition', 1, '2026-04-08 00:28:43', '2026-04-08 00:28:43'),
(50, 69, 'First Edition', 1, '2026-04-08 00:32:47', '2026-04-08 00:32:47'),
(51, 70, 'First Edition', 1, '2026-04-08 00:56:55', '2026-04-08 00:56:55'),
(52, 71, 'First Edition', 1, '2026-04-08 00:58:01', '2026-04-08 00:58:01'),
(53, 72, 'First Edition', 1, '2026-04-08 01:02:26', '2026-04-08 01:02:26'),
(54, 73, 'First Edition', 1, '2026-04-08 01:03:58', '2026-04-08 01:03:58'),
(55, 74, 'First Edition', 1, '2026-04-09 00:09:13', '2026-04-09 00:09:13'),
(56, 75, 'Fourth Edition', 1, '2026-04-09 00:40:45', '2026-04-10 23:47:40'),
(57, 76, 'First Edition', 1, '2026-04-09 00:47:51', '2026-04-09 00:47:51'),
(58, 77, 'First Edition', 1, '2026-04-09 00:56:40', '2026-04-09 00:56:40'),
(59, 78, 'First Edition', 1, '2026-04-09 01:04:40', '2026-04-09 01:04:40'),
(60, 79, 'Second Edition', 1, '2026-04-09 01:19:00', '2026-04-09 01:19:00'),
(61, 80, 'Third Edition', 1, '2026-04-09 01:24:29', '2026-04-09 01:24:39'),
(62, 81, 'First Edition', 1, '2026-04-10 23:05:23', '2026-04-10 23:05:23'),
(63, 82, 'First Edition', 1, '2026-04-10 23:21:01', '2026-04-10 23:21:01'),
(64, 83, 'First Edition', 1, '2026-04-10 23:33:24', '2026-04-10 23:33:24'),
(65, 84, 'First Edition', 1, '2026-04-10 23:52:50', '2026-04-10 23:52:50'),
(66, 85, 'First Edition', 1, '2026-04-11 01:04:25', '2026-04-11 01:04:25'),
(67, 87, 'Fourth Edition', 1, '2026-04-11 01:08:15', '2026-04-11 01:09:15'),
(68, 88, 'First Edition', 1, '2026-04-11 01:11:39', '2026-04-11 01:11:39'),
(69, 89, 'First Edition', 1, '2026-04-11 01:14:03', '2026-04-11 01:14:03'),
(70, 90, 'First Edition', 1, '2026-04-11 01:17:58', '2026-04-11 01:17:58'),
(71, 91, 'Second Edition', 1, '2026-04-11 01:24:03', '2026-04-11 01:24:03'),
(72, 92, 'Third Edition', 1, '2026-04-11 01:27:30', '2026-04-11 01:27:30'),
(73, 93, 'First Edition', 1, '2026-04-11 01:50:29', '2026-04-11 01:50:29'),
(74, 94, 'First Edition', 1, '2026-04-11 01:52:25', '2026-04-11 01:52:25'),
(75, 95, 'First Edition', 1, '2026-04-11 01:54:55', '2026-04-11 01:54:55'),
(76, 96, 'First Edition', 1, '2026-04-11 01:57:52', '2026-04-11 01:57:52'),
(77, 97, 'First Edition', 1, '2026-04-13 00:23:31', '2026-04-13 00:23:31'),
(78, 98, 'First Edition', 1, '2026-04-13 00:37:54', '2026-04-13 00:37:54'),
(79, 99, 'First Edition', 1, '2026-04-13 00:46:41', '2026-04-13 00:46:41'),
(80, 100, 'First Edition', 1, '2026-04-13 01:06:54', '2026-04-13 01:06:54'),
(81, 101, 'First Edition', 1, '2026-04-13 01:08:47', '2026-04-13 01:08:47'),
(82, 102, 'First Edition', 1, '2026-04-13 01:22:11', '2026-04-13 01:22:11'),
(83, 103, 'First Edition', 1, '2026-04-13 01:26:56', '2026-04-13 01:26:56'),
(84, 104, 'First Edition', 1, '2026-04-13 01:29:29', '2026-04-13 01:29:29'),
(85, 105, 'First Edition', 1, '2026-04-13 02:00:45', '2026-04-13 02:00:45'),
(86, 106, 'First Edition', 1, '2026-04-13 02:06:37', '2026-04-13 02:06:37'),
(87, 107, 'First Edition', 1, '2026-04-13 02:10:24', '2026-04-13 02:10:24'),
(88, 108, 'First Edition', 1, '2026-04-13 02:42:10', '2026-04-13 02:42:10'),
(89, 109, 'First Edition', 1, '2026-04-13 02:46:04', '2026-04-13 02:46:04'),
(90, 110, 'First Edition', 1, '2026-04-13 02:55:49', '2026-04-13 02:55:49'),
(91, 111, 'First Edition', 1, '2026-04-13 03:00:26', '2026-04-13 03:00:26'),
(92, 112, 'First Edition', 1, '2026-04-13 03:02:55', '2026-04-13 03:02:55'),
(93, 113, 'First Edition', 1, '2026-04-13 03:05:01', '2026-04-13 03:05:01'),
(94, 114, 'First Edition', 1, '2026-04-13 03:07:01', '2026-04-13 03:07:01'),
(95, 115, 'First Edition', 1, '2026-04-13 03:25:48', '2026-04-13 03:25:48'),
(96, 116, 'First Edition', 1, '2026-04-13 03:33:33', '2026-04-13 03:33:33'),
(97, 117, 'First Edition', 1, '2026-04-13 03:36:20', '2026-04-13 03:36:20'),
(98, 118, 'First Edition', 1, '2026-04-13 03:43:16', '2026-04-13 03:43:16'),
(99, 119, 'First Edition', 1, '2026-04-13 03:46:22', '2026-04-13 03:46:22'),
(100, 120, 'First Edition', 1, '2026-04-13 03:49:27', '2026-04-13 03:49:27'),
(101, 121, 'First Edition', 1, '2026-04-13 03:51:51', '2026-04-13 03:51:51'),
(102, 122, 'First Edition', 1, '2026-04-13 03:54:03', '2026-04-13 03:54:03'),
(103, 123, 'First Edition', 1, '2026-04-13 03:58:48', '2026-04-13 03:58:48'),
(104, 124, 'First Edition', 1, '2026-04-13 04:00:57', '2026-04-13 04:00:57'),
(105, 125, 'First Edition', 1, '2026-04-13 04:03:53', '2026-04-13 04:03:53'),
(106, 126, 'First Edition', 1, '2026-04-13 04:18:14', '2026-04-13 04:18:14'),
(107, 127, 'First Edition', 1, '2026-04-13 04:20:35', '2026-04-13 04:20:35'),
(108, 128, 'First Edition', 1, '2026-04-13 04:23:25', '2026-04-13 04:23:25'),
(109, 129, 'First Edition', 1, '2026-04-13 04:27:50', '2026-04-13 04:27:50'),
(110, 130, 'First Edition', 1, '2026-04-13 04:30:56', '2026-04-13 04:30:56'),
(111, 131, 'First Edition', 1, '2026-04-13 04:33:13', '2026-04-13 04:33:13'),
(112, 132, 'First Edition', 1, '2026-04-13 04:35:05', '2026-04-13 04:35:05'),
(113, 133, 'First Edition', 1, '2026-04-13 04:38:20', '2026-04-13 04:38:20'),
(114, 134, 'First Edition', 1, '2026-04-13 04:43:18', '2026-04-13 04:43:18'),
(115, 135, 'First Edition', 1, '2026-04-13 04:49:35', '2026-04-13 04:49:35'),
(116, 136, 'First Edition', 1, '2026-04-13 04:51:37', '2026-04-13 04:51:37'),
(117, 137, 'First Edition', 1, '2026-04-13 04:55:00', '2026-04-13 04:55:00'),
(118, 138, 'First Edition', 1, '2026-04-13 05:16:24', '2026-04-13 05:16:24'),
(119, 139, 'First Edition', 1, '2026-04-13 05:19:17', '2026-04-13 05:19:17'),
(120, 140, 'First Edition', 1, '2026-04-13 05:33:02', '2026-04-13 05:33:02'),
(121, 141, 'First Edition', 1, '2026-04-13 05:34:30', '2026-04-13 05:34:30'),
(122, 142, 'First Edition', 1, '2026-04-13 05:36:51', '2026-04-13 05:36:51'),
(123, 143, 'First Edition', 1, '2026-04-13 05:39:18', '2026-04-13 05:39:18'),
(124, 144, 'First Edition', 1, '2026-04-15 00:26:30', '2026-04-15 00:26:30'),
(125, 145, 'First Edition', 1, '2026-04-15 00:38:00', '2026-04-15 00:38:00'),
(126, 146, 'First Edition', 1, '2026-04-15 00:40:43', '2026-04-15 00:40:43'),
(127, 147, 'First Edition', 1, '2026-04-15 00:58:07', '2026-04-15 00:58:07'),
(128, 148, 'First Edition', 1, '2026-04-15 01:00:38', '2026-04-15 01:00:38'),
(129, 149, 'First Edition', 1, '2026-04-15 01:04:12', '2026-04-15 01:04:12'),
(130, 150, 'First Edition', 1, '2026-04-15 01:11:51', '2026-04-15 01:11:51'),
(131, 151, 'First Edition', 1, '2026-04-15 01:17:40', '2026-04-15 01:17:40'),
(132, 152, 'First Edition', 1, '2026-04-15 01:38:50', '2026-04-15 01:38:50'),
(133, 153, 'First Edition', 1, '2026-04-15 02:07:00', '2026-04-15 02:07:00'),
(134, 154, 'First Edition', 1, '2026-04-15 02:10:30', '2026-04-15 02:10:30'),
(135, 155, 'First Edition', 1, '2026-04-15 02:12:34', '2026-04-15 02:12:34'),
(136, 156, 'First Edition', 1, '2026-04-15 02:15:24', '2026-04-15 02:15:24'),
(137, 157, 'First Edition', 1, '2026-04-15 02:18:06', '2026-04-15 02:18:06'),
(138, 158, 'First Edition', 1, '2026-04-15 02:20:07', '2026-04-15 02:20:07'),
(139, 159, 'First Edition', 1, '2026-04-15 02:31:41', '2026-04-15 02:31:41'),
(140, 160, 'First Edition', 1, '2026-04-15 02:34:24', '2026-04-15 02:34:24'),
(141, 161, 'First Edition', 1, '2026-04-15 02:36:16', '2026-04-15 02:36:16'),
(142, 162, 'First Edition', 1, '2026-04-15 02:38:27', '2026-04-15 02:38:27'),
(143, 163, 'First Edition', 1, '2026-04-15 02:40:42', '2026-04-15 02:40:42'),
(144, 164, 'First Edition', 1, '2026-04-15 02:42:57', '2026-04-15 02:42:57'),
(145, 165, 'First Edition', 1, '2026-04-15 02:44:49', '2026-04-15 02:44:49'),
(146, 166, 'First Edition', 1, '2026-04-16 02:55:48', '2026-04-16 02:55:48'),
(147, 168, 'First Edition', 1, '2026-04-16 03:01:32', '2026-04-16 03:01:32'),
(148, 169, 'First Edition', 1, '2026-04-16 03:04:21', '2026-04-16 03:04:21'),
(149, 170, 'First Edition', 1, '2026-04-16 03:09:11', '2026-04-16 03:09:11'),
(150, 171, 'First Edition', 1, '2026-04-16 03:13:16', '2026-04-16 03:13:16'),
(151, 172, 'First Edition', 1, '2026-04-16 04:37:26', '2026-04-16 04:37:26'),
(152, 173, 'First Edition', 1, '2026-04-17 23:16:00', '2026-04-17 23:16:00'),
(153, 174, 'First Edition', 1, '2026-04-17 23:21:14', '2026-04-17 23:21:14'),
(154, 175, 'First Edition', 1, '2026-04-17 23:25:36', '2026-04-17 23:25:36'),
(155, 176, 'First Edition', 1, '2026-04-17 23:27:42', '2026-04-17 23:27:42'),
(156, 177, 'First Edition', 1, '2026-04-17 23:40:19', '2026-04-17 23:40:19'),
(157, 178, 'Second Edition', 1, '2026-04-21 07:10:59', '2026-04-21 07:10:59'),
(158, 179, 'First Edition', 1, '2026-04-22 02:53:39', '2026-04-22 02:53:39'),
(159, 180, 'First Edition', 1, '2026-04-22 04:29:59', '2026-04-22 04:29:59'),
(160, 181, 'First Edition', 1, '2026-04-22 04:33:12', '2026-04-22 04:33:12'),
(161, 182, 'First Edition', 1, '2026-04-27 00:17:23', '2026-04-27 00:17:23'),
(162, 183, 'First Edition', 1, '2026-04-28 05:27:37', '2026-04-28 05:27:37'),
(163, 184, 'First Edition', 1, '2026-04-28 05:57:15', '2026-04-28 05:57:15'),
(164, 185, 'First Edition', 1, '2026-04-28 22:02:45', '2026-04-28 22:02:45'),
(165, 186, 'Fourth Edition', 1, '2026-04-29 01:07:07', '2026-04-29 01:07:07'),
(166, 187, 'First Edition', 1, '2026-04-29 02:32:15', '2026-04-29 02:32:15'),
(167, 188, 'First Edition', 1, '2026-04-29 04:23:56', '2026-04-29 04:23:56'),
(168, 189, 'First Edition', 1, '2026-04-29 05:13:32', '2026-04-29 05:13:32'),
(169, 190, 'First Edition', 1, '2026-04-29 21:38:27', '2026-04-29 21:38:27'),
(170, 191, 'First Edition', 1, '2026-04-30 02:04:05', '2026-04-30 02:04:05'),
(171, 192, 'First Edition', 1, '2026-04-30 02:22:21', '2026-04-30 02:22:21'),
(172, 193, 'First Edition', 1, '2026-04-30 04:44:15', '2026-04-30 04:44:15'),
(173, 194, 'First Edition', 1, '2026-04-30 06:14:07', '2026-04-30 06:14:07'),
(174, 195, 'First Edition', 1, '2026-04-30 08:19:00', '2026-04-30 08:19:00'),
(175, 196, 'First Edition', 1, '2026-04-30 09:55:38', '2026-04-30 09:55:38'),
(176, 197, 'First Edition', 1, '2026-04-30 22:36:19', '2026-04-30 22:36:19'),
(177, 198, 'First Edition', 1, '2026-05-01 03:07:52', '2026-05-01 03:07:52'),
(178, 199, 'First Edition', 1, '2026-05-01 22:39:12', '2026-05-01 22:39:12'),
(179, 200, 'First Edition', 1, '2026-05-02 05:26:40', '2026-05-02 05:26:40'),
(180, 201, 'First Edition', 1, '2026-05-03 00:06:06', '2026-05-03 00:06:06'),
(181, 202, 'First Edition', 1, '2026-05-03 02:06:19', '2026-05-03 02:06:19'),
(182, 203, 'First Edition', 1, '2026-05-03 05:16:54', '2026-05-03 05:16:54'),
(183, 204, 'First Edition', 1, '2026-05-03 08:05:37', '2026-05-03 08:05:37'),
(184, 205, 'First Edition', 1, '2026-05-03 08:43:45', '2026-05-03 08:43:45'),
(185, 206, 'First Edition', 1, '2026-05-03 22:37:06', '2026-05-03 22:37:06'),
(186, 207, 'First Edition', 1, '2026-05-04 05:27:15', '2026-05-04 05:27:15'),
(187, 208, 'First Edition', 1, '2026-05-04 08:11:30', '2026-05-04 08:11:30'),
(188, 209, 'First Edition', 1, '2026-05-04 10:04:56', '2026-05-04 10:04:56'),
(189, 210, 'First Edition', 1, '2026-05-04 22:15:18', '2026-05-04 22:15:18'),
(190, 211, 'First Edition', 1, '2026-05-04 22:50:14', '2026-05-04 22:50:14'),
(191, 212, 'First Edition', 1, '2026-05-05 04:15:41', '2026-05-05 04:15:41'),
(192, 213, 'First Edition', 1, '2026-05-05 06:14:25', '2026-05-05 06:14:25'),
(193, 214, 'First Edition', 1, '2026-05-05 06:52:29', '2026-05-05 06:52:29'),
(194, 215, 'First Edition', 1, '2026-05-06 22:22:33', '2026-05-06 22:22:33'),
(195, 216, 'First Edition', 1, '2026-05-06 23:46:55', '2026-05-06 23:46:55'),
(196, 217, 'First Edition', 1, '2026-05-07 00:44:40', '2026-05-07 00:44:40'),
(197, 218, 'First Edition', 1, '2026-05-07 01:12:17', '2026-05-07 01:12:17'),
(198, 219, 'First Edition', 1, '2026-05-07 02:24:45', '2026-05-07 02:24:45'),
(199, 220, 'First Edition', 1, '2026-05-08 04:03:43', '2026-05-08 04:03:43'),
(200, 221, 'First Edition', 1, '2026-05-08 05:26:03', '2026-05-08 05:26:03'),
(201, 222, 'First Edition', 1, '2026-05-09 02:37:38', '2026-05-09 02:37:38'),
(202, 223, 'First Edition', 1, '2026-05-09 05:36:44', '2026-05-09 05:36:44'),
(203, 224, 'First Edition', 1, '2026-05-09 06:22:57', '2026-05-09 06:22:57'),
(204, 225, 'First Edition', 1, '2026-05-09 22:27:20', '2026-05-09 22:27:20'),
(205, 226, 'First Edition', 1, '2026-05-09 23:11:31', '2026-05-09 23:11:31'),
(206, 227, 'First Edition', 1, '2026-05-11 02:34:18', '2026-05-11 02:34:18'),
(207, 228, 'First Edition', 1, '2026-05-11 05:30:03', '2026-05-11 05:30:03'),
(208, 229, 'First Edition', 1, '2026-05-11 05:34:29', '2026-05-11 05:34:29'),
(209, 230, 'First Edition', 1, '2026-05-11 05:37:13', '2026-05-11 05:37:13'),
(210, 231, 'First Edition', 1, '2026-05-11 05:40:06', '2026-05-11 05:40:06'),
(211, 232, 'First Edition', 1, '2026-05-11 05:40:16', '2026-05-11 05:40:16'),
(212, 233, 'First Edition', 1, '2026-05-11 05:43:10', '2026-05-11 05:43:10'),
(213, 234, 'First Edition', 1, '2026-05-11 05:45:48', '2026-05-11 05:45:48'),
(214, 235, 'First Edition', 1, '2026-05-11 05:54:01', '2026-05-11 05:54:01'),
(215, 236, 'First Edition', 1, '2026-05-11 05:56:34', '2026-05-11 05:56:34'),
(216, 237, 'First Edition', 1, '2026-05-11 05:59:18', '2026-05-11 05:59:18'),
(217, 238, 'First Edition', 1, '2026-05-11 06:41:35', '2026-05-11 06:41:35'),
(218, 239, 'First Edition', 1, '2026-05-11 06:44:08', '2026-05-11 06:44:08'),
(219, 240, 'First Edition', 1, '2026-05-11 06:47:15', '2026-05-11 06:47:15'),
(220, 241, 'First Edition', 1, '2026-05-11 06:49:28', '2026-05-11 06:49:28'),
(221, 242, 'First Edition', 1, '2026-05-11 06:51:41', '2026-05-11 06:51:41'),
(222, 243, 'First Edition', 1, '2026-05-11 06:56:21', '2026-05-11 06:56:21'),
(223, 244, 'First Edition', 1, '2026-05-11 06:59:12', '2026-05-11 06:59:12'),
(224, 245, 'First Edition', 1, '2026-05-11 07:10:55', '2026-05-11 07:10:55'),
(225, 246, 'First Edition', 1, '2026-05-11 07:13:20', '2026-05-11 07:13:20'),
(226, 247, 'First Edition', 1, '2026-05-11 07:19:58', '2026-05-11 07:19:58'),
(227, 248, 'First Edition', 1, '2026-05-11 07:23:13', '2026-05-11 07:23:13'),
(228, 249, 'First Edition', 1, '2026-05-12 02:16:56', '2026-05-12 02:16:56'),
(229, 250, 'First Edition', 1, '2026-05-12 02:26:47', '2026-05-12 02:26:47'),
(230, 251, 'First Edition', 1, '2026-05-13 00:46:16', '2026-05-13 00:46:16'),
(231, 252, 'First Edition', 1, '2026-05-13 08:34:51', '2026-05-13 08:34:51'),
(232, 253, 'First Edition', 1, '2026-05-13 23:45:34', '2026-05-13 23:45:34'),
(233, 254, 'First Edition', 1, '2026-05-14 00:03:46', '2026-05-14 00:03:46'),
(234, 255, 'First Edition', 1, '2026-05-14 00:07:31', '2026-05-14 00:07:31'),
(235, 256, 'First Edition', 1, '2026-05-14 00:27:12', '2026-05-14 00:27:12'),
(236, 257, 'First Edition', 1, '2026-05-14 00:31:22', '2026-05-14 00:31:22'),
(237, 258, 'First Edition', 1, '2026-05-14 00:33:08', '2026-05-14 00:33:08'),
(238, 259, 'First Edition', 1, '2026-05-14 00:35:01', '2026-05-14 00:35:01'),
(239, 260, 'First Edition', 1, '2026-05-14 00:59:17', '2026-05-14 00:59:17'),
(240, 261, 'First Edition', 1, '2026-05-14 01:15:17', '2026-05-14 01:15:17'),
(241, 262, 'First Edition', 1, '2026-05-14 01:19:21', '2026-05-14 01:19:21'),
(242, 263, 'First Edition', 1, '2026-05-14 01:22:59', '2026-05-14 01:22:59'),
(243, 264, 'First Edition', 1, '2026-05-14 01:36:59', '2026-05-14 01:36:59'),
(244, 265, 'First Edition', 1, '2026-05-14 05:18:43', '2026-05-14 05:18:43'),
(245, 266, 'First Edition', 1, '2026-05-14 06:40:57', '2026-05-14 06:40:57'),
(246, 267, 'First Edition', 1, '2026-05-14 06:43:29', '2026-05-14 06:43:29'),
(247, 268, 'First Edition', 1, '2026-05-14 06:47:44', '2026-05-14 06:47:44'),
(248, 269, 'First Edition', 1, '2026-05-14 06:51:58', '2026-05-14 06:51:58'),
(249, 270, 'First Edition', 1, '2026-05-14 06:55:40', '2026-05-14 06:55:40'),
(250, 271, 'First Edition', 1, '2026-05-14 06:58:06', '2026-05-14 06:58:06'),
(251, 272, 'First Edition', 1, '2026-05-14 07:00:19', '2026-05-14 07:00:19'),
(252, 273, 'First Edition', 1, '2026-05-14 07:03:14', '2026-05-14 07:03:14'),
(253, 274, 'First Edition', 1, '2026-05-14 07:06:10', '2026-05-14 07:06:10'),
(254, 275, 'First Edition', 1, '2026-05-14 07:07:42', '2026-05-14 07:07:42'),
(255, 276, 'First Edition', 1, '2026-05-14 07:09:45', '2026-05-14 07:09:45'),
(256, 277, 'First Edition', 1, '2026-05-14 07:11:51', '2026-05-14 07:11:51'),
(257, 278, 'First Edition', 1, '2026-05-14 07:13:26', '2026-05-14 07:13:26'),
(258, 279, 'First Edition', 1, '2026-05-14 07:15:07', '2026-05-14 07:15:07'),
(259, 280, 'First Edition', 1, '2026-05-14 07:16:57', '2026-05-14 07:16:57'),
(260, 281, 'First Edition', 1, '2026-05-14 07:18:26', '2026-05-14 07:18:26'),
(261, 282, 'First Edition', 1, '2026-05-14 07:20:03', '2026-05-14 07:20:03'),
(262, 283, 'First Edition', 1, '2026-05-14 07:22:34', '2026-05-14 07:22:34'),
(263, 284, 'First Edition', 1, '2026-05-14 07:24:34', '2026-05-14 07:24:34'),
(264, 285, 'First Edition', 1, '2026-05-14 07:26:20', '2026-05-14 07:26:20'),
(265, 286, 'First Edition', 1, '2026-05-14 07:28:57', '2026-05-14 07:28:57'),
(266, 287, 'First Edition', 1, '2026-05-14 07:31:34', '2026-05-14 07:31:34'),
(267, 288, 'First Edition', 1, '2026-05-14 07:34:20', '2026-05-14 07:34:20'),
(268, 289, 'First Edition', 1, '2026-05-14 07:36:23', '2026-05-14 07:36:23'),
(269, 290, 'First Edition', 1, '2026-05-14 07:38:32', '2026-05-14 07:38:32'),
(270, 291, 'First Edition', 1, '2026-05-14 07:41:21', '2026-05-14 07:41:21'),
(271, 292, 'First Edition', 1, '2026-05-14 07:42:40', '2026-05-14 07:42:40'),
(272, 293, 'First Edition', 1, '2026-05-15 22:58:52', '2026-05-15 22:58:52'),
(273, 294, 'First Edition', 1, '2026-05-16 00:15:39', '2026-05-16 00:15:39'),
(274, 295, 'First Edition', 1, '2026-05-16 01:44:37', '2026-05-16 01:44:37'),
(275, 296, 'First Edition', 1, '2026-05-16 04:45:47', '2026-05-16 04:45:47'),
(276, 297, 'First Edition', 1, '2026-05-16 22:03:55', '2026-05-16 22:03:55'),
(277, 298, 'First Edition', 1, '2026-05-17 22:14:38', '2026-05-17 22:14:38'),
(278, 299, 'First Edition', 1, '2026-05-18 00:08:37', '2026-05-18 00:08:37'),
(279, 300, 'First Edition', 1, '2026-05-18 00:16:58', '2026-05-18 00:16:58'),
(280, 301, 'First Edition', 1, '2026-05-18 00:19:18', '2026-05-18 00:19:18'),
(281, 302, 'First Edition', 1, '2026-05-18 02:25:55', '2026-05-18 02:25:55'),
(282, 303, 'First Edition', 1, '2026-05-18 02:43:26', '2026-05-18 02:43:26'),
(283, 304, 'First Edition', 1, '2026-05-18 03:16:59', '2026-05-18 03:16:59'),
(284, 305, 'First Edition', 1, '2026-05-18 03:27:30', '2026-05-18 03:27:30'),
(285, 306, 'First Edition', 1, '2026-05-18 03:35:43', '2026-05-18 03:35:43'),
(286, 307, 'First Edition', 1, '2026-05-18 03:44:57', '2026-05-18 03:44:57'),
(287, 308, 'First Edition', 1, '2026-05-18 04:33:25', '2026-05-18 04:33:25'),
(288, 309, 'First Edition', 1, '2026-05-18 05:12:23', '2026-05-18 05:12:23'),
(289, 310, 'First Edition', 1, '2026-05-18 05:53:27', '2026-05-18 05:53:27'),
(290, 311, 'First Edition', 1, '2026-05-19 00:23:08', '2026-05-19 00:23:08'),
(291, 312, 'First Edition', 1, '2026-05-19 01:50:25', '2026-05-19 01:50:25'),
(292, 313, 'First Edition', 1, '2026-05-19 02:06:23', '2026-05-19 02:06:23'),
(293, 314, 'First Edition', 1, '2026-05-19 05:49:38', '2026-05-19 05:49:38'),
(294, 315, 'First Edition', 1, '2026-05-19 21:53:15', '2026-05-19 21:53:15'),
(295, 316, 'First Edition', 1, '2026-05-19 22:59:00', '2026-05-19 22:59:00'),
(296, 317, 'First Edition', 1, '2026-05-19 23:03:10', '2026-05-19 23:03:10'),
(297, 318, 'First Edition', 1, '2026-05-19 23:07:18', '2026-05-19 23:07:18'),
(298, 319, 'First Edition', 1, '2026-05-20 01:27:50', '2026-05-20 01:27:50'),
(299, 320, 'First Edition', 1, '2026-05-20 01:56:14', '2026-05-20 01:56:14'),
(300, 321, 'First Edition', 1, '2026-05-20 01:58:40', '2026-05-20 01:58:40'),
(301, 322, 'First Edition', 1, '2026-05-20 02:52:41', '2026-05-20 02:52:41'),
(302, 323, 'First Edition', 1, '2026-05-20 03:10:10', '2026-05-20 03:10:10'),
(303, 324, 'First Edition', 1, '2026-05-20 03:42:46', '2026-05-20 03:42:46'),
(304, 325, 'First Edition', 1, '2026-05-20 04:01:42', '2026-05-20 04:01:42'),
(305, 326, 'First Edition', 1, '2026-05-20 04:08:47', '2026-05-20 04:08:47'),
(306, 327, 'First Edition', 1, '2026-05-20 06:51:36', '2026-05-20 06:51:36'),
(307, 328, 'First Edition', 1, '2026-05-21 01:52:53', '2026-05-21 01:52:53'),
(308, 329, 'First Edition', 1, '2026-05-21 05:50:28', '2026-05-21 05:50:28'),
(309, 330, 'First Edition', 1, '2026-05-21 05:59:18', '2026-05-21 05:59:18'),
(310, 331, 'First Edition', 1, '2026-05-21 08:44:48', '2026-05-21 08:44:48'),
(311, 332, 'First Edition', 1, '2026-05-31 00:51:37', '2026-05-31 00:51:37'),
(312, 333, 'First Edition', 1, '2026-05-31 01:49:39', '2026-05-31 01:49:39'),
(313, 334, 'First Edition', 1, '2026-05-31 05:19:15', '2026-05-31 05:19:15'),
(314, 335, 'First Edition', 1, '2026-05-31 07:11:15', '2026-05-31 07:11:15'),
(315, 336, 'First Edition', 1, '2026-06-01 02:32:56', '2026-06-01 02:32:56'),
(316, 337, 'First Edition', 1, '2026-06-01 04:34:23', '2026-06-01 04:34:23'),
(317, 338, 'First Edition', 1, '2026-06-13 05:22:23', '2026-06-13 05:22:23'),
(318, 339, 'First Edition', 1, '2026-06-13 05:37:26', '2026-06-13 05:37:26'),
(319, 340, 'First Edition', 1, '2026-06-13 05:38:23', '2026-06-13 05:38:23'),
(320, 341, 'First Edition', 1, '2026-06-13 05:39:24', '2026-06-13 05:39:24'),
(321, 342, 'First Edition', 1, '2026-06-18 18:54:55', '2026-06-18 18:54:55'),
(322, 343, 'First Edition', 1, '2026-06-18 18:57:36', '2026-06-18 18:57:36'),
(323, 344, 'First Edition', 1, '2026-06-19 08:15:25', '2026-06-19 08:15:25'),
(324, 345, 'First Edition', 1, '2026-06-19 09:01:33', '2026-06-19 09:01:33'),
(325, 346, 'First Edition', 1, '2026-06-19 09:04:04', '2026-06-19 09:04:04'),
(326, 347, 'First Edition', 1, '2026-06-19 09:05:05', '2026-06-19 09:05:05'),
(327, 348, 'First Edition', 1, '2026-06-19 09:05:55', '2026-06-19 09:05:55'),
(328, 349, 'First Edition', 1, '2026-06-19 09:09:20', '2026-06-19 09:09:20'),
(329, 350, 'First Edition', 1, '2026-06-19 09:24:25', '2026-06-19 09:24:25'),
(330, 351, 'First Edition', 1, '2026-06-19 09:25:21', '2026-06-19 09:25:21'),
(331, 352, 'First Edition', 1, '2026-06-25 07:15:23', '2026-06-25 07:15:23'),
(332, 353, 'First Edition', 1, '2026-06-25 07:55:48', '2026-06-25 07:55:48'),
(333, 354, 'First Edition', 1, '2026-06-25 07:57:26', '2026-06-25 07:57:26'),
(334, 355, 'First Edition', 1, '2026-06-25 08:07:13', '2026-06-25 08:07:13'),
(335, 356, 'First Edition', 1, '2026-06-25 08:08:50', '2026-06-25 08:08:50'),
(336, 357, 'First Edition', 1, '2026-06-25 08:09:58', '2026-06-25 08:09:58'),
(337, 358, 'First Edition', 1, '2026-06-25 08:11:21', '2026-06-25 08:11:21'),
(338, 359, 'First Edition', 1, '2026-06-25 08:12:36', '2026-06-25 08:12:36'),
(339, 360, 'First Edition', 1, '2026-07-01 20:20:06', '2026-07-01 20:20:06'),
(340, 361, 'First Edition', 1, '2026-07-01 20:27:40', '2026-07-01 20:27:40'),
(341, 362, 'First Edition', 1, '2026-07-01 20:31:57', '2026-07-01 20:31:57'),
(342, 363, 'First Edition', 1, '2026-07-01 20:33:29', '2026-07-01 20:33:29'),
(343, 364, 'First Edition', 1, '2026-07-01 20:34:53', '2026-07-01 20:34:53'),
(344, 365, 'First Edition', 1, '2026-07-01 20:36:22', '2026-07-01 20:36:22'),
(345, 366, 'First Edition', 1, '2026-07-02 13:39:02', '2026-07-02 13:39:02'),
(346, 367, 'First Edition', 1, '2026-07-02 13:41:52', '2026-07-02 13:41:52'),
(347, 368, 'First Edition', 1, '2026-07-02 13:46:14', '2026-07-02 13:46:14'),
(348, 369, 'First Edition', 1, '2026-07-02 13:47:52', '2026-07-02 13:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `purchase_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `regular_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sale_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(10) NOT NULL DEFAULT 'amount',
  `image` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant`, `sku`, `purchase_price`, `regular_price`, `sale_price`, `discount`, `discount_type`, `image`, `stock`, `status`, `created_at`, `updated_at`) VALUES
(1, 340, NULL, NULL, 8000.00, 13000.00, 11000.00, 2000.00, 'amount', NULL, 9999, 1, '2026-06-18 18:37:15', '2026-06-18 18:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_values`
--

CREATE TABLE `product_variant_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_value_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_vendors`
--

CREATE TABLE `product_vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_vendors`
--

INSERT INTO `product_vendors` (`id`, `product_id`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2026-01-20 04:15:44', '2026-01-20 04:15:44'),
(2, 2, 1, '2026-01-20 04:26:34', '2026-01-20 04:26:34'),
(3, 3, 1, '2026-01-22 04:46:01', '2026-01-22 04:46:01'),
(5, 5, 1, '2026-01-22 06:36:21', '2026-01-22 06:36:21'),
(6, 7, 1, '2026-01-25 02:06:22', '2026-01-25 02:06:22'),
(7, 10, 1, '2026-01-25 02:11:41', '2026-01-25 02:11:41'),
(8, 11, 1, '2026-01-25 02:13:34', '2026-01-25 02:13:34'),
(9, 12, 1, '2026-01-25 02:14:33', '2026-01-25 02:14:33'),
(10, 13, 1, '2026-01-25 02:18:09', '2026-01-25 02:18:09'),
(13, 27, 1, '2026-02-01 06:33:54', '2026-02-01 06:33:54'),
(14, 28, 1, '2026-02-24 22:49:29', '2026-02-24 22:49:29'),
(15, 29, 1, '2026-02-24 23:02:38', '2026-02-24 23:02:38'),
(16, 30, 1, '2026-02-24 23:03:35', '2026-02-24 23:03:35'),
(17, 31, 1, '2026-02-25 00:23:57', '2026-02-25 00:23:57'),
(18, 32, 1, '2026-02-25 00:25:11', '2026-02-25 00:25:11'),
(19, 33, 1, '2026-02-25 02:53:25', '2026-02-25 02:53:25'),
(20, 34, 1, '2026-02-26 00:12:31', '2026-02-26 00:12:31'),
(21, 36, 1, '2026-03-04 22:10:40', '2026-03-04 22:10:40'),
(22, 37, 1, '2026-03-04 22:29:01', '2026-03-04 22:29:01'),
(23, 39, 1, '2026-03-04 22:41:43', '2026-03-04 22:41:43'),
(24, 38, 1, '2026-03-30 04:05:15', '2026-03-30 04:05:15'),
(25, 35, 1, '2026-03-30 04:36:36', '2026-03-30 04:36:36'),
(26, 40, 1, '2026-04-02 04:10:05', '2026-04-02 04:10:05'),
(27, 41, 1, '2026-04-05 04:53:17', '2026-04-05 04:53:17'),
(28, 42, 1, '2026-04-05 04:58:13', '2026-04-05 04:58:13'),
(29, 43, 1, '2026-04-05 05:12:48', '2026-04-05 05:12:48'),
(30, 44, 1, '2026-04-05 05:18:33', '2026-04-05 05:18:33'),
(31, 45, 1, '2026-04-06 04:01:20', '2026-04-06 04:01:20'),
(32, 46, 1, '2026-04-06 04:08:16', '2026-04-06 04:08:16'),
(33, 47, 1, '2026-04-06 04:20:03', '2026-04-06 04:20:03'),
(34, 48, 1, '2026-04-06 04:22:58', '2026-04-06 04:22:58'),
(35, 49, 1, '2026-04-06 04:27:44', '2026-04-06 04:27:44'),
(36, 50, 1, '2026-04-06 04:33:42', '2026-04-06 04:33:42'),
(37, 51, 1, '2026-04-06 04:37:12', '2026-04-06 04:37:12'),
(38, 52, 1, '2026-04-06 04:48:25', '2026-04-06 04:48:25'),
(39, 53, 1, '2026-04-06 04:51:32', '2026-04-06 04:51:32'),
(40, 54, 1, '2026-04-06 05:00:18', '2026-04-06 05:00:18'),
(41, 55, 1, '2026-04-06 05:28:59', '2026-04-06 05:28:59'),
(42, 56, 1, '2026-04-06 05:36:22', '2026-04-06 05:36:22'),
(43, 57, 1, '2026-04-06 05:40:33', '2026-04-06 05:40:33'),
(44, 58, 1, '2026-04-06 05:55:35', '2026-04-06 05:55:35'),
(45, 59, 1, '2026-04-06 05:58:33', '2026-04-06 05:58:33'),
(46, 60, 1, '2026-04-06 06:02:43', '2026-04-06 06:02:43'),
(47, 61, 1, '2026-04-06 06:04:53', '2026-04-06 06:04:53'),
(48, 62, 1, '2026-04-06 06:07:22', '2026-04-06 06:07:22'),
(49, 63, 1, '2026-04-06 06:10:24', '2026-04-06 06:10:24'),
(50, 64, 1, '2026-04-06 06:15:44', '2026-04-06 06:15:44'),
(51, 65, 1, '2026-04-07 05:07:20', '2026-04-07 05:07:20'),
(52, 66, 1, '2026-04-08 00:02:55', '2026-04-08 00:02:55'),
(53, 67, 1, '2026-04-08 00:18:56', '2026-04-08 00:18:56'),
(54, 68, 1, '2026-04-08 00:28:43', '2026-04-08 00:28:43'),
(55, 69, 1, '2026-04-08 00:32:47', '2026-04-08 00:32:47'),
(56, 70, 1, '2026-04-08 00:56:55', '2026-04-08 00:56:55'),
(57, 71, 1, '2026-04-08 00:58:01', '2026-04-08 00:58:01'),
(58, 72, 1, '2026-04-08 01:02:26', '2026-04-08 01:02:26'),
(59, 73, 1, '2026-04-08 01:03:58', '2026-04-08 01:03:58'),
(60, 74, 1, '2026-04-09 00:09:13', '2026-04-09 00:09:13'),
(61, 75, 1, '2026-04-09 00:40:45', '2026-04-09 00:40:45'),
(62, 76, 1, '2026-04-09 00:47:51', '2026-04-09 00:47:51'),
(63, 77, 1, '2026-04-09 00:56:40', '2026-04-09 00:56:40'),
(64, 78, 1, '2026-04-09 01:04:40', '2026-04-09 01:04:40'),
(65, 79, 1, '2026-04-09 01:19:00', '2026-04-09 01:19:00'),
(66, 80, 1, '2026-04-09 01:24:29', '2026-04-09 01:24:29'),
(67, 81, 1, '2026-04-10 23:05:23', '2026-04-10 23:05:23'),
(68, 82, 1, '2026-04-10 23:21:01', '2026-04-10 23:21:01'),
(69, 83, 1, '2026-04-10 23:33:24', '2026-04-10 23:33:24'),
(70, 84, 1, '2026-04-10 23:52:50', '2026-04-10 23:52:50'),
(71, 85, 1, '2026-04-11 01:04:25', '2026-04-11 01:04:25'),
(72, 87, 1, '2026-04-11 01:08:15', '2026-04-11 01:08:15'),
(73, 88, 1, '2026-04-11 01:11:39', '2026-04-11 01:11:39'),
(74, 89, 1, '2026-04-11 01:14:03', '2026-04-11 01:14:03'),
(75, 90, 1, '2026-04-11 01:17:58', '2026-04-11 01:17:58'),
(76, 91, 1, '2026-04-11 01:24:03', '2026-04-11 01:24:03'),
(77, 92, 1, '2026-04-11 01:27:30', '2026-04-11 01:27:30'),
(78, 93, 1, '2026-04-11 01:50:29', '2026-04-11 01:50:29'),
(79, 94, 1, '2026-04-11 01:52:25', '2026-04-11 01:52:25'),
(80, 95, 1, '2026-04-11 01:54:55', '2026-04-11 01:54:55'),
(81, 96, 1, '2026-04-11 01:57:52', '2026-04-11 01:57:52'),
(82, 97, 1, '2026-04-13 00:23:31', '2026-04-13 00:23:31'),
(83, 98, 1, '2026-04-13 00:37:54', '2026-04-13 00:37:54'),
(84, 99, 1, '2026-04-13 00:46:41', '2026-04-13 00:46:41'),
(85, 100, 1, '2026-04-13 01:06:54', '2026-04-13 01:06:54'),
(86, 101, 1, '2026-04-13 01:08:47', '2026-04-13 01:08:47'),
(87, 102, 1, '2026-04-13 01:22:11', '2026-04-13 01:22:11'),
(88, 103, 1, '2026-04-13 01:26:56', '2026-04-13 01:26:56'),
(89, 104, 1, '2026-04-13 01:29:29', '2026-04-13 01:29:29'),
(90, 105, 1, '2026-04-13 02:00:45', '2026-04-13 02:00:45'),
(91, 106, 1, '2026-04-13 02:06:37', '2026-04-13 02:06:37'),
(92, 107, 1, '2026-04-13 02:10:24', '2026-04-13 02:10:24'),
(93, 108, 1, '2026-04-13 02:42:10', '2026-04-13 02:42:10'),
(94, 109, 1, '2026-04-13 02:46:04', '2026-04-13 02:46:04'),
(95, 110, 1, '2026-04-13 02:55:49', '2026-04-13 02:55:49'),
(96, 111, 1, '2026-04-13 03:00:26', '2026-04-13 03:00:26'),
(97, 112, 1, '2026-04-13 03:02:55', '2026-04-13 03:02:55'),
(98, 113, 1, '2026-04-13 03:05:01', '2026-04-13 03:05:01'),
(99, 114, 1, '2026-04-13 03:07:01', '2026-04-13 03:07:01'),
(100, 115, 1, '2026-04-13 03:25:48', '2026-04-13 03:25:48'),
(101, 116, 1, '2026-04-13 03:33:33', '2026-04-13 03:33:33'),
(102, 117, 1, '2026-04-13 03:36:20', '2026-04-13 03:36:20'),
(103, 118, 1, '2026-04-13 03:43:16', '2026-04-13 03:43:16'),
(104, 119, 1, '2026-04-13 03:46:22', '2026-04-13 03:46:22'),
(105, 120, 1, '2026-04-13 03:49:27', '2026-04-13 03:49:27'),
(106, 121, 1, '2026-04-13 03:51:51', '2026-04-13 03:51:51'),
(107, 122, 1, '2026-04-13 03:54:03', '2026-04-13 03:54:03'),
(108, 123, 1, '2026-04-13 03:58:48', '2026-04-13 03:58:48'),
(109, 125, 1, '2026-04-13 04:03:53', '2026-04-13 04:03:53'),
(110, 126, 1, '2026-04-13 04:18:14', '2026-04-13 04:18:14'),
(111, 127, 1, '2026-04-13 04:20:35', '2026-04-13 04:20:35'),
(112, 128, 1, '2026-04-13 04:23:25', '2026-04-13 04:23:25'),
(113, 129, 1, '2026-04-13 04:27:50', '2026-04-13 04:27:50'),
(114, 130, 1, '2026-04-13 04:30:56', '2026-04-13 04:30:56'),
(115, 131, 1, '2026-04-13 04:33:13', '2026-04-13 04:33:13'),
(116, 132, 1, '2026-04-13 04:35:05', '2026-04-13 04:35:05'),
(117, 133, 1, '2026-04-13 04:38:20', '2026-04-13 04:38:20'),
(118, 134, 1, '2026-04-13 04:43:18', '2026-04-13 04:43:18'),
(119, 135, 1, '2026-04-13 04:49:35', '2026-04-13 04:49:35'),
(120, 136, 1, '2026-04-13 04:51:37', '2026-04-13 04:51:37'),
(121, 137, 1, '2026-04-13 04:55:00', '2026-04-13 04:55:00'),
(122, 138, 1, '2026-04-13 05:16:24', '2026-04-13 05:16:24'),
(123, 139, 1, '2026-04-13 05:19:17', '2026-04-13 05:19:17'),
(124, 140, 1, '2026-04-13 05:33:02', '2026-04-13 05:33:02'),
(125, 141, 1, '2026-04-13 05:34:30', '2026-04-13 05:34:30'),
(126, 142, 1, '2026-04-13 05:36:51', '2026-04-13 05:36:51'),
(127, 143, 1, '2026-04-13 05:39:18', '2026-04-13 05:39:18'),
(128, 144, 1, '2026-04-15 00:26:30', '2026-04-15 00:26:30'),
(129, 145, 1, '2026-04-15 00:38:00', '2026-04-15 00:38:00'),
(130, 146, 1, '2026-04-15 00:40:43', '2026-04-15 00:40:43'),
(131, 147, 1, '2026-04-15 00:58:07', '2026-04-15 00:58:07'),
(132, 148, 1, '2026-04-15 01:00:38', '2026-04-15 01:00:38'),
(133, 149, 1, '2026-04-15 01:04:12', '2026-04-15 01:04:12'),
(134, 150, 1, '2026-04-15 01:11:51', '2026-04-15 01:11:51'),
(135, 151, 1, '2026-04-15 01:17:40', '2026-04-15 01:17:40'),
(136, 152, 1, '2026-04-15 01:38:50', '2026-04-15 01:38:50'),
(137, 153, 1, '2026-04-15 02:07:00', '2026-04-15 02:07:00'),
(138, 154, 1, '2026-04-15 02:10:30', '2026-04-15 02:10:30'),
(139, 155, 1, '2026-04-15 02:12:34', '2026-04-15 02:12:34'),
(140, 156, 1, '2026-04-15 02:15:24', '2026-04-15 02:15:24'),
(141, 157, 1, '2026-04-15 02:18:06', '2026-04-15 02:18:06'),
(142, 158, 1, '2026-04-15 02:20:07', '2026-04-15 02:20:07'),
(143, 159, 1, '2026-04-15 02:31:41', '2026-04-15 02:31:41'),
(144, 160, 1, '2026-04-15 02:34:24', '2026-04-15 02:34:24'),
(145, 161, 1, '2026-04-15 02:36:16', '2026-04-15 02:36:16'),
(146, 162, 1, '2026-04-15 02:38:27', '2026-04-15 02:38:27'),
(147, 163, 1, '2026-04-15 02:40:42', '2026-04-15 02:40:42'),
(148, 164, 1, '2026-04-15 02:42:57', '2026-04-15 02:42:57'),
(149, 165, 1, '2026-04-15 02:44:49', '2026-04-15 02:44:49'),
(150, 166, 1, '2026-04-16 02:55:48', '2026-04-16 02:55:48'),
(151, 168, 1, '2026-04-16 03:01:32', '2026-04-16 03:01:32'),
(152, 169, 1, '2026-04-16 03:04:21', '2026-04-16 03:04:21'),
(153, 170, 1, '2026-04-16 03:09:11', '2026-04-16 03:09:11'),
(154, 171, 1, '2026-04-16 03:13:16', '2026-04-16 03:13:16'),
(155, 172, 1, '2026-04-16 04:37:26', '2026-04-16 04:37:26'),
(156, 173, 1, '2026-04-17 23:16:00', '2026-04-17 23:16:00'),
(157, 174, 1, '2026-04-17 23:21:14', '2026-04-17 23:21:14'),
(158, 175, 1, '2026-04-17 23:25:36', '2026-04-17 23:25:36'),
(159, 176, 1, '2026-04-17 23:27:42', '2026-04-17 23:27:42'),
(160, 177, 1, '2026-04-17 23:40:19', '2026-04-17 23:40:19'),
(161, 179, 1, '2026-04-22 02:53:39', '2026-04-22 02:53:39'),
(162, 180, 1, '2026-04-22 04:29:59', '2026-04-22 04:29:59'),
(163, 181, 1, '2026-04-22 04:33:12', '2026-04-22 04:33:12'),
(164, 182, 1, '2026-04-27 00:17:23', '2026-04-27 00:17:23'),
(165, 183, 1, '2026-04-28 05:27:37', '2026-04-28 05:27:37'),
(166, 184, 1, '2026-04-28 05:57:15', '2026-04-28 05:57:15'),
(167, 186, 1, '2026-04-29 01:16:51', '2026-04-29 01:16:51'),
(168, 187, 1, '2026-04-29 02:32:15', '2026-04-29 02:32:15'),
(169, 188, 1, '2026-04-29 04:23:56', '2026-04-29 04:23:56'),
(170, 189, 1, '2026-04-29 05:13:32', '2026-04-29 05:13:32'),
(171, 190, 1, '2026-04-29 21:38:27', '2026-04-29 21:38:27'),
(172, 191, 1, '2026-04-30 02:04:05', '2026-04-30 02:04:05'),
(173, 192, 1, '2026-04-30 02:22:21', '2026-04-30 02:22:21'),
(174, 193, 1, '2026-04-30 04:44:15', '2026-04-30 04:44:15'),
(175, 194, 1, '2026-04-30 06:14:07', '2026-04-30 06:14:07'),
(176, 195, 1, '2026-04-30 08:19:00', '2026-04-30 08:19:00'),
(177, 196, 1, '2026-04-30 09:55:38', '2026-04-30 09:55:38'),
(178, 197, 1, '2026-04-30 22:36:19', '2026-04-30 22:36:19'),
(179, 198, 1, '2026-05-01 03:07:52', '2026-05-01 03:07:52'),
(180, 199, 1, '2026-05-01 22:39:12', '2026-05-01 22:39:12'),
(181, 200, 1, '2026-05-02 05:26:40', '2026-05-02 05:26:40'),
(182, 201, 1, '2026-05-03 00:06:06', '2026-05-03 00:06:06'),
(183, 202, 1, '2026-05-03 02:06:19', '2026-05-03 02:06:19'),
(184, 203, 1, '2026-05-03 05:16:54', '2026-05-03 05:16:54'),
(185, 204, 1, '2026-05-03 08:05:37', '2026-05-03 08:05:37'),
(186, 205, 1, '2026-05-03 08:43:45', '2026-05-03 08:43:45'),
(187, 206, 1, '2026-05-03 22:37:06', '2026-05-03 22:37:06'),
(188, 207, 1, '2026-05-04 05:27:15', '2026-05-04 05:27:15'),
(189, 208, 1, '2026-05-04 08:11:30', '2026-05-04 08:11:30'),
(190, 209, 1, '2026-05-04 10:04:56', '2026-05-04 10:04:56'),
(191, 210, 1, '2026-05-04 22:15:18', '2026-05-04 22:15:18'),
(192, 211, 1, '2026-05-04 22:50:14', '2026-05-04 22:50:14'),
(193, 212, 1, '2026-05-05 04:15:41', '2026-05-05 04:15:41'),
(194, 213, 1, '2026-05-05 06:14:25', '2026-05-05 06:14:25'),
(195, 214, 1, '2026-05-05 06:52:29', '2026-05-05 06:52:29'),
(196, 215, 1, '2026-05-06 22:22:33', '2026-05-06 22:22:33'),
(197, 216, 1, '2026-05-06 23:46:55', '2026-05-06 23:46:55'),
(198, 217, 1, '2026-05-07 00:44:40', '2026-05-07 00:44:40'),
(199, 218, 1, '2026-05-07 01:12:17', '2026-05-07 01:12:17'),
(200, 219, 1, '2026-05-07 02:24:45', '2026-05-07 02:24:45'),
(201, 220, 1, '2026-05-08 04:03:43', '2026-05-08 04:03:43'),
(202, 221, 1, '2026-05-08 05:26:03', '2026-05-08 05:26:03'),
(203, 222, 1, '2026-05-09 02:37:38', '2026-05-09 02:37:38'),
(204, 223, 1, '2026-05-09 05:36:44', '2026-05-09 05:36:44'),
(205, 225, 1, '2026-05-09 22:27:20', '2026-05-09 22:27:20'),
(206, 226, 1, '2026-05-09 23:11:31', '2026-05-09 23:11:31'),
(207, 227, 1, '2026-05-11 02:34:18', '2026-05-11 02:34:18'),
(208, 231, 1, '2026-05-11 05:40:06', '2026-05-11 05:40:06'),
(209, 249, 1, '2026-05-12 02:16:56', '2026-05-12 02:16:56'),
(210, 250, 1, '2026-05-12 02:26:47', '2026-05-12 02:26:47'),
(211, 251, 1, '2026-05-13 00:46:16', '2026-05-13 00:46:16'),
(212, 252, 1, '2026-05-13 08:34:51', '2026-05-13 08:34:51'),
(213, 253, 1, '2026-05-13 23:45:34', '2026-05-13 23:45:34'),
(214, 254, 1, '2026-05-14 00:03:46', '2026-05-14 00:03:46'),
(215, 255, 1, '2026-05-14 00:07:31', '2026-05-14 00:07:31'),
(216, 256, 1, '2026-05-14 00:27:12', '2026-05-14 00:27:12'),
(217, 257, 1, '2026-05-14 00:31:22', '2026-05-14 00:31:22'),
(218, 258, 1, '2026-05-14 00:33:08', '2026-05-14 00:33:08'),
(219, 259, 1, '2026-05-14 00:35:01', '2026-05-14 00:35:01'),
(220, 260, 1, '2026-05-14 00:59:17', '2026-05-14 00:59:17'),
(221, 261, 1, '2026-05-14 01:15:17', '2026-05-14 01:15:17'),
(222, 262, 1, '2026-05-14 01:19:21', '2026-05-14 01:19:21'),
(223, 263, 1, '2026-05-14 01:22:59', '2026-05-14 01:22:59'),
(224, 264, 1, '2026-05-14 01:36:59', '2026-05-14 01:36:59'),
(225, 265, 1, '2026-05-14 05:18:43', '2026-05-14 05:18:43'),
(226, 293, 1, '2026-05-15 22:58:51', '2026-05-15 22:58:51'),
(227, 294, 1, '2026-05-16 00:15:39', '2026-05-16 00:15:39'),
(228, 295, 1, '2026-05-16 01:44:37', '2026-05-16 01:44:37'),
(229, 296, 1, '2026-05-16 04:45:47', '2026-05-16 04:45:47'),
(230, 297, 1, '2026-05-16 22:03:55', '2026-05-16 22:03:55'),
(231, 298, 1, '2026-05-17 22:14:38', '2026-05-17 22:14:38'),
(232, 299, 1, '2026-05-18 00:08:37', '2026-05-18 00:08:37'),
(233, 310, 1, '2026-05-18 05:53:27', '2026-05-18 05:53:27'),
(234, 311, 1, '2026-05-19 00:23:08', '2026-05-19 00:23:08'),
(235, 312, 1, '2026-05-19 01:50:25', '2026-05-19 01:50:25'),
(236, 314, 1, '2026-05-19 05:49:38', '2026-05-19 05:49:38'),
(237, 315, 1, '2026-05-19 21:53:15', '2026-05-19 21:53:15'),
(238, 319, 1, '2026-05-20 01:27:50', '2026-05-20 01:27:50'),
(239, 320, 1, '2026-05-20 01:56:14', '2026-05-20 01:56:14'),
(240, 327, 1, '2026-05-20 06:51:36', '2026-05-20 06:51:36'),
(241, 328, 1, '2026-05-21 01:52:53', '2026-05-21 01:52:53'),
(242, 331, 1, '2026-05-21 08:44:48', '2026-05-21 08:44:48'),
(243, 332, 1, '2026-05-31 00:51:37', '2026-05-31 00:51:37'),
(244, 333, 1, '2026-05-31 01:49:39', '2026-05-31 01:49:39'),
(245, 334, 1, '2026-05-31 05:19:15', '2026-05-31 05:19:15'),
(246, 335, 1, '2026-05-31 07:11:15', '2026-05-31 07:11:15'),
(247, 336, 1, '2026-06-01 02:32:56', '2026-06-01 02:32:56'),
(248, 337, 1, '2026-06-01 04:34:23', '2026-06-01 04:34:23'),
(249, 338, 1, '2026-06-13 05:22:23', '2026-06-13 05:22:23'),
(250, 339, 1, '2026-06-13 05:37:26', '2026-06-13 05:37:26'),
(251, 340, 1, '2026-06-13 05:38:23', '2026-06-13 05:38:23'),
(252, 341, 1, '2026-06-13 05:39:24', '2026-06-13 05:39:24'),
(253, 342, 1, '2026-06-18 18:54:55', '2026-06-18 18:54:55'),
(254, 343, 1, '2026-06-18 18:57:36', '2026-06-18 18:57:36'),
(255, 344, 1, '2026-06-19 08:15:25', '2026-06-19 08:15:25'),
(256, 345, 1, '2026-06-19 09:01:33', '2026-06-19 09:01:33'),
(257, 346, 1, '2026-06-19 09:04:04', '2026-06-19 09:04:04'),
(258, 347, 1, '2026-06-19 09:05:05', '2026-06-19 09:05:05'),
(259, 348, 1, '2026-06-19 09:05:55', '2026-06-19 09:05:55'),
(260, 349, 1, '2026-06-19 09:09:20', '2026-06-19 09:09:20'),
(261, 350, 1, '2026-06-19 09:24:25', '2026-06-19 09:24:25'),
(262, 351, 1, '2026-06-19 09:25:21', '2026-06-19 09:25:21'),
(263, 352, 1, '2026-06-25 07:15:23', '2026-06-25 07:15:23'),
(264, 353, 1, '2026-06-25 07:55:48', '2026-06-25 07:55:48'),
(265, 354, 1, '2026-06-25 07:57:26', '2026-06-25 07:57:26'),
(266, 355, 1, '2026-06-25 08:07:13', '2026-06-25 08:07:13'),
(267, 356, 1, '2026-06-25 08:08:50', '2026-06-25 08:08:50'),
(268, 357, 1, '2026-06-25 08:09:58', '2026-06-25 08:09:58'),
(269, 358, 1, '2026-06-25 08:11:21', '2026-06-25 08:11:21'),
(270, 359, 1, '2026-06-25 08:12:36', '2026-06-25 08:12:36'),
(271, 360, 1, '2026-07-01 20:20:06', '2026-07-01 20:20:06'),
(272, 361, 1, '2026-07-01 20:27:40', '2026-07-01 20:27:40'),
(273, 362, 1, '2026-07-01 20:31:57', '2026-07-01 20:31:57'),
(274, 363, 1, '2026-07-01 20:33:29', '2026-07-01 20:33:29'),
(275, 364, 1, '2026-07-01 20:34:53', '2026-07-01 20:34:53'),
(276, 365, 1, '2026-07-01 20:36:22', '2026-07-01 20:36:22'),
(277, 366, 1, '2026-07-02 13:39:02', '2026-07-02 13:39:02'),
(278, 367, 1, '2026-07-02 13:41:52', '2026-07-02 13:41:52'),
(279, 368, 1, '2026-07-02 13:46:14', '2026-07-02 13:46:14'),
(280, 369, 1, '2026-07-02 13:47:52', '2026-07-02 13:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `profit_distributions`
--

CREATE TABLE `profit_distributions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial_no` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invest_qty` decimal(16,0) NOT NULL,
  `production_qty` int(11) NOT NULL,
  `sales_qty` int(11) NOT NULL,
  `sales_amount` decimal(12,0) NOT NULL,
  `invest_amount` decimal(16,0) NOT NULL,
  `profit_amount` decimal(16,0) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profit_distributions`
--

INSERT INTO `profit_distributions` (`id`, `serial_no`, `year`, `month`, `date`, `product_id`, `invest_qty`, `production_qty`, `sales_qty`, `sales_amount`, `invest_amount`, `profit_amount`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'PD2603001', 2026, 'March', '2026-03-10', 31, 13, 100, 18, 4761, 130000, 2, 1, NULL, NULL, NULL, '2026-03-09 23:03:34', '2026-03-09 23:03:34'),
(2, 'PD2603002', 2026, 'March', '2026-03-10', 27, 13, 0, 10, 1200, 130000, 67, 1, NULL, NULL, NULL, '2026-03-09 23:03:56', '2026-03-09 23:03:56'),
(3, 'PD2603003', 2026, 'March', '2026-03-10', 10, 7, 0, 33, 4653, 70000, 348, 1, NULL, NULL, NULL, '2026-03-10 01:38:17', '2026-03-10 01:38:17'),
(4, 'PD2603004', 2026, 'March', '2026-03-10', 12, 5, 0, 13, 2197, 50000, 1725, 1, NULL, NULL, NULL, '2026-03-10 03:58:24', '2026-03-10 03:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `profit_distribution_lists`
--

CREATE TABLE `profit_distribution_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profit_distribution_id` bigint(20) UNSIGNED NOT NULL,
  `invest_id` bigint(20) UNSIGNED NOT NULL,
  `investor_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `profit_per_sale` decimal(16,0) NOT NULL,
  `sales_qty` decimal(16,0) DEFAULT NULL,
  `invest_qty` decimal(16,0) NOT NULL,
  `invest_amount` decimal(16,0) NOT NULL,
  `amount` decimal(16,0) NOT NULL,
  `paid_amount` decimal(16,0) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profit_distribution_lists`
--

INSERT INTO `profit_distribution_lists` (`id`, `profit_distribution_id`, `invest_id`, `investor_id`, `product_id`, `profit_per_sale`, `sales_qty`, `invest_qty`, `invest_amount`, `amount`, `paid_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, 31, 15, 18, 13, 130000, 2, 2, '2026-03-09 23:03:34', '2026-03-10 00:05:33'),
(2, 2, 2, 5, 27, 266, 10, 13, 130000, 67, 67, '2026-03-09 23:03:56', '2026-03-10 00:50:36'),
(3, 3, 4, 5, 10, 422, 33, 7, 70000, 350, 0, '2026-03-10 01:38:18', '2026-03-10 01:38:18'),
(4, 4, 6, 5, 12, 345, 13, 5, 50000, 1725, 0, '2026-03-10 03:58:25', '2026-03-10 03:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `name`, `slug`, `image`, `cover_image`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'UAC', 'uac', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-06-13 05:21:22', '2026-06-13 05:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `po_number` varchar(255) NOT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` varchar(50) DEFAULT '',
  `expected_date` varchar(50) DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT 0.00,
  `discount_amount` decimal(12,2) DEFAULT 0.00,
  `tax_amount` decimal(12,2) DEFAULT 0.00,
  `grand_total` decimal(12,2) DEFAULT 0.00,
  `payment_type` varchar(255) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `status` enum('draft','pending','approved','partially_received','received','cancelled') NOT NULL DEFAULT 'draft',
  `notes` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `received_quantity` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `unit_price` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `total_amount` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_receipts`
--

CREATE TABLE `purchase_receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receipt_number` varchar(255) NOT NULL,
  `purchase_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `receipt_date` date NOT NULL,
  `received_by` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_receipt_items`
--

CREATE TABLE `purchase_receipt_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_receipt_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `unit_cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `incharge` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `code`, `name`, `incharge`, `phone`, `email`, `address`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dhaka', NULL, NULL, NULL, NULL, 1, 1, 10, NULL, NULL, '2025-07-22 03:18:28', '2025-10-26 00:13:07'),
(2, NULL, 'Barishal', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:48:53', '2025-10-25 23:48:53'),
(3, NULL, 'Khulna', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:49:05', '2025-10-25 23:49:05'),
(4, NULL, 'Mymensingh', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:49:32', '2025-10-25 23:49:32'),
(5, NULL, 'Rajshahi', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:49:47', '2025-10-25 23:49:47'),
(6, NULL, 'Rangpur', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:50:31', '2025-10-25 23:50:31'),
(7, NULL, 'Chattogram', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:50:52', '2025-10-25 23:50:52'),
(8, NULL, 'Sylhet', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:51:18', '2025-10-25 23:51:18'),
(9, NULL, 'Region-1', NULL, NULL, NULL, NULL, 0, 10, NULL, NULL, NULL, '2025-10-26 00:18:44', '2025-11-01 01:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `review` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Software Admin', 'web', '2026-01-19 04:51:11', '2026-01-19 04:51:11'),
(2, 'Investor', 'web', '2026-01-19 06:27:50', '2026-01-19 06:27:50'),
(3, 'Manager', 'web', '2026-03-31 21:56:13', '2026-03-31 21:56:13'),
(4, 'Seller', 'web', '2026-04-08 04:38:58', '2026-04-08 04:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(6, 1),
(14, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(1, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(6, 3),
(14, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(45, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(104, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(127, 3),
(128, 3),
(129, 3),
(130, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(140, 3),
(144, 3),
(145, 3),
(146, 3),
(147, 3),
(148, 3),
(149, 3),
(1, 4),
(21, 4),
(23, 4),
(24, 4),
(26, 4),
(27, 4),
(29, 4),
(32, 4),
(33, 4),
(36, 4),
(37, 4),
(38, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(52, 4),
(53, 4),
(61, 4),
(62, 4),
(63, 4),
(64, 4),
(68, 4),
(122, 4),
(131, 4),
(135, 4),
(136, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sales_officer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sale_type` enum('Credit','Cash') NOT NULL DEFAULT 'Credit',
  `invoice` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `discount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `net_amount` decimal(16,2) NOT NULL,
  `paid` decimal(16,2) NOT NULL DEFAULT 0.00,
  `return_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `return_paid` decimal(16,2) NOT NULL DEFAULT 0.00,
  `remarks` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `client_id`, `store_id`, `sales_officer_id`, `coa_id`, `sale_type`, `invoice`, `date`, `amount`, `discount`, `tax`, `tax_amount`, `net_amount`, `paid`, `return_amount`, `return_paid`, `remarks`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 82, 1, 4, NULL, 'Credit', 'CS2606001', '2026-06-18', 11000.00, 0.00, 15, 1650, 12650.00, 0.00, 0.00, 0.00, NULL, 1, NULL, NULL, NULL, '2026-06-18 18:37:38', '2026-06-18 18:37:38'),
(2, 82, 1, 6, 304, 'Credit', 'CS2606002', '2026-06-18', 11000.00, 0.00, 0, 0, 11000.00, 0.00, 0.00, 0.00, 'Online Order', 1, NULL, NULL, NULL, '2026-06-18 18:46:00', '2026-06-18 18:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_lists`
--

CREATE TABLE `sales_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_edition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(16,2) NOT NULL,
  `commission` decimal(16,2) NOT NULL DEFAULT 0.00,
  `commission_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `rate` decimal(16,2) NOT NULL,
  `qty` decimal(16,2) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `discount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `net_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `return_qty` decimal(16,2) NOT NULL DEFAULT 0.00,
  `return_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `distributed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_lists`
--

INSERT INTO `sales_lists` (`id`, `sales_id`, `client_id`, `store_id`, `product_id`, `product_edition_id`, `price`, `commission`, `commission_amount`, `rate`, `qty`, `amount`, `discount`, `net_amount`, `return_qty`, `return_amount`, `distributed`, `created_at`, `updated_at`) VALUES
(1, 1, 82, 1, 340, 319, 11000.00, 0.00, 0.00, 11000.00, 1.00, 11000.00, 0.00, 11000.00, 0.00, 0.00, 0, '2026-06-18 18:37:38', '2026-06-18 18:37:38'),
(2, 2, 82, 1, 1, 20, 11000.00, 0.00, 0.00, 11000.00, 1.00, 11000.00, 0.00, 11000.00, 0.00, 0.00, 0, '2026-06-18 18:46:00', '2026-06-18 18:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_officers`
--

CREATE TABLE `sales_officers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_officers`
--

INSERT INTO `sales_officers` (`id`, `code`, `name`, `phone`, `email`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Tso Mostafa', NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 01:54:45', '2025-11-02 01:54:45'),
(3, NULL, 'Tso Anamul', NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 01:55:01', '2025-11-02 01:55:01'),
(4, NULL, 'Ali Ahmed Bahar', NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 01:55:30', '2025-11-02 01:55:30'),
(5, NULL, 'Tso Rasel', NULL, NULL, 1, 10, 10, NULL, NULL, '2025-12-21 22:00:16', '2025-12-21 22:01:37'),
(6, NULL, 'Online', '0000000000', 'online@gmail.com', 1, 1, NULL, NULL, NULL, '2026-03-03 23:26:22', '2026-03-03 23:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `sales_returns`
--

CREATE TABLE `sales_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `return_no` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_lists`
--

CREATE TABLE `sales_return_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_return_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` bigint(20) UNSIGNED NOT NULL,
  `sales_list_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_edition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate` decimal(16,2) NOT NULL,
  `qty` decimal(16,2) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_return_lists`
--

INSERT INTO `sales_return_lists` (`id`, `sales_return_id`, `client_id`, `store_id`, `sales_id`, `sales_list_id`, `product_id`, `product_edition_id`, `rate`, `qty`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 68, 1, 16, 16, 10, 15, 141.00, 2.00, 282.00, '2026-03-10 03:03:27', '2026-03-10 03:03:27'),
(6, 4, 68, 1, 17, 17, 11, 14, 120.00, 2.00, 240.00, '2026-03-10 21:39:30', '2026-03-10 21:39:30'),
(7, 5, 68, 1, 17, 17, 11, 14, 120.00, 2.00, 240.00, '2026-03-10 21:51:54', '2026-03-10 21:51:54'),
(8, 6, 68, 1, 17, 17, 11, 14, 120.00, 2.00, 240.00, '2026-03-10 21:53:37', '2026-03-10 21:53:37'),
(17, 11, 68, 1, 19, 19, 11, 14, 120.00, 1.00, 120.00, '2026-03-12 00:15:36', '2026-03-12 00:15:36'),
(18, 11, 68, 1, 18, 18, 12, 13, 169.00, 1.00, 169.00, '2026-03-12 00:15:36', '2026-03-12 00:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_payments`
--

CREATE TABLE `sales_return_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_return_id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2wpGfcCTDVwXuGhQXagnFOW8PhaVKayMjIvj0N0f', NULL, '85.208.96.203', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiam13OWlzTmttZnhrWVhucG1NNlpEYTdBck1mdDBaUUNGTjlQTnhWdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzI4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771741292),
('3x9ED1AQuFJrpbS0s17DBbWkNAXJ86DbIah6Y92R', NULL, '5.39.1.250', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS29yWUdCcTFUYVJ0endQMEpHTWpRWUlrdWFGSVJnNURLdVh1TGdJayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQyOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNTMvcHphcmFsYWwtdGV4dC8lRTAlQTYlQUElRTAlQTclOEQlRTAlQTYlQUYlRTAlQTYlQkUlRTAlQTYlQjAlRTAlQTYlQkUlRTAlQTYlQjIlRTAlQTYlQkUlRTAlQTYlQjIlMjBURVhUIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771882406),
('6K2AwQTDnr2PucGfCn5gg65yr7TYE4sAOPIQDHv7', NULL, '176.31.139.2', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3VlWmhrTEhpWFlIc0tWS3NnenJodnd1VjQwUmhoc0p1MGNkMDJOaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk1OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMjcvc2FiLW1lbnUtem9nLWtydW4xLyVFMCVBNiVCOCVFMCVBNiVCRSVFMCVBNiVBQyUyMCVFMCVBNiVBRSVFMCVBNyU4NyVFMCVBNiVBOCVFMCVBNyU4MSUyMCVFMCVBNiVBRiVFMCVBNyU4QiVFMCVBNiU5NyUyMCVFMCVBNiU5NSVFMCVBNiVCMCVFMCVBNyU4MSVFMCVBNiVBODEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771897235),
('6PEKrPb372Uzhb17DK77uVvG11rcrdiiQHCbwBdJ', NULL, '176.31.139.27', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVREbW5QNjJ6eU5nV3QwdVFKME41clhqMmdTQmQwWm5TWTFoWktQMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAyOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMTgvaXNsYW1pay1nbHBlci1ieWVyLXNrbC1iaS8lRTAlQTYlQUMlRTAlQTYlQkYlRTAlQTYlQjclRTAlQTclOUYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771899314),
('8dF3NqTXd6tNhuXFBroePGsUAsFPGngYkW4oVKti', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3ZSZXg5aXg4WG1Ka0x6WXVib3VWZWFhbU40VVJBbks5VVM3TW9DeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMzkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771782044),
('92XZ9foEBHD2ociNevoQ4HoAN0e1UKTGOHA3C7N6', NULL, '43.135.177.189', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibU5BZXF4dTdCbE5vRUpwQmxHMjdOeE9EajhOb2hWRUxEMzRKZU5ZViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cuYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771892506),
('9gYGX5hQx4i037OVIpOopupXjF4VH0WNQ2ovoBrF', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUhUdThmb0ZFWlFGY2RuN2d4UEFVczlGM09mZWtZYnl3dkt5TUlKTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMjciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771722810),
('9PqaFFB3Apg9ofa6wnjjmwWtkioUSKQYnpuTrB6V', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieHdyZEtGeGJwbUJGRjBTTklZaTkxUXV1QUlJRjBGYm1rTnNFMlF3dyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1771915785),
('9WfzMVIEeC9erLWHHhj9gRXsj242a7biG8wMQ931', NULL, '198.235.24.161', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0kwd3pXZWZ2YXZZSHpaRVZLekZuSEJxQW5PR2RTTGFzVUlNUmE1bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771719790),
('aArlVekKIvCtqwnARjPvdZO1zT1gcuwPW99wXSRW', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXlrcGpXRzVmcW5MeFRldG84MWNIbjBTZ3pIREMzOGpXYWd0a1dTdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTM4OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81MS9hamtlci1vZmFyLyVFMCVBNiU4NiVFMCVBNiU5QyVFMCVBNiU5NSVFMCVBNyU4NyVFMCVBNiVCMCUyMCVFMCVBNiU4NSVFMCVBNiVBQiVFMCVBNiVCRSVFMCVBNiVCMCUyMCEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771790226),
('aRJ12XXrj9ahZLUaYMWsfUpg1kFuopG7dQYOgpx2', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXVEdndjd2NFaGQxSWlUc3VxMk5rOE00U3RYVGdnNzhENVk2a0JVdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMzgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771765461),
('awgswZ7dKCXitP4hzoKzYGrCw7a6vnAzVHaIMuO0', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUtFU0lLYWpvWmhIRWJRVmRNbnZZeDZTNUJKSEkzSWh5S1h1dTRIVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3Byb2R1Y3QvZGV0YWlscy8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771765456),
('BbzS94LqGNElHCo7kw7jmpNPjdPnbQRwOWXagut9', NULL, '185.191.171.13', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGVsb3huSEpvNFpTM0xvd1BOWTNJVDcxQjJKV1ZkeThxN2U3ajgyMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771749595),
('BjEV3DLA7rq4RHKXliqNxUAk7RRleEFisCwaLKgq', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmJCMVRxUGhyMHVKSEtMZ3ozVmtHS2k4YjdaeDBlU01MQWF1cnRIUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3Byb2R1Y3QvZGV0YWlscy8xMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771762843),
('bKgmbko1H4Srx5Mle4tJQ2P9bWmioZNIHCBx1R48', NULL, '93.158.90.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUFqU2tsSEFQbEhwaUNteG9oUE11eFRhVE5ZMUVmemt4dmFqbEZnciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ4OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS8yMy9hcm9vLW9uZWstbWVudS1la2hhbmUtaGJlLyVFMCVBNiU4NiVFMCVBNiVCMCVFMCVBNiU5MyUyMCVFMCVBNiU4NSVFMCVBNiVBOCVFMCVBNyU4NyVFMCVBNiU5NSUyMCVFMCVBNiVBRSVFMCVBNyU4NyVFMCVBNiVBOCVFMCVBNyU4MSUyMCVFMCVBNiU4RiVFMCVBNiU5NiVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNyU4NyUyMCVFMCVBNiVCOSVFMCVBNiVBQyVFMCVBNyU4NyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771861145),
('Bzy4Ch1vzQZSDRXgp5H71QYWIFLhVzIJm7gztFGG', NULL, '202.83.125.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGdXZzFOUkxHUU16b0lJSDZQVm92dVpCMGJ2V3dpcGtPVXZ0V21DViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771913934),
('CLImq4YeTcs2COcbziILjYLGtNGtlpfaN5HldJg0', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamxuMVBKd3JxTGFjYkpoZ01lcGx6VjNmb0hKbXJNelhydXg5SHA5dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL2NhcnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771787538),
('Cme6PnHFeR3TdtjPlvevSvdMCOsgFcu4uNXucgfI', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjl3V25WMDhVSVl2d3JVTWVSYWR0aTRuRkNNQWltQmxaQlIxcjdleCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTkyOiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS8yNC9zYWItbWVudS16b2cta3J1bi8lRTAlQTYlQjglRTAlQTYlQkUlRTAlQTYlQUMlMjAlRTAlQTYlQUUlRTAlQTclODclRTAlQTYlQTglRTAlQTclODElMjAlRTAlQTYlQUYlRTAlQTclOEIlRTAlQTYlOTclMjAlRTAlQTYlOTUlRTAlQTYlQjAlRTAlQTclODElRTAlQTYlQTgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771754859),
('COf3wHTKoukMKqlOdtYyAe719AWokccLLg9pdRna', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieURlNkgyeHE3U2V2VXVjb1kyeFdkemo0Tjk5WkJacHVaZldpTzQ0MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvNDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771778976),
('DE7X2edQ6JQk2wSFVwH85MBKKsenOb3TxG2SUY0m', NULL, '93.158.91.237', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME9mR3hOWDd6Zk9UcjM4eDUwcUdUQjJWdmJzMWZTRUx2UllaSVdYOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771737881),
('DGxxuFsowr7bFpgccDsyUlHnteb9Qusjztw96Lmb', NULL, '37.59.204.149', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkFaNGFIcmFyTGx4cGxQV3VRVHpzc1g1azB3TFkyZkczRUNGejlOciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTkzOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMjQvc2FiLW1lbnUtem9nLWtydW4vJUUwJUE2JUI4JUUwJUE2JUJFJUUwJUE2JUFDJTIwJUUwJUE2JUFFJUUwJUE3JTg3JUUwJUE2JUE4JUUwJUE3JTgxJTIwJUUwJUE2JUFGJUUwJUE3JThCJUUwJUE2JTk3JTIwJUUwJUE2JTk1JUUwJUE2JUIwJUUwJUE3JTgxJUUwJUE2JUE4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771900312),
('F11ZcUZuC1VKd4n4N3nAkj7vLg77JPksTLlzVAeJ', NULL, '185.191.171.19', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHExeVRTV0dQZTdaYzV3NmxnYmNCMmJOVHBVOG9YV21tMERHZWtJdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771729235),
('F99T1cUpRyvPk9eJHln5iCpLz2qWFv2gdpmEcmDw', NULL, '93.158.71.185', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTRPajV0azI4MkFFZ2oxeWJGa3R3VjZEUnBBU3B3QnRWVGJZakRxNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ4OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS8yMy9hcm9vLW9uZWstbWVudS1la2hhbmUtaGJlLyVFMCVBNiU4NiVFMCVBNiVCMCVFMCVBNiU5MyUyMCVFMCVBNiU4NSVFMCVBNiVBOCVFMCVBNyU4NyVFMCVBNiU5NSUyMCVFMCVBNiVBRSVFMCVBNyU4NyVFMCVBNiVBOCVFMCVBNyU4MSUyMCVFMCVBNiU4RiVFMCVBNiU5NiVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNyU4NyUyMCVFMCVBNiVCOSVFMCVBNiVBQyVFMCVBNyU4NyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771737883),
('Fb9ueSnLZpSewZwhUrxQCZBqkgfC225bjllgOY9j', NULL, '5.39.1.254', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXd5MkdPNVE3a251UmxGNHlESnc0cHpmbTRFY2xGVGxrSFJFbHlIeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEzOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMjkvZ2FyaXlhbDEvJUUwJUE2JTk3JUUwJUE2JUJFJUUwJUE3JTlDJUUwJUE2JUJGJUUwJUE3JTlGJUUwJUE2JUJFJUUwJUE2JUIyMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771894529),
('fBwcAp648hvADFzgxl5EYEeCy6POFIM4ebi85y0U', NULL, '54.156.53.99', 'Mozilla/5.0 (Linux; Android 4.0.4; BNTV400 Build/IMM76L) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.111 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUlCVHVIZWUzSmIwU2hsVXpzODVRbmNOZExtMnh0NjQ2U0V1bGI3RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771840988),
('FTUXeEq5pHrfCHVjZRK5BOlHU6MInrgqu2bmtUvA', NULL, '54.37.118.71', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFNTaEpocTJnMEdtaUZTckQwb0ppS0E1ZHV3QUdJTEhTU202ankzWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc3OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNTAvYmVzdHNlbGFyLW96YW9vemFyZC0yNS8lRTAlQTYlQUMlRTAlQTclODclRTAlQTYlQjglRTAlQTclOEQlRTAlQTYlOUYlRTAlQTYlQjglRTAlQTclODclRTAlQTYlQjIlRTAlQTYlQkUlRTAlQTYlQjAlMjAlRTAlQTYlODUlRTAlQTclOEQlRTAlQTYlQUYlRTAlQTYlQkUlRTAlQTYlOTMlRTAlQTYlQUYlRTAlQTYlQkMlRTAlQTYlQkUlRTAlQTYlQjAlRTAlQTclOEQlRTAlQTYlQTEsJTIwJUUwJUE3JUE4JUUwJUE3JUFCIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771890520),
('fwJMwObFO16ny2chhlitiGem0sWHABlBiCsCd22v', NULL, '98.83.57.80', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUF0a0laS0ZxekoxTklFUjRnOTROY25QN1VVTG1zczR3OGVuY3ZQRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmJvb2tzYW5kYm9va3NiZC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771710598),
('g7Ptvz8kQBbR4w4J7vepodQCldBOUxRiCxQ1ZGWi', NULL, '151.248.1.103', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGUzNkwwZ2R3Y1A1TzZGSm5HVHF4eWFDNzdKY0RYWmZKdHlLR245RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjMzOiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS80OS9wcmF0aXNodGhhbmlrLW9yZGFyLyVFMCVBNiVBQSVFMCVBNyU4RCVFMCVBNiVCMCVFMCVBNiVCRSVFMCVBNiVBNCVFMCVBNiVCRiVFMCVBNiVCNyVFMCVBNyU4RCVFMCVBNiVBMCVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNiVCRiVFMCVBNiU5NSUyMCVFMCVBNiU4NSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSVFMCVBNiVCRSVFMCVBNiVCMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771737883),
('GAX3bazbx8iO8o2flV3L0qFNdIcQj5ChD2KxvVOX', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDMxMzZNVm1VemNyaG9SUlVwUTZNQlN1dEtpUnRQdUxHdmo0aDR2aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTgxOiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81NC92cnRpLXByc3R1dGkvJUUwJUE2JUFEJUUwJUE2JUIwJUUwJUE3JThEJUUwJUE2JUE0JUUwJUE2JUJGJTIwJUUwJUE2JUFBJUUwJUE3JThEJUUwJUE2JUIwJUUwJUE2JUI4JUUwJUE3JThEJUUwJUE2JUE0JUUwJUE3JTgxJUUwJUE2JUE0JUUwJUE2JUJGIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771738815),
('gtaEcPKC850R3A9zetwZFynd8DKM0NrVF4268DYy', NULL, '93.158.91.249', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2E3Q0lod3p3Q3RQSk9zTnFUeThEalBOcEE1VEFuN3dFOUN3ODRXTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjMzOiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS80OS9wcmF0aXNodGhhbmlrLW9yZGFyLyVFMCVBNiVBQSVFMCVBNyU4RCVFMCVBNiVCMCVFMCVBNiVCRSVFMCVBNiVBNCVFMCVBNiVCRiVFMCVBNiVCNyVFMCVBNyU4RCVFMCVBNiVBMCVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNiVCRiVFMCVBNiU5NSUyMCVFMCVBNiU4NSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSVFMCVBNiVCRSVFMCVBNiVCMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771906136),
('gwdkiOnOofTeArdMwwCmdG554dsl69cGiEdGFwAY', NULL, '185.191.171.15', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGJXb2xpU0syTHhIa2pNYWxoT0JoTllaNlpsOTBubEJldE9tZlV3WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771761050),
('gWSD5rWbQWbmGLmgcbXPW76GgEixeebny0DDyUtT', NULL, '93.158.91.235', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclZVeHl4UVNweFpFYVNZUVpCRGtqemQwa2lITEFDcTZqbTI3dU84OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc2OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81MC9iZXN0c2VsYXItb3phb296YXJkLTI1LyVFMCVBNiVBQyVFMCVBNyU4NyVFMCVBNiVCOCVFMCVBNyU4RCVFMCVBNiU5RiVFMCVBNiVCOCVFMCVBNyU4NyVFMCVBNiVCMiVFMCVBNiVCRSVFMCVBNiVCMCUyMCVFMCVBNiU4NSVFMCVBNyU4RCVFMCVBNiVBRiVFMCVBNiVCRSVFMCVBNiU5MyVFMCVBNiVBRiVFMCVBNiVCQyVFMCVBNiVCRSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSwlMjAlRTAlQTclQTglRTAlQTclQUIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771906134),
('gZ5ZhQNgYkU921hInMHrz8G3UJ1W4Mq2vvMSKBmm', NULL, '85.208.96.197', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTFUZVlIOGFZc1gyUmZBQmttNnZ1YzBGUnFBUmFBa3lIUEoycXZCcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771723956),
('h76rcENAjBGytg05AbxBznseaJJs01SBFW1u4x3R', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmdoR0taSlQ0OEtyOE5haUI4dEI1eVAzMHpvVkVCREl4WjhQSWtHWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771738820),
('hd0ZldwMA8ZsltuZ1Fj94iYnQYuASWYReNerLqX1', NULL, '85.208.96.208', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiand1bUR3RUh4RDVKZmdwUk9EdHQ0MjlWVkJjNTBQWExvNEFYOHA1eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzI1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771728544),
('HGy0kUYVTH6e03Sft06BQrK81keUUmKT9aUS79WU', NULL, '51.68.247.214', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicm8xY2c3YUU1M0RCUW1aczllTW5MOFlkNkVzazBTOHJLRTNyc2M5eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE1OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNDgva2lkcy1qb24vJUUwJUE2JTk1JUUwJUE2JUJGJUUwJUE2JUExJUUwJUE2JUI4JTIwJUUwJUE2JTlDJUUwJUE3JThCJUUwJUE2JUE4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771893148),
('hqZRhFY0b7W9IU1JpVh5KHSblpAfr3wCI0yvQNcb', NULL, '185.191.171.14', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzJXbWVaaFREODl0RVpQN2UzY00zWXBnYVdYdkNRbHRqbzJOUjNadCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9wcm9kdWN0L2RldGFpbHMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771741555),
('IJGppZ7Jf1lANUjJzxvlheDuklHp6s83DX0DxfCs', NULL, '5.39.1.239', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUW42akNWdEZxTUFWa3htVGZBZm1TQ0tiOTRvb3RRd3ZhWmVwTlFGWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk5OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNTgvb3RpcmlrdC1jaGFyZXItYmkvJUUwJUE2JTg1JUUwJUE2JUE0JUUwJUE2JUJGJUUwJUE2JUIwJUUwJUE2JUJGJUUwJUE2JTk1JUUwJUE3JThEJUUwJUE2JUE0JTIwJUUwJUE2JTlCJUUwJUE2JUJFJUUwJUE3JTlDJUUwJUE3JTg3JUUwJUE2JUIwJTIwJUUwJUE2JUFDJUUwJUE2JTg3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771877723),
('iL4qfQcP2CCRglQMCHtNkOTvjQeiRyloLLaAhnyG', NULL, '54.156.53.99', 'Mozilla/5.0 (Linux; Android 12; SM-A525F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWms0c0FoMkRyV1pMZ1IzTnFLRmhMbkZrRWpDdTZMRmRrbkhiNXNJUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771840988),
('IWBZosT1v1KAdlLDYIwcQn3v93v3DeLe2o7xeT5N', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVk4ZXRFZHZLRHJ4RnA3UTY5MGZnMFNoNnQwaTFLc1lpSEluOGw5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771736089),
('j5GxpMQCoYoSzYVtWP1iDTosBnvsO92Eakh7Or7h', NULL, '143.198.40.214', 'Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEVmSGxOeEVaVm1VbFhSMVNGcVM0MXhkOVh5Znh6UkpJcnlYM1VSdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771750608),
('JcHPfil6MeAwboiJ54DWmVREHTadTujZOrtlYUyE', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnhFN29JRXlpWXBFdlplazdMa2F1SW1wZWVxeXFwaG13UFRLWm5jTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771725544),
('JdtBb9GzY5igRK7RTbBJgja5QfmBci5egXH4YR9J', NULL, '176.31.139.6', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHY5WFN3cFJFcW5JdTYyWklVQ0JmN3FxWXZwVldMOW14MjcyelpUNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk1OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMjgvc2FiLW1lbnUtem9nLWtydW4yLyVFMCVBNiVCOCVFMCVBNiVCRSVFMCVBNiVBQyUyMCVFMCVBNiVBRSVFMCVBNyU4NyVFMCVBNiVBOCVFMCVBNyU4MSUyMCVFMCVBNiVBRiVFMCVBNyU4QiVFMCVBNiU5NyUyMCVFMCVBNiU5NSVFMCVBNiVCMCVFMCVBNyU4MSVFMCVBNiVBODIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771895781),
('Jz1SwFcuqf77qLoocgdG8wbUuugSMH8kAyElzw8d', NULL, '93.158.91.249', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjVQblo4RGxLa2k3OWxoZmxTMmh2N2U4cjNBWEhvdG9ZY1d5OUxNTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771906134),
('KhlvD9ikHxANtUhdA3eIAQuZYCgZsK38PDcW1lvW', NULL, '5.39.1.233', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3JBUVBraWNSU09vME9yVmM1akFuUnBRd0hOMGN5TlR4TWhtdklpTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk1OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMjUvc2FiLW1lbnUtem9nLWtydW4tMS8lRTAlQTYlQjglRTAlQTYlQkUlRTAlQTYlQUMlMjAlRTAlQTYlQUUlRTAlQTclODclRTAlQTYlQTglRTAlQTclODElMjAlRTAlQTYlQUYlRTAlQTclOEIlRTAlQTYlOTclMjAlRTAlQTYlOTUlRTAlQTYlQjAlRTAlQTclODElRTAlQTYlQTgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771898299),
('KNyxgqRl7fULkSs5WbCftaiNLLwzjXdH4IWRX1ok', NULL, '85.208.96.200', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWU1KOTB3Q014cW5IZGFjZE9BcWRoVHdSVm5GaFhtU1laNWk1b3R6cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzI3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771749145),
('kxnNSo8ZfycQwagwkGktJb8c0p6lc5zcMk4LHLrO', NULL, '93.158.91.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0NmNnZOTnpIeXdBUlM4TmtLQUVpR1ZQSldKUnFuMU1DM2d6eGZWVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771825878),
('ldTlKDMmr4AbqCrFQylaYrSRBdCmf2Cmo25NReSh', NULL, '85.208.96.207', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0tBZFNNdFk5RjN1bThSYjV2QU9aZENBaVFLUHVkcjZ6cG1vWGV0OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9wcm9kdWN0L2RldGFpbHMvNyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771761516),
('LHAMaJmVyqyw2MwVPPZoFaQQXSFaitzzzpo2a2N3', NULL, '85.208.96.210', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHJVTnlNNnNybnRJWERSSmFQM3RvOE00TWNCb2VzZklhMVpkWXpyYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771732331),
('lsHv24giuc6JdZS6hCTo0dCfk7iUdya58xDw345m', NULL, '137.184.207.51', 'Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkN3NENOTU12djVSUmRCNVFuMkNXTENHekxoZzRCMXB4U09yUnNndiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cuYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771741392),
('m5zcMyeoiIKCJ3MuryrtPeztizJfHYcfmnZr4lub', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHQyWFFITlJZaHRXZWRLcWpPZzhDMEhnbTBMNTk5NHhqQ09BRnY2NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771762848),
('Mbrfm6Zr1zYZn15zkaPIPSlimC7gVBGqEyxUEPeh', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUNRYWhkcDZQWGtrR0VCUUxUeXZEOFRFWGppTldySmFFaWx0WWpRaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk4OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81OC9vdGlyaWt0LWNoYXJlci1iaS8lRTAlQTYlODUlRTAlQTYlQTQlRTAlQTYlQkYlRTAlQTYlQjAlRTAlQTYlQkYlRTAlQTYlOTUlRTAlQTclOEQlRTAlQTYlQTQlMjAlRTAlQTYlOUIlRTAlQTYlQkUlRTAlQTclOUMlRTAlQTclODclRTAlQTYlQjAlMjAlRTAlQTYlQUMlRTAlQTYlODciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771725539),
('nna6zmm61LQQYRBAwV9YSn94YCqN7VlVkQGesckc', NULL, '80.76.49.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0dLZmNSQmx1RkZQZ0oyTjJBOE9GYUp2a1dPckNDNDZ5Y2plZk5CNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771747911),
('nqO5btPpqG3m0rgXBEsojXdjDAVpP74yWrj95Daj', NULL, '43.153.47.201', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialU5ZGlPWEhrbHpmbFI1SE94clZibWRaa3l4dWlZWGhmVlBqbUVodCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771855712),
('o8pklKvOedpqrrchGxqhcMoVKSycJU5ZET5E6TZN', NULL, '143.198.40.214', 'Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVpDQlR5RVRUMUlRQmR4TGljbTlQa2QxRGc1d2IyQ1BLcUp2bXRsaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771750606),
('OkPBUs9dB5KWGeyhTH1hfhSk7AZCdNmAc6izNjkq', NULL, '80.76.49.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0FxWGdLZEswRDQyTFU2R3lYNklRbmxoQzhtc1ZlVkhyQ1pLMmg2ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771747911),
('OR3ysT3blf83oMrFlaKZLSNiU55jdb1esDphqrZZ', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFExU3pPd29jYTdROUgyVjFjTnFualRjRDlXejc0NTNTVVkxUXlTTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY0OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS80L2VrYWRlbWlrLyVFMCVBNiU4NyVFMCVBNiVCMiVFMCVBNyU4NyVFMCVBNiU5NSVFMCVBNyU4RCVFMCVBNiU5RiVFMCVBNyU4RCVFMCVBNiVCMCVFMCVBNiVBOCVFMCVBNiVCRiVFMCVBNiU5NSVFMCVBNyU4RCVFMCVBNiVCOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771738809),
('oTRR2Bk4oS3sXenY2mRDLz0EIFgdK3OJNVfAZZlD', NULL, '85.208.96.193', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaW55ZXNMVlNLYWRCZVlWQWIzc3lRZGkzMEVIWTRKZDN0N1A0RTRQSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdudXAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771760304),
('PdikF5POcQgwjXSfQpVAaGWmPUXVQMhFjfVQxFjy', NULL, '93.158.91.239', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUJwenR5R1NueTlPMEtQb0lRMVVKMTVvSnlwSllCSFJKSU9idjhGaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ4OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS8yMy9hcm9vLW9uZWstbWVudS1la2hhbmUtaGJlLyVFMCVBNiU4NiVFMCVBNiVCMCVFMCVBNiU5MyUyMCVFMCVBNiU4NSVFMCVBNiVBOCVFMCVBNyU4NyVFMCVBNiU5NSUyMCVFMCVBNiVBRSVFMCVBNyU4NyVFMCVBNiVBOCVFMCVBNyU4MSUyMCVFMCVBNiU4RiVFMCVBNiU5NiVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNyU4NyUyMCVFMCVBNiVCOSVFMCVBNiVBQyVFMCVBNyU4NyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771906135),
('pEnPgc4ZTzvHdBuc68UjMQLGweQXlRKhlYtFa9x9', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2l3SmFmMlVJYjRVMW1ZU2xUUUZYR0NVR1h1dEVRdHAwWkZ4TUNZOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3Byb2R1Y3QvZGV0YWlscy83Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771803909),
('pGvanG0HvdBGxWbxqLv7nAiolIOE3Xg8i2vFL615', NULL, '185.191.171.19', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiand3eUhjeXZoWmx4S0M3VFJoMThFb09iaEJTTGlKcnhiVWZsQmxzMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9wcm9kdWN0L2RldGFpbHMvNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771751668),
('PkYPxOn7tTohWqRnBXtXrHqexyPFSb0tclAgA2VC', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEtuU0o2alJlNDFmVmc3djBJb1J3cUwyN1VMWjBxUTRjRjYyOTJpeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3Byb2R1Y3QvZGV0YWlscy8xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771784852),
('PnlrKB0S7arY0rfs85CfNoIlae2vTTzqIijlWA3k', NULL, '185.191.171.9', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMldFTVdhNENVQzBzTEN0Tm1PMWpnbVJTbmhNYTVHbnBGdVpHemUxeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9wcm9kdWN0L2RldGFpbHMvMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771729555),
('Q7CmttvFOETWY3zrMNS7pMxntLN2yOlquldgsyiW', NULL, '185.91.69.242', 'Mozilla/5.0 (X11; Linux i686; rv:114.0) Gecko/20100101 Firefox/114.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQktQbHlLZnJaNURadm9LWnR5ampDTFI2VWhzSjRacFp4ZTFXaFU5aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvNDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771703419),
('QIc5QxMuY8oqLbZHMDHrkdMQHcXEAlJPlcngqK7R', NULL, '93.158.90.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTVnak1jSGo4VE1XMTVIUnFrdjZSdXJ1MWw0ajRlV2lXM0ZyaHdvRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjMzOiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS80OS9wcmF0aXNodGhhbmlrLW9yZGFyLyVFMCVBNiVBQSVFMCVBNyU4RCVFMCVBNiVCMCVFMCVBNiVCRSVFMCVBNiVBNCVFMCVBNiVCRiVFMCVBNiVCNyVFMCVBNyU4RCVFMCVBNiVBMCVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNiVCRiVFMCVBNiU5NSUyMCVFMCVBNiU4NSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSVFMCVBNiVCRSVFMCVBNiVCMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771861146),
('QjeYcGvpC87lXw3MS5ndb2zJtu4jP5gzKzxwr5oe', NULL, '92.222.104.220', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmpjcm1YUEw5cVFPS0F5Q2dmRGtlMEZNdGF6b0JVRUd6M2o2U3RYUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ2OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNS9rYXJ0dW4tZXItZ2xwLyVFMCVBNiVCOCVFMCVBNyU4MSVFMCVBNiVBQSVFMCVBNiVCRSVFMCVBNiVCMCUyMCVFMCVBNiVCOCVFMCVBNyU4RCVFMCVBNiU5RiVFMCVBNyU4QiVFMCVBNiVCMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771891825),
('rO2uKec7qEZpDIVa6qA8fnLT8XtL0KacGbBGuQbL', NULL, '92.222.108.113', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3QxVDZWUlZyaURpazZKcWRCUFJCQnNPV2k3SjlLRmZua2N4T1I3RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTgyOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNTQvdnJ0aS1wcnN0dXRpLyVFMCVBNiVBRCVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBNCVFMCVBNiVCRiUyMCVFMCVBNiVBQSVFMCVBNyU4RCVFMCVBNiVCMCVFMCVBNiVCOCVFMCVBNyU4RCVFMCVBNiVBNCVFMCVBNyU4MSVFMCVBNiVBNCVFMCVBNiVCRiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771880790),
('rQexNDehxONjEoVlTXdwdCuKLJTBzorUoKUXrgA9', NULL, '37.59.204.128', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekMxZ2dmMDk1ZDRhTVZ1bVM3YUNYMllCYW1Wa3VNMUMzeWh5N283biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWduaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771876074),
('RVIDboY6gW7NbbdNrDd8WZJZVRq0MyfemqhKUXn9', NULL, '185.191.171.16', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEFBMFNneVJ0MHZqb1pMT29COHVYSDJZM1M0VDJ4WlJPVzBTakFGcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771761594),
('UbOhnOgwMMHRVt8Lm8rjpalovDP4417nk4ew21H8', NULL, '93.158.90.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXhKTUIxd3pncTRQdDRjZmhiT3UwT1laeWNIYmN1VUx0U09vNnA3TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc2OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81MC9iZXN0c2VsYXItb3phb296YXJkLTI1LyVFMCVBNiVBQyVFMCVBNyU4NyVFMCVBNiVCOCVFMCVBNyU4RCVFMCVBNiU5RiVFMCVBNiVCOCVFMCVBNyU4NyVFMCVBNiVCMiVFMCVBNiVCRSVFMCVBNiVCMCUyMCVFMCVBNiU4NSVFMCVBNyU4RCVFMCVBNiVBRiVFMCVBNiVCRSVFMCVBNiU5MyVFMCVBNiVBRiVFMCVBNiVCQyVFMCVBNiVCRSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSwlMjAlRTAlQTclQTglRTAlQTclQUIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771861144),
('uBrjfva9mCGhnUqZBONox31ZXrf7AQBMtmJHRTBI', NULL, '92.222.108.112', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzF3cVN5dTVZM3BKeXpwRFg0RDVMSnJ6c21lanBDSkd1bjVYTVZoYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771788156),
('v24iBFAk14LAKMq0u576SVaImhVT1Ik8fqRWZCy6', NULL, '107.21.11.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4093.0 Safari/537.36 Edg/83.0.470.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzNzUlA2T2dydTUwSERxcjlyS0FNZ2pnWUdnb2ZyWG5paktxYU40TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cuYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771825729),
('vCZGb7QUUVjwDYeHREfg8EmAdYqt4SdYfnudjraY', NULL, '185.191.171.15', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWG1zSXk4UGVOSzhBeGFvWG1KNG5BajBwcTF1T05TRFJsNzhCM2xJRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771739751),
('vdc33yFObC86isSUBZhioq2b0DHOVA9pKQwuUdqT', NULL, '85.208.96.197', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUE4TFQyRXI4TjRta3ZsSzNDMnVQTWRlcFZEWmNXVG1xU1NRM1BCMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771753062),
('Vkd724klFlyyek1MI5ZDY6EuvsvJpmuMVQbPKx5c', NULL, '185.191.171.7', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmg4TDE3a2NIMVk2STRSWHZySVJIblFUNkVIZWh3eWtqODJKaE9IaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzI0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771724782),
('wBLXrEqPUCKjfBavJZUohQduT1iUsGeY4lrRq8lQ', NULL, '176.31.139.21', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2RNV1R6NVZVOVpoUEJ6OWRzeWhMOVFXa3pCYmU5b2ZPOGxmUTg3QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAxOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMTcva2FydHVuLWdscGVyLWJ5ZXItc2tsLWJpLyVFMCVBNiVCMiVFMCVBNyU4NyVFMCVBNiU5NiVFMCVBNiU5NSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771901339),
('Wbynn7VwtOfNUGtHp1xzYsyEbSujIVnuCLoxjn5d', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUxWR3RQcng0c2FDUjFFZGxTSEJQNjhzRkhjZmRUR3B3dElPUEphSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMzYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771744216),
('WqDwGfl3BbaEi6B48HVtXqN6PpRIjP2qh3kYveUs', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDQ5Vjh1aGR3b0V6cTB5R0JKb0dJdnlPUHpMbkg4bFlYYUhwQXRIOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81NS9pc2xhbWktYmkvJUUwJUE2JTg3JUUwJUE2JUI4JUUwJUE2JUIyJUUwJUE2JUJFJUUwJUE2JUFFJUUwJUE2JUJGJTIwJUUwJUE2JUFDJUUwJUE2JTg3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771749538),
('wTzPRoLEXLc0L3PfHq6XchoYzu0pvslUU6B8QCgm', NULL, '94.23.188.222', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVZpaDJwYXZSb0xLVTNWRm5hTDZZMFZ3YjZCRVBnRm1hZWo5eGZLWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTgxOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNTYvaW5ncmVqaS12YXNoYXItYmkvJUUwJUE2JTg3JUUwJUE2JTgyJUUwJUE2JUIwJUUwJUE3JTg3JUUwJUE2JTlDJUUwJUE2JUJGJTIwJUUwJUE2JUFEJUUwJUE2JUJFJUUwJUE2JUI3JUUwJUE2JUJFJUUwJUE2JUIwJTIwJUUwJUE2JUFDJUUwJUE2JTg3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771879239),
('wYDZ6yH5TKd8Tgan8JwkoaBiswDgx87jYbwI5OPp', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlBKR25lMVFuazhRdXRQTm0wVnlGeHB4WGpRQzM5bTdFZXlYVWFHbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjMzOiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS80OS9wcmF0aXNodGhhbmlrLW9yZGFyLyVFMCVBNiVBQSVFMCVBNyU4RCVFMCVBNiVCMCVFMCVBNiVCRSVFMCVBNiVBNCVFMCVBNiVCRiVFMCVBNiVCNyVFMCVBNyU4RCVFMCVBNiVBMCVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNiVCRiVFMCVBNiU5NSUyMCVFMCVBNiU4NSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSVFMCVBNiVCRSVFMCVBNiVCMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771773493),
('Xi9J35nwdXYUL9WdUKfjnRkFf6PMj73U65dcbvFy', NULL, '93.158.90.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU21qR0tUc004c3dlTTJCTFRrRzlaNlo3bFBaT2tqWmxoMWd2WkJ1UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771861144),
('xoEiK533UTn7acfzSdyCyz9aHahPXhPt6EzLGG2r', NULL, '85.208.96.199', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkhhTDdoQldxbXV5MnVLOVVRQXFOTEF3TXV1THBsREppUGhWaENDQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzIzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771768177),
('XSqeYX7fzneO35dpUBOm8WyXaVAmVHVPdmsQJAng', NULL, '93.158.98.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGxxaVlBdGpZNVkxRWt6QWE5TXdBNGQzbnZVTDRXZWN0SWJ6RmhKWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc2OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81MC9iZXN0c2VsYXItb3phb296YXJkLTI1LyVFMCVBNiVBQyVFMCVBNyU4NyVFMCVBNiVCOCVFMCVBNyU4RCVFMCVBNiU5RiVFMCVBNiVCOCVFMCVBNyU4NyVFMCVBNiVCMiVFMCVBNiVCRSVFMCVBNiVCMCUyMCVFMCVBNiU4NSVFMCVBNyU4RCVFMCVBNiVBRiVFMCVBNiVCRSVFMCVBNiU5MyVFMCVBNiVBRiVFMCVBNiVCQyVFMCVBNiVCRSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSwlMjAlRTAlQTclQTglRTAlQTclQUIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771737882),
('YnCyr0tkvjQ3B1VktkI8XcMz5dBQTRY3kqTRlvhK', NULL, '137.184.207.51', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWRiMFl2cThGQ052dExFMnNYTVBDM2E3NjIwUm9kdzVURVVwQ3NDVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmJvb2tzYW5kYm9va3NiZC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771741394),
('ZdjQFpjxk4stWQj2d6H50aIX6TOwJR7LyZlzaNga', NULL, '85.208.96.205', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVB6NGlncjUwWHRtSHByNkxXYUhQMGIzYWdRdDEzaEhHSTFYV0dCQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWduaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771732334);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `primary_phone` varchar(255) DEFAULT NULL,
  `secondary_phone` varchar(255) DEFAULT NULL,
  `primary_email` varchar(255) DEFAULT NULL,
  `secondary_email` varchar(255) DEFAULT NULL,
  `office_time` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `tax` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `discount_type` varchar(255) DEFAULT 'percent' COMMENT '''percent'',''amount''',
  `description` text DEFAULT NULL,
  `banner_one` varchar(255) DEFAULT NULL,
  `banner_one_link` varchar(255) DEFAULT NULL,
  `banner_one_status` tinyint(1) NOT NULL DEFAULT 1,
  `banner_two` varchar(255) DEFAULT NULL,
  `banner_two_link` varchar(255) DEFAULT NULL,
  `banner_two_status` tinyint(1) NOT NULL DEFAULT 1,
  `page_heading_bg` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` text DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `facebook_page` varchar(255) DEFAULT NULL,
  `facebook_group` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `sms_api_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `sms_api_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `sms_api_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `bkash_status` tinyint(1) NOT NULL DEFAULT 1,
  `nagad_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_name`, `title`, `primary_phone`, `secondary_phone`, `primary_email`, `secondary_email`, `office_time`, `address`, `tax`, `discount`, `discount_type`, `description`, `banner_one`, `banner_one_link`, `banner_one_status`, `banner_two`, `banner_two_link`, `banner_two_status`, `page_heading_bg`, `meta_title`, `meta_keyword`, `meta_description`, `meta_image`, `google_map`, `favicon`, `logo`, `footer_logo`, `placeholder`, `facebook_page`, `facebook_group`, `youtube`, `twitter`, `linkedin`, `google`, `whatsapp`, `instagram`, `pinterest`, `sms_api_url`, `sms_api_key`, `sms_api_id`, `bkash_status`, `nagad_status`, `created_at`, `updated_at`) VALUES
(1, 'UAC', 'UAC', '01894674181', '01712162412', 'info@uac-bd.com', 'info@uac-bd.com', NULL, 'Arambagh, Mothijheel', 15, 10, 'percent', 'UAC', 'storage/settings/2026-02-02-GF8iNzEQw10DQX3hGgXKvIxe4fI7GR7kjt8TCcXZ.webp', NULL, 1, NULL, NULL, 1, 'storage/settings/2026-02-02-6btudjpIhD9wkXsltv1kfnMekRN4YTuKpP1eUaQT.webp', 'Arambagh, Mothijheel', 'UAC', 'UAC', 'storage/settings/2026-04-21-irNBDQZQL7XZZ7YC8DMKXlSOQiL73ZnHdMj32bsX.webp', NULL, 'storage/settings/2026-06-01-RIFg5YQ5mBI3Pnvqi9jAhOAnjWwWIqzjXTJ7EoDc.webp', 'storage/settings/2026-06-01-hhWfaS34mGA7oBbioUmoy92BWpZNqQfSq8oFU5eG.webp', NULL, 'storage/settings/2026-02-02-JYguxUfcqzekqfG4Eh7ZmqP2bzGXy1Iuv5UxSuLC.webp', 'https://www.facebook.com/', NULL, 'https://www.youtube.com/', 'https://www.twitter.com/', NULL, NULL, 'https://www.whatsapp.com/', 'https://www.Instagram.com/', 'https://www.pinterest.com/', NULL, NULL, NULL, 1, 1, '2026-01-19 05:10:51', '2026-06-19 09:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `mobile_image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `mobile_image`, `link`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'storage/slider/2026-05-07-yMJy07MBxfCNSAq5dNbHD9RUYKNiGek98wiXgSyV.webp', 'storage/slider/2026-05-07-q7biajUmS5ILzmLAu8S6KuYARIYT0H4daHgoNHOD.webp', 'https://booksandbooksbd.com/category/1/amar-itihas/%E0%A6%AC%E0%A6%87', 1, 1, 1, NULL, NULL, '2026-01-20 00:28:37', '2026-05-07 04:04:41'),
(2, 'storage/slider/2026-05-07-SpJMJ3bCsAFZ7e829GOyLjRlyBG1r2CKu2jhXPxG.webp', 'storage/slider/2026-05-07-ul6UF4YSe4SQKauqSW0DsTe2DRm0wJU9W9Jl2UFf.webp', 'https://booksandbooksbd.com/signle/sub/category/161', 1, 1, 1, NULL, NULL, '2026-01-20 00:39:06', '2026-05-07 04:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_movements`
--

CREATE TABLE `stock_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `type` enum('purchase_receipt','sales','transfer_out','transfer_in','adjustment') NOT NULL,
  `reference_type` varchar(255) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `code`, `type`, `name`, `address`, `remarks`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Product Stock,Damage Stock', 'Book Store1', NULL, NULL, 1, 1, 1, NULL, NULL, '2025-07-22 03:19:10', '2026-02-26 01:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `territories`
--

CREATE TABLE `territories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `incharge` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `territories`
--

INSERT INTO `territories` (`id`, `region_id`, `area_id`, `code`, `name`, `incharge`, `phone`, `email`, `address`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 9, 14, NULL, 'Territory 1', NULL, NULL, NULL, NULL, 1, 1, 10, NULL, NULL, '2025-07-22 03:18:54', '2025-10-26 00:19:55'),
(2, 5, 15, NULL, 'Territory-1', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-26 00:31:40', '2025-10-26 00:32:46'),
(3, 7, 18, NULL, 'Area-1', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-10-26 01:14:11', '2025-10-26 01:13:55', '2025-10-26 01:14:11'),
(4, 7, 16, NULL, 'Territory-1', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 01:16:06', '2025-10-26 01:16:06'),
(5, 6, 45, NULL, 'পঞ্চগড়', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-31 22:43:40', '2025-10-31 22:43:40'),
(6, 6, 45, NULL, 'পঞ্চগড়', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-10-31 22:46:12', '2025-10-31 22:43:41', '2025-10-31 22:46:12'),
(7, 6, 8, NULL, 'গাইবান্ধা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-31 22:52:14', '2025-10-31 22:52:14'),
(8, 6, 44, NULL, 'রংপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-31 23:59:02', '2025-10-31 23:59:02'),
(9, 5, 3, NULL, 'বগুড়া', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-31 23:59:48', '2025-10-31 23:59:48'),
(10, 5, 42, NULL, 'রাজশাহী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:00:04', '2025-11-01 00:00:04'),
(11, 5, 41, NULL, 'পাবনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:19:37', '2025-11-01 00:19:37'),
(12, 5, 40, NULL, 'সিরাজগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:20:38', '2025-11-01 00:20:38'),
(13, 8, 39, NULL, 'সুনামগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:21:55', '2025-11-01 00:21:55'),
(14, 8, 38, NULL, 'মৌলভীবাজার', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-11-01 00:24:39', '2025-11-01 00:25:02'),
(15, 8, 37, NULL, 'হবিগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:25:22', '2025-11-01 00:25:22'),
(16, 8, 36, NULL, 'সিলেট', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:25:51', '2025-11-01 00:25:51'),
(17, 7, 35, NULL, 'চাঁদপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:26:10', '2025-11-01 00:26:10'),
(18, 7, 34, NULL, 'ফেনী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:26:45', '2025-11-01 00:26:45'),
(19, 7, 32, NULL, 'কুমিল্লা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:26:59', '2025-11-01 00:26:59'),
(20, 7, 33, NULL, 'চট্টগ্রাম', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:27:40', '2025-11-01 00:27:40'),
(21, 4, 31, NULL, 'ময়মনসিংহ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:27:58', '2025-11-01 00:27:58'),
(22, 4, 30, NULL, 'টাঙ্গাইল', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:28:16', '2025-11-01 00:28:16'),
(23, 4, 29, NULL, 'নেত্রকোনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:28:31', '2025-11-01 00:28:31'),
(24, 4, 28, NULL, 'জামালপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:28:53', '2025-11-01 00:28:53'),
(25, 3, 27, NULL, 'নোয়াপাড়া, খুলনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:32:05', '2025-11-01 00:32:05'),
(26, 3, 26, NULL, 'যশোর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:32:33', '2025-11-01 00:32:33'),
(27, 2, 25, NULL, 'বরগুনা', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 01:03:36', '2025-11-01 00:33:35', '2025-11-01 01:03:36'),
(28, 2, 24, NULL, 'পিরোজপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:34:00', '2025-11-01 00:34:00'),
(29, 1, 22, NULL, 'নরসিংদী মাধবদী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:34:26', '2025-11-01 00:34:26'),
(30, 1, 21, NULL, 'মুন্সীগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-11-01 00:35:27', '2025-11-01 01:20:48'),
(31, 1, 21, NULL, 'মুন্সীগঞ্জ, নারায়ণগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 00:36:07', '2025-11-01 00:35:27', '2025-11-01 00:36:07'),
(32, 1, 20, NULL, 'সাভার', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:35:44', '2025-11-01 00:35:44'),
(33, 5, 13, NULL, 'ঈশ্বরদী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:36:53', '2025-11-01 00:36:53'),
(34, 5, 13, NULL, 'ঈশ্বরদী', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 00:37:54', '2025-11-01 00:36:53', '2025-11-01 00:37:54'),
(35, 5, 12, NULL, 'চাঁপাইনবাবগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:38:33', '2025-11-01 00:38:33'),
(36, 1, 11, NULL, 'নরসিংদী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:41:07', '2025-11-01 00:41:07'),
(37, 6, 10, NULL, 'লালমনিরহাট', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:56:07', '2025-11-01 00:56:07'),
(38, 6, 9, NULL, 'দিনাজপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:56:51', '2025-11-01 00:56:51'),
(39, 3, 7, NULL, 'কুষ্টিয়া', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:57:35', '2025-11-01 00:57:35'),
(40, 4, 6, NULL, 'শেরপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:58:05', '2025-11-01 00:58:05'),
(41, 5, 5, NULL, 'নওগাঁ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:58:47', '2025-11-01 00:58:47'),
(42, 5, 5, NULL, 'নওগাঁ', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 00:59:41', '2025-11-01 00:58:47', '2025-11-01 00:59:41'),
(43, 1, 11, NULL, 'নরসিংদী', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 01:48:34', '2025-11-01 01:01:40', '2025-11-01 01:48:34'),
(44, 1, 1, NULL, 'নীলক্ষেত', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:02:07', '2025-11-01 01:02:07'),
(45, 2, 4, NULL, 'পটুয়াখালী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:03:03', '2025-11-01 01:03:03'),
(46, 2, 25, NULL, 'বরগুনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:03:25', '2025-11-01 01:03:25'),
(47, 1, 23, NULL, 'মাওনা', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-11-01 01:04:16', '2025-11-01 01:18:42'),
(48, 2, 2, NULL, 'ভোলা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:04:56', '2025-11-01 01:04:56'),
(49, 1, 47, NULL, 'মালিবাগ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:08:56', '2025-11-01 01:08:56'),
(50, 2, 48, NULL, 'ঝালকাঠি', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:17:20', '2025-11-01 01:17:20'),
(51, 1, 49, NULL, 'নারায়ণগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:20:33', '2025-11-01 01:20:33'),
(52, 3, 46, NULL, 'খুলনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 02:42:42', '2025-11-02 02:42:42'),
(53, 2, 50, NULL, 'বরিশাল', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 03:06:03', '2025-11-02 03:06:03'),
(54, 1, 51, NULL, 'ঢাকা দক্ষিণ', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-01-24 05:22:03', '2026-01-24 05:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `uoms`
--

CREATE TABLE `uoms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uoms`
--

INSERT INTO `uoms` (`id`, `type`, `name`, `slug`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 'Books and Books', 'books-and-books', 'Books and Books', 1, 1, 1, NULL, NULL, '2026-01-20 04:07:27', '2026-04-08 23:44:19'),
(2, 0, 'মোঃ দেলোয়ার হোসেন', 'mo-deloyar-hosen', NULL, 1, 1, NULL, NULL, NULL, '2026-04-09 01:13:44', '2026-04-09 01:13:44'),
(3, 0, 'লতিফুল ইসলাম শিবলী', 'ltiful-islam-siblee', NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:31:14', '2026-04-12 23:31:14'),
(4, 0, 'শায়লা ইসলাম বিথী', 'sayla-islam-bithee', NULL, 1, 1, NULL, NULL, NULL, '2026-04-12 23:37:56', '2026-04-12 23:37:56'),
(5, 0, 'নূর ফয়সল', 'nuur-fysl', NULL, 1, 1, 1, NULL, NULL, '2026-04-13 00:00:09', '2026-04-13 03:56:13'),
(6, 0, 'আরফাতুন নাবিলা', 'arfatun-nabila', NULL, 1, 1, NULL, NULL, NULL, '2026-04-13 00:07:49', '2026-04-13 00:07:49'),
(7, 0, 'ওয়াহিদ তুষার', 'wahid-tushar-1', NULL, 1, 1, NULL, NULL, NULL, '2026-04-13 00:09:14', '2026-04-13 00:09:14'),
(8, 0, 'ত্বাইরান আবির', 'twairan-abir', NULL, 1, 1, NULL, NULL, NULL, '2026-04-13 00:11:18', '2026-04-13 00:11:18'),
(9, 0, 'তাসনুভা মিম', 'tasnuva-mim', NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 22:49:08', '2026-04-14 22:49:08'),
(10, 0, 'রাহাত শেখ', 'rahat-sekh', NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 22:50:46', '2026-04-14 22:50:46'),
(11, 0, 'নাফিম ইসলাম নূর', 'nafim-islam-nuur', NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 22:51:53', '2026-04-14 22:51:53'),
(12, 0, 'তাজুল ইসলাম', 'tajul-islam', NULL, 1, 1, NULL, NULL, NULL, '2026-04-14 22:59:01', '2026-04-14 22:59:01'),
(13, 0, 'এস এম তুহিন মাহমুদ', 'es-em-tuhin-mahmud', NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 02:19:44', '2026-04-16 02:19:44'),
(14, 0, 'মোঃ সাহাব উদ্দিন', 'mo-sahab-uddin', NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 02:21:53', '2026-04-16 02:21:53'),
(15, 0, 'মোঃ জামাল উদ্দিন', 'mo-jamal-uddin', NULL, 1, 18, NULL, NULL, NULL, '2026-04-16 02:22:27', '2026-04-16 02:22:27'),
(16, 0, 'হাফেজ মোঃ সাইফুল ইসলাম', 'hafej-mo-saiful-islam', NULL, 1, 18, 1, NULL, NULL, '2026-04-16 02:26:36', '2026-04-26 22:48:03'),
(17, 0, 'বাংলার প্রকাশন', 'banglar-prkasn', NULL, 1, 21, NULL, NULL, NULL, '2026-04-21 07:12:38', '2026-04-21 07:12:38'),
(18, 1, 'কবি শামসুর রহমান', 'kbi-samsur-rhman', NULL, 1, 1, 1, NULL, NULL, '2026-04-26 22:51:11', '2026-04-27 03:21:21'),
(19, 1, 'মাওলানা মুহাম্মদ লুৎফুর রহমান', 'maoolana-muhammd-luttfur-rhman', NULL, 1, 23, NULL, NULL, NULL, '2026-04-28 21:01:49', '2026-04-28 21:01:49'),
(20, 1, 'মাওলানা মুহাম্মাদ জালালুদ্দীন', 'maoolana-muhammad-jalaluddeen', NULL, 1, 23, NULL, NULL, NULL, '2026-04-29 00:53:07', '2026-04-29 00:53:07'),
(21, 1, 'শফিক ইকবাল', 'sfik-ikbal', NULL, 1, 23, NULL, NULL, NULL, '2026-04-29 04:12:05', '2026-04-29 04:12:05'),
(22, 1, 'মুফতি মুহাম্মদ ইলিয়াস বিন আলাউদ্দীন', 'mufti-muhammd-ilizas-bin-alauddeen', NULL, 1, 23, NULL, NULL, NULL, '2026-04-30 01:43:31', '2026-04-30 01:43:31'),
(23, 1, 'মঈনুদ্দীন তাওহীদ', 'meenuddeen-taooheed', NULL, 1, 23, NULL, NULL, NULL, '2026-04-30 22:24:38', '2026-04-30 22:24:38'),
(24, 1, 'আবদুর রহমান আযহারী', 'abdur-rhman-azharee', NULL, 1, 23, NULL, NULL, NULL, '2026-05-02 04:44:42', '2026-05-02 04:44:42'),
(25, 1, 'জিয়াউর রহমান মুন্সী', 'jizaur-rhman-munsee', NULL, 1, 23, NULL, NULL, NULL, '2026-05-02 23:53:14', '2026-05-02 23:53:14'),
(26, 0, 'মাওলানা মুহিউদ্দীন খান', 'maoolana-muhiuddeen-khan', NULL, 1, 23, NULL, NULL, NULL, '2026-05-08 03:58:01', '2026-05-08 03:58:01'),
(27, 1, 'মুফতী মুহাম্মদ উবায়দুল্লাহ্', 'muftee-muhammd-ubaydullah', NULL, 1, 23, NULL, NULL, NULL, '2026-05-09 02:31:39', '2026-05-09 02:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role_status` int(11) DEFAULT 0,
  `otp` varchar(6) DEFAULT NULL,
  `otp_expire` datetime DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `admission_date` varchar(255) DEFAULT NULL,
  `blood_group` varchar(20) DEFAULT NULL,
  `group` varchar(100) DEFAULT NULL,
  `exam_name` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `board` varchar(255) DEFAULT NULL,
  `edu_group` varchar(255) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `gpa_with_4th` decimal(4,2) DEFAULT NULL,
  `gpa_without_4th` decimal(4,2) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_mobile` varchar(30) DEFAULT NULL,
  `date_of_birth` varchar(30) DEFAULT NULL,
  `version` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `email`, `phone`, `address`, `image`, `cover_image`, `status`, `email_verified_at`, `role_status`, `otp`, `otp_expire`, `password`, `remember_token`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`, `mother_name`, `father_name`, `admission_date`, `blood_group`, `group`, `exam_name`, `institution`, `board`, `edu_group`, `year`, `grade`, `gpa_with_4th`, `gpa_without_4th`, `payment_method`, `payment_mobile`, `date_of_birth`, `version`) VALUES
(1, 'Admin', 'admin', 'wali@gmail.com', '01711111111', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, '$2y$12$qIib0uEVViAKdbZ6TruBCOAs1jSpU9mEm23sYk3bHjZn1PDkH2hT.', 'tjwAySiebKdbRdtwrczcY28K1yrqb3xd2DvivsXPvvvitLNzOv94yCZWn3It', NULL, NULL, NULL, NULL, '2026-06-02 09:49:28', '2026-06-02 09:49:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Wasi', '01575020231', 'wasi@gmail.com', '01575020231', 'H#15, R#05, Block-D, Sector-1', 'storage/admin/avatar/2026-06-02-Cp3dYWX4vuW9BpcA9xIinDEkx7uqJlh3xFCiqHws.webp', NULL, 1, NULL, 0, NULL, NULL, '$2y$12$xj6shfVmStnE/MxV39WpJO7gxXIl/L0ZTrzmYJ5voUfaNjCFIKwhG', NULL, NULL, NULL, NULL, NULL, '2026-06-02 09:45:34', '2026-06-02 09:45:34', 'Wali', 'Papia', '0000-00-00', 'A+', 'Business Studies', 'SSC', 'asds', 'das', NULL, 'asdas', 'adsd', 33.00, 33.00, 'Bkash', '01575020231', NULL, 'English'),
(36, 'zahan', '01711374487', 'kutubezahan645@gmail.com', '01711374487', '3, arambag', 'storage/admin/avatar/2026-06-15-MfOjWy6qzXimkYuYnqkGOMFH79wgCBbadffqecym.webp', NULL, 1, NULL, 0, NULL, NULL, '$2y$12$YaFyRQ2XpS6sMxB3nq3IVenLBstDnoyfQeTERpxM18R0k93LPFE9S', NULL, NULL, NULL, NULL, NULL, '2026-06-15 17:08:11', '2026-06-15 17:08:11', 'del', 'abul', '0000-00-00', 'A+', 'Science', 'SSC', 'dfsd', 'DHK', NULL, '2026', NULL, NULL, NULL, 'Bkash', '01924716911', NULL, 'Bangla'),
(37, 'WWW', '01921588765', 'ww@g.com', '01921588765', 'sASa', 'storage/admin/avatar/2026-06-18-5CbKz6ILrF3GkGqvix1WM1jCFRjv9xeIBdWMcPyU.webp', NULL, 1, NULL, 0, NULL, NULL, '$2y$12$E0KV9dQNmUxkwf34uE44zeRv8U1t1Yt27ZmPvwkmhT5EvRDZFVsbi', NULL, NULL, NULL, NULL, NULL, '2026-06-18 05:52:35', '2026-06-18 05:52:35', 'WWW', 'sd', '0000-00-00', NULL, 'N/A', NULL, 'asa', 'saSs', NULL, '333', NULL, NULL, NULL, NULL, NULL, NULL, 'English'),
(40, 'sAS', '01575020235', 'waWli@gmail.com', '01575020235', NULL, 'storage/admin/avatar/2026-06-18-vdF7YlnL7EG7fTgJQW7M1m5RxKflg9UlmCsgtR3M.webp', NULL, 1, NULL, 0, NULL, NULL, '$2y$12$Qk7jD5VT6HUxV2HP2CIGauSSv.hrhmuv8byKSATxlVCGbfCcvryea', NULL, NULL, NULL, NULL, NULL, '2026-06-18 18:34:38', '2026-06-18 18:34:38', 'aSAs', 'As', '0000-00-00', NULL, 'Science', NULL, 'zz', 'Dhaka', NULL, '2026', NULL, NULL, NULL, NULL, NULL, NULL, 'English'),
(41, 'Walid', '01575020280', 'waliullahbiplob786@gmail.com', '01575020280', 'H#15, R#05, Block-D, Sector-1', 'storage/admin/avatar/2026-06-19-DMO1hcnO3Hzx301aYl6yiM0tX7GbHFMWT9ljyaP0.webp', NULL, 1, NULL, 0, NULL, NULL, '$2y$12$.eEdr5j7G1qT3h7lKiUN3uRZd4GoY7uIoUSujErM7CYCAXAYZXIY2', NULL, NULL, NULL, NULL, NULL, '2026-06-19 08:09:46', '2026-06-19 08:09:46', 'sad', 'dasd', '19-06-2026', NULL, 'Science', 'SSC', 'sds', 'Dhaka', NULL, '2026', NULL, NULL, NULL, NULL, NULL, NULL, 'English'),
(42, 'Foysal Ahmed Rifat', '01602240533', 'foysalfarfoysal@gmail.com', '01602240533', 'Faridpur, Boalmari', NULL, NULL, 1, NULL, 0, NULL, NULL, '$2y$12$4pzy0d.d.nvWsl0mKuhvkuvD8Xj8IbWSiWUEE6GCmBHbrMTAgjyHK', NULL, NULL, NULL, NULL, NULL, '2026-06-19 11:01:40', '2026-06-19 11:01:40', 'Asma Khanam', 'Zakir Hossain', '19-06-2026', NULL, 'Humanities', 'School', 'Boalmari George Academy', 'Dhaka', NULL, '2026', NULL, NULL, NULL, NULL, NULL, NULL, 'Bangla'),
(43, 'jjj', '01721134656', NULL, '01721134656', NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, '$2y$12$4XaupxOcKBiyoG44VNh7/uYVXmBkyskp.OcbpWwRcy/3yt7enH6L6', NULL, NULL, NULL, NULL, NULL, '2026-06-19 20:13:25', '2026-06-19 20:13:25', 'WWW', NULL, '19-06-2026', NULL, 'Science', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'English'),
(44, 'xss', '01721134657', NULL, '01721134657', NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, '$2y$12$szkVpYRe/tUOZ/5XdTMPfOiyyWvt2o.Fk5I5AQ3582RzRxLCgg5eG', NULL, NULL, NULL, NULL, NULL, '2026-06-19 20:18:07', '2026-06-19 20:18:07', 'bcv', NULL, '19-06-2026', NULL, 'Science', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'English'),
(45, 'WaliuLLah', '01911588565', 'wwaliullah@g.com', '01951588567', NULL, 'storage/admin/avatar/2026-06-19-USMfZDNS3pdFeD1EF9HqUuGWZjv8HN5ixJc0q6gu.webp', NULL, 1, NULL, 0, NULL, NULL, '$2y$12$jcNBJiIzM7GNQXtWRfKXyeZ1/PwvB3Vq0Zq0Gahkt1Q5sfZ.MZWs.', NULL, NULL, NULL, NULL, NULL, '2026-06-19 20:34:37', '2026-06-19 20:34:37', 'dasd', 'dasd', '19-06-2026', NULL, 'Science', 'School', 'asda', 'sadsa', NULL, '333', NULL, NULL, NULL, NULL, NULL, NULL, 'English'),
(47, 'z', '01921588569', NULL, '01921588569', NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, '$2y$12$yOyEOA6qy7HfAFz./iCb4OsLwSXSuv7r92nXzmAWeC4UogHl6nkAe', NULL, NULL, NULL, NULL, NULL, '2026-06-19 20:42:59', '2026-06-19 20:42:59', NULL, NULL, '19-06-2026', NULL, 'Science', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'English'),
(49, 'AsA', '01921588567', NULL, '01921588567', NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, '$2y$12$LrIY1Npzm//AS93.ziDd3eO0Jm8J5IyuwFTmCkKHVv4.t/9MfeA9i', NULL, NULL, NULL, NULL, NULL, '2026-06-19 20:45:12', '2026-06-19 20:45:12', NULL, NULL, '19-06-2026', NULL, 'Business Studies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `slug`, `code`, `contact_person`, `email`, `phone`, `address`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'বুকস অ্যান্ড বুকস', 'buks-ozand-buks', 'CODE123', 'বুকস অ্যান্ড বুকস', 'books@gmail.com', '01916304877', 'পূর্ব রামপুরা, ঢাকা – ১২১৯', 1, 1, 1, NULL, NULL, '2026-01-20 04:13:33', '2026-04-01 03:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_transactions_account_transaction_auto_id_foreign` (`account_transaction_auto_id`),
  ADD KEY `account_transactions_coa_id_foreign` (`coa_id`),
  ADD KEY `account_transactions_approved_by_foreign` (`approved_by`),
  ADD KEY `account_transactions_created_by_foreign` (`created_by`),
  ADD KEY `account_transactions_updated_by_foreign` (`updated_by`),
  ADD KEY `account_transactions_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `account_transaction_autos`
--
ALTER TABLE `account_transaction_autos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_transaction_autos_coa_id_foreign` (`coa_id`),
  ADD KEY `account_transaction_autos_approved_by_foreign` (`approved_by`),
  ADD KEY `account_transaction_autos_created_by_foreign` (`created_by`),
  ADD KEY `account_transaction_autos_updated_by_foreign` (`updated_by`),
  ADD KEY `account_transaction_autos_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_menus_permission_id_foreign` (`permission_id`),
  ADD KEY `admin_menus_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `admin_menu_actions`
--
ALTER TABLE `admin_menu_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_menu_actions_permission_id_foreign` (`permission_id`),
  ADD KEY `admin_menu_actions_admin_menu_id_foreign` (`admin_menu_id`);

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `areas_code_unique` (`code`),
  ADD KEY `areas_region_id_foreign` (`region_id`),
  ADD KEY `areas_created_by_foreign` (`created_by`),
  ADD KEY `areas_updated_by_foreign` (`updated_by`),
  ADD KEY `areas_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_slug_unique` (`slug`),
  ADD KEY `attributes_created_by_foreign` (`created_by`),
  ADD KEY `attributes_updated_by_foreign` (`updated_by`),
  ADD KEY `attributes_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_values_created_by_foreign` (`created_by`),
  ADD KEY `attribute_values_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_slug_unique` (`slug`),
  ADD KEY `authors_created_by_foreign` (`created_by`),
  ADD KEY `authors_updated_by_foreign` (`updated_by`),
  ADD KEY `authors_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`),
  ADD KEY `brands_created_by_foreign` (`created_by`),
  ADD KEY `brands_updated_by_foreign` (`updated_by`),
  ADD KEY `brands_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_created_by_foreign` (`created_by`),
  ADD KEY `categories_updated_by_foreign` (`updated_by`),
  ADD KEY `categories_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `category_subcategory`
--
ALTER TABLE `category_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_subcategory_parent_id_foreign` (`parent_id`),
  ADD KEY `category_subcategory_category_id_foreign` (`subcategory_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_code_unique` (`code`),
  ADD KEY `clients_coa_id_foreign` (`coa_id`),
  ADD KEY `clients_region_id_foreign` (`region_id`),
  ADD KEY `clients_area_id_foreign` (`area_id`),
  ADD KEY `clients_territory_id_foreign` (`territory_id`),
  ADD KEY `clients_created_by_foreign` (`created_by`),
  ADD KEY `clients_updated_by_foreign` (`updated_by`),
  ADD KEY `clients_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `coas`
--
ALTER TABLE `coas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coas_head_code_unique` (`head_code`),
  ADD KEY `coas_parent_id_foreign` (`parent_id`),
  ADD KEY `coas_created_by_foreign` (`created_by`),
  ADD KEY `coas_updated_by_foreign` (`updated_by`),
  ADD KEY `coas_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `collections_payment_no_unique` (`payment_no`),
  ADD KEY `collections_client_id_foreign` (`client_id`),
  ADD KEY `collections_coa_id_foreign` (`coa_id`),
  ADD KEY `collections_sales_id_foreign` (`sales_id`),
  ADD KEY `collections_sales_return_id_foreign` (`sales_return_id`),
  ADD KEY `collections_created_by_foreign` (`created_by`),
  ADD KEY `collections_updated_by_foreign` (`updated_by`),
  ADD KEY `collections_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `collection_lists`
--
ALTER TABLE `collection_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collection_lists_collection_id_foreign` (`collection_id`),
  ADD KEY `collection_lists_sales_id_foreign` (`sales_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `expenses_transaction_no_unique` (`transaction_no`),
  ADD KEY `expenses_coa_id_foreign` (`coa_id`),
  ADD KEY `expenses_created_by_foreign` (`created_by`),
  ADD KEY `expenses_updated_by_foreign` (`updated_by`),
  ADD KEY `expenses_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `expense_items`
--
ALTER TABLE `expense_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_items_expense_id_foreign` (`expense_id`),
  ADD KEY `expense_items_coa_id_foreign` (`coa_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_sections_category_id_foreign` (`category_id`);

--
-- Indexes for table `home_section_categories`
--
ALTER TABLE `home_section_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_section_categories_home_section_id_foreign` (`home_section_id`),
  ADD KEY `home_section_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `investors`
--
ALTER TABLE `investors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investors_user_id_foreign` (`user_id`),
  ADD KEY `investors_coa_id_foreign` (`coa_id`),
  ADD KEY `investors_profit_head_foreign` (`profit_head`),
  ADD KEY `investors_created_by_foreign` (`created_by`),
  ADD KEY `investors_updated_by_foreign` (`updated_by`),
  ADD KEY `investors_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `invests`
--
ALTER TABLE `invests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invests_invest_no_unique` (`invest_no`),
  ADD KEY `invests_investor_id_foreign` (`investor_id`),
  ADD KEY `invests_product_id_foreign` (`product_id`),
  ADD KEY `invests_coa_id_foreign` (`coa_id`),
  ADD KEY `invests_created_by_foreign` (`created_by`),
  ADD KEY `invests_updated_by_foreign` (`updated_by`),
  ADD KEY `invests_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `invest_sattlements`
--
ALTER TABLE `invest_sattlements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invest_sattlements_sattlement_no_unique` (`sattlement_no`),
  ADD KEY `invest_sattlements_investor_id_foreign` (`investor_id`),
  ADD KEY `invest_sattlements_coa_id_foreign` (`coa_id`),
  ADD KEY `invest_sattlements_created_by_foreign` (`created_by`),
  ADD KEY `invest_sattlements_updated_by_foreign` (`updated_by`),
  ADD KEY `invest_sattlements_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `invest_sattlement_lists`
--
ALTER TABLE `invest_sattlement_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invest_sattlement_lists_invest_sattlement_id_foreign` (`invest_sattlement_id`),
  ADD KEY `invest_sattlement_lists_investor_id_foreign` (`investor_id`),
  ADD KEY `invest_sattlement_lists_invest_id_foreign` (`invest_id`),
  ADD KEY `invest_sattlement_lists_product_id_foreign` (`product_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_created_by_foreign` (`created_by`),
  ADD KEY `menus_updated_by_foreign` (`updated_by`),
  ADD KEY `menus_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_items_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_payment_no_unique` (`payment_no`),
  ADD KEY `payments_investor_id_foreign` (`investor_id`),
  ADD KEY `payments_coa_id_foreign` (`coa_id`),
  ADD KEY `payments_created_by_foreign` (`created_by`),
  ADD KEY `payments_updated_by_foreign` (`updated_by`),
  ADD KEY `payments_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `payment_lists`
--
ALTER TABLE `payment_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_lists_payment_id_foreign` (`payment_id`),
  ADD KEY `payment_lists_distribution_list_id_foreign` (`distribution_list_id`),
  ADD KEY `payment_lists_invest_id_foreign` (`invest_id`),
  ADD KEY `payment_lists_investor_id_foreign` (`investor_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productions_production_no_unique` (`production_no`),
  ADD KEY `productions_store_id_foreign` (`store_id`),
  ADD KEY `productions_created_by_foreign` (`created_by`),
  ADD KEY `productions_updated_by_foreign` (`updated_by`),
  ADD KEY `productions_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `production_lists`
--
ALTER TABLE `production_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `production_lists_production_id_foreign` (`production_id`),
  ADD KEY `production_lists_store_id_foreign` (`store_id`),
  ADD KEY `production_lists_product_id_foreign` (`product_id`),
  ADD KEY `production_lists_product_edition_id_foreign` (`product_edition_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_barcode_unique` (`barcode`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_uom_id_foreign` (`uom_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_publication_id_foreign` (`publication_id`),
  ADD KEY `products_created_by_foreign` (`created_by`),
  ADD KEY `products_updated_by_foreign` (`updated_by`),
  ADD KEY `products_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `product_authors`
--
ALTER TABLE `product_authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_authors_product_id_foreign` (`product_id`),
  ADD KEY `product_authors_author_id_foreign` (`author_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_product_id_foreign` (`product_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_editions`
--
ALTER TABLE `product_editions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_editions_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tags_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variant_values`
--
ALTER TABLE `product_variant_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_variant_values_product_variant_id_attribute_id_unique` (`product_variant_id`,`attribute_id`),
  ADD KEY `product_variant_values_product_id_foreign` (`product_id`),
  ADD KEY `product_variant_values_attribute_id_foreign` (`attribute_id`),
  ADD KEY `product_variant_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `product_vendors`
--
ALTER TABLE `product_vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_vendors_product_id_foreign` (`product_id`),
  ADD KEY `product_vendors_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `profit_distributions`
--
ALTER TABLE `profit_distributions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profit_distributions_serial_no_unique` (`serial_no`),
  ADD KEY `profit_distributions_created_by_foreign` (`created_by`),
  ADD KEY `profit_distributions_updated_by_foreign` (`updated_by`),
  ADD KEY `profit_distributions_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `profit_distribution_lists`
--
ALTER TABLE `profit_distribution_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profit_distribution_lists_profit_distribution_id_foreign` (`profit_distribution_id`),
  ADD KEY `profit_distribution_lists_invest_id_foreign` (`invest_id`),
  ADD KEY `profit_distribution_lists_investor_id_foreign` (`investor_id`),
  ADD KEY `profit_distribution_lists_product_id_foreign` (`product_id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publications_slug_unique` (`slug`),
  ADD KEY `publications_created_by_foreign` (`created_by`),
  ADD KEY `publications_updated_by_foreign` (`updated_by`),
  ADD KEY `publications_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchase_orders_po_number_unique` (`po_number`),
  ADD KEY `purchase_orders_store_id_foreign` (`store_id`),
  ADD KEY `purchase_orders_vendor_id_foreign` (`vendor_id`),
  ADD KEY `purchase_orders_created_by_foreign` (`created_by`),
  ADD KEY `purchase_orders_updated_by_foreign` (`updated_by`),
  ADD KEY `purchase_orders_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_order_items_purchase_order_id_foreign` (`purchase_order_id`),
  ADD KEY `purchase_order_items_product_id_foreign` (`product_id`),
  ADD KEY `purchase_order_items_product_variant_id_foreign` (`product_variant_id`),
  ADD KEY `purchase_order_items_created_by_foreign` (`created_by`),
  ADD KEY `purchase_order_items_updated_by_foreign` (`updated_by`),
  ADD KEY `purchase_order_items_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `purchase_receipts`
--
ALTER TABLE `purchase_receipts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchase_receipts_receipt_number_unique` (`receipt_number`),
  ADD KEY `purchase_receipts_purchase_order_id_foreign` (`purchase_order_id`),
  ADD KEY `purchase_receipts_store_id_foreign` (`store_id`),
  ADD KEY `purchase_receipts_received_by_foreign` (`received_by`);

--
-- Indexes for table `purchase_receipt_items`
--
ALTER TABLE `purchase_receipt_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_receipt_items_purchase_receipt_id_foreign` (`purchase_receipt_id`),
  ADD KEY `purchase_receipt_items_product_id_foreign` (`product_id`),
  ADD KEY `purchase_receipt_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regions_code_unique` (`code`),
  ADD KEY `regions_created_by_foreign` (`created_by`),
  ADD KEY `regions_updated_by_foreign` (`updated_by`),
  ADD KEY `regions_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reviews_user_id_product_id_unique` (`user_id`,`product_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_invoice_unique` (`invoice`),
  ADD KEY `sales_client_id_foreign` (`client_id`),
  ADD KEY `sales_store_id_foreign` (`store_id`),
  ADD KEY `sales_sales_officer_id_foreign` (`sales_officer_id`),
  ADD KEY `sales_coa_id_foreign` (`coa_id`),
  ADD KEY `sales_created_by_foreign` (`created_by`),
  ADD KEY `sales_updated_by_foreign` (`updated_by`),
  ADD KEY `sales_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `sales_lists`
--
ALTER TABLE `sales_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_lists_sales_id_foreign` (`sales_id`),
  ADD KEY `sales_lists_client_id_foreign` (`client_id`),
  ADD KEY `sales_lists_store_id_foreign` (`store_id`),
  ADD KEY `sales_lists_product_id_foreign` (`product_id`),
  ADD KEY `sales_lists_product_edition_id_foreign` (`product_edition_id`);

--
-- Indexes for table `sales_officers`
--
ALTER TABLE `sales_officers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_officers_code_unique` (`code`),
  ADD KEY `sales_officers_created_by_foreign` (`created_by`),
  ADD KEY `sales_officers_updated_by_foreign` (`updated_by`),
  ADD KEY `sales_officers_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `sales_returns`
--
ALTER TABLE `sales_returns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_returns_return_no_unique` (`return_no`),
  ADD KEY `sales_returns_client_id_foreign` (`client_id`),
  ADD KEY `sales_returns_store_id_foreign` (`store_id`),
  ADD KEY `sales_returns_created_by_foreign` (`created_by`),
  ADD KEY `sales_returns_updated_by_foreign` (`updated_by`),
  ADD KEY `sales_returns_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `sales_return_lists`
--
ALTER TABLE `sales_return_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_return_lists_sales_return_id_foreign` (`sales_return_id`),
  ADD KEY `sales_return_lists_client_id_foreign` (`client_id`),
  ADD KEY `sales_return_lists_store_id_foreign` (`store_id`),
  ADD KEY `sales_return_lists_sales_id_foreign` (`sales_id`),
  ADD KEY `sales_return_lists_sales_list_id_foreign` (`sales_list_id`),
  ADD KEY `sales_return_lists_product_id_foreign` (`product_id`),
  ADD KEY `sales_return_lists_product_edition_id_foreign` (`product_edition_id`);

--
-- Indexes for table `sales_return_payments`
--
ALTER TABLE `sales_return_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_return_payments_sales_return_id_foreign` (`sales_return_id`),
  ADD KEY `sales_return_payments_sales_id_foreign` (`sales_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_foreign` (`created_by`),
  ADD KEY `sliders_updated_by_foreign` (`updated_by`),
  ADD KEY `sliders_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stocks_store_id_product_variant_id_unique` (`store_id`,`product_variant_id`),
  ADD KEY `stocks_product_id_foreign` (`product_id`),
  ADD KEY `stocks_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_movements_store_id_foreign` (`store_id`),
  ADD KEY `stock_movements_product_id_foreign` (`product_id`),
  ADD KEY `stock_movements_product_variant_id_foreign` (`product_variant_id`),
  ADD KEY `stock_movements_reference_type_reference_id_index` (`reference_type`,`reference_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_code_unique` (`code`),
  ADD KEY `stores_created_by_foreign` (`created_by`),
  ADD KEY `stores_updated_by_foreign` (`updated_by`),
  ADD KEY `stores_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `territories`
--
ALTER TABLE `territories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `territories_code_unique` (`code`),
  ADD KEY `territories_region_id_foreign` (`region_id`),
  ADD KEY `territories_area_id_foreign` (`area_id`),
  ADD KEY `territories_created_by_foreign` (`created_by`),
  ADD KEY `territories_updated_by_foreign` (`updated_by`),
  ADD KEY `territories_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `uoms`
--
ALTER TABLE `uoms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uoms_slug_unique` (`slug`),
  ADD KEY `uoms_created_by_foreign` (`created_by`),
  ADD KEY `uoms_updated_by_foreign` (`updated_by`),
  ADD KEY `uoms_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_name_unique` (`user_name`),
  ADD KEY `users_created_by_foreign` (`created_by`),
  ADD KEY `users_updated_by_foreign` (`updated_by`),
  ADD KEY `users_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_slug_unique` (`slug`),
  ADD UNIQUE KEY `vendors_code_unique` (`code`),
  ADD KEY `vendors_created_by_foreign` (`created_by`),
  ADD KEY `vendors_updated_by_foreign` (`updated_by`),
  ADD KEY `vendors_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlists_user_id_product_id_unique` (`user_id`,`product_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_transactions`
--
ALTER TABLE `account_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_transaction_autos`
--
ALTER TABLE `account_transaction_autos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `admin_menus`
--
ALTER TABLE `admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `admin_menu_actions`
--
ALTER TABLE `admin_menu_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `category_subcategory`
--
ALTER TABLE `category_subcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `coas`
--
ALTER TABLE `coas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `collection_lists`
--
ALTER TABLE `collection_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_items`
--
ALTER TABLE `expense_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_section_categories`
--
ALTER TABLE `home_section_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investors`
--
ALTER TABLE `investors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invests`
--
ALTER TABLE `invests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invest_sattlements`
--
ALTER TABLE `invest_sattlements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invest_sattlement_lists`
--
ALTER TABLE `invest_sattlement_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_lists`
--
ALTER TABLE `payment_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `production_lists`
--
ALTER TABLE `production_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT for table `product_authors`
--
ALTER TABLE `product_authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `product_editions`
--
ALTER TABLE `product_editions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_variant_values`
--
ALTER TABLE `product_variant_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_vendors`
--
ALTER TABLE `product_vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `profit_distributions`
--
ALTER TABLE `profit_distributions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profit_distribution_lists`
--
ALTER TABLE `profit_distribution_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_receipts`
--
ALTER TABLE `purchase_receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_receipt_items`
--
ALTER TABLE `purchase_receipt_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_lists`
--
ALTER TABLE `sales_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_officers`
--
ALTER TABLE `sales_officers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales_returns`
--
ALTER TABLE `sales_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_return_lists`
--
ALTER TABLE `sales_return_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sales_return_payments`
--
ALTER TABLE `sales_return_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_movements`
--
ALTER TABLE `stock_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `territories`
--
ALTER TABLE `territories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `uoms`
--
ALTER TABLE `uoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD CONSTRAINT `account_transactions_account_transaction_auto_id_foreign` FOREIGN KEY (`account_transaction_auto_id`) REFERENCES `account_transaction_autos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_transactions_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `account_transactions_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `account_transactions_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `account_transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `account_transaction_autos`
--
ALTER TABLE `account_transaction_autos`
  ADD CONSTRAINT `account_transaction_autos_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `account_transaction_autos_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_transaction_autos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `account_transaction_autos_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `account_transaction_autos_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD CONSTRAINT `admin_menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_menus_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_menu_actions`
--
ALTER TABLE `admin_menu_actions`
  ADD CONSTRAINT `admin_menu_actions_admin_menu_id_foreign` FOREIGN KEY (`admin_menu_id`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_menu_actions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
