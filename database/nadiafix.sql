-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2017 at 05:08 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edu6baru`
--
CREATE DATABASE IF NOT EXISTS `edu6baru` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `edu6baru`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Student', '', 1487929837),
('Student', '2', 1487226231),
('Student', '3', 1487324338),
('Student', '4', 1487325458),
('Student', '5', 1487325725),
('Student', '6', 1487554540),
('Student', '7', 1487564600),
('Student', '8', 1487574132),
('Student', '9', 1487752663),
('SuperAdmin', '1', 1487213837);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, '/*', NULL, NULL, 1432554657, 1432554657),
('/auth-assignment/*', 2, '/auth-assignment/*', NULL, NULL, 1432554652, 1432554652),
('/auth-assignment/create', 2, '/auth-assignment/create', NULL, NULL, 1432554652, 1432554652),
('/auth-assignment/delete', 2, '/auth-assignment/delete', NULL, NULL, 1432554652, 1432554652),
('/auth-assignment/index', 2, '/auth-assignment/index', NULL, NULL, 1432554652, 1432554652),
('/auth-assignment/update', 2, '/auth-assignment/update', NULL, NULL, 1432554652, 1432554652),
('/auth-assignment/view', 2, '/auth-assignment/view', NULL, NULL, 1432554652, 1432554652),
('/city/*', 2, '/city/*', NULL, NULL, 1432554652, 1432554652),
('/city/create', 2, '/city/create', NULL, NULL, 1432555253, 1432555253),
('/city/delete', 2, '/city/delete', NULL, NULL, 1432554652, 1432554652),
('/city/index', 2, '/city/index', NULL, NULL, 1432554652, 1432554652),
('/city/update', 2, '/city/update', NULL, NULL, 1432554652, 1432554652),
('/city/view', 2, '/city/view', NULL, NULL, 1432554652, 1432554652),
('/country/*', 2, '/country/*', NULL, NULL, 1432554653, 1432554653),
('/country/create', 2, '/country/create', NULL, NULL, 1432554652, 1432554652),
('/country/delete', 2, '/country/delete', NULL, NULL, 1432554653, 1432554653),
('/country/index', 2, '/country/index', NULL, NULL, 1432554652, 1432554652),
('/country/update', 2, '/country/update', NULL, NULL, 1432554652, 1432554652),
('/country/view', 2, '/country/view', NULL, NULL, 1432554652, 1432554652),
('/course/*', 2, '/course/*', NULL, NULL, 1432554639, 1432554639),
('/course/batches/*', 2, '/course/batches/*', NULL, NULL, 1432554638, 1432554638),
('/course/batches/create', 2, '/course/batches/create', NULL, NULL, 1432554638, 1432554638),
('/course/batches/delete', 2, '/course/batches/delete', NULL, NULL, 1432554638, 1432554638),
('/course/batches/index', 2, '/course/batches/index', NULL, NULL, 1432554638, 1432554638),
('/course/batches/toggle', 2, '/course/batches/toggle', NULL, NULL, 1432554638, 1432554638),
('/course/batches/update', 2, '/course/batches/update', NULL, NULL, 1432554638, 1432554638),
('/course/batches/view', 2, '/course/batches/view', NULL, NULL, 1432554638, 1432554638),
('/course/courses/*', 2, '/course/courses/*', NULL, NULL, 1432554638, 1432554638),
('/course/courses/create', 2, '/course/courses/create', NULL, NULL, 1432554638, 1432554638),
('/course/courses/delete', 2, '/course/courses/delete', NULL, NULL, 1432554638, 1432554638),
('/course/courses/index', 2, '/course/courses/index', NULL, NULL, 1432554638, 1432554638),
('/course/courses/toggle', 2, '/course/courses/toggle', NULL, NULL, 1432554638, 1432554638),
('/course/courses/update', 2, '/course/courses/update', NULL, NULL, 1432554638, 1432554638),
('/course/courses/view', 2, '/course/courses/view', NULL, NULL, 1432554638, 1432554638),
('/course/default/*', 2, '/course/default/*', NULL, NULL, 1432554639, 1432554639),
('/course/default/index', 2, '/course/default/index', NULL, NULL, 1432554638, 1432554638),
('/course/section/*', 2, '/course/section/*', NULL, NULL, 1432554639, 1432554639),
('/course/section/create', 2, '/course/section/create', NULL, NULL, 1432554639, 1432554639),
('/course/section/delete', 2, '/course/section/delete', NULL, NULL, 1432554639, 1432554639),
('/course/section/index', 2, '/course/section/index', NULL, NULL, 1432554639, 1432554639),
('/course/section/toggle', 2, '/course/section/toggle', NULL, NULL, 1432554639, 1432554639),
('/course/section/update', 2, '/course/section/update', NULL, NULL, 1432554639, 1432554639),
('/course/section/view', 2, '/course/section/view', NULL, NULL, 1432554639, 1432554639),
('/dashboard/*', 2, '/dashboard/*', NULL, NULL, 1432554649, 1432554649),
('/dashboard/default/*', 2, '/dashboard/default/*', NULL, NULL, 1432554647, 1432554647),
('/dashboard/default/index', 2, '/dashboard/default/index', NULL, NULL, 1432554647, 1432554647),
('/dashboard/events/*', 2, '/dashboard/events/*', NULL, NULL, 1432554648, 1432554648),
('/dashboard/events/add-event', 2, '/dashboard/events/add-event', NULL, NULL, 1432554647, 1432554647),
('/dashboard/events/event-delete', 2, '/dashboard/events/event-delete', NULL, NULL, 1432554648, 1432554648),
('/dashboard/events/index', 2, '/dashboard/events/index', NULL, NULL, 1432554647, 1432554647),
('/dashboard/events/update-event', 2, '/dashboard/events/update-event', NULL, NULL, 1432554648, 1432554648),
('/dashboard/events/view', 2, '/dashboard/events/view', NULL, NULL, 1432554647, 1432554647),
('/dashboard/events/view-events', 2, '/dashboard/events/view-events', NULL, NULL, 1432554647, 1432554647),
('/dashboard/msg-of-day/*', 2, '/dashboard/msg-of-day/*', NULL, NULL, 1432554648, 1432554648),
('/dashboard/msg-of-day/create', 2, '/dashboard/msg-of-day/create', NULL, NULL, 1432554648, 1432554648),
('/dashboard/msg-of-day/delete', 2, '/dashboard/msg-of-day/delete', NULL, NULL, 1432554648, 1432554648),
('/dashboard/msg-of-day/index', 2, '/dashboard/msg-of-day/index', NULL, NULL, 1432554648, 1432554648),
('/dashboard/msg-of-day/toggle', 2, '/dashboard/msg-of-day/toggle', NULL, NULL, 1432554648, 1432554648),
('/dashboard/msg-of-day/update', 2, '/dashboard/msg-of-day/update', NULL, NULL, 1432554648, 1432554648),
('/dashboard/msg-of-day/view', 2, '/dashboard/msg-of-day/view', NULL, NULL, 1432554648, 1432554648),
('/dashboard/notice/*', 2, '/dashboard/notice/*', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/create', 2, '/dashboard/notice/create', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/delete', 2, '/dashboard/notice/delete', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/index', 2, '/dashboard/notice/index', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/notice-file', 2, '/dashboard/notice/notice-file', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/toggle', 2, '/dashboard/notice/toggle', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/update', 2, '/dashboard/notice/update', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/view', 2, '/dashboard/notice/view', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/view-popup', 2, '/dashboard/notice/view-popup', NULL, NULL, 1432554649, 1432554649),
('/debug/*', 2, '/debug/*', NULL, NULL, 1432554651, 1432554651),
('/debug/default/*', 2, '/debug/default/*', NULL, NULL, 1432554651, 1432554651),
('/debug/default/download-mail', 2, '/debug/default/download-mail', NULL, NULL, 1432554651, 1432554651),
('/debug/default/index', 2, '/debug/default/index', NULL, NULL, 1432554651, 1432554651),
('/debug/default/toolbar', 2, '/debug/default/toolbar', NULL, NULL, 1432554651, 1432554651),
('/debug/default/view', 2, '/debug/default/view', NULL, NULL, 1432554651, 1432554651),
('/default/*', 2, '/default/*', NULL, NULL, 1432554653, 1432554653),
('/default/index', 2, '/default/index', NULL, NULL, 1432554653, 1432554653),
('/dependent/*', 2, '/dependent/*', NULL, NULL, 1432554653, 1432554653),
('/dependent/getcity', 2, '/dependent/getcity', NULL, NULL, 1432554653, 1432554653),
('/dependent/getorgcity', 2, '/dependent/getorgcity', NULL, NULL, 1432554653, 1432554653),
('/dependent/getorgstate', 2, '/dependent/getorgstate', NULL, NULL, 1432554653, 1432554653),
('/dependent/getstate', 2, '/dependent/getstate', NULL, NULL, 1432554653, 1432554653),
('/dependent/index', 2, '/dependent/index', NULL, NULL, 1432554653, 1432554653),
('/dependent/studbatch', 2, '/dependent/studbatch', NULL, NULL, 1432554653, 1432554653),
('/dependent/studsection', 2, '/dependent/studsection', NULL, NULL, 1432554653, 1432554653),
('/document-category/*', 2, '/document-category/*', NULL, NULL, 1432554653, 1432554653),
('/document-category/create', 2, '/document-category/create', NULL, NULL, 1432554653, 1432554653),
('/document-category/delete', 2, '/document-category/delete', NULL, NULL, 1432554653, 1432554653),
('/document-category/index', 2, '/document-category/index', NULL, NULL, 1432554653, 1432554653),
('/document-category/update', 2, '/document-category/update', NULL, NULL, 1432554653, 1432554653),
('/document-category/view', 2, '/document-category/view', NULL, NULL, 1432554653, 1432554653),
('/employee/*', 2, '/employee/*', NULL, NULL, 1432554645, 1432554645),
('/employee/default/*', 2, '/employee/default/*', NULL, NULL, 1432554642, 1432554642),
('/employee/default/index', 2, '/employee/default/index', NULL, NULL, 1432554642, 1432554642),
('/employee/dependent/*', 2, '/employee/dependent/*', NULL, NULL, 1432554642, 1432554642),
('/employee/dependent/emp-c-city', 2, '/employee/dependent/emp-c-city', NULL, NULL, 1432554642, 1432554642),
('/employee/dependent/emp-c-state', 2, '/employee/dependent/emp-c-state', NULL, NULL, 1432554642, 1432554642),
('/employee/dependent/emp-p-city', 2, '/employee/dependent/emp-p-city', NULL, NULL, 1432554642, 1432554642),
('/employee/dependent/emp-p-state', 2, '/employee/dependent/emp-p-state', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-address/*', 2, '/employee/emp-address/*', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-address/create', 2, '/employee/emp-address/create', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-address/delete', 2, '/employee/emp-address/delete', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-address/index', 2, '/employee/emp-address/index', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-address/update', 2, '/employee/emp-address/update', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-address/view', 2, '/employee/emp-address/view', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-category/*', 2, '/employee/emp-category/*', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-category/create', 2, '/employee/emp-category/create', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-category/delete', 2, '/employee/emp-category/delete', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-category/index', 2, '/employee/emp-category/index', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-category/update', 2, '/employee/emp-category/update', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-category/view', 2, '/employee/emp-category/view', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-department/*', 2, '/employee/emp-department/*', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-department/create', 2, '/employee/emp-department/create', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-department/delete', 2, '/employee/emp-department/delete', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-department/index', 2, '/employee/emp-department/index', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-department/update', 2, '/employee/emp-department/update', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-department/view', 2, '/employee/emp-department/view', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-designation/*', 2, '/employee/emp-designation/*', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-designation/create', 2, '/employee/emp-designation/create', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-designation/delete', 2, '/employee/emp-designation/delete', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-designation/index', 2, '/employee/emp-designation/index', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-designation/update', 2, '/employee/emp-designation/update', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-designation/view', 2, '/employee/emp-designation/view', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-docs/*', 2, '/employee/emp-docs/*', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-docs/create', 2, '/employee/emp-docs/create', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-docs/delete', 2, '/employee/emp-docs/delete', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-docs/index', 2, '/employee/emp-docs/index', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-docs/update', 2, '/employee/emp-docs/update', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-docs/view', 2, '/employee/emp-docs/view', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-info/*', 2, '/employee/emp-info/*', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-info/create', 2, '/employee/emp-info/create', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-info/delete', 2, '/employee/emp-info/delete', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-info/index', 2, '/employee/emp-info/index', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-info/update', 2, '/employee/emp-info/update', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-info/view', 2, '/employee/emp-info/view', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/*', 2, '/employee/emp-master/*', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/adddocs', 2, '/employee/emp-master/adddocs', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/change-status', 2, '/employee/emp-master/change-status', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/create', 2, '/employee/emp-master/create', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/delete', 2, '/employee/emp-master/delete', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/delete-doc', 2, '/employee/emp-master/delete-doc', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/docs-download', 2, '/employee/emp-master/docs-download', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/emp-photo', 2, '/employee/emp-master/emp-photo', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/index', 2, '/employee/emp-master/index', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/update', 2, '/employee/emp-master/update', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/view', 2, '/employee/emp-master/view', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-status/*', 2, '/employee/emp-status/*', NULL, NULL, 1432554645, 1432554645),
('/employee/emp-status/create', 2, '/employee/emp-status/create', NULL, NULL, 1432554645, 1432554645),
('/employee/emp-status/delete', 2, '/employee/emp-status/delete', NULL, NULL, 1432554645, 1432554645),
('/employee/emp-status/index', 2, '/employee/emp-status/index', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-status/update', 2, '/employee/emp-status/update', NULL, NULL, 1432554645, 1432554645),
('/employee/emp-status/view', 2, '/employee/emp-status/view', NULL, NULL, 1432554644, 1432554644),
('/employee/export-data/*', 2, '/employee/export-data/*', NULL, NULL, 1432554645, 1432554645),
('/employee/export-data/employee-profile-pdf', 2, '/employee/export-data/employee-profile-pdf', NULL, NULL, 1432554645, 1432554645),
('/export-data/*', 2, '/export-data/*', NULL, NULL, 1432554653, 1432554653),
('/export-data/export-excel', 2, '/export-data/export-excel', NULL, NULL, 1432554653, 1432554653),
('/export-data/export-to-pdf', 2, '/export-data/export-to-pdf', NULL, NULL, 1432554653, 1432554653),
('/fees/*', 2, '/fees/*', NULL, NULL, 1432554646, 1432554646),
('/fees/bank-master/*', 2, '/fees/bank-master/*', NULL, NULL, 1432554645, 1432554645),
('/fees/bank-master/create', 2, '/fees/bank-master/create', NULL, NULL, 1432554645, 1432554645),
('/fees/bank-master/delete', 2, '/fees/bank-master/delete', NULL, NULL, 1432554645, 1432554645),
('/fees/bank-master/index', 2, '/fees/bank-master/index', NULL, NULL, 1432554645, 1432554645),
('/fees/bank-master/update', 2, '/fees/bank-master/update', NULL, NULL, 1432554645, 1432554645),
('/fees/bank-master/view', 2, '/fees/bank-master/view', NULL, NULL, 1432554645, 1432554645),
('/fees/default/*', 2, '/fees/default/*', NULL, NULL, 1432554645, 1432554645),
('/fees/default/index', 2, '/fees/default/index', NULL, NULL, 1432554645, 1432554645),
('/fees/dependent/*', 2, '/fees/dependent/*', NULL, NULL, 1432554645, 1432554645),
('/fees/dependent/get-fees-category', 2, '/fees/dependent/get-fees-category', NULL, NULL, 1432554645, 1432554645),
('/fees/fees-category-details/*', 2, '/fees/fees-category-details/*', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-category-details/create', 2, '/fees/fees-category-details/create', NULL, NULL, 1432554645, 1432554645),
('/fees/fees-category-details/delete', 2, '/fees/fees-category-details/delete', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-category-details/index', 2, '/fees/fees-category-details/index', NULL, NULL, 1432554645, 1432554645),
('/fees/fees-category-details/update', 2, '/fees/fees-category-details/update', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-category-details/view', 2, '/fees/fees-category-details/view', NULL, NULL, 1432554645, 1432554645),
('/fees/fees-collect-category/*', 2, '/fees/fees-collect-category/*', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-collect-category/create', 2, '/fees/fees-collect-category/create', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-collect-category/delete', 2, '/fees/fees-collect-category/delete', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-collect-category/index', 2, '/fees/fees-collect-category/index', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-collect-category/toggle', 2, '/fees/fees-collect-category/toggle', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-collect-category/update', 2, '/fees/fees-collect-category/update', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-collect-category/view', 2, '/fees/fees-collect-category/view', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/*', 2, '/fees/fees-payment-transaction/*', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/collect', 2, '/fees/fees-payment-transaction/collect', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/delete', 2, '/fees/fees-payment-transaction/delete', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/export-fcc-wise-fees-pdf', 2, '/fees/fees-payment-transaction/export-fcc-wise-fees-pdf', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/pay-fees', 2, '/fees/fees-payment-transaction/pay-fees', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/print-common-receipt', 2, '/fees/fees-payment-transaction/print-common-receipt', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/stu-fees-data', 2, '/fees/fees-payment-transaction/stu-fees-data', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/update', 2, '/fees/fees-payment-transaction/update', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/view', 2, '/fees/fees-payment-transaction/view', NULL, NULL, 1432554646, 1432554646),
('/gii/*', 2, '/gii/*', NULL, NULL, 1432554652, 1432554652),
('/gii/default/*', 2, '/gii/default/*', NULL, NULL, 1432554652, 1432554652),
('/gii/default/action', 2, '/gii/default/action', NULL, NULL, 1432554652, 1432554652),
('/gii/default/diff', 2, '/gii/default/diff', NULL, NULL, 1432554652, 1432554652),
('/gii/default/index', 2, '/gii/default/index', NULL, NULL, 1432554651, 1432554651),
('/gii/default/preview', 2, '/gii/default/preview', NULL, NULL, 1432554651, 1432554651),
('/gii/default/view', 2, '/gii/default/view', NULL, NULL, 1432554651, 1432554651),
('/languages/*', 2, '/languages/*', NULL, NULL, 1432554654, 1432554654),
('/languages/create', 2, '/languages/create', NULL, NULL, 1432554654, 1432554654),
('/languages/delete', 2, '/languages/delete', NULL, NULL, 1432554654, 1432554654),
('/languages/index', 2, '/languages/index', NULL, NULL, 1432554653, 1432554653),
('/languages/update', 2, '/languages/update', NULL, NULL, 1432554654, 1432554654),
('/languages/view', 2, '/languages/view', NULL, NULL, 1432554654, 1432554654),
('/login-details/*', 2, '/login-details/*', NULL, NULL, 1432554654, 1432554654),
('/login-details/create', 2, '/login-details/create', NULL, NULL, 1432554654, 1432554654),
('/login-details/delete', 2, '/login-details/delete', NULL, NULL, 1432554654, 1432554654),
('/login-details/index', 2, '/login-details/index', NULL, NULL, 1432554654, 1432554654),
('/login-details/update', 2, '/login-details/update', NULL, NULL, 1432554654, 1432554654),
('/login-details/view', 2, '/login-details/view', NULL, NULL, 1432554654, 1432554654),
('/national-holidays/*', 2, '/national-holidays/*', NULL, NULL, 1432554654, 1432554654),
('/national-holidays/create', 2, '/national-holidays/create', NULL, NULL, 1432554654, 1432554654),
('/national-holidays/delete', 2, '/national-holidays/delete', NULL, NULL, 1432554654, 1432554654),
('/national-holidays/index', 2, '/national-holidays/index', NULL, NULL, 1432554654, 1432554654),
('/national-holidays/update', 2, '/national-holidays/update', NULL, NULL, 1432554654, 1432554654),
('/national-holidays/view', 2, '/national-holidays/view', NULL, NULL, 1432554654, 1432554654),
('/nationality/*', 2, '/nationality/*', NULL, NULL, 1432554655, 1432554655),
('/nationality/create', 2, '/nationality/create', NULL, NULL, 1432554654, 1432554654),
('/nationality/delete', 2, '/nationality/delete', NULL, NULL, 1432554655, 1432554655),
('/nationality/index', 2, '/nationality/index', NULL, NULL, 1432554654, 1432554654),
('/nationality/update', 2, '/nationality/update', NULL, NULL, 1432554655, 1432554655),
('/nationality/view', 2, '/nationality/view', NULL, NULL, 1432554654, 1432554654),
('/organization/*', 2, '/organization/*', NULL, NULL, 1432554655, 1432554655),
('/organization/create', 2, '/organization/create', NULL, NULL, 1432554655, 1432554655),
('/organization/delete', 2, '/organization/delete', NULL, NULL, 1432554655, 1432554655),
('/organization/index', 2, '/organization/index', NULL, NULL, 1432554655, 1432554655),
('/organization/update', 2, '/organization/update', NULL, NULL, 1432554655, 1432554655),
('/organization/view', 2, '/organization/view', NULL, NULL, 1432554655, 1432554655),
('/report/*', 2, '/report/*', NULL, NULL, 1432554647, 1432554647),
('/report/default/*', 2, '/report/default/*', NULL, NULL, 1432554647, 1432554647),
('/report/default/index', 2, '/report/default/index', NULL, NULL, 1432554646, 1432554646),
('/report/dependent/*', 2, '/report/dependent/*', NULL, NULL, 1432554647, 1432554647),
('/report/dependent/index', 2, '/report/dependent/index', NULL, NULL, 1432554647, 1432554647),
('/report/dependent/studbatch', 2, '/report/dependent/studbatch', NULL, NULL, 1432554647, 1432554647),
('/report/dependent/studsection', 2, '/report/dependent/studsection', NULL, NULL, 1432554647, 1432554647),
('/report/empinforeport', 2, '/report/empinforeport', NULL, NULL, 1432554655, 1432554655),
('/report/employee/*', 2, '/report/employee/*', NULL, NULL, 1432554647, 1432554647),
('/report/employee/empinforeport', 2, '/report/employee/empinforeport', NULL, NULL, 1432554647, 1432554647),
('/report/employee/index', 2, '/report/employee/index', NULL, NULL, 1432554647, 1432554647),
('/report/employee/selected-employee-list', 2, '/report/employee/selected-employee-list', NULL, NULL, 1432554647, 1432554647),
('/report/index', 2, '/report/index', NULL, NULL, 1432554655, 1432554655),
('/report/selected-employee-list', 2, '/report/selected-employee-list', NULL, NULL, 1432554655, 1432554655),
('/report/selected-student-list', 2, '/report/selected-student-list', NULL, NULL, 1432554655, 1432554655),
('/report/student/*', 2, '/report/student/*', NULL, NULL, 1432554647, 1432554647),
('/report/student/index', 2, '/report/student/index', NULL, NULL, 1432554647, 1432554647),
('/report/student/selected-student-list', 2, '/report/student/selected-student-list', NULL, NULL, 1432554647, 1432554647),
('/report/student/stuinforeport', 2, '/report/student/stuinforeport', NULL, NULL, 1432554647, 1432554647),
('/report/stuinforeport', 2, '/report/stuinforeport', NULL, NULL, 1432554655, 1432554655),
('/rights/*', 2, '/rights/*', NULL, NULL, 1432554651, 1432554651),
('/rights/assignment/*', 2, '/rights/assignment/*', NULL, NULL, 1432554649, 1432554649),
('/rights/assignment/assign', 2, '/rights/assignment/assign', NULL, NULL, 1432554649, 1432554649),
('/rights/assignment/index', 2, '/rights/assignment/index', NULL, NULL, 1432554649, 1432554649),
('/rights/assignment/role-search', 2, '/rights/assignment/role-search', NULL, NULL, 1432554649, 1432554649),
('/rights/assignment/view', 2, '/rights/assignment/view', NULL, NULL, 1432554649, 1432554649),
('/rights/default/*', 2, '/rights/default/*', NULL, NULL, 1432554649, 1432554649),
('/rights/default/index', 2, '/rights/default/index', NULL, NULL, 1432554649, 1432554649),
('/rights/menu/*', 2, '/rights/menu/*', NULL, NULL, 1432554650, 1432554650),
('/rights/menu/create', 2, '/rights/menu/create', NULL, NULL, 1432554650, 1432554650),
('/rights/menu/delete', 2, '/rights/menu/delete', NULL, NULL, 1432554650, 1432554650),
('/rights/menu/index', 2, '/rights/menu/index', NULL, NULL, 1432554650, 1432554650),
('/rights/menu/update', 2, '/rights/menu/update', NULL, NULL, 1432554650, 1432554650),
('/rights/menu/view', 2, '/rights/menu/view', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/*', 2, '/rights/permission/*', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/assign', 2, '/rights/permission/assign', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/create', 2, '/rights/permission/create', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/delete', 2, '/rights/permission/delete', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/index', 2, '/rights/permission/index', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/role-search', 2, '/rights/permission/role-search', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/update', 2, '/rights/permission/update', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/view', 2, '/rights/permission/view', NULL, NULL, 1432554650, 1432554650),
('/rights/role/*', 2, '/rights/role/*', NULL, NULL, 1432554651, 1432554651),
('/rights/role/assign', 2, '/rights/role/assign', NULL, NULL, 1432554650, 1432554650),
('/rights/role/create', 2, '/rights/role/create', NULL, NULL, 1432554650, 1432554650),
('/rights/role/delete', 2, '/rights/role/delete', NULL, NULL, 1432554650, 1432554650),
('/rights/role/index', 2, '/rights/role/index', NULL, NULL, 1432554650, 1432554650),
('/rights/role/role-search', 2, '/rights/role/role-search', NULL, NULL, 1432554651, 1432554651),
('/rights/role/update', 2, '/rights/role/update', NULL, NULL, 1432554650, 1432554650),
('/rights/role/view', 2, '/rights/role/view', NULL, NULL, 1432554650, 1432554650),
('/rights/route/*', 2, '/rights/route/*', NULL, NULL, 1432554651, 1432554651),
('/rights/route/assign', 2, '/rights/route/assign', NULL, NULL, 1432554651, 1432554651),
('/rights/route/create', 2, '/rights/route/create', NULL, NULL, 1432554651, 1432554651),
('/rights/route/index', 2, '/rights/route/index', NULL, NULL, 1432554651, 1432554651),
('/rights/route/route-search', 2, '/rights/route/route-search', NULL, NULL, 1432554651, 1432554651),
('/rights/rule/*', 2, '/rights/rule/*', NULL, NULL, 1432554651, 1432554651),
('/rights/rule/create', 2, '/rights/rule/create', NULL, NULL, 1432554651, 1432554651),
('/rights/rule/delete', 2, '/rights/rule/delete', NULL, NULL, 1432554651, 1432554651),
('/rights/rule/index', 2, '/rights/rule/index', NULL, NULL, 1432554651, 1432554651),
('/rights/rule/update', 2, '/rights/rule/update', NULL, NULL, 1432554651, 1432554651),
('/rights/rule/view', 2, '/rights/rule/view', NULL, NULL, 1432554651, 1432554651),
('/site/*', 2, '/site/*', NULL, NULL, 1432554656, 1432554656),
('/site/about', 2, '/site/about', NULL, NULL, 1432554656, 1432554656),
('/site/captcha', 2, '/site/captcha', NULL, NULL, 1432554655, 1432554655),
('/site/contact', 2, '/site/contact', NULL, NULL, 1432554655, 1432554655),
('/site/error', 2, '/site/error', NULL, NULL, 1432554655, 1432554655),
('/site/forgotpassword', 2, '/site/forgotpassword', NULL, NULL, 1432554655, 1432554655),
('/site/index', 2, '/site/index', NULL, NULL, 1432554655, 1432554655),
('/site/loadimage', 2, '/site/loadimage', NULL, NULL, 1432554655, 1432554655),
('/site/login', 2, '/site/login', NULL, NULL, 1432554655, 1432554655),
('/site/logout', 2, '/site/logout', NULL, NULL, 1432554655, 1432554655),
('/state/*', 2, '/state/*', NULL, NULL, 1432554656, 1432554656),
('/state/create', 2, '/state/create', NULL, NULL, 1432554656, 1432554656),
('/state/delete', 2, '/state/delete', NULL, NULL, 1432554656, 1432554656),
('/state/index', 2, '/state/index', NULL, NULL, 1432554656, 1432554656),
('/state/update', 2, '/state/update', NULL, NULL, 1432554656, 1432554656),
('/state/view', 2, '/state/view', NULL, NULL, 1432554656, 1432554656),
('/student/*', 2, '/student/*', NULL, NULL, 1432554642, 1432554642),
('/student/default/*', 2, '/student/default/*', NULL, NULL, 1432554639, 1432554639),
('/student/default/index', 2, '/student/default/index', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/*', 2, '/student/dependent/*', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/studbatch', 2, '/student/dependent/studbatch', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/studsection', 2, '/student/dependent/studsection', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/ustud-c-city', 2, '/student/dependent/ustud-c-city', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/ustud-c-state', 2, '/student/dependent/ustud-c-state', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/ustud-p-city', 2, '/student/dependent/ustud-p-city', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/ustud-p-state', 2, '/student/dependent/ustud-p-state', NULL, NULL, 1432554639, 1432554639),
('/student/export-data/*', 2, '/student/export-data/*', NULL, NULL, 1432554639, 1432554639),
('/student/export-data/student-profile-pdf', 2, '/student/export-data/student-profile-pdf', NULL, NULL, 1432554639, 1432554639),
('/student/stu-address/*', 2, '/student/stu-address/*', NULL, NULL, 1432554640, 1432554640),
('/student/stu-address/create', 2, '/student/stu-address/create', NULL, NULL, 1432554639, 1432554639),
('/student/stu-address/delete', 2, '/student/stu-address/delete', NULL, NULL, 1432554640, 1432554640),
('/student/stu-address/index', 2, '/student/stu-address/index', NULL, NULL, 1432554639, 1432554639),
('/student/stu-address/update', 2, '/student/stu-address/update', NULL, NULL, 1432554640, 1432554640),
('/student/stu-address/view', 2, '/student/stu-address/view', NULL, NULL, 1432554639, 1432554639),
('/student/stu-category/*', 2, '/student/stu-category/*', NULL, NULL, 1432554640, 1432554640),
('/student/stu-category/create', 2, '/student/stu-category/create', NULL, NULL, 1432554640, 1432554640),
('/student/stu-category/delete', 2, '/student/stu-category/delete', NULL, NULL, 1432554640, 1432554640),
('/student/stu-category/index', 2, '/student/stu-category/index', NULL, NULL, 1432554640, 1432554640),
('/student/stu-category/update', 2, '/student/stu-category/update', NULL, NULL, 1432554640, 1432554640),
('/student/stu-category/view', 2, '/student/stu-category/view', NULL, NULL, 1432554640, 1432554640),
('/student/stu-docs/*', 2, '/student/stu-docs/*', NULL, NULL, 1432554640, 1432554640),
('/student/stu-docs/create', 2, '/student/stu-docs/create', NULL, NULL, 1432554640, 1432554640),
('/student/stu-docs/delete', 2, '/student/stu-docs/delete', NULL, NULL, 1432554640, 1432554640),
('/student/stu-docs/index', 2, '/student/stu-docs/index', NULL, NULL, 1432554640, 1432554640),
('/student/stu-docs/update', 2, '/student/stu-docs/update', NULL, NULL, 1432554640, 1432554640),
('/student/stu-docs/view', 2, '/student/stu-docs/view', NULL, NULL, 1432554640, 1432554640),
('/student/stu-guardians/*', 2, '/student/stu-guardians/*', NULL, NULL, 1432554641, 1432554641),
('/student/stu-guardians/create', 2, '/student/stu-guardians/create', NULL, NULL, 1432554640, 1432554640),
('/student/stu-guardians/delete', 2, '/student/stu-guardians/delete', NULL, NULL, 1432554640, 1432554640),
('/student/stu-guardians/index', 2, '/student/stu-guardians/index', NULL, NULL, 1432554640, 1432554640),
('/student/stu-guardians/update', 2, '/student/stu-guardians/update', NULL, NULL, 1432554640, 1432554640),
('/student/stu-guardians/view', 2, '/student/stu-guardians/view', NULL, NULL, 1432554640, 1432554640),
('/student/stu-info/*', 2, '/student/stu-info/*', NULL, NULL, 1432554641, 1432554641),
('/student/stu-info/create', 2, '/student/stu-info/create', NULL, NULL, 1432554641, 1432554641),
('/student/stu-info/delete', 2, '/student/stu-info/delete', NULL, NULL, 1432554641, 1432554641),
('/student/stu-info/index', 2, '/student/stu-info/index', NULL, NULL, 1432554641, 1432554641),
('/student/stu-info/update', 2, '/student/stu-info/update', NULL, NULL, 1432554641, 1432554641),
('/student/stu-info/view', 2, '/student/stu-info/view', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/*', 2, '/student/stu-master/*', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/adddocs', 2, '/student/stu-master/adddocs', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/addguardian', 2, '/student/stu-master/addguardian', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/change-status', 2, '/student/stu-master/change-status', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/create', 2, '/student/stu-master/create', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/delete', 2, '/student/stu-master/delete', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/delete-doc', 2, '/student/stu-master/delete-doc', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/docs-download', 2, '/student/stu-master/docs-download', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/emg-change-status', 2, '/student/stu-master/emg-change-status', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/index', 2, '/student/stu-master/index', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/stu-photo', 2, '/student/stu-master/stu-photo', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/update', 2, '/student/stu-master/update', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/view', 2, '/student/stu-master/view', NULL, NULL, 1432554641, 1432554641),
('/student/stu-status/*', 2, '/student/stu-status/*', NULL, NULL, 1432554642, 1432554642),
('/student/stu-status/create', 2, '/student/stu-status/create', NULL, NULL, 1432554642, 1432554642),
('/student/stu-status/delete', 2, '/student/stu-status/delete', NULL, NULL, 1432554642, 1432554642),
('/student/stu-status/index', 2, '/student/stu-status/index', NULL, NULL, 1432554641, 1432554641),
('/student/stu-status/update', 2, '/student/stu-status/update', NULL, NULL, 1432554642, 1432554642),
('/student/stu-status/view', 2, '/student/stu-status/view', NULL, NULL, 1432554642, 1432554642),
('/subject-master/*', 2, '/subject-master/*', NULL, NULL, 1432554656, 1432554656),
('/subject-master/create', 2, '/subject-master/create', NULL, NULL, 1432554656, 1432554656),
('/subject-master/delete', 2, '/subject-master/delete', NULL, NULL, 1432554656, 1432554656),
('/subject-master/index', 2, '/subject-master/index', NULL, NULL, 1432554656, 1432554656),
('/subject-master/update', 2, '/subject-master/update', NULL, NULL, 1432554656, 1432554656),
('/subject-master/view', 2, '/subject-master/view', NULL, NULL, 1432554656, 1432554656),
('/user/*', 2, '/user/*', NULL, NULL, 1432554657, 1432554657),
('/user/change', 2, '/user/change', NULL, NULL, 1432554656, 1432554656),
('/user/create', 2, '/user/create', NULL, NULL, 1432554656, 1432554656),
('/user/delete', 2, '/user/delete', NULL, NULL, 1432554656, 1432554656),
('/user/index', 2, '/user/index', NULL, NULL, 1432554656, 1432554656),
('/user/resetemploginid', 2, '/user/resetemploginid', NULL, NULL, 1432554657, 1432554657),
('/user/resetemppassword', 2, '/user/resetemppassword', NULL, NULL, 1432554657, 1432554657),
('/user/resetstudloginid', 2, '/user/resetstudloginid', NULL, NULL, 1432554657, 1432554657),
('/user/resetstudpassword', 2, '/user/resetstudpassword', NULL, NULL, 1432554657, 1432554657),
('/user/update', 2, '/user/update', NULL, NULL, 1432554656, 1432554656),
('/user/update-emp-password', 2, '/user/update-emp-password', NULL, NULL, 1432554657, 1432554657),
('/user/update-stud-password', 2, '/user/update-stud-password', NULL, NULL, 1432554657, 1432554657),
('/user/updateemploginid', 2, '/user/updateemploginid', NULL, NULL, 1432554657, 1432554657),
('/user/updatestudloginid', 2, '/user/updatestudloginid', NULL, NULL, 1432554657, 1432554657),
('/user/view', 2, '/user/view', NULL, NULL, 1432554656, 1432554656),
('Configuration', 2, 'Access Configuration views', NULL, NULL, 1429870570, 1430298672),
('Employee', 1, 'Employee', NULL, NULL, 1422967395, 1430299553),
('Rights', 2, 'Access Rights Module Link', NULL, NULL, 1430227237, 1431776281),
('Student', 1, 'Student', NULL, NULL, 1422958231, 1422958231),
('SuperAdmin', 1, 'SuperAdmin', NULL, NULL, 1422957183, 1422957183),
('updateAllEmpInfo', 2, 'Update Employee all details', NULL, NULL, 1430979242, 1430979242),
('updateAllStuInfo', 2, 'Update Student all details', NULL, NULL, 1430913145, 1430913145);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Employee', '/course/courses/index'),
('Employee', '/course/default/index'),
('Employee', '/dashboard/events/view-events'),
('Employee', '/dashboard/notice/view-popup'),
('Employee', '/dependent/*'),
('Employee', '/employee/default/index'),
('Employee', '/employee/dependent/*'),
('Employee', '/employee/emp-master/emp-photo'),
('Employee', '/employee/emp-master/index'),
('Employee', '/employee/emp-master/update'),
('Employee', '/employee/emp-master/view'),
('Employee', '/employee/export-data/employee-profile-pdf'),
('Employee', '/report/default/index'),
('Employee', '/report/dependent/*'),
('Employee', '/report/empinforeport'),
('Employee', '/report/employee/empinforeport'),
('Employee', '/report/employee/selected-employee-list'),
('Employee', '/report/selected-employee-list'),
('Employee', '/report/selected-student-list'),
('Employee', '/report/student/selected-student-list'),
('Employee', '/report/student/stuinforeport'),
('Employee', '/report/stuinforeport'),
('Employee', '/student/default/index'),
('Employee', '/student/stu-master/index'),
('Employee', '/student/stu-master/view'),
('Employee', '/user/change'),
('Student', '/course/courses/index'),
('Student', '/course/default/index'),
('Student', '/dashboard/events/view-events'),
('Student', '/dashboard/notice/view-popup'),
('Student', '/employee/default/index'),
('Student', '/employee/emp-master/index'),
('Student', '/fees/default/index'),
('Student', '/fees/fees-payment-transaction/stu-fees-data'),
('Student', '/student/stu-master/view'),
('Student', '/user/change'),
('SuperAdmin', '/*'),
('SuperAdmin', '/auth-assignment/*'),
('SuperAdmin', '/auth-assignment/create'),
('SuperAdmin', '/auth-assignment/delete'),
('SuperAdmin', '/auth-assignment/index'),
('SuperAdmin', '/auth-assignment/update'),
('SuperAdmin', '/auth-assignment/view'),
('SuperAdmin', '/city/*'),
('SuperAdmin', '/city/create'),
('SuperAdmin', '/city/delete'),
('SuperAdmin', '/city/index'),
('SuperAdmin', '/city/update'),
('SuperAdmin', '/city/view'),
('SuperAdmin', '/country/*'),
('SuperAdmin', '/country/create'),
('SuperAdmin', '/country/delete'),
('SuperAdmin', '/country/index'),
('SuperAdmin', '/country/update'),
('SuperAdmin', '/country/view'),
('SuperAdmin', '/course/*'),
('SuperAdmin', '/course/batches/*'),
('SuperAdmin', '/course/batches/create'),
('SuperAdmin', '/course/batches/delete'),
('SuperAdmin', '/course/batches/index'),
('SuperAdmin', '/course/batches/toggle'),
('SuperAdmin', '/course/batches/update'),
('SuperAdmin', '/course/batches/view'),
('SuperAdmin', '/course/courses/*'),
('SuperAdmin', '/course/courses/create'),
('SuperAdmin', '/course/courses/delete'),
('SuperAdmin', '/course/courses/index'),
('SuperAdmin', '/course/courses/toggle'),
('SuperAdmin', '/course/courses/update'),
('SuperAdmin', '/course/courses/view'),
('SuperAdmin', '/course/default/*'),
('SuperAdmin', '/course/default/index'),
('SuperAdmin', '/course/section/*'),
('SuperAdmin', '/course/section/create'),
('SuperAdmin', '/course/section/delete'),
('SuperAdmin', '/course/section/index'),
('SuperAdmin', '/course/section/toggle'),
('SuperAdmin', '/course/section/update'),
('SuperAdmin', '/course/section/view'),
('SuperAdmin', '/dashboard/*'),
('SuperAdmin', '/dashboard/default/*'),
('SuperAdmin', '/dashboard/default/index'),
('SuperAdmin', '/dashboard/events/*'),
('SuperAdmin', '/dashboard/events/add-event'),
('SuperAdmin', '/dashboard/events/event-delete'),
('SuperAdmin', '/dashboard/events/index'),
('SuperAdmin', '/dashboard/events/update-event'),
('SuperAdmin', '/dashboard/events/view'),
('SuperAdmin', '/dashboard/events/view-events'),
('SuperAdmin', '/dashboard/msg-of-day/*'),
('SuperAdmin', '/dashboard/msg-of-day/create'),
('SuperAdmin', '/dashboard/msg-of-day/delete'),
('SuperAdmin', '/dashboard/msg-of-day/index'),
('SuperAdmin', '/dashboard/msg-of-day/toggle'),
('SuperAdmin', '/dashboard/msg-of-day/update'),
('SuperAdmin', '/dashboard/msg-of-day/view'),
('SuperAdmin', '/dashboard/notice/*'),
('SuperAdmin', '/dashboard/notice/create'),
('SuperAdmin', '/dashboard/notice/delete'),
('SuperAdmin', '/dashboard/notice/index'),
('SuperAdmin', '/dashboard/notice/notice-file'),
('SuperAdmin', '/dashboard/notice/toggle'),
('SuperAdmin', '/dashboard/notice/update'),
('SuperAdmin', '/dashboard/notice/view'),
('SuperAdmin', '/dashboard/notice/view-popup'),
('SuperAdmin', '/debug/*'),
('SuperAdmin', '/debug/default/*'),
('SuperAdmin', '/debug/default/download-mail'),
('SuperAdmin', '/debug/default/index'),
('SuperAdmin', '/debug/default/toolbar'),
('SuperAdmin', '/debug/default/view'),
('SuperAdmin', '/default/*'),
('SuperAdmin', '/default/index'),
('SuperAdmin', '/dependent/*'),
('SuperAdmin', '/dependent/getcity'),
('SuperAdmin', '/dependent/getorgcity'),
('SuperAdmin', '/dependent/getorgstate'),
('SuperAdmin', '/dependent/getstate'),
('SuperAdmin', '/dependent/index'),
('SuperAdmin', '/dependent/studbatch'),
('SuperAdmin', '/dependent/studsection'),
('SuperAdmin', '/document-category/*'),
('SuperAdmin', '/document-category/create'),
('SuperAdmin', '/document-category/delete'),
('SuperAdmin', '/document-category/index'),
('SuperAdmin', '/document-category/update'),
('SuperAdmin', '/document-category/view'),
('SuperAdmin', '/employee/*'),
('SuperAdmin', '/employee/default/*'),
('SuperAdmin', '/employee/default/index'),
('SuperAdmin', '/employee/dependent/*'),
('SuperAdmin', '/employee/dependent/emp-c-city'),
('SuperAdmin', '/employee/dependent/emp-c-state'),
('SuperAdmin', '/employee/dependent/emp-p-city'),
('SuperAdmin', '/employee/dependent/emp-p-state'),
('SuperAdmin', '/employee/emp-address/*'),
('SuperAdmin', '/employee/emp-address/create'),
('SuperAdmin', '/employee/emp-address/delete'),
('SuperAdmin', '/employee/emp-address/index'),
('SuperAdmin', '/employee/emp-address/update'),
('SuperAdmin', '/employee/emp-address/view'),
('SuperAdmin', '/employee/emp-category/*'),
('SuperAdmin', '/employee/emp-category/create'),
('SuperAdmin', '/employee/emp-category/delete'),
('SuperAdmin', '/employee/emp-category/index'),
('SuperAdmin', '/employee/emp-category/update'),
('SuperAdmin', '/employee/emp-category/view'),
('SuperAdmin', '/employee/emp-department/*'),
('SuperAdmin', '/employee/emp-department/create'),
('SuperAdmin', '/employee/emp-department/delete'),
('SuperAdmin', '/employee/emp-department/index'),
('SuperAdmin', '/employee/emp-department/update'),
('SuperAdmin', '/employee/emp-department/view'),
('SuperAdmin', '/employee/emp-designation/*'),
('SuperAdmin', '/employee/emp-designation/create'),
('SuperAdmin', '/employee/emp-designation/delete'),
('SuperAdmin', '/employee/emp-designation/index'),
('SuperAdmin', '/employee/emp-designation/update'),
('SuperAdmin', '/employee/emp-designation/view'),
('SuperAdmin', '/employee/emp-docs/*'),
('SuperAdmin', '/employee/emp-docs/create'),
('SuperAdmin', '/employee/emp-docs/delete'),
('SuperAdmin', '/employee/emp-docs/index'),
('SuperAdmin', '/employee/emp-docs/update'),
('SuperAdmin', '/employee/emp-docs/view'),
('SuperAdmin', '/employee/emp-info/*'),
('SuperAdmin', '/employee/emp-info/create'),
('SuperAdmin', '/employee/emp-info/delete'),
('SuperAdmin', '/employee/emp-info/index'),
('SuperAdmin', '/employee/emp-info/update'),
('SuperAdmin', '/employee/emp-info/view'),
('SuperAdmin', '/employee/emp-master/*'),
('SuperAdmin', '/employee/emp-master/adddocs'),
('SuperAdmin', '/employee/emp-master/change-status'),
('SuperAdmin', '/employee/emp-master/create'),
('SuperAdmin', '/employee/emp-master/delete'),
('SuperAdmin', '/employee/emp-master/delete-doc'),
('SuperAdmin', '/employee/emp-master/docs-download'),
('SuperAdmin', '/employee/emp-master/emp-photo'),
('SuperAdmin', '/employee/emp-master/index'),
('SuperAdmin', '/employee/emp-master/update'),
('SuperAdmin', '/employee/emp-master/view'),
('SuperAdmin', '/employee/emp-status/*'),
('SuperAdmin', '/employee/emp-status/create'),
('SuperAdmin', '/employee/emp-status/delete'),
('SuperAdmin', '/employee/emp-status/index'),
('SuperAdmin', '/employee/emp-status/update'),
('SuperAdmin', '/employee/emp-status/view'),
('SuperAdmin', '/employee/export-data/*'),
('SuperAdmin', '/employee/export-data/employee-profile-pdf'),
('SuperAdmin', '/export-data/*'),
('SuperAdmin', '/export-data/export-excel'),
('SuperAdmin', '/export-data/export-to-pdf'),
('SuperAdmin', '/fees/*'),
('SuperAdmin', '/fees/bank-master/*'),
('SuperAdmin', '/fees/bank-master/create'),
('SuperAdmin', '/fees/bank-master/delete'),
('SuperAdmin', '/fees/bank-master/index'),
('SuperAdmin', '/fees/bank-master/update'),
('SuperAdmin', '/fees/bank-master/view'),
('SuperAdmin', '/fees/default/*'),
('SuperAdmin', '/fees/default/index'),
('SuperAdmin', '/fees/dependent/*'),
('SuperAdmin', '/fees/dependent/get-fees-category'),
('SuperAdmin', '/fees/fees-category-details/*'),
('SuperAdmin', '/fees/fees-category-details/create'),
('SuperAdmin', '/fees/fees-category-details/delete'),
('SuperAdmin', '/fees/fees-category-details/index'),
('SuperAdmin', '/fees/fees-category-details/update'),
('SuperAdmin', '/fees/fees-category-details/view'),
('SuperAdmin', '/fees/fees-collect-category/*'),
('SuperAdmin', '/fees/fees-collect-category/create'),
('SuperAdmin', '/fees/fees-collect-category/delete'),
('SuperAdmin', '/fees/fees-collect-category/index'),
('SuperAdmin', '/fees/fees-collect-category/toggle'),
('SuperAdmin', '/fees/fees-collect-category/update'),
('SuperAdmin', '/fees/fees-collect-category/view'),
('SuperAdmin', '/fees/fees-payment-transaction/*'),
('SuperAdmin', '/fees/fees-payment-transaction/collect'),
('SuperAdmin', '/fees/fees-payment-transaction/delete'),
('SuperAdmin', '/fees/fees-payment-transaction/export-fcc-wise-fees-pdf'),
('SuperAdmin', '/fees/fees-payment-transaction/pay-fees'),
('SuperAdmin', '/fees/fees-payment-transaction/print-common-receipt'),
('SuperAdmin', '/fees/fees-payment-transaction/stu-fees-data'),
('SuperAdmin', '/fees/fees-payment-transaction/update'),
('SuperAdmin', '/fees/fees-payment-transaction/view'),
('SuperAdmin', '/gii/*'),
('SuperAdmin', '/gii/default/*'),
('SuperAdmin', '/gii/default/action'),
('SuperAdmin', '/gii/default/diff'),
('SuperAdmin', '/gii/default/index'),
('SuperAdmin', '/gii/default/preview'),
('SuperAdmin', '/gii/default/view'),
('SuperAdmin', '/languages/*'),
('SuperAdmin', '/languages/create'),
('SuperAdmin', '/languages/delete'),
('SuperAdmin', '/languages/index'),
('SuperAdmin', '/languages/update'),
('SuperAdmin', '/languages/view'),
('SuperAdmin', '/login-details/*'),
('SuperAdmin', '/login-details/create'),
('SuperAdmin', '/login-details/delete'),
('SuperAdmin', '/login-details/index'),
('SuperAdmin', '/login-details/update'),
('SuperAdmin', '/login-details/view'),
('SuperAdmin', '/national-holidays/*'),
('SuperAdmin', '/national-holidays/create'),
('SuperAdmin', '/national-holidays/delete'),
('SuperAdmin', '/national-holidays/index'),
('SuperAdmin', '/national-holidays/update'),
('SuperAdmin', '/national-holidays/view'),
('SuperAdmin', '/nationality/*'),
('SuperAdmin', '/nationality/create'),
('SuperAdmin', '/nationality/delete'),
('SuperAdmin', '/nationality/index'),
('SuperAdmin', '/nationality/update'),
('SuperAdmin', '/nationality/view'),
('SuperAdmin', '/organization/*'),
('SuperAdmin', '/organization/create'),
('SuperAdmin', '/organization/delete'),
('SuperAdmin', '/organization/index'),
('SuperAdmin', '/organization/update'),
('SuperAdmin', '/organization/view'),
('SuperAdmin', '/report/*'),
('SuperAdmin', '/report/default/*'),
('SuperAdmin', '/report/default/index'),
('SuperAdmin', '/report/dependent/*'),
('SuperAdmin', '/report/dependent/index'),
('SuperAdmin', '/report/dependent/studbatch'),
('SuperAdmin', '/report/dependent/studsection'),
('SuperAdmin', '/report/empinforeport'),
('SuperAdmin', '/report/employee/*'),
('SuperAdmin', '/report/employee/empinforeport'),
('SuperAdmin', '/report/employee/index'),
('SuperAdmin', '/report/employee/selected-employee-list'),
('SuperAdmin', '/report/index'),
('SuperAdmin', '/report/selected-employee-list'),
('SuperAdmin', '/report/selected-student-list'),
('SuperAdmin', '/report/student/*'),
('SuperAdmin', '/report/student/index'),
('SuperAdmin', '/report/student/selected-student-list'),
('SuperAdmin', '/report/student/stuinforeport'),
('SuperAdmin', '/report/stuinforeport'),
('SuperAdmin', '/rights/*'),
('SuperAdmin', '/rights/assignment/*'),
('SuperAdmin', '/rights/assignment/assign'),
('SuperAdmin', '/rights/assignment/index'),
('SuperAdmin', '/rights/assignment/role-search'),
('SuperAdmin', '/rights/assignment/view'),
('SuperAdmin', '/rights/default/*'),
('SuperAdmin', '/rights/default/index'),
('SuperAdmin', '/rights/menu/*'),
('SuperAdmin', '/rights/menu/create'),
('SuperAdmin', '/rights/menu/delete'),
('SuperAdmin', '/rights/menu/index'),
('SuperAdmin', '/rights/menu/update'),
('SuperAdmin', '/rights/menu/view'),
('SuperAdmin', '/rights/permission/*'),
('SuperAdmin', '/rights/permission/assign'),
('SuperAdmin', '/rights/permission/create'),
('SuperAdmin', '/rights/permission/delete'),
('SuperAdmin', '/rights/permission/index'),
('SuperAdmin', '/rights/permission/role-search'),
('SuperAdmin', '/rights/permission/update'),
('SuperAdmin', '/rights/permission/view'),
('SuperAdmin', '/rights/role/*'),
('SuperAdmin', '/rights/role/assign'),
('SuperAdmin', '/rights/role/create'),
('SuperAdmin', '/rights/role/delete'),
('SuperAdmin', '/rights/role/index'),
('SuperAdmin', '/rights/role/role-search'),
('SuperAdmin', '/rights/role/update'),
('SuperAdmin', '/rights/role/view'),
('SuperAdmin', '/rights/route/*'),
('SuperAdmin', '/rights/route/assign'),
('SuperAdmin', '/rights/route/create'),
('SuperAdmin', '/rights/route/index'),
('SuperAdmin', '/rights/route/route-search'),
('SuperAdmin', '/rights/rule/*'),
('SuperAdmin', '/rights/rule/create'),
('SuperAdmin', '/rights/rule/delete'),
('SuperAdmin', '/rights/rule/index'),
('SuperAdmin', '/rights/rule/update'),
('SuperAdmin', '/rights/rule/view'),
('SuperAdmin', '/site/*'),
('SuperAdmin', '/site/about'),
('SuperAdmin', '/site/captcha'),
('SuperAdmin', '/site/contact'),
('SuperAdmin', '/site/error'),
('SuperAdmin', '/site/forgotpassword'),
('SuperAdmin', '/site/index'),
('SuperAdmin', '/site/loadimage'),
('SuperAdmin', '/site/login'),
('SuperAdmin', '/site/logout'),
('SuperAdmin', '/state/*'),
('SuperAdmin', '/state/create'),
('SuperAdmin', '/state/delete'),
('SuperAdmin', '/state/index'),
('SuperAdmin', '/state/update'),
('SuperAdmin', '/state/view'),
('SuperAdmin', '/student/*'),
('SuperAdmin', '/student/default/*'),
('SuperAdmin', '/student/default/index'),
('SuperAdmin', '/student/dependent/*'),
('SuperAdmin', '/student/dependent/studbatch'),
('SuperAdmin', '/student/dependent/studsection'),
('SuperAdmin', '/student/dependent/ustud-c-city'),
('SuperAdmin', '/student/dependent/ustud-c-state'),
('SuperAdmin', '/student/dependent/ustud-p-city'),
('SuperAdmin', '/student/dependent/ustud-p-state'),
('SuperAdmin', '/student/export-data/*'),
('SuperAdmin', '/student/export-data/student-profile-pdf'),
('SuperAdmin', '/student/stu-address/*'),
('SuperAdmin', '/student/stu-address/create'),
('SuperAdmin', '/student/stu-address/delete'),
('SuperAdmin', '/student/stu-address/index'),
('SuperAdmin', '/student/stu-address/update'),
('SuperAdmin', '/student/stu-address/view'),
('SuperAdmin', '/student/stu-category/*'),
('SuperAdmin', '/student/stu-category/create'),
('SuperAdmin', '/student/stu-category/delete'),
('SuperAdmin', '/student/stu-category/index'),
('SuperAdmin', '/student/stu-category/update'),
('SuperAdmin', '/student/stu-category/view'),
('SuperAdmin', '/student/stu-docs/*'),
('SuperAdmin', '/student/stu-docs/create'),
('SuperAdmin', '/student/stu-docs/delete'),
('SuperAdmin', '/student/stu-docs/index'),
('SuperAdmin', '/student/stu-docs/update'),
('SuperAdmin', '/student/stu-docs/view'),
('SuperAdmin', '/student/stu-guardians/*'),
('SuperAdmin', '/student/stu-guardians/create'),
('SuperAdmin', '/student/stu-guardians/delete'),
('SuperAdmin', '/student/stu-guardians/index'),
('SuperAdmin', '/student/stu-guardians/update'),
('SuperAdmin', '/student/stu-guardians/view'),
('SuperAdmin', '/student/stu-info/*'),
('SuperAdmin', '/student/stu-info/create'),
('SuperAdmin', '/student/stu-info/delete'),
('SuperAdmin', '/student/stu-info/index'),
('SuperAdmin', '/student/stu-info/update'),
('SuperAdmin', '/student/stu-info/view'),
('SuperAdmin', '/student/stu-master/*'),
('SuperAdmin', '/student/stu-master/adddocs'),
('SuperAdmin', '/student/stu-master/addguardian'),
('SuperAdmin', '/student/stu-master/change-status'),
('SuperAdmin', '/student/stu-master/create'),
('SuperAdmin', '/student/stu-master/delete'),
('SuperAdmin', '/student/stu-master/delete-doc'),
('SuperAdmin', '/student/stu-master/docs-download'),
('SuperAdmin', '/student/stu-master/emg-change-status'),
('SuperAdmin', '/student/stu-master/index'),
('SuperAdmin', '/student/stu-master/stu-photo'),
('SuperAdmin', '/student/stu-master/update'),
('SuperAdmin', '/student/stu-master/view'),
('SuperAdmin', '/student/stu-status/*'),
('SuperAdmin', '/student/stu-status/create'),
('SuperAdmin', '/student/stu-status/delete'),
('SuperAdmin', '/student/stu-status/index'),
('SuperAdmin', '/student/stu-status/update'),
('SuperAdmin', '/student/stu-status/view'),
('SuperAdmin', '/subject-master/*'),
('SuperAdmin', '/subject-master/create'),
('SuperAdmin', '/subject-master/delete'),
('SuperAdmin', '/subject-master/index'),
('SuperAdmin', '/subject-master/update'),
('SuperAdmin', '/subject-master/view'),
('SuperAdmin', '/user/*'),
('SuperAdmin', '/user/change'),
('SuperAdmin', '/user/create'),
('SuperAdmin', '/user/delete'),
('SuperAdmin', '/user/index'),
('SuperAdmin', '/user/resetemploginid'),
('SuperAdmin', '/user/resetemppassword'),
('SuperAdmin', '/user/resetstudloginid'),
('SuperAdmin', '/user/resetstudpassword'),
('SuperAdmin', '/user/update'),
('SuperAdmin', '/user/update-emp-password'),
('SuperAdmin', '/user/update-stud-password'),
('SuperAdmin', '/user/updateemploginid'),
('SuperAdmin', '/user/updatestudloginid'),
('SuperAdmin', '/user/view'),
('SuperAdmin', 'Configuration'),
('SuperAdmin', 'Rights'),
('SuperAdmin', 'updateAllEmpInfo'),
('SuperAdmin', 'updateAllStuInfo');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE `bank_master` (
  `bank_master_id` int(11) NOT NULL,
  `bank_master_name` varchar(255) NOT NULL,
  `bank_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL,
  `batch_name` varchar(120) NOT NULL,
  `batch_course_id` int(11) NOT NULL,
  `batch_alias` varchar(35) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`batch_id`, `batch_name`, `batch_course_id`, `batch_alias`, `start_date`, `end_date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'AKT 2015-2016', 1, 'AKT 2015-2016', '2015-06-01', '2016-06-30', '0000-00-00 00:00:00', 1, '2017-02-23 00:00:00', 1, 0),
(2, 'AKT 2016-2017', 2, 'AKT 2016-2017', '2016-06-01', '2017-06-30', '0000-00-00 00:00:00', 1, '2017-02-23 00:00:00', 1, 0),
(3, 'SD AKT 2016-2017', 3, 'AKT 2017-2018', '2017-06-01', '2018-06-30', '0000-00-00 00:00:00', 1, '2017-02-23 00:00:00', 1, 0),
(4, 'SD AKT 2017-2018', 4, 'SD AKT 2017-2018', '2017-06-10', '2018-06-06', '2017-03-08 00:00:00', 1, '2017-02-23 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `biaya_pendaftaran`
--

CREATE TABLE `biaya_pendaftaran` (
  `pay_id` int(12) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `section` varchar(200) NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `biaya` bigint(200) NOT NULL,
  `tgl_cicilan1` datetime NOT NULL,
  `cicilan1` bigint(200) NOT NULL,
  `tgl_cicilan2` datetime NOT NULL,
  `cicilan2` bigint(200) NOT NULL,
  `tgl_cicilan3` datetime NOT NULL,
  `cicilan3` bigint(200) NOT NULL,
  `tgl_cicilan4` datetime NOT NULL,
  `cicilan4` bigint(200) NOT NULL,
  `tgl_cicilan5` datetime NOT NULL,
  `cicilan5` int(11) NOT NULL,
  `tgl_cicilan6` datetime NOT NULL,
  `cicilan6` bigint(200) NOT NULL,
  `total` bigint(200) NOT NULL,
  `ket` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biaya_pendaftaran`
--

INSERT INTO `biaya_pendaftaran` (`pay_id`, `nama`, `section`, `tgl_daftar`, `biaya`, `tgl_cicilan1`, `cicilan1`, `tgl_cicilan2`, `cicilan2`, `tgl_cicilan3`, `cicilan3`, `tgl_cicilan4`, `cicilan4`, `tgl_cicilan5`, `cicilan5`, `tgl_cicilan6`, `cicilan6`, `total`, `ket`) VALUES
(1, 'Aurel Selyma Indi Situmeang', 'Joyful 1', '2016-11-14 00:00:00', 2900000, '2014-11-15 00:00:00', 300000, '2016-11-02 00:00:00', 2600000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(2, 'Cahaya Olifia Purba', 'Joyful 1', '2016-11-14 00:00:00', 2800000, '2015-11-14 00:00:00', 300000, '2016-02-22 00:00:00', 300000, '2016-03-29 00:00:00', 1000000, '2016-04-28 00:00:00', 1200000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(3, 'Calvin Cristian Pandiangan', 'Joyful 1', '2016-02-22 00:00:00', 3400000, '2016-02-22 00:00:00', 300000, '2016-04-26 00:00:00', 1100000, '2016-06-03 00:00:00', 2000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3400000, 'Lunas'),
(4, 'Kamelia Sinurat', 'Joyful 1', '2016-06-09 00:00:00', 3400000, '2016-06-09 00:00:00', 300000, '2016-06-09 00:00:00', 500000, '2016-06-24 00:00:00', 500000, '2016-08-02 00:00:00', 1000000, '2017-01-13 00:00:00', 114000, '0000-00-00 00:00:00', 0, 2414000, ''),
(5, 'Cristian Sihombing ', 'Joyful 1', '2015-11-26 00:00:00', 2800000, '2015-11-26 00:00:00', 300000, '2016-02-04 00:00:00', 2500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(6, 'Dava Evsando Siagian ', 'Joyful 1', '2016-01-18 00:00:00', 2800000, '2016-01-18 00:00:00', 300000, '2016-02-04 00:00:00', 300000, '2016-05-27 00:00:00', 1200000, '2016-07-12 00:00:00', 1000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(7, 'Ebzan Ryaldi Sihombing', 'Joyful 1', '2016-09-14 00:00:00', 2800000, '2016-09-14 00:00:00', 500000, '2015-12-01 00:00:00', 500000, '2016-02-16 00:00:00', 1800000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(8, 'Elisabeth A J Siregar ', 'Joyful 1', '2015-11-09 00:00:00', 2800000, '2016-11-09 00:00:00', 400000, '2016-01-12 00:00:00', 1000000, '2016-07-16 00:00:00', 1400000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(9, 'Fransisca Cheysya Purba', 'Joyful 1', '2016-01-26 00:00:00', 2900000, '2016-01-26 00:00:00', 300000, '2016-07-12 00:00:00', 300000, '2016-08-10 00:00:00', 1700000, '2016-12-09 00:00:00', 600000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(10, 'Hans D Situmorang ', 'Joyful 1', '2015-11-03 00:00:00', 2800000, '2015-11-03 00:00:00', 300000, '2016-01-15 00:00:00', 400000, '2016-02-01 00:00:00', 500000, '2016-03-07 00:00:00', 800000, '2016-05-15 00:00:00', 500000, '2016-04-01 00:00:00', 300000, 2800000, 'Lunas'),
(11, 'Jify Joune Silalahi  ', 'Joyful 1', '2016-01-19 00:00:00', 2800000, '2016-01-19 00:00:00', 500000, '2016-03-17 00:00:00', 400000, '2016-04-17 00:00:00', 200000, '2016-07-19 00:00:00', 1700000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'lunas'),
(12, 'Joanita N Simatupang', 'Joyful 1', '2015-11-30 00:00:00', 2900000, '2016-11-30 00:00:00', 300000, '2016-02-25 00:00:00', 300000, '2016-04-28 00:00:00', 2300000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(13, 'Jocelyn Athea Sinaga', 'Joyful 1', '2016-01-27 00:00:00', 2900000, '2016-01-27 00:00:00', 300000, '2016-03-31 00:00:00', 500000, '2016-04-27 00:00:00', 700000, '2016-06-03 00:00:00', 700000, '2016-07-01 00:00:00', 700000, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(14, 'Leonardo Messi Samosir ', 'Joyful 1', '2016-05-20 00:00:00', 4000000, '2016-05-19 00:00:00', 500000, '2016-06-18 00:00:00', 1000000, '2016-12-16 00:00:00', 2400000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3900000, 'Lunas'),
(15, 'May Ekalista Simanjuntak', 'Joyful 1', '2016-02-22 00:00:00', 3400000, '2016-02-22 00:00:00', 400000, '2016-04-19 00:00:00', 1000000, '2016-05-20 00:00:00', 1500000, '2016-06-28 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3400000, 'Lunas'),
(16, 'Rebeka Maorin Sibarani', 'Joyful 1', '2015-09-14 00:00:00', 2900000, '2015-09-14 00:00:00', 300000, '2016-01-26 00:00:00', 300000, '2016-01-25 00:00:00', 600000, '2016-01-25 00:00:00', 1000000, '2016-04-26 00:00:00', 700000, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(17, 'Samuel A Manihuruk', 'Joyful 1', '2016-07-11 00:00:00', 900000, '2016-07-11 00:00:00', 500000, '2016-12-15 00:00:00', 400000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 900000, 'Lunas'),
(18, 'Timothy Christar Lubis ', 'Joyful 1', '2015-12-30 00:00:00', 2900000, '2015-12-30 00:00:00', 300000, '2016-05-17 00:00:00', 2000000, '2016-07-01 00:00:00', 600000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(19, 'Vani Anggelita Lubis', 'Joyful 1', '2016-01-21 00:00:00', 2900000, '2016-01-21 00:00:00', 300000, '2016-04-04 00:00:00', 500000, '2016-08-03 00:00:00', 2100000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(20, 'Brandyanto Siallagan', 'Joyful 2', '2015-11-06 00:00:00', 2800000, '2016-11-06 00:00:00', 500000, '2016-03-16 00:00:00', 2300000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(21, 'Chelsy Renata Sidabutar', 'Joyful 2', '2016-02-29 00:00:00', 3400000, '2016-02-29 00:00:00', 300000, '2016-05-11 00:00:00', 700000, '2016-06-30 00:00:00', 2400000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3400000, 'Lunas'),
(23, 'Christin Novita Turnip', 'Joyful 2', '2015-11-30 00:00:00', 2650000, '2015-11-30 00:00:00', 300000, '2016-04-06 00:00:00', 400000, '2016-05-09 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1200000, ''),
(24, 'Christina A. Simbolon', 'Joyful 2', '2016-02-29 00:00:00', 3400000, '2016-02-29 00:00:00', 680000, '2016-03-24 00:00:00', 680000, '2016-04-27 00:00:00', 680000, '2016-05-31 00:00:00', 680000, '2016-06-24 00:00:00', 680000, '0000-00-00 00:00:00', 0, 3400000, 'lunas'),
(25, 'Fedrerico Repan Sinaurat', 'Joyful 2', '2015-09-30 00:00:00', 2900000, '2015-09-30 00:00:00', 500000, '2016-03-03 00:00:00', 2400000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(26, 'Gomer Estomihi Pardede', 'Joyful 2', '2016-02-24 00:00:00', 3400000, '2016-02-24 00:00:00', 3330000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3330000, 'Disc cash 5%'),
(27, 'Javier Chiko C. Pakpahan', 'Joyful 2', '2016-06-08 00:00:00', 4000000, '2016-06-08 00:00:00', 300000, '2016-06-11 00:00:00', 1700000, '2016-07-01 00:00:00', 2000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 4000000, 'Lunas'),
(28, 'Jhon Styven Nainggolan', 'Joyful 2', '2015-09-18 00:00:00', 2900000, '2016-09-18 00:00:00', 500000, '2016-02-26 00:00:00', 2400000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(29, 'Jivana Sandioriva', 'Joyful 2', '2015-11-27 00:00:00', 2900000, '2015-11-27 00:00:00', 900000, '2016-02-24 00:00:00', 2000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(30, 'Joyce Gracellya Simbolon ', 'Joyful 2', '2016-01-15 00:00:00', 2900000, '2016-01-15 00:00:00', 300000, '2016-05-16 00:00:00', 1600000, '2016-06-29 00:00:00', 1000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(31, 'Jisyer Nauke Sitohang', 'Joyful 2', '2016-07-14 00:00:00', 4000000, '2016-07-14 00:00:00', 500000, '2016-09-26 00:00:00', 3500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 4000000, 'Lunas'),
(32, 'Kelvin B. Simanjuntak', 'Joyful 2', '2016-06-20 00:00:00', 4000000, '2016-06-20 00:00:00', 3900000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3900000, 'Cash 5%'),
(33, 'Kevin Pratama Matondang', 'Joyful 2', '2015-11-27 00:00:00', 2800000, '2016-11-27 00:00:00', 1500000, '2016-04-01 00:00:00', 1000000, '2016-07-02 00:00:00', 300000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(34, 'Livia Felisha', 'Joyful 2', '2015-11-04 00:00:00', 2800000, '2015-11-04 00:00:00', 300000, '2016-02-26 00:00:00', 1600000, '2016-03-10 00:00:00', 400000, '2016-03-22 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(35, 'Marfel Bastian Manurung ', 'Joyful 2', '2015-09-22 00:00:00', 2900000, '2015-09-22 00:00:00', 300000, '2015-12-07 00:00:00', 1600000, '2016-02-22 00:00:00', 1000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(36, 'Natanael Alvino Purba', 'Joyful 2', '2016-02-02 00:00:00', 3400000, '2016-02-02 00:00:00', 500000, '2016-04-11 00:00:00', 400000, '2016-05-09 00:00:00', 600000, '2016-06-01 00:00:00', 1000000, '2016-07-04 00:00:00', 900000, '0000-00-00 00:00:00', 0, 3400000, 'Lunas'),
(37, 'Novelina E. Simare-Mare', 'Joyful 2', '2015-02-02 00:00:00', 3400000, '2016-02-02 00:00:00', 700000, '2016-06-03 00:00:00', 700000, '2016-06-27 00:00:00', 1500, '2016-07-02 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3400000, 'Lunas'),
(38, 'Noah Christofer Edrian', 'TK B', '2016-11-18 00:00:00', 3200000, '2016-11-18 00:00:00', 3060000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3060000, 'Lunas/cash'),
(39, 'Rotua mutiara Gracia', 'TKB', '2016-11-22 00:00:00', 3200000, '2016-11-22 00:00:00', 500000, '2016-11-22 00:00:00', 2560000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3060000, 'Lunas/Cash'),
(40, 'Selviana Oktavia hutagaol', 'TKB', '2016-11-25 00:00:00', 3200000, '2016-11-25 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(41, 'Axwen DerellSimorangkir', 'TKB', '2016-11-28 00:00:00', 3200000, '2016-11-28 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(42, 'Chelsi Olivia renata abigail', 'TKB', '2016-12-05 00:00:00', 3200000, '2016-12-05 00:00:00', 500000, '2017-01-11 00:00:00', 1000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1500000, ''),
(43, 'Lanskris Panjaitan', 'TKB', '2016-12-05 00:00:00', 3060000, '2016-12-05 00:00:00', 3060000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3060000, 'Lunas/Cash'),
(44, 'Daniel Christian Septiano', 'TKB', '2016-12-06 00:00:00', 3060000, '2016-12-05 00:00:00', 3060000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3060000, 'Lunas/Cash'),
(45, 'Elfrita Juwita Siregar', 'TKB', '2016-12-07 00:00:00', 3200000, '2016-12-07 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(46, 'Cathleen Permaisuri Sihombing', 'TKB', '2016-12-14 00:00:00', 3200000, '2016-12-14 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(47, 'Michael Adrian Manurung', 'TKB', '2016-12-14 00:00:00', 3200000, '2016-12-14 00:00:00', 500000, '2017-01-12 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1000000, ''),
(48, 'Binary revaldo Pasaribu', 'TKB', '2016-12-14 00:00:00', 3200000, '2016-12-14 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(49, 'Bezaleel Oscar Pasaribu', 'TKB', '2016-12-14 00:00:00', 3200000, '2016-12-15 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(50, 'Gendhis Wisma Abigael', 'TK B', '2016-12-16 00:00:00', 3200000, '2016-12-16 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(51, 'Grace Novena Marbun', 'TKB', '2016-12-19 00:00:00', 3200000, '2016-12-19 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(52, 'Yosshi Yunita Siahaan', 'TKB', '2016-12-19 00:00:00', 3200000, '2016-12-19 00:00:00', 3060000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3060000, 'Lunas/Cash'),
(53, 'David Handeson Situmorang', 'TKB', '2016-12-20 00:00:00', 3200000, '2016-12-20 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(54, 'Yoely Abigael Ronauli Aruan', 'TKB', '2017-01-09 00:00:00', 3900000, '2017-01-09 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(55, 'Djudika Wasitton Simbolon', 'TKB', '2017-01-11 00:00:00', 3900000, '2017-01-11 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, '');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(35) NOT NULL,
  `city_state_id` int(11) NOT NULL,
  `city_country_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `city_state_id`, `city_country_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Batam', 18, 1, '2017-02-22 10:57:46', 1, NULL, NULL, 0),
(2, 'Tanjung Pinang', 18, 1, '2017-02-28 15:23:10', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Indonesia', '2017-02-17 16:07:46', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `course_alias` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_code`, `course_alias`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'TK-01', 'TK-01', 'TK-01', '2016-06-02 00:00:00', 0, '2017-07-23 00:00:00', 1, 0),
(2, 'TK-02', 'TK-02', 'TK-02', '2016-06-02 00:00:00', 0, '2017-07-23 00:00:00', 1, 0),
(3, 'SD-01', 'SD-01', 'SD-01', '2016-06-02 00:00:00', 0, '2017-07-23 00:00:00', 1, 0),
(4, 'SD-02', 'SD-02', 'SD-02', '2016-06-02 00:00:00', 0, '2017-07-23 00:00:00', 1, 0),
(5, 'sd 1', 'SD 1', 'sd 1', '2017-03-01 00:00:00', 1, '2017-03-30 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `document_category`
--

CREATE TABLE `document_category` (
  `doc_category_id` int(11) NOT NULL,
  `doc_category_name` varchar(50) NOT NULL,
  `doc_category_user_type` char(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `document_category`
--

INSERT INTO `document_category` (`doc_category_id`, `doc_category_name`, `doc_category_user_type`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'KK', 'S', '2017-02-25 19:06:58', 1, NULL, NULL, 0),
(2, 'asd', 'S', '2017-02-25 19:14:49', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `emp_address`
--

CREATE TABLE `emp_address` (
  `emp_address_id` int(11) NOT NULL,
  `emp_cadd` varchar(255) DEFAULT NULL,
  `emp_cadd_city` int(11) DEFAULT NULL,
  `emp_cadd_state` int(11) DEFAULT NULL,
  `emp_cadd_country` int(11) DEFAULT NULL,
  `emp_cadd_pincode` int(11) DEFAULT NULL,
  `emp_cadd_house_no` varchar(25) DEFAULT NULL,
  `emp_cadd_phone_no` varchar(25) DEFAULT NULL,
  `emp_padd` varchar(255) DEFAULT NULL,
  `emp_padd_city` int(11) DEFAULT NULL,
  `emp_padd_state` int(11) DEFAULT NULL,
  `emp_padd_country` int(11) DEFAULT NULL,
  `emp_padd_pincode` int(11) DEFAULT NULL,
  `emp_padd_house_no` varchar(25) DEFAULT NULL,
  `emp_padd_phone_no` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_category`
--

CREATE TABLE `emp_category` (
  `emp_category_id` int(11) NOT NULL,
  `emp_category_name` varchar(50) NOT NULL,
  `emp_category_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_department`
--

CREATE TABLE `emp_department` (
  `emp_department_id` int(11) NOT NULL,
  `emp_department_name` varchar(65) NOT NULL,
  `emp_department_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_designation`
--

CREATE TABLE `emp_designation` (
  `emp_designation_id` int(11) NOT NULL,
  `emp_designation_name` varchar(50) NOT NULL,
  `emp_designation_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_docs`
--

CREATE TABLE `emp_docs` (
  `emp_docs_id` int(11) NOT NULL,
  `emp_docs_details` varchar(100) DEFAULT NULL,
  `emp_docs_category_id` int(11) NOT NULL,
  `emp_docs_path` varchar(150) NOT NULL,
  `emp_docs_submited_at` datetime NOT NULL,
  `emp_docs_status` tinyint(1) NOT NULL DEFAULT '0',
  `emp_docs_emp_master_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_info`
--

CREATE TABLE `emp_info` (
  `emp_info_id` int(11) NOT NULL,
  `emp_unique_id` int(11) NOT NULL,
  `emp_attendance_card_id` varchar(50) DEFAULT NULL,
  `emp_title` varchar(15) DEFAULT NULL,
  `emp_first_name` varchar(35) NOT NULL,
  `emp_middle_name` varchar(35) DEFAULT NULL,
  `emp_last_name` varchar(35) NOT NULL,
  `emp_name_alias` varchar(10) DEFAULT NULL,
  `emp_mother_name` varchar(50) DEFAULT NULL,
  `emp_gender` varchar(20) DEFAULT NULL,
  `emp_dob` date DEFAULT NULL,
  `emp_religion` varchar(50) DEFAULT NULL,
  `emp_bloodgroup` varchar(15) NOT NULL DEFAULT 'Unknown',
  `emp_joining_date` date DEFAULT NULL,
  `emp_birthplace` varchar(50) DEFAULT NULL,
  `emp_email_id` varchar(65) DEFAULT NULL,
  `emp_maritalstatus` varchar(35) DEFAULT NULL,
  `emp_mobile_no` bigint(12) DEFAULT NULL,
  `emp_photo` varchar(150) DEFAULT NULL,
  `emp_languages` varchar(255) DEFAULT NULL,
  `emp_bankaccount_no` varchar(25) DEFAULT NULL,
  `emp_qualification` varchar(50) DEFAULT NULL,
  `emp_specialization` varchar(255) DEFAULT NULL,
  `emp_experience_year` tinyint(2) DEFAULT NULL,
  `emp_experience_month` tinyint(2) DEFAULT NULL,
  `emp_hobbies` varchar(100) DEFAULT NULL,
  `emp_reference` varchar(35) DEFAULT NULL,
  `emp_guardian_name` varchar(65) DEFAULT NULL,
  `emp_guardian_relation` varchar(30) DEFAULT NULL,
  `emp_guardian_qualification` varchar(50) DEFAULT NULL,
  `emp_guardian_occupation` varchar(50) DEFAULT NULL,
  `emp_guardian_income` varchar(50) DEFAULT NULL,
  `emp_guardian_homeadd` varchar(255) DEFAULT NULL,
  `emp_guardian_officeadd` varchar(255) DEFAULT NULL,
  `emp_guardian_mobile_no` bigint(12) DEFAULT NULL,
  `emp_guardian_phone_no` varchar(25) DEFAULT NULL,
  `emp_guardian_email_id` varchar(65) DEFAULT NULL,
  `emp_info_emp_master_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_master`
--

CREATE TABLE `emp_master` (
  `emp_master_id` int(11) NOT NULL,
  `emp_master_emp_info_id` int(11) NOT NULL,
  `emp_master_user_id` int(11) NOT NULL,
  `emp_master_department_id` int(11) NOT NULL,
  `emp_master_designation_id` int(11) DEFAULT NULL,
  `emp_master_category_id` int(11) NOT NULL,
  `emp_master_nationality_id` int(11) DEFAULT NULL,
  `emp_master_emp_address_id` int(11) NOT NULL,
  `emp_master_status_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_status`
--

CREATE TABLE `emp_status` (
  `emp_status_id` int(11) NOT NULL,
  `emp_status_name` varchar(50) NOT NULL,
  `emp_status_description` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(80) NOT NULL,
  `event_detail` varchar(255) NOT NULL,
  `event_start_date` datetime NOT NULL,
  `event_end_date` datetime NOT NULL,
  `event_type` int(11) NOT NULL,
  `event_url` varchar(255) DEFAULT NULL,
  `event_all_day` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fees_category_details`
--

CREATE TABLE `fees_category_details` (
  `fees_category_details_id` int(11) NOT NULL,
  `fees_details_name` varchar(70) NOT NULL,
  `fees_details_category_id` int(11) NOT NULL,
  `fees_details_description` varchar(255) DEFAULT NULL,
  `fees_details_amount` decimal(10,0) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees_category_details`
--

INSERT INTO `fees_category_details` (`fees_category_details_id`, `fees_details_name`, `fees_details_category_id`, `fees_details_description`, `fees_details_amount`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'SD', 1, 'SD', '500000', '2017-02-25 18:51:30', 1, NULL, NULL, 0),
(2, 'SPP', 1, '', '350000', '2017-02-25 18:53:47', 1, NULL, NULL, 0),
(3, 'SPP May 2016', 2, '', '1500000', '2017-02-25 19:34:37', 1, NULL, NULL, 0),
(4, 'SPP', 3, '', '30000', '2017-02-25 19:35:08', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fees_collect_category`
--

CREATE TABLE `fees_collect_category` (
  `fees_collect_category_id` int(11) NOT NULL,
  `fees_collect_name` varchar(70) NOT NULL,
  `fees_collect_batch_id` int(11) NOT NULL,
  `fees_collect_course_id` int(15) NOT NULL,
  `fees_collect_section_id` int(15) NOT NULL,
  `fees_collect_details` varchar(255) DEFAULT NULL,
  `fees_collect_start_date` date NOT NULL,
  `fees_collect_end_date` date NOT NULL,
  `fees_collect_due_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees_collect_category`
--

INSERT INTO `fees_collect_category` (`fees_collect_category_id`, `fees_collect_name`, `fees_collect_batch_id`, `fees_collect_course_id`, `fees_collect_section_id`, `fees_collect_details`, `fees_collect_start_date`, `fees_collect_end_date`, `fees_collect_due_date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Pendaftaran', 2, 0, 0, 'asdf', '2017-02-01', '2017-02-17', '2017-02-28', '2017-02-25 18:50:40', 1, '2017-02-25 19:20:16', 1, 0),
(2, 'SPP May 2016', 1, 0, 0, '', '2017-02-01', '2017-02-16', '2017-02-16', '2017-02-25 19:33:44', 1, NULL, NULL, 0),
(3, 'SPP May 2016', 2, 0, 0, '', '2017-02-01', '2017-02-16', '2017-02-16', '2017-02-25 19:33:44', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_transaction`
--

CREATE TABLE `fees_payment_transaction` (
  `fees_pay_tran_id` int(11) NOT NULL,
  `fees_pay_tran_collect_id` int(11) NOT NULL,
  `fees_pay_tran_stu_id` int(11) NOT NULL,
  `fees_pay_tran_batch_id` int(11) NOT NULL,
  `fees_pay_tran_course_id` int(11) NOT NULL,
  `fees_pay_tran_section_id` int(11) NOT NULL,
  `fees_pay_tran_mode` tinyint(1) NOT NULL,
  `fees_pay_tran_cheque_no` int(11) DEFAULT NULL,
  `fees_pay_tran_cheque_date` date DEFAULT NULL,
  `fees_pay_tran_bank_id` int(11) DEFAULT NULL,
  `fees_pay_tran_bank_branch` varchar(50) DEFAULT NULL,
  `fees_pay_tran_amount` decimal(10,0) NOT NULL,
  `fees_pay_tran_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees_payment_transaction`
--

INSERT INTO `fees_payment_transaction` (`fees_pay_tran_id`, `fees_pay_tran_collect_id`, `fees_pay_tran_stu_id`, `fees_pay_tran_batch_id`, `fees_pay_tran_course_id`, `fees_pay_tran_section_id`, `fees_pay_tran_mode`, `fees_pay_tran_cheque_no`, `fees_pay_tran_cheque_date`, `fees_pay_tran_bank_id`, `fees_pay_tran_bank_branch`, `fees_pay_tran_amount`, `fees_pay_tran_date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '', '258000', '2017-02-25', '2017-02-25 18:52:19', 1, NULL, NULL, 0),
(2, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '', '242000', '2017-02-25', '2017-02-25 18:52:49', 1, NULL, NULL, 0),
(3, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '', '350000', '2017-02-25', '2017-02-25 18:54:53', 1, NULL, NULL, 0),
(4, 1, 2, 2, 2, 3, 1, NULL, NULL, NULL, '', '170000', '2017-02-25', '2017-02-25 19:21:20', 1, NULL, NULL, 0),
(5, 1, 2, 2, 2, 3, 1, NULL, NULL, NULL, '', '68000', '2017-02-25', '2017-02-25 19:21:32', 1, NULL, NULL, 0),
(6, 1, 2, 2, 2, 3, 1, NULL, NULL, NULL, '', '612000', '2017-02-25', '2017-02-25 19:21:36', 1, NULL, NULL, 0),
(7, 1, 3, 2, 2, 2, 1, NULL, NULL, NULL, '', '654000', '2017-02-25', '2017-02-25 19:29:57', 1, NULL, NULL, 0),
(8, 1, 3, 2, 2, 2, 1, NULL, NULL, NULL, '', '196000', '2017-02-25', '2017-02-25 19:30:05', 1, NULL, NULL, 0),
(9, 3, 2, 2, 2, 3, 1, NULL, NULL, NULL, '', '300', '2017-02-25', '2017-02-25 19:36:03', 1, NULL, NULL, 0),
(10, 3, 2, 2, 2, 3, 1, NULL, NULL, NULL, '', '29700', '2017-02-25', '2017-02-25 19:36:12', 1, NULL, NULL, 0),
(11, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '', '1500000', '2017-02-25', '2017-02-25 19:43:30', 1, NULL, NULL, 0),
(12, 2, 5, 1, 1, 1, 1, NULL, NULL, NULL, '', '1200000', '2017-02-14', '2017-02-27 10:24:04', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`language_id`, `language_name`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'indonesia', '2017-02-17 16:19:18', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_detail_id` int(11) NOT NULL,
  `login_user_id` int(11) NOT NULL,
  `login_status` tinyint(1) NOT NULL DEFAULT '0',
  `login_at` datetime NOT NULL,
  `logout_at` datetime DEFAULT NULL,
  `user_ip_address` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_detail_id`, `login_user_id`, `login_status`, `login_at`, `logout_at`, `user_ip_address`) VALUES
(1, 1, 0, '2017-02-16 09:58:49', '2017-02-24 16:02:03', '::1'),
(2, 1, 0, '2017-02-16 10:27:39', '2017-02-24 16:02:03', '::1'),
(3, 1, 0, '2017-02-16 12:27:58', '2017-02-24 16:02:03', '::1'),
(4, 1, 0, '2017-02-17 10:58:10', '2017-02-24 16:02:03', '::1'),
(5, 1, 0, '2017-02-17 16:00:47', '2017-02-24 16:02:03', '::1'),
(6, 1, 0, '2017-02-20 08:33:44', '2017-02-24 16:02:03', '::1'),
(7, 1, 0, '2017-02-20 13:19:07', '2017-02-24 16:02:03', '::1'),
(8, 1, 0, '2017-02-22 10:13:54', '2017-02-24 16:02:03', '::1'),
(9, 1, 0, '2017-02-23 09:56:10', '2017-02-24 16:02:03', '::1'),
(10, 1, 0, '2017-02-24 16:02:06', '2017-02-27 10:18:59', '::1'),
(11, 1, 0, '2017-02-25 18:40:00', '2017-02-27 10:18:59', '::1'),
(12, 1, 0, '2017-02-25 18:47:26', '2017-02-27 10:18:59', '::1'),
(13, 1, 0, '2017-02-25 18:49:02', '2017-02-27 10:18:59', '::1'),
(14, 1, 0, '2017-02-25 18:49:12', '2017-02-27 10:18:59', '::1'),
(15, 1, 0, '2017-02-27 10:19:04', '2017-03-02 10:13:33', '::1'),
(16, 1, 0, '2017-02-27 23:26:01', '2017-03-02 10:13:33', '::1'),
(17, 1, 0, '2017-02-28 12:14:35', '2017-03-02 10:13:33', '::1'),
(18, 1, 0, '2017-03-01 09:44:28', '2017-03-02 10:13:33', '::1'),
(19, 1, 0, '2017-03-01 11:14:29', '2017-03-02 10:13:33', '::1'),
(20, 1, 0, '2017-03-01 15:45:38', '2017-03-02 10:13:33', '::1'),
(21, 1, 0, '2017-03-02 09:35:42', '2017-03-02 10:13:33', '127.0.0.1'),
(22, 1, 0, '2017-03-02 10:13:42', '2017-03-02 10:21:00', '::1'),
(23, 1, 0, '2017-03-02 10:21:08', '2017-03-02 10:21:12', '::1'),
(24, 1, 0, '2017-03-02 10:22:24', '2017-03-04 13:32:47', '::1'),
(25, 1, 0, '2017-03-02 10:22:33', '2017-03-04 13:32:47', '::1'),
(26, 1, 0, '2017-03-02 10:22:35', '2017-03-04 13:32:47', '::1'),
(27, 1, 0, '2017-03-02 10:22:37', '2017-03-04 13:32:47', '::1'),
(28, 1, 0, '2017-03-02 10:22:39', '2017-03-04 13:32:47', '::1'),
(29, 1, 0, '2017-03-02 10:22:45', '2017-03-04 13:32:47', '::1'),
(30, 1, 0, '2017-03-02 10:22:53', '2017-03-04 13:32:47', '::1'),
(31, 1, 0, '2017-03-02 10:57:10', '2017-03-04 13:32:47', '::1'),
(32, 1, 0, '2017-03-02 10:57:17', '2017-03-04 13:32:47', '::1'),
(33, 1, 0, '2017-03-02 10:57:24', '2017-03-04 13:32:47', '::1'),
(34, 1, 0, '2017-03-02 10:57:26', '2017-03-04 13:32:47', '::1'),
(35, 1, 0, '2017-03-02 10:57:31', '2017-03-04 13:32:47', '::1'),
(36, 1, 0, '2017-03-02 10:57:38', '2017-03-04 13:32:47', '::1'),
(37, 1, 0, '2017-03-02 10:58:19', '2017-03-04 13:32:47', '::1'),
(38, 1, 0, '2017-03-02 11:00:50', '2017-03-04 13:32:47', '::1'),
(39, 1, 0, '2017-03-04 13:10:49', '2017-03-04 13:32:47', '::1'),
(40, 1, 0, '2017-03-04 13:32:57', '2017-03-04 13:34:34', '::1'),
(41, 173, 1, '2017-03-04 13:35:46', NULL, '::1'),
(42, 1, 1, '2017-03-04 13:40:03', NULL, '::1'),
(43, 1, 1, '2017-03-07 14:48:29', NULL, '127.0.0.1'),
(44, 1, 1, '2017-03-10 09:50:01', NULL, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `msg_of_day`
--

CREATE TABLE `msg_of_day` (
  `msg_of_day_id` int(11) NOT NULL,
  `msg_details` varchar(100) NOT NULL,
  `msg_user_type` char(3) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `msg_of_day`
--

INSERT INTO `msg_of_day` (`msg_of_day_id`, `msg_details`, `msg_user_type`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Orang yang bijak adalah orang yang menghargai usahanya sendiri dalam mendapatkan yang diinginkannya', 'S', '2017-02-25 19:17:12', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `national_holidays`
--

CREATE TABLE `national_holidays` (
  `national_holiday_id` int(11) NOT NULL,
  `national_holiday_name` varchar(50) NOT NULL,
  `national_holiday_date` date NOT NULL,
  `national_holiday_remarks` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `nationality_id` int(11) NOT NULL,
  `nationality_name` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`nationality_id`, `nationality_name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'indonesia', '2015-06-24 00:00:00', 1, '2017-02-25 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `notice_title` varchar(25) NOT NULL,
  `notice_description` varchar(255) DEFAULT NULL,
  `notice_user_type` char(3) NOT NULL,
  `notice_date` date DEFAULT NULL,
  `notice_file_path` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `org_id` int(11) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `org_alias` varchar(25) NOT NULL,
  `org_address_line1` varchar(255) NOT NULL,
  `org_address_line2` varchar(255) DEFAULT NULL,
  `org_phone` varchar(25) DEFAULT NULL,
  `org_email` varchar(65) DEFAULT NULL,
  `org_website` varchar(120) DEFAULT NULL,
  `org_logo` longblob NOT NULL,
  `org_logo_type` varchar(35) NOT NULL,
  `org_stu_prefix` varchar(10) NOT NULL,
  `org_emp_prefix` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`org_id`, `org_name`, `org_alias`, `org_address_line1`, `org_address_line2`, `org_phone`, `org_email`, `org_website`, `org_logo`, `org_logo_type`, `org_stu_prefix`, `org_emp_prefix`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'politeknik', 'universitas', 'batam', 'batam', '92832939', 'politeknik@gmail.com', 'http://nadia2.com', 0x89504e470d0a1a0a0000000d494844520000005a0000004608060000004cbc83e200001b1449444154789cdd5d6b8c245775feead6b3df3db3ebb5318b592d367ec8043b5ed660ef1a1209cb02cb328992602721891091204a229220408e8820022321944424808410124408821222cb8065470a36380663b2605916f14b78bd8fd999dd997ed5bbea567ecc7c774fdfe9f5033f7052d26866bbababeefdee39dff9ce39b77a1dbc4c8ec3870f779ba6b9a4288a8b1cc7b9a0699af31cc7d9edbaee2ec771865aeb7e5dd791e33841d3340050388e93d5753d0130721c67b5699a23aeeb1e2ecbf251adf5cf94520f5f7cf1c5b35ff2d40000ce2fe3a62b2b2ba8eb7a6f9ee76f514a1d544aed574abd5629e5a5690aa5d4e9013a0e1cc7415dd7a8aa6aee3d00a8aa0a5a6b739e520a8eb3392dad75a5b57e442975bfe338dfabaaeabb799e3f71f9e597bfa4f3055e42a09f7cf249e5baee01a5d43bb4d6d7174571beebba73e064590600f03ccf00ea380eaaaa425114e6dffce1bf814dc09ba6997baf2c4b94650900504ac1f33c68ad1fabebfa7600dfd45a7fffb2cb2ed32fc5fc5f74a08f1d3b7691d6fadd5aeb9b3dcf3bd7f77d5455853ccf3707b0058cebba00b00d501e5a6b344d631685efd1d28ba280ebba730ba49442d33428cb125a6fe2a99482528a9e70ccf3bc7f06f0a58b2fbef8672f260e2f0ad0ababab4a2975bd52eafd59965da3b556aeeb822027496200735d179ee7a1ae6b03be199cb05aa514b4d6d05a6fa31660d3a2abaa9a0398165e5515eaba86effb705d174dd320cf73e341beef6ba5d477d334fd87b22c6fbffaeaab5f702b7f41813e71e28402f04ea5d42d4aa94b8aa23093d55aa3ae6b388e6340f07d1f4dd3a0ae6b6c053863b900406ae1f9755d6f0e7aeb35b910bc073f4740b980e47ebe470fcab26c6e81eaba7eb8699a8f6759f6b5abaebaea0503fc05017a3a9d224dd3eb007caaaaaa4b01200c43e4798eb22ce70295e779db2c97c08a20665cdca60f5aa79980c5d5beefcf2d0e7fb4d6288ac27cb6691ab390799e9b7b916a003ce879de07c6e3f19d070f1e7cde183d6fa0d7d7d7f7789ef7992ccbae2fcb129ee71990b32c338071529cac04108099a804d10c52703241f33c0f9ee7197024574bd0e4f5b5d673d65e5515b22c43966508c310611802009224419aa60ccab76559f6e76f7ad39b7efe7c70fa85815e5f5f575555bdcff7fd5bebbaee5655852008a0b5469ee7a8eb7a2e70d11acd8d2db707306781db062a16260802b8ae6b385b9ecffb9346a44aa14731687231269309e2383674164511eaba461cc7948eb3a2283e381a8d3effb6b7bded17a2935f08e8b5b5b55d8ee37cc575dd6b29ab188ca4db73b200b681c740685b2aff9674224196ca83202fba76bbdd36d7677cc8b20c4992c0f7fd6dd454962592243154e7fbbef112deb7aaaa3baaaafa83abafbe7af5b962f69c811e8d4657354df38db22ccf2d8a02511421cf731350248072901204fe96ea80e7f1c7f33c132c01cc816a036c5fbfdd6ec3f7fd85e7e5798ee9746ac6292d9b6322a5144501c7718c85cf6633344d73c4f7fddfdcb76fdffd2f0ad05555214dd37769adbf309d4e030088a2088ee3208ee339d7e484ecc4420629be264192aff3da4c382458525d48abb49588ed25004c16492fb4950cb9da755dc4718c959515f8be8f56ab05c771b0b1b101a5545655d5bb6fbbedb6afde7aebadcf0a3ff7d982bcb1b1f121c771fe314d53d7755db45a2d344d8324494c802130121c09f6995c9d879df5d5753d473f1230cff3d0e9740c5fdb0a859f25d8f2270c4374bb5d74bb5d743a1db45a2df8be8f24490cf85a6b04418056ab85c96462826cbbdd469aa69ee338ef78cd6b5e33dbb76fdf7ddffad6b79e11c367b4e8388e319bcd3eeafbfe47e444d3343574c1d7ed4481af31cadb3f67e2697e8e8989edfeaeeb1a0eb603a25c1c5be60198d3d2b6342ccb126b6b6b6072e5fb3e3ccf439aa6585f5f37164fa9d8340d8aa2b8e5d4a9539fb8f1c61b9f1647ef99809ecd661f0a82e0239465523d388e63b23a9b16382952c92245c1f781d3d62edd9a80c8b49a8b202d562e02931f1910e52212a43ccf8d3ce4b59552d8b16307d6d7d78d21d1630683019aa6411cc7666c5b01f3e3c3e13001f0f74f87e3d35af468347a17802fc571acb4d668b7db984ea766600481966d4b2a002ce42ca48d20080c688b029debba88a2c80025df07b00d44e929ad560b51146dbbaf04bbaaaa6d6033106bad8d0ae1e7fafd3ec230c4fafa3a56575731180c00001b1b1bba699adf3d70e0c0d79e33d0d3e9f42a00ff391e8f83a669d06ab550d7b589c49c24831ee94106215a3c80b9349b56c92c4e022d7fa81ec89b8b3c83d7e075b900ac002e52273408022ecbacfc2cbd816a637575156118a2dd6ea3d56a61656505d3e914fd7e1f799e238ee34c6b7df0c081030f3c6ba02793c9ce3ccf0f354db3bb280ab45a2d68ad319bcdcc04a84da5f5d97a57f2f02220c98167b2e676bb3d57145aa43cdaedf69cd7c89a0a17d93e788f300ccd67a999f93b0882b922d4c9932711c731c23044abd542100478f2c9270100dd6e17a3d1085aeb9f2ba52ebff2ca2b47f63d95fd42922488e3f80baeebeeaeeb1add6e17799e633299180e2ccb729b76b515060f9bd365e5ad280a6351525dc8b49affb6add6711c8461882008e6ee292b7d1c675dd7064082e9799ea12e7a17af47cfa582d25a63381c422965f8bdaa2a2c2d2da1ae6b2449c271eca9ebfa9f9e78e2896d8bbb0de8c964f24ecff36e2438e3f1d8145dc8c99c889cb414fed232699d746306319e43306c3dacb5461cc7269db7536d06239e6f4b46a9d109203d88964ad0f923f99d46c06cb7691aecdcb9d348da2ccbe0380e0683015cd7455114bceecd478f1ebde169811e8fc77d009f0680d96c363758bae2a209494bb5f950f2b9fd592e0227bea87894a6a9a102b918b43a1980e598f83b8a2203741004732aa72ccb6ddc0f9cd6e8b45e5ab5e33838e79c73b06bd72e537ed55ae315af7805ce3aeb2c1445815eaf8720083e73e79d77b6cf08745dd71f0c82e0dce9746a5c52667c8bac98962a41971625c1b169c5711ce3be3615c9bf59a9b3ad3e4d53c471bc3050925a681cf6d859a32188b657846188e5e565f8be6f2c9bbffbfd3e76efde8d7ebf8fb22c11c731969797d1e97490e7393a9dce79dd6ef72f1602bdbebebe3308823f9bcd66705d179d4ec79439a9955924e74468593230ca549b9663f3b75c405afb990ebabced5dfc7c5996900d06a91e6457460229c74e65418a900993effb180e87d8b163073a9d8e5129ecccecd8b103dd6e17699a2249129c7df6d90633d775fff2aebbee1a6e03baaaaaf72549d2d55aa3d56a214912e336e44919a46c972dcb72ae76407d4a17b32729ebcf8b8228b0c9c3f4ac3351162d5ed2cfd67c90a6e9b6c06d26be45754a29a322e4d8648d84a0b7db6db3b0acf22d2d2d198aa381c6710cd775876118fef11cd0d3e934c8f3fcbde4340073350cbbe169a7ce3c585867d58d56c6662c1781e9ad52ca2ca6044fde4b2e0e272e0fd623ec6d084ca09224999386f27d2e24c72c797c9127f03e04baae6b4451640a50541fc0668bcc75dd3fb9efbefb3c03749aa6d729a5ce6180207db06225276ad72024407c4f46713b49b1eb17e45a0e5c7229dfb39b08722c61181a506d89484fb02b807291e47539365e873429e7311c0e4df788fcdeebf510451166b319d23445afd743b7db85e338e729a57edd005d96e5ef846188f1783c27f6656220076f5b320721259c1ddc64a3959c2e2dc6a610f9771cc7db82167fc8adfc8cfddb719c395ae1e7647cb0c1a41a5a74cf300c31180c501405e23846511448d314679d751676edda65167679799973ba0900dc9595154f29f585a669a23ccf4d16488e93b28bd66a0f5a729bada37930a02deaa200985308d2aa782e69495a9dec80c89a85fc1cd3665b3672611705638ecdf3bc6d3d488ea3d3e9c0713637fda4698a300c4dc09ccd66c6d3d234dd7de185177e5ad575fdabed767b485029beb32c9bd3aaecc5315b92b421d35f79d89665eb64b9508bd2654e8c93239fdad74ad3d4508cadfbd9409063e262c9dea20d32178f65512e0c1507a995852b4abf9d3b77a2ae6ba4698a76bb8daaaa76befef5afff15e579de1b932431bd3ede4c16d3c99f3c64c6244ba7f6c0a5c59267ed428fb4aaa7a325763decb8c07f738713e984018b898604dae6ef4594c45a3741e518ed0673abd5323493e7395cd745b7db355218007cdfbf4a95657979599626ea4a57b1d36e9b423808be4e29c7f7a48463c093ca45826c677f670ac0f2e0395a6b53ab60979be08b4ef6c218202981afd3bbe478e4c24b63524aa1dbedce29115984db523297aba669cee70dc937f65e0c39497b2b979d29d233ec0e06a5969d36d3aa64c74672310f5a875c0809840459765168698b288212935ccff3ec6c562e90ac9ff3fd7ebf8fa669cc1e91c964827ebf6f162c0cc3d72a00bb5dd765d5ceac3e072a2945de9c1759a44f65ba2c0121dfda9c4dadcd85905536d21223bced5d5221d9d53e1a03a94466afacded99e2b697211d85114cd9d43aa1a0e8708820093c9046559c2755d0c8743de6fb7a7941a7a9e67de64558b96268b3e746fa91ce461b79ce4df8b5c577e8e40710fb4dd7fd45a633a9d228aa2b9f7f8b9f1780c6e7f900b2e373572dca4193b1ed018588f9663e7c14d425cf4a669b0b1b1815eaf670227e9b2d7eb0100cab25cf600f425481c649aa6066ca594c9786869b416db626debb7f5b4ad3cf8ba2c2c05416040941e40e5c372a70c8e755d633a9d224912b45aad6d0525de877b36ec7d23727cb687f2e08251876bad311e8fe7a8b6dd6e6fd3e56559763dadb51e8fc78a0184ae26ab752cdac85a725555e8743ac68da50221f7d996cd0595b5844516cf312c0a8ad4b77461c9bd74e72ccbe6bae4bcbebcb76c46d8f7975e2b959804d9f6405e437a5c9aa628ca12ae52cad35a4fcab25cee743a4615b0cb2b579537e0bf19dcc230343cc51fd665edc84e309e096cb920b6c501a7e516af75a643f631175d97328e40cab13068b3a0c4b1f36f9ec7ca265f534a1923984c268836f19979aeebae374db3ecba2e269309b43ebd539303b095874c55a5ca9069f1643241bbbd59fba60569adcdce4d66561248824fb9298bf41268292dedf768c132a8cb6c53aa9aa228b63dc6619f473eb637e91093300c319d4e8d214e2613645986288ac07e6b5dd7eb9ee338479452e7039b2ec7414a0e949623c195898dac1f48ab20b7cb85a29423d8ec4332d8e6798e76bb6d92144e9e3f92636539565a1a659dec86f37d067cd90167e58e73b2335fdbe0f89bf907ebf5478f1e451445e8f7fb188fc7acec1df1cab27cc4f3bcb7b0c04f0be1b602b94394a0f19055355aa31d186d29468b6050e2ae4d5a28419dcd66e07e6bc987e456063d962e6d15329bcd30994ce0baae69654923903902c722730319b0ed38c179144581d16864ae331a8d0cd5846168c65555d563de743a3d34180c0ca94b1e642d97aedfeff7e7f84a165f24f0b4069b0f6dfa919a565208032b8330ad92c6c073d33445511408c3d0d43468b1fc9b6ac4f77d2c2d2dcd0579495db2492c1583d4ffd29babaac28913274c6dddd6ee328ef9be7fc8731ce707755d636363634e3b4a11cf9b4ca7d3b98d347497e170686e60674d1278a910640667cb2169d98eb3594f20108be457d39cde13273d90f3b0e724175a1a8b044bbec7bdd3a4b6288a8c07506528a54c1d3f08029c3a750a4992f0ba3ff07cdf7fd0719cd5b22c775103d2126c7e942b4f10cbb2c4c99327d1ebf54cf060854fee2f66ea6a2b80455624419413971252ea772e8eac9bc8eb49d024f0b298e438a78b67a499a6399d56cb7a0b298c31841ec4e773b22cc3b163c730180c90a6e9284dd3fff62ebcf0427dfcf8f16f8761f8875b1d5c8c462354556584bfd4b45c7d6a585a7c1cc72628c8f4394912f47abd39b94765c289b21d242d96a002307b26646d820bc173cbb2348d5ce9eef23c2ebcec0f72acf6fe113e62c1bc4072b6f40e8a862ccbcc4e545a72100448d3f4dbd75e7b6de50180e7795f27d04a2993aef282f231b5adf3cdbfede027352ec1626093cd4d5a141f75e8f7fb26d852b170f24992a0dbed1a0ba2c7d1ada920a228dab68394e7c85699e779a696cc45e7b86dcf917572c9fb340e82fcf8e38fc3f77db33d2c8a22a4698ad168f475606bdb6e1cc7ff51d7f561d775cfe38a7322728b01f37b4a21b9278e81909b126de5c13e22af2f799b3162abcf66c023506c17b1114b8a929ec35a08a9aadbedce291ad66bf8396e108aa2c804782e8e544fb273c3394da753b30fb1d56ae1c489130882009d4e07ed761bebebebf07d1fa3d168a5dfefdf6180deb3674ff5c31ffef073fd7eff56a93e648184d6450b190e8773ae2c53561975e5b5ce14fc483765599a471ba442915c6a6b6cb9201c1fa984ad25f93abd54b6c0ecf8602b127a4859963871e284d1e7755d9bc74adaed367abd1eb22ce37603789ef7b937bff9cd85017acb2d3e5f96e507e3381e9665698ad774195a39074bf70030f7b0d06030303510d90292b5663b1849fa91c1c50e68527a32f3b2130a8e574a41693492066453c3a69a24499024099aa641100468b7db98cd36bf91829ec7e48ad65cd7351e79e41152edacaeebcf9afb411c870e1dfa6ba5d4df8e4623d3c5a5b290e9afddae92eeabb5369d62590b26edb035cfc913245e8369ad6df5921f9552e8f7fbc672e5fd3926a594f13ac9b9fc9bbccd4513cd54cc66b3b96b31386aad4d82c4451c8fc7a60877ecd83153ebc8f3fc13070f1ebc6521d00f3ffc703b0cc3ff397efcf86ed775d1eff7b1bebe6e020d3b099297e5f3787222f4029b6f81cd3dcd2c94cb74998f2eb75aadb9e70409345b624cdfe939e47f7236db4a2c5b76bb5dc3cf799e9b9dfc76d0a332b20f821e4591d90b02004f3df514565757e79e5c180c06d8d8d838d6e9742edebf7fff6421d00070e4c891df585d5dfdd73ccfd1ed764d91843792b4c0acccf7fdb9bdc45c0402253956cab64ea763829d6d416ce993c2b8105c340073e7907765d79ee03b8e639ec2926391e3a9eb7a4ef9482f92bb92286d9f7aea29538e0d8200a3d1c848e3d96c76d30d37dc30f798c5b61e7fa7d3f9b7b22cffc575dddf2e8ac2700fa3353324dedcf33c2c2d2d994148eb026006ced739395e8f75019b8fb5d6730fec3021b0334db6bf648f4ed298a42f59809280538e727b810c84799e636d6d0d4992186fe3dc9696960c776badb1b1b1812ccbfefd8a2baed8f62ccb36a097969670fffdf7bfb7288a37b6dbedf3a842e87a329de5a44e9e3c6924152d981924f9cfe649d9a991fa75514647bd2b950fc7c1dfdc332781b40b5bb24c20399dff9ecd66c67201603299e0d4a953660f07ad5c2985c1608076bb8d53a74e190dedbaee9156abf59e57bef29536ac677e58e8eebbefde1f45d1ddb3d92ce2c333b682903420c1917cadd4663b9ec1918bc34d3af2c11c3bf8b1241a459129a6cbbd1a32bbebf7fb668c4c91e5a2364d836eb78b5eaf67f8949defd168643c9596dded764d3a2e8b63b28875fcf871acadadb1dc5bd475fd6b6f7deb5bff6b119e4ffbf8dbbdf7de7bb3e7795f198d46aad7eb192e9600d99460ab13b918ac7970c713410d8200fd7e1fdd6ed72c062516b73f10485e9396cce0e6ba9bcf02caa48763e5a310542c7c62b6691ad31ba591703edd6e77ae60a494c2dada1a5657570d8d5555855eaf87a66974d3347f74cd35d77cf94c583ee393b33ff9c94ffe2acbb24fcd6633f4fb7db32d8101863b4eb9da047451e6469d6cd304ffa68b5239c800c90591195f9ee7a68ac8c5661acc07e5ed004d4b6fb7db4645f17d6920fd7e1f9d4e07c06643e4f0e1c348d3d480cf76ddd6333e1fbee1861b3ef974383e23d0e3f1188f3efae84766b3d94781cd6dab274e9c30ef3390111c0066123238caf7a5b6951325d5b0a52f01907f07416080b477ea93b76904f2812019275aad16969696e6e42a3d646363c304ea288a10c73194dadcb0ee791e363636e0ba2e83e0c7aebbeebabf21af9fe978c64794078301d6d6d63ef6d39ffe34534add9ae7b98aa2c84c90629d818d6a2149124451641ece673109389dd94905426e97c157aa0399bd39cee6ce2416a7e62c67cbbbd862b2b341ca40bece052b8a02a74e9dc2783c36e7a7696aac9ffdcfa3478f623a9db213ffe1b7bffded9f948dec331dcffa6b248e1e3d8a871e7ae8f78220f86251140137d6900ed8c05ca41e2475f0bd288a4c96089c7e1482fb363a9d8e015b82490b1d0c06266b9535722e6a1445585a5a32e7b096b2f5250273c9117700d0a338e6a6694cc2932489b1e43ccf0b00ef79f5ab5ffde54b2fbdf459e1f79cbf18e5aebbeebaca719c6f6459762e33258224bfd742668f000c6836673395b53999995abbdd3609129fc262d17d381c1a4ea7dbc7713ca7bf194499037051a41a61d223b350363418f897979709c1b1288a7eebc081030bd5c50b063400dc73cf3dbb1cc7f9ca6c36bb96ad1bba1c4b99b4ae2ccba0b546a7d379da741d98df2ac0df729b9ae4695983a057d80b2933c87ebf0f0073f7e639c3e110dd6e17004c06cad2033fbf455f77eed9b3e7f72fbbecb217ffab7e783cf8e0836a7d7dfd7d699adeea795eb7d56a613c1e9bc9914325c73279e1c0a96301cc3517ece046ce968f51f0e0fb9d4ec7d0835dcd735dd714c9e4439c65599a3d19b22ecd2c1200e5e56c7979f9c3070e1cf8acebba2fdd9757c9e38e3beed8a3b5fe4c1004d7d34265c953d283ac2bc8a6011781bc2c2d9a8b25d58d0491e752aa71372a131acabfe170681683fa9c5d74691c7ce4b8ae37bbe7aeebde7ef6d967ffe995575ef9f3e783d3f3061a007ef4a31f616d6dedbaa6693e5596e5a5ecefd16aaaaa32b51069c5c07c46c98a1f0b377cf20980f97a1ef9fc378becec6ff6fbfdb9cd31e46bd293ac65c87b03a72945242c0f354df3813d7bf6dcb16fdfbee78dd10b02348f43870ea993274fbeb32ccb5bcab2bc847b28081670faa121593f910a45262b32cde6fb7469db72e5fbb2ab4eaaa19a607acd80c7cc52dcefe1288a3ebe7ffffeafbdea55af7a797d65a67ddc7befbd6a3a9d5e5f96e5fb015ce3fbbe920d03d2057fb3e82333b9336d7497bd475917e10f1589543eb2164d6ae3b5b7eea39ba6b9c7719cbfdbbb77efedfbf6ed7b797f09eca2e33bdff9ce455555bddb719c9bb32c3b576ee9a52c04b63f14ca2e862c44911280ed0f637291d8c9913baae4024a9dac943ae638ce575dd7fde24d37ddf47fef6b8d171d8f3ffeb87aecb1c70ea469fa8ebaaeaf6f9ae67c66540c9ec0fcd30292cf65599460f13599424beb66b66a6d9a79acaeebdb3dcffbe605175cf0fd37bce10dff3fbea87bd1f1c0030f606565656f5dd76f699ae6a0e338fb8ba278add6da5bb43f4f022b9bb672fb17709a87054d559ee73da294ba5f29f5bd300cbffbbad7bdee893d7bf6bcc433fe2501bde8f8f18f7fdc3d76ecd82559965d04e082ad3d26bb01ec524a0dabaaea374d135555156c7178e1795ee6baee442935aaeb7ad5719c23799e1f2ecbf2d120087eb677efde87afb8e28a97c57fa6f0bf2a261bc61bbf9fb20000000049454e44ae426082, 'image/png', 'admin', 'admin', '2017-02-16 09:55:20', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `income_id` int(100) NOT NULL,
  `income_date` date NOT NULL,
  `income_explanation` varchar(100) NOT NULL,
  `debit_pemasukan` int(100) NOT NULL,
  `kredit_pemasukan` int(100) NOT NULL,
  `saldo_pemasukan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`income_id`, `income_date`, `income_explanation`, `debit_pemasukan`, `kredit_pemasukan`, `saldo_pemasukan`) VALUES
(1, '2015-06-01', 'Cicilan I (Aphenta Dolly)', 400000, 0, 400000),
(2, '2015-06-01', 'Cicilan II (Aphenta Dolly)', 500000, 0, 900000),
(3, '2015-06-01', 'Cicilan I (Christin)', 350000, 0, 1250000),
(4, '2015-06-01', 'Cicilan II (Christin)', 250000, 0, 1500000),
(5, '2015-06-01', 'Cicilan I (Ebzan)', 500000, 0, 2000000),
(6, '2015-06-01', 'Cicilan II (Ebzan)', 400000, 0, 2400000),
(7, '2015-06-01', 'Cicilan I (Graciela)', 500000, 0, 2900000),
(8, '2015-06-01', 'Cicilan II (Graciela)', 400000, 0, 3300000),
(9, '2015-06-01', 'Cicilan I (Kevin)', 400000, 0, 3700000),
(10, '2015-06-01', 'Cicilan I (Elenta)', 50000, 0, 3750000),
(11, '2015-06-01', 'Cicilan I (Cahaya)', 150000, 0, 3900000),
(12, '2015-06-01', 'Cicilan I (Jesie De Vanesa)', 400000, 0, 4300000),
(13, '2015-06-01', 'Cicilan I (Christian Sihombing)', 350000, 0, 4650000),
(14, '2015-06-01', 'Cicilan I (Jify)', 150000, 0, 4800000),
(15, '2015-06-01', 'Cicilan I (Angel)', 350000, 0, 5150000),
(16, '2015-06-01', 'Cash (Irene)', 900000, 0, 6050000),
(17, '2015-06-01', 'Cicilan I (Evans)', 350000, 0, 6400000),
(18, '2015-06-01', 'Cash (Gisela)', 900000, 0, 7300000),
(19, '2015-06-01', 'Cash (Elisabeth)', 900000, 0, 8200000),
(20, '2015-06-01', 'Cash (Hans)', 900000, 0, 9100000),
(21, '2015-07-31', 'SPP Bulan Juli 2015 (Aphenta Dolly)', 150000, 0, 7849200),
(22, '2015-06-30', 'SPP Bulan Juli 2015 (Christin)', 150000, 0, 7999200),
(23, '2015-06-30', 'SPP Bulan Juli 2015 (Ebzan)', 150000, 0, 8149200),
(24, '2015-06-30', 'SPP Bulan Juli 2015 (Graciela)', 150000, 0, 8299200),
(25, '2015-06-30', 'SPP Bulan Juli 2015 (Kevin)', 150000, 0, 8449200),
(26, '2015-06-30', 'SPP Bulan Juli 2015 (Elenta)', 150000, 0, 8599200),
(27, '2015-06-30', 'SPP Bulan Juli 2015 (Cahaya)', 150000, 0, 8749200),
(28, '2015-06-30', 'SPP Bulan Juli 2015 (Brandy)', 150000, 0, 8899200),
(29, '2015-06-30', 'SPP Bulan Juli 2015 (Nigel)', 150000, 0, 9049200),
(30, '2015-06-30', 'SPP Bulan Juli 2015 (Jesie De Vanesa)', 150000, 0, 9199200),
(31, '2015-06-30', 'SPP Bulan Juli 2015 (Christian Clax)', 150000, 0, 9349200),
(32, '2015-06-30', 'SPP Bulan Juli 2015 (Christian Sihombing)', 150000, 0, 9499200),
(33, '2015-06-30', 'SPP Bulan Juli 2015 (Jify)', 150000, 0, 9649200),
(34, '2015-06-30', 'SPP Bulan Juli 2015 (Jeremi)', 150000, 0, 9799200),
(35, '2015-06-30', 'SPP Bulan Juli 2015 (Angel)', 150000, 0, 9949200),
(36, '2015-06-30', 'SPP Bulan Juli 2015 (Irene)', 150000, 0, 10099200),
(37, '2015-06-30', 'SPP Bulan Juli 2015 (Evans)', 150000, 0, 10249200),
(38, '2015-06-30', 'SPP Bulan Juli 2015 (Gisela)', 150000, 0, 10399200),
(39, '2015-06-30', 'SPP Bulan Juli 2015 (Elisabeth)', 150000, 0, 10549200),
(40, '2015-06-30', 'SPP Bulan Juli 2015 (Hans)', 150000, 0, 10699200),
(41, '2015-06-30', 'SPP Bulan Juli 2015 (Putri)', 150000, 0, 10849200),
(42, '0000-00-00', 'SPP Bulan Juli 2015 (Dava)', 150000, 0, 10999200),
(43, '2015-06-30', 'SPP Bulan Juli 2015 (Tzandi)', 150000, 0, 11149200),
(44, '0000-00-00', 'Cicilan II (Christin)', 250, 0, 12),
(45, '0000-00-00', 'Cicilan I (Dava)', 500, 0, 12),
(46, '0000-00-00', 'Cicilan I (Brandianto)', 400, 0, 12),
(47, '0000-00-00', 'Cicilan I (Putri)', 300, 0, 13),
(48, '0000-00-00', 'Cicilan I (Renata)', 150, 0, 13),
(49, '0000-00-00', 'Cicilan I (Livia)', 400, 0, 14),
(50, '0000-00-00', 'Cicilan I (Carrisa)', 400, 0, 14),
(51, '0000-00-00', 'Cicilan I (Jeremi)', 300, 0, 14),
(52, '0000-00-00', 'Cicilan II (Angel)', 350, 0, 15),
(53, '0000-00-00', 'Cicilan II (Jesie De Vanesa)', 300, 0, 14),
(54, '0000-00-00', 'Cicilan II (Jify)', 200, 0, 14),
(55, '0000-00-00', 'Cicilan II (Christian Sihombing)', 550, 0, 15),
(56, '0000-00-00', 'SPP Agustus 2015 (Ebzan)', 150, 0, 15),
(57, '0000-00-00', 'SPP September 2015 (Ebzan)', 150, 0, 15),
(58, '0000-00-00', 'SPP Agustus 2015 (Brandi)', 150, 0, 15),
(59, '0000-00-00', 'SPP Agustus 2015 (Evans Dolly)', 150, 0, 15),
(60, '0000-00-00', 'SPP Agustus 2015 (Kevin)', 150, 0, 15),
(61, '0000-00-00', 'SPP Agustus 2015 (Dava)', 150, 0, 16),
(62, '0000-00-00', 'SPP Agustus 2015 (Elisabeth)', 150, 0, 16),
(63, '0000-00-00', 'SPP Agustus 2015 (Graciela)', 150, 0, 11),
(64, '0000-00-00', 'SPP Agustus 2015 (Christian Sihombing)', 150, 0, 11),
(65, '0000-00-00', 'SPP Agustus 2015 (Aphenta Dolly)', 150, 0, 11),
(66, '0000-00-00', 'SPP Agustus 2015 (Jeremi)', 150, 0, 11),
(67, '0000-00-00', 'SPP Agustus 2015 (Christian Clax)', 150, 0, 11),
(68, '0000-00-00', 'SPP Agustus 2015 (Putri)', 150, 0, 12),
(69, '0000-00-00', 'SPP Agustus 2015 (Tzandi)', 150, 0, 12),
(70, '0000-00-00', 'SPP Agustus 2015 (Renata)', 150, 0, 12),
(71, '0000-00-00', 'SPP Agustus 2015 (Livia)', 150, 0, 12),
(72, '0000-00-00', 'SPP Agustus 2015 (Carrisa)', 150, 0, 12),
(73, '0000-00-00', 'SPP Agustus 2015 (Angel)', 150, 0, 12),
(74, '0000-00-00', 'SPP Agustus 2015 (Jesie de Vanesa)', 150, 0, 12),
(75, '0000-00-00', 'SPP September 2015 (Hans)', 150, 0, 13),
(76, '0000-00-00', 'SPP Agustus 2015 (Jify)', 150, 0, 13),
(77, '0000-00-00', 'SPP Juli 2015 (Goldwin)', 150, 0, 13),
(78, '0000-00-00', 'SPP Agustus 2015 (Nigel)', 150, 0, 13),
(79, '0000-00-00', 'Cicilan II (Dava)', 400, 0, 14),
(80, '0000-00-00', 'Cicilan II (Livia)', 450, 0, 15),
(81, '0000-00-00', 'Cicilan I (Tzandy)', 200, 0, 15),
(82, '0000-00-00', 'Cicilan II (Carrisa)', 500, 0, 15),
(83, '0000-00-00', 'Cicilan I (Jashinta)', 1, 0, 16),
(84, '0000-00-00', 'Cicilan II (Evans Dolly)', 550, 0, 17),
(85, '0000-00-00', 'Cicilan I biaya masuk SD T.P. 2016/2017 (Ebzan)', 500, 0, 17),
(86, '0000-00-00', 'Cicilan I biaya masuk SD T.P. 2016/2017 (Rebeka)', 300, 0, 17),
(87, '0000-00-00', 'Cicilan II (Renata)', 500, 0, 18),
(88, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Marfel)', 300, 0, 18),
(89, '0000-00-00', 'Cicilan III (Jify)', 42, 0, 18),
(90, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Fedrerico)', 500, 0, 18),
(91, '0000-00-00', 'SPP September 2015 (Christian Clay)', 150, 0, 19),
(92, '0000-00-00', 'SPP September 2015 (Dava)', 150, 0, 19),
(93, '0000-00-00', 'SPP September 2015 (Christin)', 150, 0, 19),
(94, '0000-00-00', 'SPP September 2015 (Brandyanto)', 150, 0, 19),
(95, '0000-00-00', 'SPP September 2015 (Elisabeth)', 150, 0, 10),
(96, '0000-00-00', 'SPP September 2015 (Livia)', 150, 0, 10),
(97, '0000-00-00', 'SPP September 2015 (Graciela)', 150, 0, 11),
(98, '0000-00-00', 'SPP September 2015 (Tzandy)', 150, 0, 11),
(99, '0000-00-00', 'SPP September 2015 (Renata)', 150, 0, 11),
(100, '0000-00-00', 'SPP September 2015 (Irene)', 150, 0, 11),
(101, '0000-00-00', 'SPP September 2015 (Carrisa)', 150, 0, 11),
(102, '0000-00-00', 'SPP September 2015 (Jashinta)', 180, 0, 11),
(103, '0000-00-00', 'SPP September 2015 (Putri)', 150, 0, 11),
(104, '0000-00-00', 'SPP September 2015 (Kevin)', 150, 0, 12),
(105, '0000-00-00', 'SPP September 2015 (Aphenta Doly)', 150, 0, 12),
(106, '0000-00-00', 'SPP September 2015 (Jeremi)', 150, 0, 12),
(107, '0000-00-00', 'SPP September 2015 (Evans Dolly)', 150, 0, 12),
(108, '0000-00-00', 'SPP September 2015 (Jesie De Vanesa)', 150, 0, 12),
(109, '0000-00-00', 'SPP September 2015 (Christian Sihombing)', 150, 0, 12),
(110, '0000-00-00', 'SPP Agustus 2015 (Elenta)', 150, 0, 13),
(111, '0000-00-00', 'SPP September 2015 (Gisela)', 150, 0, 13),
(112, '0000-00-00', 'SPP Agustus 2015 (Hans)', 150, 0, 13),
(113, '0000-00-00', 'SPP September 2015 (Angel)', 150, 0, 13),
(114, '0000-00-00', 'SPP September 2015 (Cahaya)', 150, 0, 13),
(115, '0000-00-00', 'SPP September 2015 (Christin)', 150, 0, 13),
(116, '0000-00-00', 'SPP September 2015 (Nigel)', 150, 0, 13),
(117, '0000-00-00', 'SPP Agustus 2015 (Adil)', 150, 0, 14),
(118, '0000-00-00', 'SPP September 2015 + denda (Jify)', 158, 0, 14),
(119, '0000-00-00', 'SPP Oktober 2015 (Ebzan)', 150, 0, 14),
(120, '0000-00-00', 'SPP September 2015 (Elenta)', 150, 0, 14),
(121, '0000-00-00', 'SPP Oktober 2015 (Elisabeth)', 150, 0, 14),
(122, '0000-00-00', 'Uang seragam tambahan (Kevin)', 100, 0, 14),
(123, '0000-00-00', 'Cicilan II (Elenta Purba)', 300, 0, 15),
(124, '0000-00-00', 'Cicilan III (Livia)', 500, 0, 14),
(125, '0000-00-00', 'Uang seragam tambahan (Irene)', 100, 0, 14),
(126, '0000-00-00', 'Cicilan II (Cahaya)', 750, 0, 15),
(127, '0000-00-00', 'Uang seragam tambahan (Cahaya)', 100, 0, 15),
(128, '0000-00-00', 'Cicilan II (Jashinta)', 1, 0, 16),
(129, '0000-00-00', 'Cicilan I (Nigel)', 250, 0, 16),
(130, '0000-00-00', 'Uang keamanan bln Agustus-Oktober 2015', 0, 300, 16),
(131, '0000-00-00', 'Uang seragam tambahan (Jify)', 100, 0, 18),
(132, '0000-00-00', 'Cicilan II (Tzandi)', 140, 0, 18),
(133, '0000-00-00', 'Cicilan II Biaya Masuk SD T.P. 2016/2017 (Rebeka)', 300, 0, 18),
(134, '0000-00-00', 'SPP Oktober 2015 (Gisela)', 150, 0, 17),
(135, '0000-00-00', 'SPP Oktober 2015 (Kevin)', 150, 0, 18),
(136, '0000-00-00', 'SPP Oktober 2015 (Putri)', 150, 0, 18),
(137, '0000-00-00', 'SPP Oktober 2015 (Livia)', 150, 0, 18),
(138, '0000-00-00', 'SPP Oktober 2015 (Evans)', 150, 0, 18),
(139, '0000-00-00', 'SPP Oktober 2015 (Dava)', 150, 0, 18),
(140, '0000-00-00', 'SPP Oktober-Desember 2015 (Graciela)', 450, 0, 9),
(141, '0000-00-00', 'SPP Agustus dan Oktober 2015 (Irene)', 300, 0, 10),
(142, '0000-00-00', 'SPP Oktober 2015 (Christian Clay)', 150, 0, 10),
(143, '0000-00-00', 'SPP Oktober 2015 (Christian Sihombing)', 150, 0, 10),
(144, '0000-00-00', 'SPP Oktober 2015 (Cahaya)', 150, 0, 10),
(145, '0000-00-00', 'SPP Juli dan September (Adil)', 300, 0, 10),
(146, '0000-00-00', 'SPP Oktober (Jashinta)', 180, 0, 11),
(147, '0000-00-00', 'SPP Oktober 2015 (Renata)', 150, 0, 11),
(148, '0000-00-00', 'SPP Oktober 2015 (Aphenta Doly)', 150, 0, 11),
(149, '0000-00-00', 'SPP Oktober 2015 (Nigel)', 150, 0, 11),
(150, '0000-00-00', 'SPP Oktober 2015 (Brandyanto)', 150, 0, 11),
(151, '0000-00-00', 'SPP Juli 2016 (Faith)', 180, 0, 11),
(152, '0000-00-00', 'SPP Oktober 2015 (Elenta)', 150, 0, 12),
(153, '0000-00-00', 'SPP Oktober 2015 + denda 2 hari (Jeremi)', 154, 0, 12),
(154, '0000-00-00', 'SPP Oktober 2015 + denda 2 hari (Christin Turnip)', 154, 0, 12),
(155, '0000-00-00', 'SPP Oktober 2015 (Hans)', 150, 0, 12),
(156, '0000-00-00', 'SPP Oktober 2015 (Angel)', 150, 0, 12),
(157, '0000-00-00', 'SPP Oktober 2015 (Jify)', 150, 0, 12),
(158, '0000-00-00', 'SPP Oktober 2015 (Jessie De Vanesa)', 160, 0, 13),
(159, '0000-00-00', 'SPP Oktober 2015 (Tzandi)', 160, 0, 13),
(160, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Hans)', 300, 0, 13),
(161, '0000-00-00', 'Cicilan IV Biaya Masuk TK T.P. 2015/2016 (Livia)', 250, 0, 13),
(162, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Livia)', 300, 0, 14),
(163, '0000-00-00', 'Cicilan I Biaya Masuk TK T.P. 2016/2017 (Cristhofeer)', 300, 0, 14),
(164, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Brandyanto)', 500, 0, 14),
(165, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Elisabeth)', 400, 0, 14),
(166, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Aurel)', 300, 0, 14),
(167, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Cahaya)', 300, 0, 14),
(168, '0000-00-00', 'Cicilan I Biaya Masuk TK T.P. 2016/2017 (Carrisa)', 500, 0, 14),
(169, '0000-00-00', 'Cicilan I Biaya Masuk TK T.P. 2016/2017 (Divani)', 300, 0, 14),
(170, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Christian Sihombing)', 300, 0, 14),
(171, '0000-00-00', 'Cicilan II Biaya Masuk TK T.P. 2015/2016 (Nigel)', 250, 0, 15),
(172, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Jivana)', 900, 0, 15),
(173, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Kevin)', 1, 0, 17),
(174, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Eci Lyla)', 300, 0, 17),
(175, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Joanita)', 300, 0, 17),
(176, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Gisela)', 300, 0, 18),
(177, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Christin Turnip)', 300, 0, 18),
(178, '0000-00-00', 'SPP November 2015 (Elisabeth)', 150, 0, 18),
(179, '0000-00-00', 'SPP November 2015 (Christian Clay)', 150, 0, 18),
(180, '0000-00-00', 'SPP November 2015 (Gisela)', 150, 0, 18),
(181, '0000-00-00', 'SPP November 2015 (Ebzan)', 150, 0, 18),
(182, '0000-00-00', 'SPP November 2015 (Jashinta)', 180, 0, 19),
(183, '0000-00-00', 'SPP November 2015 (Hans)', 150, 0, 19),
(184, '0000-00-00', 'SPP November 2015 (Jeremi)', 150, 0, 19),
(185, '0000-00-00', 'SPP November 2015 (Dava)', 150, 0, 19),
(186, '0000-00-00', 'SPP November 2015 (Livia)', 150, 0, 19),
(187, '0000-00-00', 'SPP November 2015 (Christin)', 150, 0, 19),
(188, '0000-00-00', 'SPP November 2015 (Putri)', 150, 0, 20),
(189, '0000-00-00', 'SPP November 2015 (Brandyanto)', 150, 0, 10),
(190, '0000-00-00', 'SPP November 2015 (Evans)', 150, 0, 10),
(191, '0000-00-00', 'SPP November 2015 (Cahaya)', 150, 0, 10),
(192, '0000-00-00', 'SPP November 2015 (Angel)', 150, 0, 10),
(193, '0000-00-00', 'SPP November 2015 (Kevin)', 150, 0, 10),
(194, '0000-00-00', 'SPP November 2015 (Aphenta)', 150, 0, 10),
(195, '0000-00-00', 'SPP November 2015 (Elenta)', 150, 0, 11),
(196, '0000-00-00', 'SPP November 2015 (Nigel)', 150, 0, 11),
(197, '0000-00-00', 'SPP November 2015 (Christian Sihombing)', 150, 0, 11),
(198, '0000-00-00', 'SPP November 2015 (Tzandi)', 150, 0, 11),
(199, '0000-00-00', 'SPP November 2015 (Renata)', 150, 0, 11),
(200, '0000-00-00', 'SPP November 2015 (Vanesa)', 150, 0, 11),
(201, '0000-00-00', 'SPP November 2015 (Irene)', 152, 0, 11),
(202, '0000-00-00', 'SPP Agustus & September 2015 (Goldwin)', 300, 0, 12),
(203, '0000-00-00', 'SPP Oktober 2015 (Goldwin)', 150, 0, 12),
(204, '0000-00-00', 'SPP Desember 2015 (Gisela)', 150, 0, 12),
(205, '0000-00-00', 'Cicilan II Biaya Masuk SD T.P. 2016/2017 (Ebzan)', 500, 0, 13),
(206, '0000-00-00', 'Cicilan II Biaya Masuk SD T.P. 2016/2017 (Hans)', 400, 0, 13),
(207, '0000-00-00', 'Pelunasan Biaya Masuk TK T.P. 2015/2016 (Livia)', 400, 0, 13),
(208, '0000-00-00', 'Cicilan I Biaya Masuk TK T.P. 2016/2017 (Veoscar)', 350, 0, 14),
(209, '0000-00-00', 'Cicilan I Biaya Masuk TK T.P. 2016/2017 (Velila)', 350, 0, 14),
(210, '0000-00-00', 'Pelunasan Biaya Masuk TK T.P. 2015/2016 (Putri)', 600, 0, 14),
(211, '0000-00-00', 'Cicilan II Biaya Masuk SD T.P. 2016/2017 (Marvel)', 1, 0, 16),
(212, '0000-00-00', 'Cicilan I Biaya Masuk TK T.P. 2016/2017', 500, 0, 11),
(213, '0000-00-00', 'SPP Desember 2015 (Ebzan)', 150, 0, 12),
(214, '0000-00-00', 'SPP Desember 2015 (Hans)', 150, 0, 12),
(215, '0000-00-00', 'SPP Desember 2015 (Jeremi)', 150, 0, 12),
(216, '0000-00-00', 'SPP Desember 2015 (Livia)', 150, 0, 12),
(217, '0000-00-00', 'SPP Desember 2015 (Christin)', 150, 0, 12),
(218, '0000-00-00', 'SPP Desember 2015 (Elisabeth)', 150, 0, 12),
(219, '0000-00-00', 'SPP Desember 2015 (Jasintha)', 180, 0, 13),
(220, '0000-00-00', 'SPP Desember 2015 (Dava)', 150, 0, 13),
(221, '0000-00-00', 'SPP Desember 2015 (Putri)', 150, 0, 3),
(222, '0000-00-00', 'SPP Desember 2015 (Cahaya)', 150, 0, 3),
(223, '0000-00-00', 'SPP Desember 2015 (Christian Sihombing)', 150, 0, 3),
(224, '0000-00-00', 'SPP Desember 2015 (Brandyanto)', 150, 0, 3),
(225, '0000-00-00', 'SPP Desember 2015 (Kevin)', 150, 0, 3),
(226, '0000-00-00', 'SPP Desember 2015 (Angel)', 150, 0, 4),
(227, '0000-00-00', 'SPP Desember 2015 (Aphenta)', 150, 0, 4),
(228, '0000-00-00', 'SPP Desember 2015 (Evans)', 150, 0, 4),
(229, '0000-00-00', 'SPP Desember 2015 (Irene)', 150, 0, 4),
(230, '0000-00-00', 'SPP Desember 2015 (Jessie)', 150, 0, 4),
(231, '0000-00-00', 'SPP Desember 2015 (Nigel)', 150, 0, 4),
(232, '0000-00-00', 'SPP Desember 2015 (Tzandy)', 150, 0, 5),
(233, '0000-00-00', 'SPP Desember 2015 (Elenta)', 150, 0, 5),
(234, '0000-00-00', 'SPP Desember 2015 + denda 7 hari (Renata)', 164, 0, 5),
(235, '2016-01-01', 'Cicilan I SD a/n Timoty', 300000, 0, 5615441),
(236, '2016-01-01', 'Cicilan I TK B a/n Shinta Uli', 300000, 0, 5915441),
(237, '2016-01-01', 'Cicilan I  TK B a/n Dirga', 500000, 0, 6415441),
(238, '2016-01-01', 'Cicilan I PG a/n Giopson', 300000, 0, 6715441),
(239, '2016-01-01', 'Cicilan I TK B a/n Tesalonika', 300000, 0, 7015441),
(240, '2016-01-03', 'Cicilan II SD a/n Elisabeth', 1000000, 0, 8015441),
(241, '2016-01-03', 'Cicilan II TK B a/n Clarisa', 1000000, 0, 9015441),
(242, '2016-01-03', 'Cicilan II TK A a/n Veoscar M', 500000, 0, 9515441),
(243, '2016-01-03', 'Cicilan II TK B a/n Velila', 500000, 0, 10015441),
(244, '2016-01-03', 'Cicilan I TK B a/n Riski', 500000, 0, 10515441),
(245, '2016-01-03', 'Cicilan III SD a/n Hans Demian', 500000, 0, 11015441),
(246, '2016-01-03', 'Cicilan I TK B a/n Michella Putri', 500000, 0, 11515441),
(247, '2016-01-03', 'Cicilan I TK B a/n Eca Rinawati Sinaga', 300000, 0, 11815441),
(248, '2016-01-03', 'Cicilan II TK A a/n Graviola Nathania', 400000, 0, 12215441),
(249, '2016-01-03', 'Cicilan I  SD a/n Joyce Gracelya', 300000, 0, 12515441),
(250, '2016-01-05', 'Cicilan I SD a/n Chesya br. Simarmata', 300000, 0, 12815441),
(251, '2016-01-05', 'Cicilan I SD a/n Dava Evsando S', 300000, 0, 13115441),
(252, '2016-01-05', 'Cicilan I  SD a/n Jify Joune Silalahi', 500000, 0, 13615441),
(253, '2016-01-05', 'Cicilan I TK B a/n Jeremi Lumban Toruan', 300000, 0, 13915441),
(254, '2016-01-05', 'Pelunasan buku Jesie De Vanesa', 200000, 0, 14115441),
(255, '2016-01-11', 'Cicilan I  SD a/n Vanny Angelita Lubis', 300000, 0, 14415441),
(256, '2016-01-11', 'Cicilan I TK B a/n Rocky Sitompul', 300000, 0, 14715441),
(257, '2016-01-11', 'Pelunasan buku  2015/2016 a/n Nigel Septian', 400000, 0, 15115441),
(258, '2016-01-11', 'Cicilan uang buku 2016/2017 a/n Nigel Septian Tobing', 400000, 0, 15515441),
(259, '2016-01-11', 'Cicilan I SD a/n Rebecca Sibarani', 600000, 0, 16115441),
(260, '2016-01-11', 'Cicilan I  SD a/n Fransisca Chey sa', 300000, 0, 16415441),
(261, '2016-01-11', 'Cicilan I TK B a/n Cashya Samosir', 300000, 0, 16715441),
(262, '2016-01-11', 'Pelunasan TK B Tp 2016/2017 a/n Bradianto', 500000, 0, 17215441),
(263, '2016-01-11', 'Pelunasan TK B Tp 2016/2017 a/n Henry Napitupulu', 1855000, 0, 19070441),
(264, '2016-01-11', 'Cicilan I TK B Tp 2016/2017 a/n Ari', 2155000, 0, 21225441),
(265, '2016-01-11', 'Cicilan I   SD a/n Jocely A Sinaga', 300000, 0, 21525441),
(266, '2016-01-11', 'Cicilan I TK B 2016/2017 a/n Henry Napitupulu', 300000, 0, 21825441),
(267, '2016-01-18', 'SPP bln January Christian Sihombing', 150000, 0, 9134291),
(268, '2016-01-18', 'SPP bln January Angel Novianti', 150000, 0, 9284291),
(269, '2016-01-18', 'SPP bln January Gisela', 150000, 0, 9434291),
(270, '2016-01-18', 'SPP bln January Nigel septian', 150000, 0, 9584291),
(271, '2016-01-18', 'SPP bln January Elisabeth', 150000, 0, 9734291),
(272, '2016-01-18', 'SPP bln January Hans Situmorang', 150000, 0, 9884291),
(273, '2016-01-18', 'SPP bln January Apenta ', 150000, 0, 10034291),
(274, '2016-01-18', 'SPP bln January Elenta Purba', 150000, 0, 10184291),
(275, '2016-01-18', 'SPP bln January Putri', 150000, 0, 10334291),
(276, '2016-01-18', 'SPP bln January Graciela Januari 2016 - Juli 206', 900000, 0, 11234291),
(277, '2016-01-18', 'SPP bln January Kevin Pratama', 150000, 0, 11384291),
(278, '2016-01-18', 'SPP bln January Brandiant Sialagan', 150000, 0, 11534291),
(279, '2016-01-18', 'SPP bln January Jeremi Fransisco', 150000, 0, 11684291),
(280, '2016-01-18', 'SPP bln January Dava Efsando', 150000, 0, 11834291),
(281, '2016-01-18', 'SPP bln January Ebzan Sihombing', 150000, 0, 11984291),
(282, '2016-01-18', 'SPP bln January Cahaya', 150000, 0, 12134291),
(283, '2016-01-18', 'SPP bln January Livia Felisha', 150000, 0, 12284291),
(284, '2016-01-18', 'SPP bln January Christine Turnip', 150000, 0, 12434291),
(285, '2016-01-18', 'SPP bln Des-Jan Jify Joune ', 300000, 0, 12734291),
(286, '2016-01-18', 'SPP bln January Evan Dolly', 150000, 0, 12884291),
(287, '2016-01-18', 'SPP bln January Christian Clay', 150000, 0, 13034291),
(288, '2016-01-18', 'SPP bln January Jesie de Vanesa', 150000, 0, 13184291),
(289, '2016-01-18', 'SPP bln January Jasinta', 150000, 0, 13334291),
(290, '2016-01-18', 'SPP bln January Tzandy', 150000, 0, 13484291),
(291, '2016-01-18', 'SPP bln January Renata', 150000, 0, 13634291),
(292, '2016-02-01', 'Cicilan IV SD a/n Hans Demian', 500000, 0, 14134291),
(293, '2016-02-01', 'Cicilan I  TK B a/n Eka Desnita', 300000, 0, 14434291),
(294, '2016-02-01', 'Cicilan I   SD a/n Novelina Elisabeth', 700000, 0, 15134291),
(295, '2016-02-01', 'Cicilan I SD a/n Nathanael A Purba', 500000, 0, 15634291),
(296, '2016-02-01', 'Pelunasan biaya buku a/n Kevin Pratama', 500000, 0, 16134291),
(297, '2016-02-01', 'Cicilan I TK B a/n Alfaro G Simanjuntak', 300000, 0, 16434291),
(298, '2016-02-01', 'Cicilan II TK B a/n Dirga Yeriko', 500000, 0, 16934291),
(299, '2016-02-01', 'Cicilan II  SD a/n Dava Evsando', 300000, 0, 17234291),
(300, '2016-02-01', 'Pelunasan SD a/n Christian Sihombing', 2500000, 0, 19734291),
(301, '2016-02-01', 'Cicilan III TK B a/n Clarisa', 700000, 0, 20434291),
(302, '2016-02-01', 'Cicilan SD  a/n  Aurel', 2600000, 0, 23034291),
(303, '2016-02-01', 'Cicilan I TK B a/n Heber Rivaldi situmorang', 300000, 0, 23334291),
(304, '2016-02-01', 'Pelunasan', 1800000, 0, 25134291),
(305, '2016-02-01', 'Pelunasan TK B a/n Jeremi Lumban Toruan ( 2015/2016)', 600000, 0, 25734291),
(306, '2016-02-01', 'Pelunasan TK B a/n Michella', 1700000, 0, 27434291),
(307, '2016-02-01', 'Cicilan III   TK A a/n Graviola Nathania', 400000, 0, 27834291),
(308, '2016-02-01', 'Pelunasan SD a/n Marvel P Marpaung', 1000000, 0, 28834291),
(309, '2016-02-01', 'Cicilan II SD a/n Cahaya Olivia Purba', 300000, 0, 29134291),
(310, '2016-02-01', 'Cicilan I SD a/n May Ekalista S', 400000, 0, 29534291),
(311, '2016-02-01', 'Cicilan I SD a/n Calvin Christian ', 300000, 0, 29834291),
(312, '2016-02-01', 'Pelunasan SD a/n Jivana', 1000000, 0, 30834291),
(313, '2016-02-01', 'Masuk SD a/n Gomer', 3330000, 0, 34164291),
(314, '2016-02-01', 'Pelunasan SD a/n Jhon Steven Nainggolan', 2400000, 0, 36564291),
(315, '2016-02-01', 'Cicilan II  SD a/n Joanita', 300000, 0, 36864291),
(316, '2016-02-01', 'Pelunasan TK B a/n Velila CG manullang', 1350000, 0, 38214291),
(317, '2016-02-01', 'Pelunasan TK A a/n Veoscar Canata', 1250000, 0, 39464291),
(318, '2016-02-01', 'Cicilan II  SD a/n Livia Felisha', 1600000, 0, 41064291),
(319, '2016-02-01', 'Cicilan I   SD a/n Christine Anatasya. S', 680000, 0, 41744291),
(320, '2016-02-01', 'Cicilan I  SD a/n Chelsy Renata Sidabutar', 300000, 0, 42044291),
(321, '2016-02-01', 'Cicilan I  TK B Sartika Idola Sitorus', 500000, 0, 42544291),
(322, '2016-02-01', 'Cicilan I  TK B Secilia N sianturi', 1000000, 0, 43544291),
(323, '2016-02-01', 'Cicilan II  TK B Rocky Baby', 300000, 0, 43844291),
(324, '2016-02-01', 'SPP Februari 2016 Putri', 150000, 0, 43994291),
(325, '2016-02-01', 'SPP Februari 2016 Hans Situmorang', 150000, 0, 44144291),
(326, '2016-02-01', 'SPP Februari 2016 Dava Efsando', 150000, 0, 44294291),
(327, '2016-02-01', 'SPP Februari 2016 Christian Sihombing', 150000, 0, 44444291),
(328, '2016-02-01', 'SPP Februari 2016 Livia Felisha', 150000, 0, 44594291),
(329, '2016-02-01', 'SPP Februari 2016 Ebzan Sihombing', 150000, 0, 44744291),
(330, '2016-02-01', 'SPP Februari 2016 Apenta Dolly', 150000, 0, 44894291),
(331, '2016-02-05', 'SPP Februari 2016 Angel', 150000, 0, 34144291),
(332, '2016-02-05', 'SPP Februari 2016 Gisela', 150000, 0, 34294291),
(333, '2016-02-05', 'SPP Februari 2016 Kevin Pratama', 150000, 0, 34444291),
(334, '2016-02-05', 'SPP Februari 2016 Jesie de Vanesa', 150000, 0, 34594291),
(335, '2016-02-05', 'SPP Februari 2016 Jeremi Fransisco', 150000, 0, 34744291),
(336, '2016-02-05', 'SPP Februari 2016 Putri', 150000, 0, 34894291),
(337, '2016-02-05', 'SPP Februari 2016 Bradiyanto', 150000, 0, 35044291),
(338, '2016-02-05', 'SPP Februari 2016Evan Dolly', 152000, 0, 35196291),
(339, '2016-02-05', 'SPP Februari 2016 Cahaya olivia ', 150000, 0, 35346291),
(340, '2016-02-05', 'SPP Februari 2016 Jasinta', 180000, 0, 35526291),
(341, '2016-02-05', 'SPP Februari 2016 Renata', 150000, 0, 35676291),
(342, '2016-02-05', 'SPP Februari 2016 Nigel', 154000, 0, 35830291),
(343, '2016-02-05', 'SPP Februari 2016 Tzandy. D.H Tambunan', 150000, 0, 35980291),
(344, '2016-02-05', 'SPP Februari 2016 Jify J Silaban', 150000, 0, 36130291),
(345, '2016-02-05', 'SPP Februari 2016 Christian P Panjaitan', 152000, 0, 36282291),
(346, '2016-02-05', 'SPP Februari 2016 Christine Turnip', 150000, 0, 36432291),
(347, '0000-00-00', 'Cicilan V  SD a/n Hans Demian', 800, 0, 35),
(348, '0000-00-00', 'Cicilan 2015/2016 a/n Elenta Purba', 150, 0, 35),
(349, '0000-00-00', 'Cicilan 2015/2016 a/n Renata Sianturi', 200, 0, 35),
(350, '0000-00-00', 'Cicilan I  TK B a/n : Gustav Pakpahan', 500, 0, 36),
(351, '0000-00-00', 'Cicilan I TK B a/n : Chaterine Ruth', 500, 0, 36),
(352, '0000-00-00', 'Cicilan III  TK B a/n Dirga Situmorang', 500, 0, 37),
(353, '0000-00-00', 'Pelunasan SD a/n Fredrico', 2, 0, 39),
(354, '0000-00-00', 'Cicilan II  TK B a/n Riski A Hutapea', 600, 0, 40),
(355, '0000-00-00', 'Cicilan III  TK B a/n Rocky Bobby C', 300, 0, 40),
(356, '0000-00-00', 'Cicilan I TK B a/n Josua', 1, 0, 41),
(357, '0000-00-00', 'Cicilan TK B TP 2015/2016  a/n  Renata', 500, 0, 42),
(358, '0000-00-00', 'Pelunasan SD a/n Bradiyanto', 2, 0, 44),
(359, '0000-00-00', 'Cicilan II  SD a/n Jify Joune', 400, 0, 44),
(360, '0000-00-00', 'Cicilan II  TK B a/n Sartika Idola Sitorus', 600, 0, 45),
(361, '0000-00-00', 'Cicilan III  SD a/n Livia Felisha', 400, 0, 45),
(362, '0000-00-00', 'Cicilan III  TK A a/n Graviola Nathania', 450, 0, 46),
(363, '0000-00-00', 'Cicilan II TK B a/n Heber', 500, 0, 46),
(364, '0000-00-00', 'Cicilan I TK B a/n Angel Liasna br. Ginting', 300, 0, 47),
(365, '0000-00-00', 'Cicilan I  SD a/n Livia ', 500, 0, 47),
(366, '0000-00-00', 'Cicilan I TK B a/n Arabella', 500, 0, 48),
(367, '0000-00-00', 'Cicilan I SD a/n Christine Anatasya. S', 680, 0, 48),
(368, '0000-00-00', 'Pelunasan TK B  a/n Rachel Leon', 2, 0, 54),
(369, '0000-00-00', 'Cicilan III  SD a/n Cahaya Olivia Purba', 1, 0, 55),
(370, '0000-00-00', 'Cicilan II TK B a/n Chaterine', 650, 0, 56),
(371, '0000-00-00', 'Cicilan II TK B a/n Tesalonika', 300, 0, 56),
(372, '0000-00-00', 'Cicilan II TK B a/n Eka', 400, 0, 56),
(373, '0000-00-00', 'Cicilan II  PG a/n Giopson', 500, 0, 57),
(374, '0000-00-00', 'Cicilan II  TK B a/n Gustav', 650, 0, 58),
(375, '0000-00-00', 'Pelunasan TK B TP 2015/2016  a/n  Renata', 650, 0, 58),
(376, '0000-00-00', 'Cicilan II TK B a/n Jocelyn Atheya Sinaga', 500, 0, 59),
(377, '0000-00-00', 'Cicilan II  TK B Rocky Baby', 300, 0, 59),
(378, '0000-00-00', 'SPP Maret 2016 Elisabeth', 150, 0, 44),
(379, '0000-00-00', 'SPP MARET 2016 Hans Situmorang', 150, 0, 45),
(380, '0000-00-00', 'SPP MARET 2016 Dava Efsando', 150, 0, 45),
(381, '0000-00-00', 'SPP MARET 2016 Christian Sihombing', 150, 0, 45),
(382, '0000-00-00', 'SPP MARET 2016 Livia Felisha', 150, 0, 45),
(383, '0000-00-00', 'SPP MARET 2016 Ebzan Sihombing', 150, 0, 45),
(384, '0000-00-00', 'SPP MARET 2016 Apenta Dolly', 150, 0, 45),
(385, '0000-00-00', 'SPP MARET 2016 Angel', 150, 0, 45),
(386, '0000-00-00', 'SPP MARET 2016 Gisela', 150, 0, 46),
(387, '0000-00-00', 'SPP MARET 2016 Kevin Pratama', 150, 0, 46),
(388, '0000-00-00', 'SPP MARET 2016 Jesie de Vanesa', 152, 0, 46),
(389, '0000-00-00', 'SPP MARET 2016Jeremi Fransisco', 150, 0, 46),
(390, '0000-00-00', 'SPP MARET 2016 Putri', 150, 0, 46),
(391, '0000-00-00', 'SPP MARET 2016 Bradiyanto', 150, 0, 46),
(392, '0000-00-00', 'SPP MARET 2016 Evan Dolly', 152, 0, 46),
(393, '0000-00-00', 'SPP MARET 2016 Cahaya olivia ', 150, 0, 47),
(394, '0000-00-00', 'SPP MARET 2016 Jasinta', 180, 0, 47),
(395, '0000-00-00', 'SPP MARET 2016 Renata', 150, 0, 47),
(396, '0000-00-00', 'SPP MARET 2016 Nigel', 150, 0, 47),
(397, '0000-00-00', 'SPP MARET 2016 Tzandy. D.H Tambunan', 154, 0, 47),
(398, '0000-00-00', 'SPP MARET 2016 Jify J Silaban', 152, 0, 47),
(399, '0000-00-00', 'SPP MARET 2016 Christian P Panjaitan', 152, 0, 48),
(400, '0000-00-00', 'SPP MARET 2016 Iren bulan Feb-Maret \'16', 358, 0, 48),
(401, '0000-00-00', 'SPP MARET 2016 Elenta Purba', 150, 0, 48),
(402, '2016-04-01', 'Cicilan VI  SD a/n Hans Demian', 300000, 0, 48861241),
(403, '2016-04-01', 'Cicilan I SD a/n Vany', 500000, 0, 49361241),
(404, '2016-04-01', 'Cicilan I TK B a/n : Secilia Sianturi', 1000000, 0, 50361241),
(405, '2016-04-01', 'Cicilan IV TK A a/n Graviola Nathania', 500000, 0, 50861241),
(406, '2016-04-01', 'Cicilan IV  TK B a/n Heber Situmorang', 500000, 0, 51361241),
(407, '2016-04-01', 'Cicilan I  TK B a/n Herlina Siagian', 1000000, 0, 52361241),
(408, '2016-04-01', 'Cicilan III  SD a/n Rebeka', 1000000, 0, 53361241),
(409, '2016-04-01', 'Cicilan II SD  a/n Christina Turnip', 400000, 0, 53761241),
(410, '2016-04-01', 'Cicilan II  TK A a/n Ranielcy Marpaung', 500000, 0, 54261241),
(411, '2016-04-01', 'Cicilan II  SD a/n Natanael', 400000, 0, 54661241),
(412, '2016-04-01', 'Cicilan III  TK B a/n Riski Aditia', 500000, 0, 55161241),
(413, '2016-04-01', 'Cicilan I TK B a/n Jenifer Tampubolon', 1000000, 0, 56161241),
(414, '2016-04-01', 'Cicilan II TK B a/n Mita Engelita Sagala', 300000, 0, 56461241),
(415, '2016-04-01', 'Cicilan II  TK B a/n Shinta Uli', 900000, 0, 57361241),
(416, '2016-04-01', 'Cicilan I  TK B a/n Jovira Sasmita Sirait', 500000, 0, 57861241),
(417, '2016-04-01', 'Cicilan I  TK A a/n Andhin Arief', 2000000, 0, 59861241),
(418, '2016-04-01', 'Cicilan II TK B a/n Herlina Siagian', 1000000, 0, 60861241),
(419, '2016-04-01', 'Cicilan III  TK B a/n Tesalonika', 400000, 0, 61261241),
(420, '2016-04-01', 'Cicilan III  TK B a/n Eka Desnita N', 500000, 0, 61761241),
(421, '2016-04-01', 'Cicilan  TK B  TP 2015/2016 a/n Jify J S ', 200000, 0, 61961241),
(422, '2016-04-01', 'Cicilan III  PG a/n Giopson', 500000, 0, 62461241),
(423, '2016-04-01', 'Cicilan II  SD a/n  May Ekalista Simanjuntak', 1000000, 0, 63461241),
(424, '2016-04-01', 'Cicilan II TK B  a/n Arabella', 200000, 0, 63661241),
(425, '2016-04-01', 'Pelunasan SD a/n Rebeka', 700000, 0, 64361241),
(426, '2016-04-01', 'Cicilan II  SD a/n Calvin Christian', 1100000, 0, 65461241),
(427, '2016-04-01', 'Cicilan III  SD a/n Jocelyn Atheya', 700000, 0, 66161241),
(428, '2016-04-01', 'Cicilan III SD a/n Christina Anatasya', 680000, 0, 66841241),
(429, '2016-04-01', 'Pelunasan SD a/n Cahaya Olivia Purba', 1200000, 0, 68041241),
(430, '2016-04-01', 'Pelunasan SD a/n Joanita Nauli Simatupang', 2300000, 0, 70341241),
(431, '2016-04-01', 'Pelunasan TK B a/n Sartika Idola Sitorus', 1400000, 0, 71741241),
(432, '2016-04-01', 'SPP April 2016 Elisabeth', 150000, 0, 71891241),
(433, '2016-04-01', 'SPP April 2016 Hans Situmorang', 150000, 0, 72041241),
(434, '2016-04-01', 'SPP April 2016 Dava Efsando', 150000, 0, 72191241),
(435, '2016-04-01', 'SPP April 2016 Christian Sihombing', 150000, 0, 72341241),
(436, '2016-04-01', 'SPP April 2016 Livia Felisha', 150000, 0, 72491241),
(437, '2016-04-01', 'SPP April 2016 Ebzan Sihombing', 150000, 0, 72641241),
(438, '2016-04-01', 'SPP April 2016 Apenta Dolly', 150000, 0, 72791241),
(439, '2016-04-01', 'SPP April 2016 Angel', 150000, 0, 72941241),
(440, '2016-04-01', 'SPP April 2016 Gisela', 150000, 0, 73091241),
(441, '2016-04-01', 'SPP April 2016 Kevin Pratama', 150000, 0, 73241241),
(442, '2016-04-01', 'SPP April 2016 Jesie de Vanesa', 150000, 0, 73391241),
(443, '2016-04-01', 'SPP April 2016 Jeremi Fransisco', 150000, 0, 73541241),
(444, '2016-04-01', 'SPP April 2016 Putri', 150000, 0, 73691241),
(445, '2016-04-01', 'SPP April 2016 Bradiyanto', 150000, 0, 73841241),
(446, '2016-04-01', 'SPP April 2016 Evan Dolly', 156000, 0, 73997241),
(447, '2016-04-01', 'SPP April 2016 Cahaya olivia ', 150000, 0, 74147241),
(448, '2016-04-01', 'SPP April 2016 Jasinta', 180000, 0, 74327241),
(449, '2016-04-01', 'SPP April 2016 Renata', 164000, 0, 74491241),
(450, '2016-04-01', 'SPP April 2016 Nigel', 150000, 0, 74641241),
(451, '2016-04-01', 'SPP April 2016 Tzandy. D.H Tambunan', 150000, 0, 74791241),
(452, '2016-04-01', 'SPP April 2016 Jify J Silaban', 150000, 0, 74941241),
(453, '2016-04-01', 'SPP April 2016 Christian P Panjaitan', 152000, 0, 75093241),
(454, '2016-04-01', 'SPP April 2016 Iren ', 150000, 0, 75243241),
(455, '2016-04-01', 'SPP April 2016 elenta purba', 150000, 0, 75393241),
(456, '2016-04-01', 'SPP April 2016 Adil Felix Simarmata Tahun 2015', 1000000, 0, 76393241),
(457, '2016-05-04', 'cicilan 3 tk b  arabella', 200000, 0, 63874791),
(458, '2016-05-04', 'cicilan 1 tk b Ruth Tambunan', 300000, 0, 64174791),
(459, '2016-05-04', 'cicilan 1 tk b  Kamelia', 500000, 0, 64674791),
(460, '2016-05-04', 'pelunasan tk b  Mita', 2200000, 0, 66874791),
(461, '2016-05-04', 'cicilan 4 tk b  Dirga', 500000, 0, 67374791),
(462, '2016-05-09', 'cicilan 3 sd  Christin', 300000, 0, 56316291),
(463, '2016-05-09', 'cicilan 3 sd Nathanael', 600000, 0, 56916291),
(464, '2016-05-09', 'cicilan 4 tk b Heber', 500000, 0, 57416291),
(465, '2016-05-09', 'cicilan 3 tk b  Chaterine', 650000, 0, 57556291),
(466, '2016-05-10', 'cicilan 2 tk b  Cashya', 500000, 0, 58056291),
(467, '2016-05-10', 'pelunasan tk b Riski Hutapea', 600000, 0, 58728031),
(468, '2016-05-10', 'pelunasan tk b Gavriola', 450000, 0, 59178031),
(469, '2016-05-10', 'cicilan 1 tk b Priskila Gultom', 300000, 0, 59478031),
(470, '2016-05-10', 'pelunasan uang kegiatan & buku Nigel', 300000, 0, 59778031),
(471, '2016-05-11', 'cicilan 2 sd Celsy R Sidabutar', 700000, 0, 60478031),
(472, '2016-05-12', 'cicilan 1 tk b  Marta O L', 300000, 0, 60671331),
(473, '2016-05-13', 'cicilan 2 tk b Ruth Tambunan', 1000000, 0, 61569731),
(474, '2016-05-13', 'cicilan 2 tk b Angel Ginting', 700000, 0, 62269731),
(475, '2016-05-13', 'cicilan 3 tk b Gustav Pakpahan', 650000, 0, 62919731),
(476, '2016-05-13', 'pelunasan tk b  Secilia S', 500000, 0, 63419731),
(477, '2016-05-13', 'cicilan 1 tk b Rizky D S', 300000, 0, 63719731),
(478, '2016-05-13', 'cicilan 1 sd Dhini Situmeang', 300000, 0, 64019731),
(479, '2016-05-13', 'cicilan 2 tk b Cristhofeer', 500000, 0, 64519731),
(480, '2016-05-16', 'cicilan 2 sd Joyce Simbolon', 1600000, 0, 66029731),
(481, '2016-05-16', 'cicilan 2 tk b Josua de G Turnip', 1000000, 0, 67029731),
(482, '2016-05-16', 'biaya daftar tk b ( cash, disc 5 % ) Nathaniel N', 2440000, 0, 69469731),
(483, '2016-05-16', 'cicilan 2 sd Timothy C Lubis', 2000000, 0, 71469731),
(484, '2016-05-18', 'pelunasan tk b 2015/2016', 508000, 0, 71955231),
(485, '2016-05-19', 'cicilan 1 tk b ', 300000, 0, 72255231),
(486, '2016-05-19', 'cicilan 1 sd', 500000, 0, 72755231),
(487, '2016-05-19', 'cicilan 4 tk b ', 500000, 0, 73255231),
(488, '2016-05-19', 'cicilan 4 pg ', 500000, 0, 73755231),
(489, '2016-05-19', 'cicilan 4 tk b ', 300000, 0, 74055231),
(490, '2016-05-20', 'cicilan 3 sd May Ekalista', 1500000, 0, 75343231),
(491, '2016-05-21', 'biaya daftar tk b( cash, disc 5 % ) Gavra Sianturi', 2440000, 0, 77783231),
(492, '2016-05-23', 'pelunasan tk b Jeremi LT', 1900000, 0, 79649231),
(493, '2016-05-23', 'cicilan 3 tk b arabella', 500000, 0, 80149231),
(494, '2016-05-26', 'cicilan tk b  TP 2015/2016 Adil', 100000, 0, 80043231),
(495, '2016-05-27', 'cicilan 3 sd  Dava Evsando', 1200000, 0, 81081331),
(496, '2016-05-27', 'pelunasan tk b Ranielcy M', 500000, 0, 81535681),
(497, '2016-05-27', 'cicilan 4 sd Christina A S', 680000, 0, 82215681),
(498, '2016-05-02', 'spp  mei Elisabeh', 150000, 0, 82365681),
(499, '2016-05-03', 'spp  mei n juni Hans', 300000, 0, 82665681),
(500, '2016-05-04', 'spp maret Elenta', 150000, 0, 82815681),
(501, '2016-05-05', 'spp mei Gisela', 150000, 0, 82965681),
(502, '2016-05-06', 'spp mei Dava Evsando', 150000, 0, 83115681),
(503, '2016-05-07', 'spp mei Jashinta', 180000, 0, 83295681),
(504, '2016-05-07', 'spp mei Christian S', 150000, 0, 83445681),
(505, '2016-05-07', 'spp mei Kevin', 150000, 0, 83595681),
(506, '2016-05-07', 'spp mei Evans', 150000, 0, 83745681),
(507, '2016-05-07', 'spp mei Livia', 150000, 0, 83895681),
(508, '2016-05-07', 'spp mei Putri', 150000, 0, 84045681),
(509, '2016-05-08', 'spp mei Brandyanto', 150000, 0, 84195681),
(510, '2016-05-09', 'spp mei Cahaya', 150000, 0, 84345681),
(511, '2016-05-10', 'spp mei Jeremi  ', 150000, 0, 84495681),
(512, '2016-05-11', 'spp mei Angel  ', 150000, 0, 84645681),
(513, '2016-05-12', 'spp mei Tzandy', 150000, 0, 84795681),
(514, '2016-05-13', 'spp mei & juni Ebzan', 300000, 0, 85095681),
(515, '2016-05-13', 'spp mei Aphenta', 150000, 0, 85245681),
(516, '2016-05-13', 'spp mei  Nigel', 150000, 0, 85395681),
(517, '2016-05-13', 'spp mei  Renata', 150000, 0, 85695681),
(518, '2016-05-13', 'spp mei Jify', 150000, 0, 85845681),
(519, '2016-05-13', 'spp mei Christian Clay', 150000, 0, 86115681),
(520, '2016-05-13', 'spp april & mei Elenta', 300000, 0, 86415681),
(521, '2016-05-13', 'spp mei  Irene', 170000, 0, 86585681),
(522, '2016-05-13', 'spp april Adil', 150000, 0, 86735681),
(523, '2016-05-13', 'spp juni Gisela', 150000, 0, 86885681),
(524, '2016-05-13', 'spp juni Elisabeh', 150000, 0, 87035681),
(525, '2016-05-13', 'biaya wisuda  Kevin', 250000, 0, 87285681),
(526, '2016-05-13', 'biaya wisuda Elenta', 250000, 0, 87535681),
(527, '2016-05-13', 'biaya wisuda Ebzan', 250000, 0, 87785681),
(528, '2016-05-13', 'biaya wisuda Brandyanto', 250000, 0, 88035681),
(529, '2016-05-13', 'biaya wisuda Livia', 250000, 0, 88285681),
(530, '2016-05-13', 'biaya wisuda Adil', 250000, 0, 88535681),
(531, '2016-05-13', 'biaya wisuda Dava Evsando', 250000, 0, 88785681),
(532, '2016-05-13', 'biaya wisuda Hans', 250000, 0, 89035681),
(533, '2016-05-30', 'biaya wisuda Cahaya', 250000, 0, 89285681),
(534, '2016-05-30', 'biaya wisuda Elisabeh', 250000, 0, 89535681),
(535, '2016-05-30', 'biaya wisuda Jeremi', 250000, 0, 89785681),
(536, '2016-05-30', 'pembayaran seragam sd 36 set x 700.000', 0, 25200000, 59585681),
(537, '2016-05-30', 'pembayaran seragam tk 60 set x 550.000', 0, 33000000, 26585681),
(538, '2016-07-06', 'pelunasan biaya tk b Heber R Simatupang', 700000, 0, 25824681),
(539, '2016-07-06', 'cicilan 2 biaya tk b Eca Rinawati Sinaga', 500000, 0, 26324681),
(540, '2016-09-06', 'cicilan 1 sd Javier Chiko Christian', 300000, 0, 26377961),
(541, '2016-09-06', 'cicilan 1 sd Camelia Sinurat', 500000, 0, 26877961),
(542, '2016-11-06', 'donatur utk siswa tk nadia Bpk. Korianto', 1800000, 0, 28324961),
(543, '2016-11-06', 'cicilan 2 sd Javier Chiko Christian', 1700000, 0, 30024961),
(544, '2016-06-14', 'cicilan 2 tk b Marta O. Lumbangaol', 1000000, 0, 30303961),
(545, '2016-06-18', 'pelunasan biaya tk b 15/16 Elenta Purba', 400000, 0, 30338561),
(546, '2016-06-18', 'pelunasan biaya tk b Josua de Gratias Turnip', 500000, 0, 30838561),
(547, '2016-06-18', 'cicilan 2  sd Leonardo Messi', 1000000, 0, 31838561),
(548, '2016-06-20', 'pelunasan tk b Shinta Uli', 1000000, 0, 32938561),
(549, '2016-06-20', 'biaya masuk SD Kelvin B Simanjuntak', 3900000, 0, 36838561),
(550, '2016-06-23', 'cicilan 3 tk b  Arabella', 800000, 0, 37638561),
(551, '2016-06-24', 'pelunasan biaya tk a Divani Vanesha', 1800000, 0, 39438561),
(552, '2016-06-24', 'pelunasan biaya sd Christina Simbolon', 680000, 0, 40118561),
(553, '2016-06-27', 'cicilan 3 sd novelina elisabeth ', 1500000, 0, 41618561),
(554, '2016-06-28', 'pelunasan biaya sd may ekalista', 500000, 0, 42118561),
(555, '2016-06-29', 'cicilan 3 sd Camelia Sinurat', 500000, 0, 42618561),
(556, '2016-06-29', 'pelunasan sd  joyce simbolon', 1000000, 0, 43618561),
(557, '2016-06-29', 'pelunasan tk b gustav pakpahan', 700000, 0, 44318561),
(558, '2016-06-29', 'pelunasan tk b chaterine ruth maria', 700000, 0, 45018561),
(559, '2016-06-29', 'pelunasan t b Eca Rinawati Sinaga', 1400000, 0, 46418561),
(560, '2016-06-29', 'cicilan 3 tk b  cristhofeer', 700000, 0, 47118561),
(561, '2016-06-30', 'pelunasan tk b andhin arief', 500000, 0, 47618561),
(562, '2016-06-30', 'pelunasan tk b herlna octaviana s', 500000, 0, 48118561),
(563, '2016-06-30', 'pelunasan tk a Amora  C. Sihombing', 1500000, 0, 49618561),
(564, '2016-06-30', 'pelunasan tk b kamelia h.h', 2000000, 0, 51618561),
(565, '2016-06-30', 'pelunasan pg giopson', 400000, 0, 52018561),
(566, '2016-06-30', 'pelunasan tk b eka  napitupulu', 700000, 0, 52718561),
(567, '2016-06-30', 'pelunasan sd  celsy sidabutar', 2400000, 0, 55118561),
(568, '2016-06-30', 'pelunasan tk b angel simatupang', 2200000, 0, 57318561),
(569, '2016-05-31', 'uang wisuda Goldwin', 250000, 0, 52542861),
(570, '2016-02-06', 'uang wisuda Jify', 250000, 0, 52792861),
(571, '2016-03-06', 'uang wisuda Putri', 250000, 0, 53042861),
(572, '2016-01-06', 'uang wisuda Angel', 250000, 0, 53292861),
(573, '2016-01-06', 'uang wisuda Christian Sihombing', 250000, 0, 53542861),
(574, '2016-07-06', 'uang wisuda Christin N Turnip', 250000, 0, 53792861),
(575, '2016-09-06', ' uang wisuda Vanessa', 250000, 0, 54042861),
(576, '2016-07-01', 'cicilan 3 tk b cashsya samosir', 700000, 0, 40986261),
(577, '2016-07-01', 'pelunasan biaya tk b angel ginting', 500000, 0, 41486261),
(578, '2016-07-01', 'pelunsan biaya sd javier c christian', 2000000, 0, 43486261),
(579, '2016-07-02', 'cicilan 2 tk b abigail duka', 500000, 0, 43952261),
(580, '2016-07-02', 'pelunasan biaya sd jocelyn sinaga', 700000, 0, 44652261),
(581, '2016-07-02', 'pelunasan biaya sd novelina elisabet', 500000, 0, 45152261),
(582, '2016-07-02', 'pelunasan biaya sd timothy lubis', 600000, 0, 45752261),
(583, '2016-07-02', 'pelunasan biaya sd kevin matondang', 300000, 0, 46052261),
(584, '2016-07-04', 'pelunasan biaya sd nathanael purba', 900000, 0, 46936261),
(585, '2016-07-12', 'cicilan 2 sd fransisca', 300000, 0, 36218261),
(586, '2016-07-12', 'pelunasan biaya sd dava evsando', 1000000, 0, 37218261),
(587, '2016-07-14', 'cicilan 1 biaya sd jisyer', 500000, 0, 36985261),
(588, '2016-07-14', 'cicilan 1 tk b windi sitohang', 500000, 0, 37485261),
(589, '2016-07-15', 'cicilan 1 tk b jesica tambunan', 1500000, 0, 38985261),
(590, '2016-07-16', 'pelunasan tk b jesica tambunan', 1000000, 0, 39985261),
(591, '2016-07-16', 'cicilan 2 tk b jovina', 1000000, 0, 40985261),
(592, '2016-07-16', 'pelunasan tk b rocky bobby', 600000, 0, 41585261),
(593, '2016-07-16', 'pelunasan tk b jenifer tampubolon', 1200000, 0, 42785261),
(594, '2016-07-16', 'cicilan 1 uang buku n kegiatan renata', 100000, 0, 42885261),
(595, '2016-07-16', 'pelunasan sd elisabeth jelita s', 1400000, 0, 44685261),
(596, '2016-07-16', 'cicilan 1 tk a ivana purba', 1500000, 0, 46185261),
(597, '2016-07-18', 'cicilan 1 uang buku n kegiatan irene', 600000, 0, 46785261),
(598, '2016-07-19', 'cicilan 1 tk b  carisa carlene', 500000, 0, 47285261),
(599, '2016-07-19', 'peluasan sd jify', 1700000, 0, 48985261);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(100) NOT NULL,
  `tanggal_pengeluaran` date NOT NULL,
  `keterangan_pengeluaran` varchar(100) NOT NULL,
  `debit_pengeluaran` int(100) NOT NULL,
  `kredit_pengeluaran` int(100) NOT NULL,
  `saldo_pengeluaran` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `tanggal_pengeluaran`, `keterangan_pengeluaran`, `debit_pengeluaran`, `kredit_pengeluaran`, `saldo_pengeluaran`) VALUES
(1, '2015-06-30', 'Belanja ATK', 0, 91900, 9008100),
(2, '2015-06-30', 'Belanja ATK', 0, 108000, 8900100),
(3, '2015-06-30', 'Belanja alat kebersihan', 0, 64000, 8836100),
(4, '2015-07-01', 'Fotokopi dan jilid', 0, 60400, 8775700),
(5, '2015-07-23', 'Pulsa (Ms Wedia)', 0, 50000, 8725700),
(6, '2015-07-23', 'Belanja ATK', 0, 161200, 8564500),
(7, '2015-07-24', 'Belanja ATK', 0, 17000, 8547500),
(8, '2015-07-27', 'Belanja alat kebersihan', 0, 185000, 8362500),
(9, '2015-07-28', 'Belanja ATK dan alat kebersihan', 0, 337600, 8024900),
(10, '2015-07-29', 'Belanja ATK, alat kebersihan, dan fotokopi', 0, 170300, 7854600),
(11, '2015-07-30', 'Belanja ATK', 0, 38000, 7816600),
(12, '2015-07-31', 'Fotokopi dan jilid', 0, 117400, 7699200),
(13, '2015-08-01', 'Belanja ATK, alat kebersihan, Sanford, obat-obatan', 0, 281700, 10867500),
(14, '2015-08-02', 'Belanja ATK dan fotokopi', 0, 85850, 10781650),
(15, '2015-08-03', 'Belanja ATK dan fotokopi', 0, 23100, 10758550),
(16, '2015-08-04', 'Belanja ATK', 0, 158550, 11950000),
(17, '2015-08-04', 'Fotokopi', 0, 13350, 11936650),
(18, '2015-08-06', 'Fotokopi', 0, 1800, 13134850),
(19, '2015-08-06', 'Service printer', 0, 20000, 13114850),
(20, '2015-08-07', 'Belanja bahan dekorasi sekolah', 0, 115000, 13299850),
(21, '2015-08-07', 'Belanja kunci gembok', 0, 30000, 13269850),
(22, '2015-08-07', 'Belanja alat kebersihan', 0, 123000, 13146850),
(23, '2015-08-09', 'Belanja alat/bahan ajar dan perlengkapan lomba', 0, 91500, 13055350),
(24, '2015-08-11', 'Belanja ATK dan hadiah lomba', 0, 181500, 13473850),
(25, '2015-08-12', 'Belanja ATK', 0, 50500, 14473350),
(26, '2015-08-14', 'Belanja Sanford gelas dan isi ulang galon', 0, 26000, 15297350),
(27, '2015-08-15', 'Belanja alat/bahan dekorasi panggung dan lomba', 0, 58000, 15239350),
(28, '2015-08-16', 'Fotokopi', 0, 4000, 15235350),
(29, '2015-08-17', 'Belanja kabel mic', 0, 80000, 15155350),
(30, '2015-08-16', 'Belanja bingkisan utk ortu Irene (pinjam keyboard)', 0, 53500, 15101850),
(31, '2015-08-18', 'Belanja ATK', 0, 32500, 14639350),
(32, '2015-08-18', 'Pulsa hp sekolah', 0, 51000, 14588350),
(33, '2015-08-18', 'Belanja ATK', 0, 28000, 14560350),
(34, '2015-08-18', 'Belanja alat kebersihan', 0, 49500, 14510850),
(35, '2015-08-19', 'Belanja colokan terminasi', 0, 12000, 14498850),
(36, '2015-08-20', 'Belanja baterai remote', 0, 6000, 14792850),
(37, '2015-08-21', 'Belanja ATK', 0, 40600, 14752250),
(38, '2015-08-22', 'Belanja Sanford gelas dan isi ulang galon', 0, 24000, 14728250),
(39, '2015-08-25', 'Belanja kertas A4', 0, 33500, 14894750),
(40, '2015-08-27', 'Belanja ATK', 0, 98000, 14796750),
(41, '2015-08-27', 'Perbaiki selang toilet', 0, 50000, 14746750),
(42, '2015-08-29', 'Isi ulang Sanford', 0, 18000, 15278750),
(43, '2015-08-29', 'Ganti Bensin (Ms Wedia)', 0, 100000, 15178750),
(44, '2015-08-06', 'Gaji Guru dan Tenaga Pendidik Bulan Juni dan Juli 2015', 0, 3083077, 13145673),
(45, '2015-08-06', 'staff admintrasi', 0, 2000000, 11145673),
(46, '2015-09-02', 'Service printer', 0, 50000, 14465673),
(47, '2015-09-02', 'Belanja tissue & sabun cuci tangan', 0, 20900, 14444773),
(48, '2015-09-02', 'Belanja ATK & alat kebersihan', 0, 68000, 14376773),
(49, '2015-09-02', 'Belanja cover jilid', 0, 3000, 14373773),
(50, '2015-09-02', 'Belanja tinta printer', 0, 50000, 14323773),
(51, '2015-09-05', 'Belanja detergen & isi ulang Sanford', 0, 15000, 14808773),
(52, '2015-09-05', 'Belanja sikat baju', 0, 5000, 14803773),
(53, '2015-09-07', 'Belanja kertas A4', 0, 34000, 15419773),
(54, '2015-09-08', 'Belanja tissue & kacang hijau (utk alat peraga)', 0, 35500, 16884273),
(55, '2015-09-08', 'Belanja kacang merah (utk alat peraga)', 0, 7000, 16877273),
(56, '2015-09-09', 'Belanja karbol lantai', 0, 12800, 17414473),
(57, '2015-09-09', 'Belanja roti tawar (utk cooking project)', 0, 33600, 17380873),
(58, '2015-09-09', 'Belanja selai (utk cooking project)', 0, 66000, 17314873),
(59, '2015-09-10', 'Sisa uang seragam tambahan (Elenta)', 30000, 0, 17344873),
(60, '2015-09-10', 'Service mainan outdoor (papan titian)', 0, 200000, 17244873),
(61, '2015-09-10', 'Belanja kabel mic', 0, 80000, 17164873),
(62, '2015-09-12', 'Isi pulsa hp sekolah', 0, 51000, 17313873),
(63, '2015-09-12', 'Belanja ATK (kertas A4 1 dus, F4 1 rim, map 1 pcs)', 0, 189500, 17124373),
(64, '2015-09-12', 'Belanja buku tabungan harian 25 pcs', 0, 25000, 17099373),
(65, '2015-09-12', 'Belanja pewangi ruangan', 0, 24300, 17075073),
(66, '2015-09-12', 'Parkir motor', 0, 1000, 17074073),
(67, '2015-09-14', 'Service keran dapur', 0, 60000, 18014073),
(68, '2015-09-14', 'Belanja ATK (kertas origami 2 bks)', 0, 19000, 17995073),
(69, '2015-09-14', 'Belanja buku tabungan harian 5 pcs', 0, 5000, 17990073),
(70, '2015-09-17', 'Belanja bingkisan untuk ortu Angel (pinjam keyboard)', 0, 39000, 18451073),
(71, '2015-09-18', 'Isi ulang Sanford 3 galon', 0, 27000, 18424073),
(72, '2015-09-18', 'Pembayaran buku tabungan harian 14 pcs (Ms Riris)', 14000, 0, 18438073),
(73, '2015-09-18', 'Pembayaran buku tabungan harian 9 pcs (Ms Nur)', 9000, 0, 18447073),
(74, '2015-09-21', 'Belanja buah-buahan (alat peraga)', 0, 18000, 18429073),
(75, '2015-09-22', 'Pembayaran buku tabungan harian 5 pcs (Ms Wedia)', 5000, 0, 18434073),
(76, '2015-09-23', 'Service keran washtaple', 0, 27000, 18749073),
(77, '2015-09-26', 'Belanja ATK (tinta printer, map, amplop)', 0, 53000, 18696073),
(78, '2015-09-26', 'Belanja alat kebersihan (tissue, sabun cuci tangan, dll)', 0, 132800, 18563273),
(79, '2015-09-26', 'Belanja buku tabungan harian 5 pcs', 0, 5000, 18558273),
(80, '2015-09-27', 'Belanja alat kebersihan (sabun cuci piring) dan kapas', 0, 18500, 18539773),
(81, '2015-09-29', 'Pelunasan biaya masuk sekolah (Carrisa)', 100000, 0, 18689773),
(82, '2015-09-29', 'Belanja gembok', 0, 30000, 18659773),
(83, '2015-09-29', 'Belanja lampu 4 pcs dan ATK', 0, 190500, 18469273),
(84, '2015-05-09', 'Gaji Guru dan Tenaga Pendidik Bulan Agustus 2015', 0, 6953846, 12615427),
(85, '2015-05-09', ' staff administrasi', 0, 2000000, 10615427),
(86, '2015-10-01', 'Isi ulang Sanford 2 galon', 0, 18000, 14685427),
(87, '2015-10-02', 'Ganti pulsa internet bln Ags-Sep (Ms Febra) ', 0, 100000, 14985427),
(88, '2015-10-02', 'Ganti bensin bln Sep (Ms Wedia)', 0, 150000, 14835427),
(89, '2015-10-02', 'Pembayaran buku tabungan 2 pcs', 2000, 0, 14837427),
(90, '2015-10-03', 'Belanja karpet puzzle 3 pack, pena 1 pack, spidol 2 pcs, karton asturo 5 lbr', 0, 392000, 14445427),
(91, '2015-10-03', 'Belanja karpet puzzle 2 pack', 0, 230000, 14215427),
(92, '2015-10-03', 'Belanja mainan ular tangga (bahan ajar)', 0, 12000, 14203427),
(93, '2015-10-05', 'Isi token listrik 200rb', 0, 202500, 14500927),
(94, '2015-10-06', 'Fotokopi buku teks untuk guru (Ms Riris) 4 pcs', 0, 33350, 14567577),
(95, '2015-10-07', 'Belanja bahan cooking project (jeruk 4 kg dan gula pasir 1/2 kg)', 0, 72100, 15345477),
(96, '2015-10-08', 'Belanja ATK (isolasi, kertas asturo)', 0, 22500, 16572977),
(97, '2015-10-09', 'Isi ulang Sanford 2 galon', 0, 18000, 16554977),
(98, '2015-10-10', 'Belanja bahan dekorasi & properti natal', 0, 95000, 16459977),
(99, '2015-10-10', 'Uang keamanan bln Agustus-Oktober 2015', 0, 300000, 16159977),
(100, '2015-10-11', 'Service selang keran dapur', 0, 50000, 16109977),
(101, '2015-10-12', 'Pembayaran Biaya Masuk TK T.P. 2016/2017 (Faith)', 2155000, 0, 18264977),
(102, '2015-10-12', 'Service kursi makan', 0, 120000, 18144977),
(103, '2015-10-14', 'Belanja bahan ajar (tali skipping)', 0, 15000, 18129977),
(104, '2015-10-14', 'Belanja bahan ajar (sedotan)', 0, 2000, 18127977),
(105, '2015-10-17', 'Token Listrik 200rb', 0, 202500, 18025477),
(106, '2015-10-17', 'Isi pulsa sekolah 50rb', 0, 51000, 17974477),
(107, '2015-10-17', 'Belanja bahan kebersihan + parkir', 0, 42500, 17931977),
(108, '2015-10-17', 'Isi ulang Sanford 2 galon', 0, 18000, 17913977),
(109, '2015-10-17', 'Sumbangan kas RT', 0, 20000, 17893977),
(110, '2015-10-19', 'Belanja materai 1pcs', 0, 7000, 18026977),
(111, '2015-10-19', 'Fotokopi keperluan surat sempadan', 0, 1000, 18025977),
(112, '2015-10-19', 'Belanja kacang panjang (bahan ajar)', 0, 2000, 18023977),
(113, '2015-10-19', 'Jilid buku', 0, 6000, 18017977),
(114, '2015-10-19', 'Jilid buku', 0, 4000, 18013977),
(115, '2015-10-21', 'Laminating', 0, 4000, 18009977),
(116, '2015-10-23', 'Pembayaran buku tabungan 3 pcs', 3000, 0, 18012977),
(117, '2015-10-24', 'Isi ulang Sanford 2 galon', 0, 18000, 17994977),
(118, '2015-10-24', 'Belanja ATK (plastik mika, kertas kilat, cutter, isolasi)', 0, 42000, 17952977),
(119, '2015-10-27', 'Belanja bahan cooking project (bumbu kacang, kecap)', 0, 20000, 18232977),
(120, '2015-10-27', 'Token Listrik 100rb', 0, 102500, 18130477),
(121, '2015-10-29', 'Service ayunan', 0, 350000, 17780477),
(122, '2015-10-29', 'Service kabel speaker', 0, 45000, 17735477),
(123, '2015-10-06', 'Gaji Guru dan Tenaga Kependidikan Bulan Sep 2015', 0, 7150000, 11485477),
(124, '2015-10-06', ' staff Administrasi', 0, 2000000, 9485477),
(125, '2015-11-04', 'Token Listrik 200rb', 0, 202500, 13820977),
(126, '2015-11-04', 'Belanja ATK (asturo, isi hektar, isi cutter)', 0, 43500, 13777477),
(127, '2015-11-04', 'Belanja bahan ajar (wortel)', 0, 5000, 13772477),
(128, '2015-11-07', 'Belanja perlengkapan natal (kertas kilat)', 0, 2000, 14570477),
(129, '2015-11-07', 'Belanja alat kebersihan (sabun, tissue)', 0, 52300, 14518177),
(130, '2015-11-07', 'Isi ulang Sanford 3 galon', 0, 27000, 14491177),
(131, '2015-11-09', 'Uang keamanan bln Okt 2015 (Pak Aritonang)', 0, 500000, 14391177),
(132, '2015-11-10', 'Belanja bahan cooking project (sirup 2 botol)', 0, 37000, 14354177),
(133, '2015-11-10', 'Belanja perlengkapan natal (kertas kilat)', 0, 4000, 14350177),
(134, '2015-11-11', 'Belanja bahan ajar (tanah 2 karung)', 0, 20000, 14330177),
(135, '2015-11-11', 'Belanja bahan ajar (mentimun)', 0, 12000, 14318177),
(136, '2015-11-12', 'Belanja bahan ajar (karton, stik, piring kertas, kapas, parkir)', 0, 40700, 14277477),
(137, '2015-11-13', 'Ganti bensin motor bln Okt 2015 (Ms Wedia)', 0, 100000, 14177477),
(138, '2015-11-13', 'Token Listrik 300rb', 0, 302500, 13874977),
(139, '2015-11-13', 'Belanja ATK (kertas A4 1 rim)', 0, 34000, 13840977),
(140, '2015-11-14', 'Uang keamanan bln Okt 2015 (RT)', 0, 100000, 13740977),
(141, '2015-11-14', 'Isi ulang Sanford 2 galon + Sanford gelas 1 dus', 0, 34000, 14306977),
(142, '2015-11-15', 'Token Listrik 200rb', 0, 202500, 14104477),
(143, '2015-11-15', 'Token Listrik 100rb', 0, 102500, 14001977),
(144, '2015-11-15', 'Belanja perlengkapan natal (kertas kilat+lilin kecil)', 0, 45200, 13956777),
(145, '2015-11-17', 'Belanja perlengkapan natal (lem fox 2 botol)', 0, 20000, 13936777),
(146, '2015-11-17', 'Belanja perlengkapan natal (karton 11 lbr +isolasi besar 1 pcs)', 0, 42500, 13894277),
(147, '2015-11-20', 'Belanja perlengkapan natal (lem uhu 1 botol, karton 3 lbr, kertas krep 2 lbr)', 0, 24000, 13870277),
(148, '2015-11-23', 'Isi ulang Sanford 2 galon', 0, 18000, 13852277),
(149, '2015-11-24', 'Beli kue Hari Guru', 0, 126000, 14526277),
(150, '2015-11-26', 'Parkir ke bank', 0, 1000, 14525277),
(151, '2015-11-27', 'Belanja bahan kebersihan (detergen)', 0, 6000, 17469277),
(152, '2015-11-27', 'Belanja bahan kebersihan (wipol, sunlight, cling)', 0, 29800, 17439477),
(153, '2015-11-27', 'Parkir ke bank', 0, 1000, 17438477),
(154, '2015-11-27', 'Belanja untuk buku rapor dan perlengkapan natal', 0, 219000, 17219477),
(155, '2015-11-28', 'Laminating dan fotokopi surat izin operasional', 0, 7000, 17512477),
(156, '2015-11-29', 'Belanja ATK (clear book) untuk arsip yayasan', 0, 34000, 17478477),
(157, '2015-11-29', 'Belanja bahan kebersihan (sabun cuci tangan)', 0, 17000, 17461477),
(158, '2015-11-06', 'Gaji Guru dan Tenaga Kependidikan Bulan Okt 2015', 0, 8077300, 11964177),
(159, '2015-11-06', 'staff admin', 0, 2000000, 9964177),
(160, '2015-12-01', 'Isi ulang Sanford 2 galon', 0, 18000, 13398177),
(161, '2015-12-01', 'Belanja perlengkapan natal (pita)', 0, 12000, 13386177),
(162, '2015-12-02', 'Isi pulsa hp sekolah 20rb', 0, 22000, 13764177),
(163, '2015-12-03', 'Parkir (bank)', 0, 1000, 14463177),
(164, '2015-12-03', 'Belanja ATK (lem FOX 2 botol)', 0, 20000, 14443177),
(165, '2015-12-04', 'Token listrik 300rb', 0, 305000, 14138177),
(166, '2015-12-04', 'Ganti pulsa internet Ms Febra Bln Okt-Nov', 0, 100000, 14038177),
(167, '2015-12-04', 'Transport ke dinas tgl 01/12/15', 0, 12000, 14026177),
(168, '2015-12-07', 'Uang keamanan Bln Nov 2015 (Pak Aritonang)', 0, 500000, 15726177),
(169, '2015-12-07', 'Belanja map & amplop besar', 0, 11500, 15714677),
(170, '2015-12-08', 'Belanja perlengkapan natal (kain spanduk)', 0, 35000, 15679677),
(171, '2015-12-10', 'Isi ulang Sanford 2 galon', 0, 18000, 15661677),
(172, '2015-12-10', 'Ganti bensin Ms Wedia Bln Nov 2015', 0, 80000, 15581677),
(173, '2015-12-10', 'Belanja perlengkapan natal (karton, lem, isolasi)', 0, 65600, 15516077),
(174, '2015-12-10', 'Belanja perlengkapan natal (kain spanduk)', 0, 35000, 15481077),
(175, '2015-12-11', 'Jahit spanduk', 0, 30000, 15451077),
(176, '2015-12-11', 'Belanja perlengkapan natal (kertas krep)', 0, 52800, 15398277),
(177, '2015-12-11', 'Parkir ', 0, 1000, 15397277),
(178, '2015-12-11', 'Parkir (bank)', 0, 1000, 15396277),
(179, '2015-12-15', 'Belanja perlengkapan natal (kertas kilat)', 0, 12000, 15384277),
(180, '2015-12-15', 'Belanja perlengkapan natal (pita)', 0, 4000, 15380277),
(181, '2015-12-16', 'Belanja perlengkapan natal (AQUA gelas 2 dus, milo 3 kotak)', 0, 82200, 15298077),
(182, '2015-12-16', 'Isi pulsa hp sekolah 20rb', 0, 22000, 15276077),
(183, '2015-12-17', 'Laundry gaun untuk penari natal (punya Ica)', 0, 10000, 15266077),
(184, '2015-12-18', 'Belanja perlengkapan natal (kertas kilat 4 lbr)', 0, 8000, 15258077),
(185, '2015-12-18', 'Isi ulang Sanford 2 galon', 0, 18000, 15240077),
(186, '2015-12-18', 'Potong buku rapor', 0, 5000, 15235077),
(187, '2015-12-18', 'thr u Guru 1,250,000+850.000+850.000+850.000', 0, 3800000, 11435077),
(188, '2015-12-05', 'Salary guru November', 0, 7963636, 5201441),
(189, '2015-12-05', 'staff admin', 0, 2000000, 3201441),
(190, '2016-01-05', 'Pembayaran Salary Guru', 0, 0, 8100000),
(191, '2016-01-16', 'staff admin', 0, 0, 2800000),
(192, '2016-01-16', 'Beli Lampu di BPS 7 pcs untuk Natal di sekolah Nadia', 0, 0, 419300),
(193, '2016-01-16', 'Foto copy', 0, 0, 8400),
(194, '2016-01-16', 'Foto copy dan jilid', 0, 0, 51000),
(195, '2016-01-16', 'Beli Pulsa Listrik', 0, 0, 202500),
(196, '2016-01-18', 'Beli kain pel', 0, 0, 22000),
(197, '2016-01-18', 'Iuran PKG januari 2016', 0, 0, 30000),
(198, '2016-01-18', 'Bayar Potong rumput Bpk Saragih', 0, 0, 200000),
(199, '2016-01-18', 'Beli Pulsa Hp', 0, 0, 31000),
(200, '2016-01-18', 'Isi ulang Sanford', 0, 0, 18000),
(201, '2016-01-18', 'Beli tissue 3 Box', 0, 0, 62700),
(202, '2016-01-18', 'Belanja Hand soap dll', 0, 0, 73800),
(203, '2016-01-18', 'Beli Pulsa Listrik', 0, 0, 202500),
(204, '2016-01-18', 'Bayar iuran untuk porseni', 0, 0, 326000),
(205, '2016-01-18', 'Belanja sapu dll', 0, 0, 74000),
(206, '2016-01-18', 'Iuran PKG bulan Februari dan Maret 2016 ', 0, 0, 60000),
(207, '2016-01-18', 'Belanja stationary', 0, 0, 159950),
(208, '2016-02-05', 'Gaji Guru', 0, 0, 8100000),
(209, '2016-02-05', 'staff admin', 0, 0, 2800000),
(210, '2016-02-05', 'Beli Pulsa Simpati', 0, 0, 22000),
(211, '2016-02-05', 'Beli Karton', 0, 0, 2500),
(212, '2016-02-05', 'Beli Pulsa Listrik', 0, 0, 202500),
(213, '2016-02-05', 'Isi Paket Internet', 0, 0, 110000),
(214, '2016-02-05', 'Bayar Keamanan Bulan Des\'15 dan Jan\'16', 0, 0, 200000),
(215, '2016-02-05', 'Beli Sanford 2 Galon', 0, 0, 18000),
(216, '2016-02-05', 'Claim Parkir', 0, 0, 2000),
(217, '2016-02-05', 'Beli Pulsa Listrik', 0, 0, 202500),
(218, '2016-02-05', 'Claim Parkir', 0, 0, 7000),
(219, '2016-02-05', 'Belanja ATK', 0, 0, 66000),
(220, '2016-02-05', 'Belanja Edukits', 0, 0, 103000),
(221, '2016-02-05', 'Bayar Keamanan januari 2016', 0, 0, 500000),
(222, '2016-02-05', 'Beli Agar agar', 0, 0, 7500),
(223, '2016-02-05', 'Beli Peralatan sekolah', 0, 0, 29300),
(224, '2016-02-05', 'Beli Sanford 2 Galon', 0, 0, 18000),
(225, '2016-02-05', 'Beli Aqua 3 Botol', 0, 0, 9000),
(226, '2016-02-05', 'Beli Pulsa Listrik', 0, 0, 202500),
(227, '2016-02-05', 'Beli Sanford 1 Galon', 0, 0, 9000),
(228, '2016-03-01', 'Pelunasan SD a/n Fredrico', 0, 2400000, 0),
(229, '2016-03-01', 'Pelunasan SD a/n Bradiyanto', 0, 2300000, 0),
(230, '2016-03-01', 'Masuk TK A a/n Ranielcy Marpaung', 0, 3330000, 0),
(231, '2016-03-01', 'Pelunasan TK B  a/n Rachel Leon', 0, 2440000, 0),
(232, '2016-03-01', 'Pelunasan TK B TP 2015/2016  a/n  Renata', 0, 650000, 0),
(233, '2016-03-05', 'Gaji Guru Februari', 0, 0, 8100000),
(234, '2016-03-05', 'staff admin', 0, 0, 2800000),
(235, '2016-03-05', 'Belanja untuk cooking class', 0, 0, 100250),
(236, '2016-03-05', 'Beli sanford galon', 0, 0, 9000),
(237, '2016-03-05', 'Pulsa Listrik', 0, 0, 202500),
(238, '2016-03-05', 'Belanja tissue dll', 0, 0, 102500),
(239, '2016-03-05', 'Beli snack anak anak', 0, 0, 24000),
(240, '2016-03-05', 'Byr Bimbel untuk Ms.Nur', 0, 0, 90000),
(241, '2016-03-05', 'Byr Bimbel untuk Ms.iris', 0, 0, 534000),
(242, '2016-03-05', 'Uang transport ms.widia dari bln des\'15-Feb\'16', 0, 0, 270000),
(243, '2016-03-05', 'Uang transport ms.riris dari bln des\'15-Feb\'16', 0, 0, 90000),
(244, '2016-03-05', 'Bayar bahan kain PKG', 0, 0, 85000),
(245, '2016-03-05', 'Bayar sanford 3 galon', 0, 0, 27000),
(246, '2016-03-05', 'Sanford gelas 4 Doz', 0, 0, 60000),
(247, '2016-03-05', 'Pulsa hp', 0, 0, 52000),
(248, '2016-03-05', 'Beli sanford galon', 0, 0, 9000),
(249, '2016-03-05', 'Transport PP ke Pemadam Kebakaran', 0, 0, 300000),
(250, '2016-03-05', 'Snack anak anak ', 0, 0, 60000),
(251, '2016-03-05', 'Ucapan terima kasih ( gantinya buah )', 0, 0, 150000),
(252, '2016-03-05', 'Beli origami', 0, 0, 55350),
(253, '2016-03-05', 'Transport PP top 100', 0, 0, 100000),
(254, '2016-03-05', 'Makan siang guru acara porseni TK di Top 100', 0, 0, 38000),
(255, '2016-03-05', 'Beli snack anak anak untuk porseni', 0, 0, 88000),
(256, '2016-03-05', 'kostum senam ular anak anak', 0, 0, 200000),
(257, '2016-03-05', 'Spons bedak', 0, 0, 6800),
(258, '2016-03-05', 'Beli snack untuk karnaval tgl 18 Maret 2016', 0, 0, 60000),
(259, '2016-03-05', 'beli 1 roll double tape', 0, 0, 5000),
(260, '2016-03-05', 'beli makan siang guru di acara karnaval', 0, 0, 60000),
(261, '2016-03-05', 'Beli pulsa listrik', 0, 0, 202000),
(262, '2016-03-05', 'Beli sanford galon', 0, 0, 9000),
(263, '2016-03-05', 'Pindahkan data foto', 0, 0, 18000),
(264, '2016-03-05', 'Beli atk dan kertas', 0, 0, 74350),
(265, '2016-03-05', 'Beli sanford galon', 0, 0, 9000),
(266, '2016-03-05', 'Beli wipol dan so klin', 0, 0, 19000),
(267, '2016-03-05', 'Beli gula,telur,the dan lain lain ( untuk paskah )', 0, 0, 66500),
(268, '2016-03-05', 'Uang transport ms.nur dari bln des\'15-Feb\'16', 0, 0, 240000),
(269, '2016-03-05', 'Beli snack dan nabati dan lapet', 0, 0, 74000),
(270, '2016-03-05', 'Bayar keamanan', 0, 0, 200000),
(271, '2016-03-05', 'Beli sanford galon', 0, 0, 9000),
(272, '2016-03-05', 'Beli pulsa listrik', 0, 0, 202000),
(273, '2016-03-05', 'Beli sanford galon', 0, 0, 9000),
(274, '2016-04-01', 'Pelunasan  SD a/n Rebeka', 0, 700000, 0),
(275, '2016-04-01', 'Pelunasan  SD a/n Cahaya Olivia Purba', 0, 1200000, 0),
(276, '2016-04-01', 'Pelunasan SD a/n Joanita Nauli Simatupang', 0, 2300000, 0),
(277, '2016-04-01', 'Pelunasan  TK B a/n Sartika Idola Sitorus', 0, 1400000, 0),
(278, '2016-04-05', 'Gaji Guru maret', 0, 0, 8045000),
(279, '2016-04-05', 'staff admin', 0, 0, 2800000),
(280, '2016-04-01', 'Beli Pulsa Hp ', 0, 0, 22000),
(281, '2016-04-07', 'Foto kegiatan porseni', 0, 0, 25000),
(282, '2016-04-07', 'Beli sanford galon', 0, 0, 9000),
(283, '2016-04-09', 'Beli tinta printer canon 810 ( Januari 2016 )', 0, 0, 210000),
(284, '2016-04-11', 'Beli pulsa listrik', 0, 0, 202000),
(285, '2016-04-12', 'Beli kertas minyak dan lem fox', 0, 0, 17500),
(286, '2016-04-12', 'Beli snack anak anak ', 0, 0, 26800),
(287, '2016-04-15', 'isi ulang sanford 1 galon dan beli pulsa hp', 0, 0, 31000),
(288, '2016-04-16', 'isi ulang sanford ', 0, 0, 9000),
(289, '2016-04-16', 'isi ulang sanford ', 0, 0, 9000),
(290, '2016-04-17', 'Beli sumpit, susu bendera dan pulsa 50', 0, 0, 71000),
(291, '2016-04-18', 'Sayur bayam', 0, 0, 5000),
(292, '2016-04-18', 'Beli wipol dan mr. muscle', 0, 0, 18000),
(293, '2016-04-18', 'Beli 4 Botol tinta refil cannon', 0, 0, 120000),
(294, '2016-04-18', 'Beli sanford hand shop, wipol dll', 0, 0, 80000),
(295, '2016-04-19', 'Bayar bimbel ke ms. Nur yang bulan April 16', 0, 0, 90000),
(296, '2016-04-20', 'Beli Pulsa Listrik', 0, 0, 202000),
(297, '2016-04-20', 'Fotocopy dan jilid materi', 0, 0, 25350),
(298, '2016-04-20', 'Beli konsumsi rapat', 0, 0, 104000),
(299, '2016-04-26', 'Bayar uang keamanan ', 0, 0, 100000),
(300, '2016-04-27', 'Beli pulsa simpati', 0, 0, 22000),
(301, '2016-04-27', 'Beli nice kiloan', 0, 0, 46000),
(302, '2016-04-29', 'Isi ulang sanford 2 galon', 0, 0, 18000),
(303, '2016-04-29', 'Beli pulsa listrik', 0, 0, 102000),
(304, '2016-04-29', 'Beli kartu 3 6 GB', 0, 0, 100000),
(305, '2016-04-29', 'Beli map Tulang', 0, 0, 4300),
(306, '2016-04-30', 'Beli lakban', 0, 0, 4500),
(307, '2016-04-30', 'Tanam bunga, beli tanah hitam dan upah', 0, 0, 200000),
(308, '2016-05-04', 'isi ulang sanford', 0, 0, 9000),
(309, '2016-05-04', 'fotocopi', 0, 0, 2500),
(310, '2016-05-04', 'sidu f4 paper/atk', 0, 0, 37500),
(311, '2016-05-04', 'mirage a4 paper', 0, 0, 29500),
(312, '2016-05-04', 'buku vision f4 polos (data sd)', 0, 0, 16000),
(313, '2016-05-06', 'map plastik (berkas dapodik)', 0, 0, 16000),
(314, '2016-05-06', 'kenko biner clip', 0, 0, 5000),
(315, '2016-05-06', 'batere alkalin( mike sekolah)', 0, 0, 12000),
(316, '2016-05-06', 'isi ulang sanford', 0, 0, 9000),
(317, '2016-05-06', 'Gaji Guru April', 0, 0, 8100000),
(318, '2016-05-06', 'staff admin', 0, 0, 2800000),
(319, '2016-05-06', 'sos karbol/kebersihan', 0, 0, 8000),
(320, '2016-05-06', 'sun light', 0, 0, 8000),
(321, '2016-05-06', 'cling', 0, 0, 3000),
(322, '2016-05-06', 'mop/kain pel', 0, 0, 25000),
(323, '2016-05-06', 'isi ulang sanford', 0, 0, 9000),
(324, '2016-05-07', 'token listrik', 0, 0, 202000),
(325, '2016-05-09', 'konsumsi guru ikut gebyar paud 1', 0, 0, 67000),
(326, '2016-05-09', 'transport ms Riris (april)', 0, 0, 45000),
(327, '2016-05-09', 'transport ms Nur (maret & april)', 0, 0, 300000),
(328, '2016-05-09', 'transport Ms Wedia (april)', 0, 0, 165000),
(329, '2016-05-10', 'uang kegiatan & buku  Aphenta', 0, 700000, 0),
(330, '2016-05-10', 'keamanan satpam (4&5)', 0, 0, 500000),
(331, '2016-05-10', 'konsumsi guru ikut gebyar paud 2', 0, 0, 128260),
(332, '2016-05-11', 'pulsa simpati', 0, 0, 22000),
(333, '2016-05-11', 'konsumsi guru ikut gebyar paud 3', 0, 0, 84700),
(334, '2016-05-12', 'konsumsi guru ikut gebyar paud 4', 0, 0, 52800),
(335, '2016-05-12', 'beli sendok n garpu', 0, 0, 39800),
(336, '2016-05-12', 'isi ulang sanford', 0, 0, 9000),
(337, '2016-05-14', 'iuran PKG ( april,mei,juni )', 0, 0, 90000),
(338, '2016-05-17', 'isi ulang sanford', 0, 0, 9000),
(339, '2016-05-17', 'wipol/kebersihan', 0, 0, 13500),
(340, '2016-05-19', 'token listrik', 0, 0, 202000),
(341, '2016-05-19', 'isi ulang sanford', 0, 0, 9000),
(342, '2016-05-19', 'parkir', 0, 0, 1000),
(343, '2016-05-21', 'kertas A4/u evaluasi', 0, 0, 34000),
(344, '2016-05-23', 'pulsa simpati', 0, 0, 22000),
(345, '2016-05-23', 'parkir', 0, 0, 1000),
(346, '2016-05-23', 'stapler/atk', 0, 0, 65000),
(347, '2016-05-24', 'isi ulang sanford', 0, 0, 9000),
(348, '2016-05-25', 'isi ulang sanford', 0, 0, 9000),
(349, '2016-05-25', 'uang keamanan mei', 0, 0, 100000),
(350, '2016-05-26', 'cling + sos', 0, 0, 12800),
(351, '2016-05-26', 'jagung + beras u/ evaluasi smst 2', 0, 0, 14100),
(352, '2016-05-26', 'stamp legalisir yayasan', 0, 0, 135000),
(353, '2016-05-27', 'isi ulang sanford', 0, 0, 9000),
(354, '2016-05-27', 'hit spray', 0, 0, 27900),
(355, '2016-05-27', 'fotocopi f4', 0, 0, 8750),
(356, '2016-06-01', 'karbol wangi', 0, 0, 29500),
(357, '2016-06-01', 'isi ulang sanford', 0, 0, 9000),
(358, '2016-06-01', 'tisue paseo', 0, 0, 10500),
(359, '2016-06-02', 'isi ulang sanford', 0, 0, 9000),
(360, '2016-06-02', 'token listrik', 0, 0, 102000),
(361, '2016-06-02', 'sanford gelas + botol', 0, 0, 57000),
(362, '2016-06-03', 'beli spritus', 0, 0, 10000),
(363, '2016-06-03', 'kons rapat gugus ( nasi padang )', 0, 0, 575000),
(364, '2016-06-04', 'gaji guru Juni 2016', 0, 0, 8100000),
(365, '2016-06-05', 'beli jeruk', 0, 0, 50000),
(366, '2016-06-06', 'Ruth C D Tambunan pelunasan biaya tk b ', 0, 1200000, 0),
(367, '2016-06-06', 'isi ulang sanford', 0, 0, 9000),
(368, '2016-06-07', 'piala untuk anak berprestasi', 0, 0, 39220),
(369, '2016-06-07', 'beli minyak tanah 1 liter', 0, 0, 19000),
(370, '2016-06-07', 'laundry kaos utk wisuda', 0, 0, 16000),
(371, '0000-00-00', 'stamp pad + tinta + usb', 0, 0, 143500),
(372, '2016-06-08', 'isi ulang sanford', 0, 0, 9000),
(373, '2016-06-08', 'beli kertas kilat', 0, 0, 20000),
(374, '2016-06-09', 'laundry jas guru', 0, 0, 30000),
(375, '2016-06-09', 'beli sarung tangan utk cabut rumput', 0, 0, 5000),
(376, '2016-06-10', 'biaya transport ms.nur bln mei -16', 0, 0, 178000),
(377, '2016-06-10', 'beli lampu + paku kabel', 0, 0, 65500),
(378, '2016-06-10', 'pulsa simpati', 0, 0, 22000),
(379, '2016-06-11', 'beli stiker utk piala berprestasi siswa', 0, 0, 20000),
(380, '2016-06-11', 'fotocopi ijazah tk b', 0, 0, 9500),
(381, '2016-06-11', 'kantong kresek', 0, 0, 23000),
(382, '2016-06-11', 'Bpk. Korianto donatur utk siswa tk nadia ', 0, 1800000, 0),
(383, '2016-06-12', 'aqua botol', 0, 0, 11000),
(384, '2016-06-12', 'konsumsi guru wisuda', 0, 0, 200000),
(385, '2016-06-13', 'cuci ac', 0, 0, 320000),
(386, '2016-06-13', 'biaya transport ms.wedia bln mei -16', 0, 0, 80000),
(387, '2016-06-14', 'beli gembok', 0, 0, 40000),
(388, '2016-06-15', 'pulsa simpati', 0, 0, 52000),
(389, '2016-06-15', 'isi ulang sanford', 0, 0, 18000),
(390, '2016-06-15', 'laundry jas guru + toga siswa', 0, 0, 90000),
(391, '2016-06-15', 'fotocopi raport amos 1', 0, 0, 13200),
(392, '2016-06-16', 'fotocopi raport  ', 0, 0, 16200),
(393, '2016-06-17', 'beli kertas utk raport', 0, 0, 10000),
(394, '2016-06-17', 'isi ulang sanford', 0, 0, 9000),
(395, '2016-06-18', 'pulsa simpati + snack ultah Jify', 0, 0, 27000),
(396, '2016-06-18', 'uang keamanan bulan juni -16', 0, 0, 100000),
(397, '2016-06-18', 'beli kran airwastafel dapur', 0, 0, 100000),
(398, '2016-06-27', 'token listrik', 0, 0, 102000),
(399, '2016-06-10', 'pembelian tas 120 pcs', 0, 0, 6430000),
(400, '2016-06-10', 'alat tulis sekolah', 0, 0, 3190000),
(401, '2016-06-10', 'alat tulis sekolah', 0, 0, 1234600),
(402, '2016-06-10', 'plastik laminating', 0, 0, 160000),
(403, '2016-06-10', 'timbangan dan cash box', 0, 0, 265000),
(404, '2016-06-10', 'stamp', 0, 0, 30000),
(405, '2016-06-10', 'poster presiden', 0, 0, 56000),
(406, '2016-06-10', 'bingkai foto 14bh x 50.000', 0, 0, 700000),
(407, '2016-06-10', 'buku tulis murid sd', 0, 0, 926000),
(408, '2016-07-01', 'cicilan 3 tk b cashsya samosir', 700000, 0, 40986261),
(409, '2016-07-01', 'pelunasan biaya tk b angel ginting', 500000, 0, 41486261),
(410, '2016-07-01', 'pelunsan biaya sd javier c christian', 2000000, 0, 43486261),
(411, '2016-07-02', 'cicilan 2 tk b abigail duka', 500000, 0, 43952261),
(412, '2016-07-02', 'pelunasan biaya sd jocelyn sinaga', 700000, 0, 44652261),
(413, '2016-07-02', 'pelunasan biaya sd novelina elisabet', 500000, 0, 45152261),
(414, '2016-07-02', 'pelunasan biaya sd timothy lubis', 600000, 0, 45752261),
(415, '2016-07-02', 'pelunasan biaya sd kevin matondang', 300000, 0, 46052261),
(416, '2016-07-04', 'pelunasan biaya sd nathanael purba', 900000, 0, 46936261),
(417, '2016-07-12', 'cicilan 2 sd fransisca', 300000, 0, 36218261),
(418, '2016-07-12', 'pelunasan biaya sd dava evsando', 1000000, 0, 37218261),
(419, '2016-07-14', 'cicilan 1 biaya sd jisyer', 500000, 0, 36985261),
(420, '2016-07-14', 'cicilan 1 tk b windi sitohang', 500000, 0, 37485261),
(421, '2016-07-15', 'cicilan 1 tk b jesica tambunan', 1500000, 0, 38985261),
(422, '2016-07-16', 'pelunasan tk b jesica tambunan', 1000000, 0, 39985261),
(423, '2016-07-16', 'cicilan 2 tk b jovina', 1000000, 0, 40985261),
(424, '2016-07-16', 'pelunasan tk b rocky bobby', 600000, 0, 41585261),
(425, '2016-07-16', 'pelunasan tk b jenifer tampubolon', 1200000, 0, 42785261),
(426, '2016-07-16', 'cicilan 1 uang buku n kegiatan renata', 100000, 0, 42885261),
(427, '2016-07-16', 'pelunasan sd elisabeth jelita s', 1400000, 0, 44685261),
(428, '2016-07-16', 'cicilan 1 tk a ivana purba', 1500000, 0, 46185261),
(429, '2016-07-18', 'cicilan 1 uang buku n kegiatan  irene', 600000, 0, 46785261),
(430, '2016-07-19', 'cicilan 1 tk b carisa carlene', 500000, 0, 47285261),
(431, '2016-07-19', 'peluasan sd jify', 1700000, 0, 48985261);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(50) NOT NULL,
  `section_batch_id` int(11) NOT NULL,
  `intake` int(5) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_name`, `section_batch_id`, `intake`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'TK A', 1, NULL, '2016-07-01 00:00:00', 1, '2017-03-04 00:00:00', 1, 0),
(2, 'TK B', 1, NULL, '2016-07-01 00:00:00', 1, '2017-03-04 00:00:00', 1, 0),
(3, 'Joyful 1', 2, NULL, '2016-07-01 00:00:00', 1, '2017-03-04 00:00:00', 1, 0),
(4, 'Joyful 2', 2, NULL, '2016-07-01 00:00:00', 1, '2017-03-04 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `SPP_ID` int(11) NOT NULL,
  `NAMA` varchar(100) NOT NULL,
  `DATE_PAY_JULI_15` date DEFAULT NULL,
  `DEBIT_JULI_15` varchar(100) NOT NULL,
  `DATE_PAY_AGUST_15` date DEFAULT NULL,
  `DEBIT_AGUST_15` varchar(100) NOT NULL,
  `DATE_PAY_SEPT_15` date DEFAULT NULL,
  `DEBIT_SEPT_15` varchar(100) NOT NULL,
  `DATE_PAY_OKT_15` date DEFAULT NULL,
  `DEBIT_OKT_15` varchar(100) NOT NULL,
  `DATE_PAY_NOV_15` date DEFAULT NULL,
  `DEBIT_NOV_15` varchar(100) NOT NULL,
  `DATE_PAY_DES_15` date DEFAULT NULL,
  `DEBIT_DES_15` varchar(100) NOT NULL,
  `DATE_PAY_JAN_16` date DEFAULT NULL,
  `DEBIT_JAN_16` varchar(100) NOT NULL,
  `DATE_PAY_FEB_16` date DEFAULT NULL,
  `DEBIT_FEB_16` varchar(100) NOT NULL,
  `DATE_PAY_MAR_16` date DEFAULT NULL,
  `DEBIT_MAR_16` varchar(100) NOT NULL,
  `DATE_PAY_APR_16` date DEFAULT NULL,
  `DEBIT_APR_16` varchar(100) NOT NULL,
  `DATE_PAY_MEI_16` date DEFAULT NULL,
  `DEBIT_MEI_16` varchar(100) NOT NULL,
  `DATE_PAY_JUNI_16` date DEFAULT NULL,
  `DEBIT_JUNI_16` varchar(100) NOT NULL,
  `SALDO` bigint(100) NOT NULL,
  `KETERANGAN` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`SPP_ID`, `NAMA`, `DATE_PAY_JULI_15`, `DEBIT_JULI_15`, `DATE_PAY_AGUST_15`, `DEBIT_AGUST_15`, `DATE_PAY_SEPT_15`, `DEBIT_SEPT_15`, `DATE_PAY_OKT_15`, `DEBIT_OKT_15`, `DATE_PAY_NOV_15`, `DEBIT_NOV_15`, `DATE_PAY_DES_15`, `DEBIT_DES_15`, `DATE_PAY_JAN_16`, `DEBIT_JAN_16`, `DATE_PAY_FEB_16`, `DEBIT_FEB_16`, `DATE_PAY_MAR_16`, `DEBIT_MAR_16`, `DATE_PAY_APR_16`, `DEBIT_APR_16`, `DATE_PAY_MEI_16`, `DEBIT_MEI_16`, `DATE_PAY_JUNI_16`, `DEBIT_JUNI_16`, `SALDO`, `KETERANGAN`) VALUES
(1, 'Adil Felix', '2015-10-07', '150000', '2015-10-07', '150000', '2015-09-17', '150000', '0000-00-00', '150000', '0000-00-00', '150000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '2016-04-01', '1000000(dari2015)', '2016-05-13', '150000', '0000-00-00', '', 0, ''),
(2, 'Angel Novianti Nauli S', '2015-06-30', '150000', '2015-08-13', '150000', '2015-09-10', '150000', '2015-10-15', '150000', '2015-11-09', '150000', '2015-12-10', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-11', '150000', '0000-00-00', '', 0, ''),
(3, 'Aphenta Dolly Bancin', '2015-06-30', '150000', '2015-08-10', '150000', '2015-09-09', '150000', '2015-10-08', '150000', '2015-11-09', '150000', '2015-12-10', '150000', '2016-01-18', '150000', '2016-02-01', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-13', '150000', '0000-00-00', '', 0, ''),
(4, 'Brandianto Siallagan', '2015-06-30', '150000', '2015-08-04', '150000', '2015-09-02', '150000', '2015-10-09', '150000', '2015-11-06', '150000', '2015-12-08', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-08', '150000', '0000-00-00', '', 0, ''),
(5, 'Cahaya Olifia Purba', '2015-06-30', '150000', '0000-00-00', '', '2015-09-10', '150000', '2015-10-07', '150000', '2015-11-06', '150000', '2015-12-08', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-09', '150000', '0000-00-00', '', 0, ''),
(6, 'Carissa Carlene', '0000-00-00', '150000', '2015-08-12', '150000', '2015-09-08', '150000', '0000-00-00', '', '0000-00-00', '150000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 0, ''),
(7, 'Christian Clay', '2015-06-30', '150000', '2015-08-11', '150000', '2015-09-01', '150000', '2015-10-07', '150000', '2015-11-03', '150000', '0000-00-00', '', '2016-01-18', '150000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '2016-05-13', '150000', '0000-00-00', '', 0, ''),
(8, 'Christian Sihombing', '2015-06-30', '150000', '2015-08-07', '150000', '2015-09-09', '150000', '2015-10-07', '150000', '2015-11-09', '150000', '2015-12-08', '150000', '2016-01-18', '150000', '2016-02-01', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-07', '150000', '0000-00-00', '', 0, ''),
(9, 'Christin Novyta Turnip', '2015-06-30', '150000', '0000-00-00', '', '2015-09-02', '150000', '2015-10-15', '154000(+denda 2 hari)', '2015-11-04', '150000', '2015-12-03', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 0, ''),
(10, 'Christian P Panjaitan', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '2016-02-05', '152000', '2016-03-05', '152000', '2016-04-01', '152000', '0000-00-00', '', '0000-00-00', '', 0, ''),
(11, 'Dava Evsando Siagian', '2015-06-30', '150000', '2015-08-05', '150000', '2015-09-02', '150000', '2015-10-05', '150000', '2015-11-04', '150000', '2015-12-04', '150000', '2016-01-18', '150000', '2016-02-01', '150000', '2016-03-05', '150000', '0000-00-00', '', '2016-05-06', '150000', '0000-00-00', '', 0, ''),
(12, 'Ebzan Sihombing', '2015-06-30', '150000', '2015-08-04', '150000', '2015-09-28', '150000', '2015-09-28', '150000', '2015-11-03', '150000', '2015-12-01', '150000', '2016-01-18', '150000', '2016-02-01', '150000', '2016-03-05', '150000', '0000-00-00', '', '2016-05-13', '150000', '2016-05-13', '150000', 0, ''),
(13, 'Elenta Purba', '2015-06-30', '150000', '2015-08-10', '150000', '2015-09-29', '150000', '2015-10-12', '150000', '2015-11-09', '150000', '2015-12-15', '150000', '2016-01-18', '150000', '0000-00-00', '', '2016-05-04', '150000', '2016-05-04', '150000', '2016-05-04', '150000', '0000-00-00', '', 0, ''),
(14, 'Elisabeth Aldina J. Siregar', '2015-06-30', '150000', '2015-08-06', '150000', '2015-09-29', '150000', '2015-09-29', '150000', '2015-11-02', '150000', '2015-12-04', '150000', '2016-01-18', '150000', '0000-00-00', '', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-02', '150000', '2016-05-13', '150000', 0, ''),
(15, 'Evans Dolly Yesaya Sidabutar', '2015-06-30', '150000', '2015-08-04', '150000', '2015-09-09', '150000', '2015-10-05', '150000', '2015-11-06', '150000', '2015-12-11', '150000', '2016-01-18', '150000', '2016-02-05', '152000', '2016-03-05', '152000', '2016-04-01', '156000', '2016-05-07', '150000', '0000-00-00', '', 0, ''),
(16, 'Gisela Tri Rosari T', '2015-06-30', '150000', '2015-08-28', '150000', '2015-09-10', '150000', '2015-10-01', '150000', '2015-11-03', '150000', '2015-11-30', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-05', '150000', '2016-05-13', '150000', 0, ''),
(17, 'Goldwin Munarch', '2015-06-30', '150000', '2015-11-12', '150000', '2015-11-12', '150000', '2015-11-26', '150000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 0, ''),
(18, 'Graciela Stevanie Sitohang', '2015-06-30', '150000', '2015-08-07', '150000', '2015-09-07', '150000', '2015-10-06', '150000', '2015-10-06', '150000', '2015-10-06', '150000', '2016-01-18', '150000', '2016-01-18', '150000', '2016-01-18', '150000', '2016-01-18', '150000', '2016-01-18', '150000', '2016-01-18', '150000', 0, ''),
(19, 'Hans Damian Situmorang', '2015-06-30', '150000', '2015-08-18', '150000', '2015-09-10', '150000', '2015-10-15', '150000', '2015-11-03', '150000', '2015-12-01', '150000', '2016-01-18', '150000', '2016-02-01', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-03', '150000', '2016-05-03', '150000', 0, ''),
(20, 'Irene Hartlyn Cenobio Sinaga', '2015-06-30', '150000', '2015-10-06', '150000', '2015-09-07', '150000', '2015-10-06', '150000', '2015-11-12', '150000', '2015-12-11', '150000', '0000-00-00', '179000', '2016-03-05', '150000', '2016-03-05', '179000', '2016-04-01', '150000', '2016-05-13', '170000', '0000-00-00', '', 0, ''),
(21, 'Jasintha Dyah Ayu Maharani', '0000-00-00', '', '0000-00-00', '', '2015-09-08', '', '2015-10-08', '180000', '2015-11-03', '150000', '2015-12-04', '150000', '2016-01-18', '150000', '2016-02-05', '180000', '2016-03-05', '180000', '2016-04-01', '180000', '2016-05-07', '180000', '0000-00-00', '', 0, ''),
(22, 'Jeremi Fransisco Simaremare', '2015-06-30', '150000', '2015-08-10', '150000', '2015-09-09', '150000', '2015-10-15', '154000(+denda 2 hari)', '2015-11-03', '150000', '2015-12-02', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-10', '150000', '0000-00-00', '', 0, ''),
(23, 'Jesie de Vanesa', '2015-06-30', '150000', '2015-08-14', '150000', '2015-09-10', '150000', '2015-10-19', '160000', '2015-11-11', '150000', '2015-12-11', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '152000', '2016-04-01', '150000', '0000-00-00', '', '0000-00-00', '', 0, ''),
(24, 'Jify Joune Silalahi', '2015-06-30', '150000', '2015-08-24', '150000', '2015-09-23', '158000(+denda)', '2015-10-16', '150000', '0000-00-00', '', '2016-01-18', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '152000', '2016-04-01', '150000', '2016-05-13', '150000', '0000-00-00', '', 0, ''),
(25, 'Kevin Pratama Matondang', '2015-06-30', '150000', '2015-08-05', '150000', '2015-09-08', '150000', '2015-10-01', '150000', '2015-11-09', '150000', '2015-12-08', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-07', '150000', '0000-00-00', '', 0, ''),
(26, 'Livia Felisha', '0000-00-00', '150000', '2015-08-12', '150000', '2015-09-07', '150000', '2015-10-05', '150000', '2015-11-04', '150000', '2015-12-02', '150000', '2016-01-18', '150000', '2016-02-01', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-07', '150000', '0000-00-00', '', 0, ''),
(27, 'Nigel Septiani Tobing', '2015-06-30', '150000', '2015-08-29', '150000', '2015-09-11', '150000', '2015-10-08', '150000', '2015-11-09', '150000', '2015-12-11', '150000', '2016-01-18', '150000', '2016-02-05', '154000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-13', '150000', '0000-00-00', '', 0, ''),
(28, 'Putri Okta Aditya Rumapea', '2015-06-30', '150000', '2015-08-11', '150000', '2015-09-08', '150000', '2015-10-05', '150000', '2015-11-05', '150000', '2015-12-07', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-07', '150000', '0000-00-00', '', 0, ''),
(29, 'Renata Simatupang', '0000-00-00', '150000', '2015-08-12', '150000', '2015-09-07', '150000', '2015-10-08', '150000', '2015-11-10', '150000', '2015-12-19', '164000(+ denda 7 hari)', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '164000', '2016-05-13', '150000', '0000-00-00', '', 0, ''),
(30, 'Tzandy Dominggo Hikara Tambunan', '2015-06-30', '150000', '2015-08-11', '150000', '2015-09-07', '150000', '2015-10-19', '160000', '2015-11-09', '150000', '2015-12-12', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '154000', '2016-04-01', '150000', '2016-05-12', '150000', '0000-00-00', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(35) NOT NULL,
  `state_country_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`, `state_country_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Nanggroe Aceh Darusalam', 1, '2017-02-17 16:12:26', 1, NULL, NULL, 0),
(2, 'Bali ', 1, '2017-02-17 16:12:40', 1, NULL, NULL, 0),
(3, 'Bangka Belitung', 1, '2017-02-17 16:12:52', 1, NULL, NULL, 0),
(4, 'Banten', 1, '2017-02-17 16:13:49', 1, NULL, NULL, 0),
(5, 'Bengkulu', 1, '2017-02-17 16:13:58', 1, NULL, NULL, 0),
(6, 'Daerah Istimewa Yogyakarta(DIY) ', 1, '2017-02-17 16:14:13', 1, NULL, NULL, 0),
(7, 'DKI Jakarta', 1, '2017-02-17 16:14:19', 1, NULL, NULL, 0),
(8, 'Gorontalo ', 1, '2017-02-17 16:14:30', 1, NULL, NULL, 0),
(9, 'Jambi ', 1, '2017-02-17 16:14:37', 1, NULL, NULL, 0),
(10, 'Jawa Barat', 1, '2017-02-17 16:14:46', 1, NULL, NULL, 0),
(11, 'Jawa Tengah', 1, '2017-02-17 16:14:54', 1, NULL, NULL, 0),
(12, 'Jawa Timur', 1, '2017-02-17 16:15:00', 1, NULL, NULL, 0),
(13, 'Kalimantan Barat ', 1, '2017-02-17 16:15:06', 1, NULL, NULL, 0),
(14, 'Kalimantan Selatan ', 1, '2017-02-17 16:15:12', 1, NULL, NULL, 0),
(15, 'Kalimantan Tengah ', 1, '2017-02-17 16:16:24', 1, NULL, NULL, 0),
(16, 'Kalimantan Timur ', 1, '2017-02-17 16:16:33', 1, NULL, NULL, 0),
(17, 'Kalimantan Utara ', 1, '2017-02-17 16:16:39', 1, NULL, NULL, 0),
(18, 'Kepulauan Riau ', 1, '2017-02-17 16:16:45', 1, NULL, NULL, 0),
(19, 'Lampung ', 1, '2017-02-17 16:16:50', 1, NULL, NULL, 0),
(20, 'Maluku', 1, '2017-02-17 16:16:56', 1, NULL, NULL, 0),
(21, 'Maluku Utara ', 1, '2017-02-17 16:17:03', 1, NULL, NULL, 0),
(22, 'Nusa Tenggara Barat', 1, '2017-02-17 16:17:09', 1, NULL, NULL, 0),
(23, 'Nusa Tenggara Timur ', 1, '2017-02-17 16:17:24', 1, NULL, NULL, 0),
(24, ' Papua', 1, '2017-02-17 16:17:30', 1, NULL, NULL, 0),
(25, 'Papua Barat ', 1, '2017-02-17 16:17:35', 1, NULL, NULL, 0),
(26, 'Riau ', 1, '2017-02-17 16:17:43', 1, NULL, NULL, 0),
(27, 'Sulawesi Barat', 1, '2017-02-17 16:17:49', 1, NULL, NULL, 0),
(28, 'Sulawesi Selatan', 1, '2017-02-17 16:17:55', 1, NULL, NULL, 0),
(29, 'Sulawesi Tengah ', 1, '2017-02-17 16:18:00', 1, NULL, NULL, 0),
(30, 'Sulawesi Tenggara', 1, '2017-02-17 16:18:08', 1, NULL, NULL, 0),
(31, 'Sulawesi Utara ', 1, '2017-02-17 16:18:16', 1, NULL, NULL, 0),
(32, 'Sumatera Barat ', 1, '2017-02-17 16:18:23', 1, NULL, NULL, 0),
(33, 'Sumatera Selatan', 1, '2017-02-17 16:18:30', 1, NULL, NULL, 0),
(34, 'Sumatera Utara', 1, '2017-02-17 16:18:36', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stu_address`
--

CREATE TABLE `stu_address` (
  `stu_address_id` int(11) NOT NULL,
  `stu_cadd` varchar(255) DEFAULT NULL,
  `stu_cadd_city` int(11) DEFAULT NULL,
  `stu_cadd_state` int(11) DEFAULT NULL,
  `stu_cadd_country` int(11) DEFAULT NULL,
  `stu_cadd_pincode` int(6) DEFAULT NULL,
  `stu_cadd_phone_no` varchar(25) DEFAULT NULL,
  `stu_cadd_house_no` int(10) NOT NULL,
  `stu_padd` varchar(255) DEFAULT NULL,
  `stu_padd_city` int(11) DEFAULT NULL,
  `stu_padd_state` int(11) DEFAULT NULL,
  `stu_padd_country` int(11) DEFAULT NULL,
  `stu_padd_pincode` int(6) DEFAULT NULL,
  `stu_padd_phone_no` varchar(25) DEFAULT NULL,
  `stu_padd_house_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_address`
--

INSERT INTO `stu_address` (`stu_address_id`, `stu_cadd`, `stu_cadd_city`, `stu_cadd_state`, `stu_cadd_country`, `stu_cadd_pincode`, `stu_cadd_phone_no`, `stu_cadd_house_no`, `stu_padd`, `stu_padd_city`, `stu_padd_state`, `stu_padd_country`, `stu_padd_pincode`, `stu_padd_phone_no`, `stu_padd_house_no`) VALUES
(1, 'Perum. Bumi Kencana Blok H No. 12', 1, 18, 1, 29438, '082169701165', 0, 'Perum. Bumi Kencana Blok H No. 12', 1, 18, 1, 29438, '082169701165', 0),
(2, 'Perum. Bumi Kencana Blok L No. 12 ', 1, 18, 1, 29438, '081364074109', 0, 'Perum. Bumi Kencana Blok L No. 12 ', 1, 18, 1, 29438, '081364074109', 0),
(3, 'Kp. Bumi Permai', 1, 18, 1, 29438, '085365505520', 0, 'Kp. Bumi Permai', 1, 18, 1, 29438, '085365505520', 0),
(4, 'Kp. Bumi Permai', 1, 18, 1, 29438, '082169188959', 0, 'Kp. Bumi Permai', 1, 18, 1, 29438, '082169188959', 0),
(5, 'Perum. Bumi Kencana Blok A No. 21', 1, 18, 1, 29438, '08136432948', 0, 'Perum. Bumi Kencana Blok A No. 21', 1, 18, 1, 29438, '08136432948', 0),
(6, 'Kp. Bumi Permai Lr. Mawar   ', 1, 18, 1, 29438, '082171556286', 0, 'Kp. Bumi Permai Lr. Mawar   ', 1, 18, 1, 29438, '082171556286', 0),
(7, 'Perum. Bukit Indah (Tahap 1) Blok D No. 16', 1, 18, 1, 29438, '082283950326', 0, 'Perum. Bukit Indah (Tahap 1) Blok D No. 16', 1, 18, 1, 29438, '082283950326', 0),
(8, 'Perum. Bumi Kencana Blok R No. 9   ', 1, 18, 1, 29438, '085272831944', 0, 'Perum. Bumi Kencana Blok R No. 9   ', 1, 18, 1, 29438, '085272831944', 0),
(9, 'Kp. Bumi Permai  ', 1, 18, 1, 29438, '081275323335', 0, 'Kp. Bumi Permai  ', 1, 18, 1, 29438, '081275323335', 0),
(10, 'Bumi Agung Permai Blok D No. 8', 1, 18, 1, 29438, '081372205156', 0, 'Bumi Agung Permai Blok D No. 8', 1, 18, 1, 29438, '081372205156', 0),
(11, 'Taman Lestari Blok C4 No. 19', 1, 18, 1, 29438, '08136490639', 0, 'Taman Lestari Blok C4 No. 19', 1, 18, 1, 29438, '08136490639', 0),
(12, 'Perum. Bumi Kencana ', 1, 18, 1, 29438, '081372919812', 0, 'Perum. Bumi Kencana ', 1, 18, 1, 29438, '081372919812', 0),
(13, 'Bumi Agung Permai Blok A No. 11', 1, 18, 1, 29438, '081364300046', 0, 'Bumi Agung Permai Blok A No. 11', 1, 18, 1, 29438, '081364300046', 0),
(14, 'Kp. Bumi Permai ', 1, 18, 1, 29438, '0', 0, 'Kp. Bumi Permai ', 1, 18, 1, 29438, '0', 0),
(15, 'Perum. Bumi Kencana Blok L No. 3 ', 1, 18, 1, 29438, '081266243571', 0, 'Perum. Bumi Kencana Blok L No. 3 ', 1, 18, 1, 29438, '081266243571', 0),
(16, 'Perum. Bumi Kencana Blok O No. 21 ', 1, 18, 1, 29438, '081276094735', 0, 'Perum. Bumi Kencana Blok O No. 21 ', 1, 18, 1, 29438, '081276094735', 0),
(17, 'Kp. Bumi Permai Lr. Mawar No. 58', 1, 18, 1, 29438, '081277142477', 0, 'Kp. Bumi Permai Lr. Mawar No. 58', 1, 18, 1, 29438, '081277142477', 0),
(18, 'Perum. Bukit Indah (Tahap 1) Blok E No. 5', 1, 18, 1, 29438, '085375778830', 0, 'Perum. Bukit Indah (Tahap 1) Blok E No. 5', 1, 18, 1, 29438, '085375778830', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stu_category`
--

CREATE TABLE `stu_category` (
  `stu_category_id` int(11) NOT NULL,
  `stu_category_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_category`
--

INSERT INTO `stu_category` (`stu_category_id`, `stu_category_name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Category Admission', '2017-02-25 19:05:45', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stu_docs`
--

CREATE TABLE `stu_docs` (
  `stu_docs_id` int(11) NOT NULL,
  `stu_docs_details` varchar(100) DEFAULT NULL,
  `stu_docs_category_id` int(11) NOT NULL,
  `stu_docs_path` varchar(150) NOT NULL,
  `stu_docs_submited_at` datetime NOT NULL,
  `stu_docs_status` tinyint(1) NOT NULL DEFAULT '0',
  `stu_docs_stu_master_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_docs`
--

INSERT INTO `stu_docs` (`stu_docs_id`, `stu_docs_details`, `stu_docs_category_id`, `stu_docs_path`, `stu_docs_submited_at`, `stu_docs_status`, `stu_docs_stu_master_id`, `created_by`) VALUES
(1, 'zdfs', 1, '1-1-728761433.png', '2017-02-25 19:11:17', 1, 1, 1),
(2, 'sdfsdf', 1, '2-1-766369693.png', '2017-02-25 19:15:17', 1, 2, 1),
(3, 'sdfsdf', 2, '2-2-547546960.png', '2017-02-25 19:15:17', 1, 2, 1),
(4, '', 1, '5-1-1155422261.png', '2017-02-27 10:21:02', 1, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stu_guardians`
--

CREATE TABLE `stu_guardians` (
  `stu_guardian_id` int(11) NOT NULL,
  `guardian_name` varchar(65) DEFAULT NULL,
  `guardian_relation` varchar(30) DEFAULT NULL,
  `guardian_mobile_no` bigint(12) DEFAULT NULL,
  `guardian_phone_no` varchar(25) DEFAULT NULL,
  `guardian_qualification` varchar(50) DEFAULT NULL,
  `guardian_occupation` varchar(50) DEFAULT NULL,
  `guardian_income` varchar(50) DEFAULT NULL,
  `guardian_email` varchar(65) DEFAULT NULL,
  `guardian_home_address` varchar(255) DEFAULT NULL,
  `guardian_office_address` varchar(255) DEFAULT NULL,
  `is_emg_contact` tinyint(1) NOT NULL DEFAULT '0',
  `guardia_stu_master_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stu_info`
--

CREATE TABLE `stu_info` (
  `stu_info_id` int(11) NOT NULL,
  `stu_unique_id` int(11) NOT NULL,
  `stu_first_name` varchar(50) DEFAULT NULL,
  `stu_middle_name` varchar(50) DEFAULT NULL,
  `stu_last_name` varchar(50) NOT NULL,
  `stu_address` varchar(250) NOT NULL,
  `stu_gender` varchar(20) DEFAULT NULL,
  `stu_dob` date NOT NULL,
  `stu_email_id` varchar(65) DEFAULT NULL,
  `stu_bloodgroup` varchar(15) DEFAULT 'Unknown',
  `stu_birthplace` varchar(45) DEFAULT NULL,
  `stu_religion` varchar(50) DEFAULT NULL,
  `stu_admission_date` date NOT NULL,
  `stu_photo` varchar(150) DEFAULT NULL,
  `stu_languages` varchar(255) DEFAULT NULL,
  `stu_mobile_no` varchar(12) DEFAULT NULL,
  `stu_info_stu_master_id` int(11) DEFAULT NULL,
  `stu_title` varchar(200) NOT NULL,
  `stu_nationality` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_info`
--

INSERT INTO `stu_info` (`stu_info_id`, `stu_unique_id`, `stu_first_name`, `stu_middle_name`, `stu_last_name`, `stu_address`, `stu_gender`, `stu_dob`, `stu_email_id`, `stu_bloodgroup`, `stu_birthplace`, `stu_religion`, `stu_admission_date`, `stu_photo`, `stu_languages`, `stu_mobile_no`, `stu_info_stu_master_id`, `stu_title`, `stu_nationality`) VALUES
(1, 1, 'Adil', '', 'Felix', 'Perum. Bumi Kencana Blok H No. 12', 'MALE', '2009-10-19', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-24', NULL, 'Indonesia', '082169701165', NULL, '', ''),
(2, 2, 'Angel  ', 'Novianti ', 'Nauli S', 'Perum. Bumi Kencana Blok L No. 12 ', 'FEMALE', '2010-11-12', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-26', NULL, 'Indonesia', '08134074109', NULL, '', ''),
(3, 3, 'Brandianto ', '', 'Siallagan', 'Kp. Bumi Permai', 'MALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-14', NULL, 'Indonesia', '082169188959', NULL, '', ''),
(4, 4, 'Cahaya ', 'Olifia ', 'Purba', 'Kp. Bumi Permai', 'FEMALE', '2010-10-21', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-14', NULL, 'Indonesia', '082391521796', NULL, '', ''),
(5, 5, 'Christian ', '', 'Sihombing', 'Perum. Bumi Kencana Blok A No. 21', 'MALE', '2010-08-13', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-16', NULL, 'Indonesia', '081364362948', NULL, '', ''),
(6, 6, 'Christin ', 'Novyta ', 'Turnip', 'Kp. Bumi Permai Lr. Mawar   ', 'FEMALE', '2009-11-21', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-04', NULL, 'Indonesia', '082171556286', NULL, '', ''),
(7, 7, 'Dava ', 'Evsando', ' Siagian', 'Perum. Bukit Indah (Tahap 1) Blok D No. 16', 'MALE', '2010-01-25', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-28', NULL, 'Indonesia', '082283950326', NULL, '', ''),
(8, 8, 'Ebzan ', '', 'Sihombing', 'Perum. Bumi Kencana Blok R No. 9   ', 'MALE', '2010-09-27', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-06', NULL, 'Indonesia', '085272831944', NULL, '', ''),
(9, 9, 'Elenta ', '', 'Purba', 'Kp. Bumi Permai  ', 'FEMALE', '2010-06-08', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-14', NULL, 'Indonesia', '081275323335', NULL, '', ''),
(10, 10, 'Elisabeth ', 'Aldinar', ' J. Sirega', 'Bumi Agung Permai Blok D No. 8', 'FEMALE', '2010-10-04', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-27', NULL, 'Indonesia', '081372205156', NULL, '', ''),
(11, 11, 'Gisela ', 'Tri ', 'Rosari T', 'Taman Lestari Blok C4 No. 19', 'FEMALE', '2010-06-17', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-27', NULL, 'Indonesia', '08136490639', NULL, '', ''),
(12, 12, 'Goldwin ', '', 'Munarch', 'Perum. Bumi Kencana ', 'FEMALE', '2010-05-29', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-24', NULL, 'Indonesia', '081372919812', NULL, '', ''),
(13, 13, 'Hans ', 'Damian ', 'Situmorang', 'Bumi Agung Permai Blok A No. 11', 'MALE', '2010-09-25', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-27', NULL, 'Indonesia', '081364300046', NULL, '', ''),
(14, 14, 'Jeremi ', 'Fransisco ', 'Simaremare', 'Kp. Bumi Permai ', 'MALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', '', NULL, '', ''),
(15, 15, 'Jesie ', 'de ', 'Vanesa', 'Perum. Bumi Kencana Blok L No. 3 ', 'FEMALE', '2010-08-20', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-15', NULL, 'Indonesia', '081266243571', NULL, '', ''),
(16, 16, 'Jify ', 'Joune', ' Silalahi', 'Perum. Bumi Kencana Blok O No. 21 ', 'FEMALE', '2010-06-18', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-12', NULL, 'Indonesia', '081276094735', NULL, '', ''),
(17, 17, 'Kevin', ' Pratama ', 'Matondang', 'Kp. Bumi Permai Lr. Mawar No. 58', 'MALE', '2010-03-24', NULL, 'Unknown', 'batam', 'Kristen', '0015-07-06', NULL, 'Indonesia', '081277142477', NULL, '', ''),
(18, 18, 'Putri  ', 'Okta', 'Aditya Rumapea', 'Perum. Bukit Indah (Tahap 1) Blok E No. 5', 'FEMALE', '2009-10-22', NULL, 'Unknown', 'batam', 'Kristen', '2015-07-28', NULL, 'Indonesia', '085375778830', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `stu_master`
--

CREATE TABLE `stu_master` (
  `stu_master_id` int(11) NOT NULL,
  `stu_master_stu_info_id` int(11) NOT NULL,
  `stu_master_user_id` int(11) DEFAULT NULL,
  `stu_master_nationality_id` int(11) DEFAULT NULL,
  `stu_master_category_id` int(11) DEFAULT NULL,
  `stu_master_course_id` int(11) NOT NULL,
  `stu_master_batch_id` int(11) NOT NULL,
  `stu_master_section_id` int(11) NOT NULL,
  `stu_master_stu_status_id` int(11) NOT NULL DEFAULT '0',
  `stu_master_stu_address_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_master`
--

INSERT INTO `stu_master` (`stu_master_id`, `stu_master_stu_info_id`, `stu_master_user_id`, `stu_master_nationality_id`, `stu_master_category_id`, `stu_master_course_id`, `stu_master_batch_id`, `stu_master_section_id`, `stu_master_stu_status_id`, `stu_master_stu_address_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 1, 123, 1, NULL, 1, 1, 1, 0, 2, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(2, 2, 2, 1, NULL, 1, 1, 1, 0, 3, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(3, 3, 3, 1, NULL, 1, 1, 1, 0, 4, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(4, 4, 4, 1, NULL, 1, 1, 1, 0, 5, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(5, 5, 5, 1, NULL, 1, 1, 1, 0, 6, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(6, 6, 6, 1, NULL, 1, 1, 1, 0, 7, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(7, 7, 7, 1, NULL, 1, 1, 1, 0, 8, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(8, 8, 8, 1, NULL, 1, 1, 1, 0, 9, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(9, 9, 9, 1, NULL, 1, 1, 1, 0, 10, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(10, 10, 10, 1, NULL, 1, 1, 1, 0, 11, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(11, 11, 11, 1, NULL, 1, 1, 1, 0, 12, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(12, 12, 12, 1, NULL, 1, 1, 1, 0, 13, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(13, 13, 13, 1, NULL, 1, 1, 1, 0, 14, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(14, 14, 14, 1, NULL, 1, 1, 1, 0, 15, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(15, 15, 15, 1, NULL, 1, 1, 1, 0, 16, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(16, 16, 16, 1, NULL, 1, 1, 1, 0, 17, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(17, 17, 17, 1, NULL, 1, 1, 1, 0, 18, '0000-00-00 00:00:00', 1, NULL, NULL, 0),
(18, 18, 18, 1, NULL, 1, 1, 1, 0, 19, '0000-00-00 00:00:00', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stu_status`
--

CREATE TABLE `stu_status` (
  `stu_status_id` int(11) NOT NULL,
  `stu_status_name` varchar(50) NOT NULL,
  `stu_status_description` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_status`
--

INSERT INTO `stu_status` (`stu_status_id`, `stu_status_name`, `stu_status_description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Rejoin', 'Rejoin', '2017-02-16 06:13:20', 1, '2017-02-23 00:00:00', 1, 0),
(2, 'Detain', 'Detain', '2017-02-16 06:13:20', 1, '2017-02-23 00:00:00', 1, 0),
(3, 'Pass Out', 'Pass Out', '2017-02-16 06:13:20', 1, '2017-02-23 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_login_id` varchar(65) CHARACTER SET utf8 NOT NULL,
  `user_password` varchar(150) CHARACTER SET utf8 NOT NULL,
  `user_type` char(2) CHARACTER SET utf8 NOT NULL,
  `is_block` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_login_id`, `user_password`, `user_type`, `is_block`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'admin', 'f6fdffe48c908deb0f4c3bd36c032e72', 'A', 0, '2015-06-02 04:00:00', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `bank_master`
--
ALTER TABLE `bank_master`
  ADD PRIMARY KEY (`bank_master_id`),
  ADD UNIQUE KEY `bank_master_name` (`bank_master_name`),
  ADD UNIQUE KEY `bank_alias` (`bank_alias`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_id`),
  ADD UNIQUE KEY `batch_name` (`batch_name`,`batch_course_id`),
  ADD UNIQUE KEY `batch_alias` (`batch_alias`),
  ADD KEY `batch_course_id` (`batch_course_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `biaya_pendaftaran`
--
ALTER TABLE `biaya_pendaftaran`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD UNIQUE KEY `city_name` (`city_name`,`city_state_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `city_state_id` (`city_state_id`),
  ADD KEY `city_country_id` (`city_country_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `country_name` (`country_name`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `course_name` (`course_name`,`course_code`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `document_category`
--
ALTER TABLE `document_category`
  ADD PRIMARY KEY (`doc_category_id`),
  ADD UNIQUE KEY `doc_category_name` (`doc_category_name`,`doc_category_user_type`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `emp_address`
--
ALTER TABLE `emp_address`
  ADD PRIMARY KEY (`emp_address_id`),
  ADD KEY `emp_cadd_city` (`emp_cadd_city`),
  ADD KEY `emp_cadd_state` (`emp_cadd_state`),
  ADD KEY `emp_cadd_country` (`emp_cadd_country`),
  ADD KEY `emp_padd_city` (`emp_padd_city`),
  ADD KEY `emp_padd_state` (`emp_padd_state`),
  ADD KEY `emp_padd_country` (`emp_padd_country`);

--
-- Indexes for table `emp_category`
--
ALTER TABLE `emp_category`
  ADD PRIMARY KEY (`emp_category_id`),
  ADD UNIQUE KEY `emp_category_name` (`emp_category_name`),
  ADD UNIQUE KEY `emp_category_alias` (`emp_category_alias`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `emp_department`
--
ALTER TABLE `emp_department`
  ADD PRIMARY KEY (`emp_department_id`),
  ADD UNIQUE KEY `emp_department_name` (`emp_department_name`),
  ADD UNIQUE KEY `emp_department_alias` (`emp_department_alias`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `emp_designation`
--
ALTER TABLE `emp_designation`
  ADD PRIMARY KEY (`emp_designation_id`),
  ADD UNIQUE KEY `emp_designation_name` (`emp_designation_name`),
  ADD UNIQUE KEY `emp_designation_alias` (`emp_designation_alias`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `emp_docs`
--
ALTER TABLE `emp_docs`
  ADD PRIMARY KEY (`emp_docs_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `emp_docs_emp_master_id` (`emp_docs_emp_master_id`);

--
-- Indexes for table `emp_info`
--
ALTER TABLE `emp_info`
  ADD PRIMARY KEY (`emp_info_id`),
  ADD UNIQUE KEY `emp_unique_id` (`emp_unique_id`),
  ADD UNIQUE KEY `emp_info_emp_master_id` (`emp_info_emp_master_id`),
  ADD UNIQUE KEY `emp_email_id` (`emp_email_id`),
  ADD UNIQUE KEY `emp_mobile_no` (`emp_mobile_no`),
  ADD UNIQUE KEY `emp_attendance_card_id` (`emp_attendance_card_id`),
  ADD KEY `emp_info_emp_master_id_fgn` (`emp_info_emp_master_id`);

--
-- Indexes for table `emp_master`
--
ALTER TABLE `emp_master`
  ADD PRIMARY KEY (`emp_master_id`),
  ADD UNIQUE KEY `emp_master_user_id` (`emp_master_user_id`),
  ADD UNIQUE KEY `emp_master_emp_info_id` (`emp_master_emp_info_id`),
  ADD KEY `emp_master_department_id` (`emp_master_department_id`),
  ADD KEY `emp_master_designation_id` (`emp_master_designation_id`),
  ADD KEY `emp_master_category_id` (`emp_master_category_id`),
  ADD KEY `emp_master_nationality_id` (`emp_master_nationality_id`),
  ADD KEY `emp_master_emp_address_id` (`emp_master_emp_address_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `emp_master_emp_info_id_frg` (`emp_master_emp_info_id`),
  ADD KEY `emp_master_user_id_frg` (`emp_master_user_id`);

--
-- Indexes for table `emp_status`
--
ALTER TABLE `emp_status`
  ADD PRIMARY KEY (`emp_status_id`),
  ADD UNIQUE KEY `emp_status_name` (`emp_status_name`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `fees_category_details`
--
ALTER TABLE `fees_category_details`
  ADD PRIMARY KEY (`fees_category_details_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `fees_details_category_id` (`fees_details_category_id`);

--
-- Indexes for table `fees_collect_category`
--
ALTER TABLE `fees_collect_category`
  ADD PRIMARY KEY (`fees_collect_category_id`),
  ADD UNIQUE KEY `fees_collect_name` (`fees_collect_name`,`fees_collect_batch_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `fees_collect_batch_id` (`fees_collect_batch_id`);

--
-- Indexes for table `fees_payment_transaction`
--
ALTER TABLE `fees_payment_transaction`
  ADD PRIMARY KEY (`fees_pay_tran_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `fees_pay_tran_bank_id` (`fees_pay_tran_bank_id`),
  ADD KEY `fees_pay_tran_collect_id` (`fees_pay_tran_collect_id`),
  ADD KEY `fees_pay_tran_stu_id` (`fees_pay_tran_stu_id`),
  ADD KEY `fees_pay_tran_batch_id` (`fees_pay_tran_batch_id`),
  ADD KEY `fees_pay_tran_course_id` (`fees_pay_tran_course_id`),
  ADD KEY `fees_pay_tran_section_id` (`fees_pay_tran_section_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_detail_id`),
  ADD KEY `login_user_id` (`login_user_id`);

--
-- Indexes for table `msg_of_day`
--
ALTER TABLE `msg_of_day`
  ADD PRIMARY KEY (`msg_of_day_id`),
  ADD UNIQUE KEY `msg_details` (`msg_details`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `national_holidays`
--
ALTER TABLE `national_holidays`
  ADD PRIMARY KEY (`national_holiday_id`),
  ADD UNIQUE KEY `national_holiday_name` (`national_holiday_name`,`national_holiday_date`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`nationality_id`),
  ADD UNIQUE KEY `nationality_name` (`nationality_name`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`org_id`),
  ADD UNIQUE KEY `org_name` (`org_name`),
  ADD UNIQUE KEY `org_alias` (`org_alias`),
  ADD UNIQUE KEY `org_id` (`org_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`),
  ADD UNIQUE KEY `section_name` (`section_name`,`section_batch_id`),
  ADD KEY `section_batch_id` (`section_batch_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`SPP_ID`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD UNIQUE KEY `state_name` (`state_name`,`state_country_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `state_country_id` (`state_country_id`);

--
-- Indexes for table `stu_address`
--
ALTER TABLE `stu_address`
  ADD PRIMARY KEY (`stu_address_id`),
  ADD KEY `stu_cadd_city` (`stu_cadd_city`),
  ADD KEY `stu_cadd_state` (`stu_cadd_state`),
  ADD KEY `stu_cadd_country` (`stu_cadd_country`),
  ADD KEY `stu_padd_city` (`stu_padd_city`),
  ADD KEY `stu_padd_state` (`stu_padd_state`),
  ADD KEY `stu_padd_country` (`stu_padd_country`);

--
-- Indexes for table `stu_category`
--
ALTER TABLE `stu_category`
  ADD PRIMARY KEY (`stu_category_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `stu_docs`
--
ALTER TABLE `stu_docs`
  ADD PRIMARY KEY (`stu_docs_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `stu_docs_stu_master_id` (`stu_docs_stu_master_id`),
  ADD KEY `stu_docs_category_id` (`stu_docs_category_id`);

--
-- Indexes for table `stu_guardians`
--
ALTER TABLE `stu_guardians`
  ADD PRIMARY KEY (`stu_guardian_id`),
  ADD UNIQUE KEY `guardian_email` (`guardian_email`),
  ADD KEY `guardia_stu_master_id` (`guardia_stu_master_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `stu_info`
--
ALTER TABLE `stu_info`
  ADD PRIMARY KEY (`stu_info_id`),
  ADD UNIQUE KEY `stu_unique_id` (`stu_unique_id`),
  ADD UNIQUE KEY `stu_email_id` (`stu_email_id`),
  ADD KEY `stu_info_stu_master_id` (`stu_info_stu_master_id`);

--
-- Indexes for table `stu_master`
--
ALTER TABLE `stu_master`
  ADD PRIMARY KEY (`stu_master_id`),
  ADD KEY `stu_master_nationality_id` (`stu_master_nationality_id`),
  ADD KEY `stu_master_category` (`stu_master_category_id`),
  ADD KEY `stu_master_course_id` (`stu_master_course_id`),
  ADD KEY `stu_master_batch_id` (`stu_master_batch_id`),
  ADD KEY `stu_master_section_id` (`stu_master_section_id`),
  ADD KEY `stu_master_stu_address_id` (`stu_master_stu_address_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `stu_master_stu_info_id_fng` (`stu_master_stu_info_id`),
  ADD KEY `stu_master_stu_info_id` (`stu_master_stu_info_id`) USING BTREE,
  ADD KEY `stu_master_user_id` (`stu_master_user_id`) USING BTREE;

--
-- Indexes for table `stu_status`
--
ALTER TABLE `stu_status`
  ADD PRIMARY KEY (`stu_status_id`),
  ADD UNIQUE KEY `stu_status_name` (`stu_status_name`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_master`
--
ALTER TABLE `bank_master`
  MODIFY `bank_master_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `document_category`
--
ALTER TABLE `document_category`
  MODIFY `doc_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `emp_address`
--
ALTER TABLE `emp_address`
  MODIFY `emp_address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_category`
--
ALTER TABLE `emp_category`
  MODIFY `emp_category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_department`
--
ALTER TABLE `emp_department`
  MODIFY `emp_department_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_designation`
--
ALTER TABLE `emp_designation`
  MODIFY `emp_designation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_docs`
--
ALTER TABLE `emp_docs`
  MODIFY `emp_docs_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_info`
--
ALTER TABLE `emp_info`
  MODIFY `emp_info_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_master`
--
ALTER TABLE `emp_master`
  MODIFY `emp_master_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_status`
--
ALTER TABLE `emp_status`
  MODIFY `emp_status_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fees_category_details`
--
ALTER TABLE `fees_category_details`
  MODIFY `fees_category_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fees_collect_category`
--
ALTER TABLE `fees_collect_category`
  MODIFY `fees_collect_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fees_payment_transaction`
--
ALTER TABLE `fees_payment_transaction`
  MODIFY `fees_pay_tran_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `msg_of_day`
--
ALTER TABLE `msg_of_day`
  MODIFY `msg_of_day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `national_holidays`
--
ALTER TABLE `national_holidays`
  MODIFY `national_holiday_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `nationality_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `income_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600;
--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `SPP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `stu_address`
--
ALTER TABLE `stu_address`
  MODIFY `stu_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `stu_category`
--
ALTER TABLE `stu_category`
  MODIFY `stu_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stu_docs`
--
ALTER TABLE `stu_docs`
  MODIFY `stu_docs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `stu_guardians`
--
ALTER TABLE `stu_guardians`
  MODIFY `stu_guardian_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stu_info`
--
ALTER TABLE `stu_info`
  MODIFY `stu_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `stu_master`
--
ALTER TABLE `stu_master`
  MODIFY `stu_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `stu_status`
--
ALTER TABLE `stu_status`
  MODIFY `stu_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_category`
--
ALTER TABLE `emp_category`
  ADD CONSTRAINT `emp_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `emp_category_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`);
--
-- Database: `edutesbaru`
--
CREATE DATABASE IF NOT EXISTS `edutesbaru` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `edutesbaru`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Student', '', 1487929837),
('Student', '2', 1487226231),
('Student', '3', 1487324338),
('Student', '4', 1487325458),
('Student', '5', 1487325725),
('Student', '6', 1487554540),
('Student', '7', 1487564600),
('Student', '8', 1487574132),
('Student', '9', 1487752663),
('SuperAdmin', '1', 1487213837);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, '/*', NULL, NULL, 1432554657, 1432554657),
('/auth-assignment/*', 2, '/auth-assignment/*', NULL, NULL, 1432554652, 1432554652),
('/auth-assignment/create', 2, '/auth-assignment/create', NULL, NULL, 1432554652, 1432554652),
('/auth-assignment/delete', 2, '/auth-assignment/delete', NULL, NULL, 1432554652, 1432554652),
('/auth-assignment/index', 2, '/auth-assignment/index', NULL, NULL, 1432554652, 1432554652),
('/auth-assignment/update', 2, '/auth-assignment/update', NULL, NULL, 1432554652, 1432554652),
('/auth-assignment/view', 2, '/auth-assignment/view', NULL, NULL, 1432554652, 1432554652),
('/city/*', 2, '/city/*', NULL, NULL, 1432554652, 1432554652),
('/city/create', 2, '/city/create', NULL, NULL, 1432555253, 1432555253),
('/city/delete', 2, '/city/delete', NULL, NULL, 1432554652, 1432554652),
('/city/index', 2, '/city/index', NULL, NULL, 1432554652, 1432554652),
('/city/update', 2, '/city/update', NULL, NULL, 1432554652, 1432554652),
('/city/view', 2, '/city/view', NULL, NULL, 1432554652, 1432554652),
('/country/*', 2, '/country/*', NULL, NULL, 1432554653, 1432554653),
('/country/create', 2, '/country/create', NULL, NULL, 1432554652, 1432554652),
('/country/delete', 2, '/country/delete', NULL, NULL, 1432554653, 1432554653),
('/country/index', 2, '/country/index', NULL, NULL, 1432554652, 1432554652),
('/country/update', 2, '/country/update', NULL, NULL, 1432554652, 1432554652),
('/country/view', 2, '/country/view', NULL, NULL, 1432554652, 1432554652),
('/course/*', 2, '/course/*', NULL, NULL, 1432554639, 1432554639),
('/course/batches/*', 2, '/course/batches/*', NULL, NULL, 1432554638, 1432554638),
('/course/batches/create', 2, '/course/batches/create', NULL, NULL, 1432554638, 1432554638),
('/course/batches/delete', 2, '/course/batches/delete', NULL, NULL, 1432554638, 1432554638),
('/course/batches/index', 2, '/course/batches/index', NULL, NULL, 1432554638, 1432554638),
('/course/batches/toggle', 2, '/course/batches/toggle', NULL, NULL, 1432554638, 1432554638),
('/course/batches/update', 2, '/course/batches/update', NULL, NULL, 1432554638, 1432554638),
('/course/batches/view', 2, '/course/batches/view', NULL, NULL, 1432554638, 1432554638),
('/course/courses/*', 2, '/course/courses/*', NULL, NULL, 1432554638, 1432554638),
('/course/courses/create', 2, '/course/courses/create', NULL, NULL, 1432554638, 1432554638),
('/course/courses/delete', 2, '/course/courses/delete', NULL, NULL, 1432554638, 1432554638),
('/course/courses/index', 2, '/course/courses/index', NULL, NULL, 1432554638, 1432554638),
('/course/courses/toggle', 2, '/course/courses/toggle', NULL, NULL, 1432554638, 1432554638),
('/course/courses/update', 2, '/course/courses/update', NULL, NULL, 1432554638, 1432554638),
('/course/courses/view', 2, '/course/courses/view', NULL, NULL, 1432554638, 1432554638),
('/course/default/*', 2, '/course/default/*', NULL, NULL, 1432554639, 1432554639),
('/course/default/index', 2, '/course/default/index', NULL, NULL, 1432554638, 1432554638),
('/course/section/*', 2, '/course/section/*', NULL, NULL, 1432554639, 1432554639),
('/course/section/create', 2, '/course/section/create', NULL, NULL, 1432554639, 1432554639),
('/course/section/delete', 2, '/course/section/delete', NULL, NULL, 1432554639, 1432554639),
('/course/section/index', 2, '/course/section/index', NULL, NULL, 1432554639, 1432554639),
('/course/section/toggle', 2, '/course/section/toggle', NULL, NULL, 1432554639, 1432554639),
('/course/section/update', 2, '/course/section/update', NULL, NULL, 1432554639, 1432554639),
('/course/section/view', 2, '/course/section/view', NULL, NULL, 1432554639, 1432554639),
('/dashboard/*', 2, '/dashboard/*', NULL, NULL, 1432554649, 1432554649),
('/dashboard/default/*', 2, '/dashboard/default/*', NULL, NULL, 1432554647, 1432554647),
('/dashboard/default/index', 2, '/dashboard/default/index', NULL, NULL, 1432554647, 1432554647),
('/dashboard/events/*', 2, '/dashboard/events/*', NULL, NULL, 1432554648, 1432554648),
('/dashboard/events/add-event', 2, '/dashboard/events/add-event', NULL, NULL, 1432554647, 1432554647),
('/dashboard/events/event-delete', 2, '/dashboard/events/event-delete', NULL, NULL, 1432554648, 1432554648),
('/dashboard/events/index', 2, '/dashboard/events/index', NULL, NULL, 1432554647, 1432554647),
('/dashboard/events/update-event', 2, '/dashboard/events/update-event', NULL, NULL, 1432554648, 1432554648),
('/dashboard/events/view', 2, '/dashboard/events/view', NULL, NULL, 1432554647, 1432554647),
('/dashboard/events/view-events', 2, '/dashboard/events/view-events', NULL, NULL, 1432554647, 1432554647),
('/dashboard/msg-of-day/*', 2, '/dashboard/msg-of-day/*', NULL, NULL, 1432554648, 1432554648),
('/dashboard/msg-of-day/create', 2, '/dashboard/msg-of-day/create', NULL, NULL, 1432554648, 1432554648),
('/dashboard/msg-of-day/delete', 2, '/dashboard/msg-of-day/delete', NULL, NULL, 1432554648, 1432554648),
('/dashboard/msg-of-day/index', 2, '/dashboard/msg-of-day/index', NULL, NULL, 1432554648, 1432554648),
('/dashboard/msg-of-day/toggle', 2, '/dashboard/msg-of-day/toggle', NULL, NULL, 1432554648, 1432554648),
('/dashboard/msg-of-day/update', 2, '/dashboard/msg-of-day/update', NULL, NULL, 1432554648, 1432554648),
('/dashboard/msg-of-day/view', 2, '/dashboard/msg-of-day/view', NULL, NULL, 1432554648, 1432554648),
('/dashboard/notice/*', 2, '/dashboard/notice/*', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/create', 2, '/dashboard/notice/create', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/delete', 2, '/dashboard/notice/delete', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/index', 2, '/dashboard/notice/index', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/notice-file', 2, '/dashboard/notice/notice-file', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/toggle', 2, '/dashboard/notice/toggle', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/update', 2, '/dashboard/notice/update', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/view', 2, '/dashboard/notice/view', NULL, NULL, 1432554649, 1432554649),
('/dashboard/notice/view-popup', 2, '/dashboard/notice/view-popup', NULL, NULL, 1432554649, 1432554649),
('/debug/*', 2, '/debug/*', NULL, NULL, 1432554651, 1432554651),
('/debug/default/*', 2, '/debug/default/*', NULL, NULL, 1432554651, 1432554651),
('/debug/default/download-mail', 2, '/debug/default/download-mail', NULL, NULL, 1432554651, 1432554651),
('/debug/default/index', 2, '/debug/default/index', NULL, NULL, 1432554651, 1432554651),
('/debug/default/toolbar', 2, '/debug/default/toolbar', NULL, NULL, 1432554651, 1432554651),
('/debug/default/view', 2, '/debug/default/view', NULL, NULL, 1432554651, 1432554651),
('/default/*', 2, '/default/*', NULL, NULL, 1432554653, 1432554653),
('/default/index', 2, '/default/index', NULL, NULL, 1432554653, 1432554653),
('/dependent/*', 2, '/dependent/*', NULL, NULL, 1432554653, 1432554653),
('/dependent/getcity', 2, '/dependent/getcity', NULL, NULL, 1432554653, 1432554653),
('/dependent/getorgcity', 2, '/dependent/getorgcity', NULL, NULL, 1432554653, 1432554653),
('/dependent/getorgstate', 2, '/dependent/getorgstate', NULL, NULL, 1432554653, 1432554653),
('/dependent/getstate', 2, '/dependent/getstate', NULL, NULL, 1432554653, 1432554653),
('/dependent/index', 2, '/dependent/index', NULL, NULL, 1432554653, 1432554653),
('/dependent/studbatch', 2, '/dependent/studbatch', NULL, NULL, 1432554653, 1432554653),
('/dependent/studsection', 2, '/dependent/studsection', NULL, NULL, 1432554653, 1432554653),
('/document-category/*', 2, '/document-category/*', NULL, NULL, 1432554653, 1432554653),
('/document-category/create', 2, '/document-category/create', NULL, NULL, 1432554653, 1432554653),
('/document-category/delete', 2, '/document-category/delete', NULL, NULL, 1432554653, 1432554653),
('/document-category/index', 2, '/document-category/index', NULL, NULL, 1432554653, 1432554653),
('/document-category/update', 2, '/document-category/update', NULL, NULL, 1432554653, 1432554653),
('/document-category/view', 2, '/document-category/view', NULL, NULL, 1432554653, 1432554653),
('/employee/*', 2, '/employee/*', NULL, NULL, 1432554645, 1432554645),
('/employee/default/*', 2, '/employee/default/*', NULL, NULL, 1432554642, 1432554642),
('/employee/default/index', 2, '/employee/default/index', NULL, NULL, 1432554642, 1432554642),
('/employee/dependent/*', 2, '/employee/dependent/*', NULL, NULL, 1432554642, 1432554642),
('/employee/dependent/emp-c-city', 2, '/employee/dependent/emp-c-city', NULL, NULL, 1432554642, 1432554642),
('/employee/dependent/emp-c-state', 2, '/employee/dependent/emp-c-state', NULL, NULL, 1432554642, 1432554642),
('/employee/dependent/emp-p-city', 2, '/employee/dependent/emp-p-city', NULL, NULL, 1432554642, 1432554642),
('/employee/dependent/emp-p-state', 2, '/employee/dependent/emp-p-state', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-address/*', 2, '/employee/emp-address/*', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-address/create', 2, '/employee/emp-address/create', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-address/delete', 2, '/employee/emp-address/delete', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-address/index', 2, '/employee/emp-address/index', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-address/update', 2, '/employee/emp-address/update', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-address/view', 2, '/employee/emp-address/view', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-category/*', 2, '/employee/emp-category/*', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-category/create', 2, '/employee/emp-category/create', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-category/delete', 2, '/employee/emp-category/delete', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-category/index', 2, '/employee/emp-category/index', NULL, NULL, 1432554642, 1432554642),
('/employee/emp-category/update', 2, '/employee/emp-category/update', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-category/view', 2, '/employee/emp-category/view', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-department/*', 2, '/employee/emp-department/*', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-department/create', 2, '/employee/emp-department/create', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-department/delete', 2, '/employee/emp-department/delete', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-department/index', 2, '/employee/emp-department/index', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-department/update', 2, '/employee/emp-department/update', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-department/view', 2, '/employee/emp-department/view', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-designation/*', 2, '/employee/emp-designation/*', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-designation/create', 2, '/employee/emp-designation/create', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-designation/delete', 2, '/employee/emp-designation/delete', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-designation/index', 2, '/employee/emp-designation/index', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-designation/update', 2, '/employee/emp-designation/update', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-designation/view', 2, '/employee/emp-designation/view', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-docs/*', 2, '/employee/emp-docs/*', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-docs/create', 2, '/employee/emp-docs/create', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-docs/delete', 2, '/employee/emp-docs/delete', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-docs/index', 2, '/employee/emp-docs/index', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-docs/update', 2, '/employee/emp-docs/update', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-docs/view', 2, '/employee/emp-docs/view', NULL, NULL, 1432554643, 1432554643),
('/employee/emp-info/*', 2, '/employee/emp-info/*', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-info/create', 2, '/employee/emp-info/create', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-info/delete', 2, '/employee/emp-info/delete', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-info/index', 2, '/employee/emp-info/index', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-info/update', 2, '/employee/emp-info/update', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-info/view', 2, '/employee/emp-info/view', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/*', 2, '/employee/emp-master/*', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/adddocs', 2, '/employee/emp-master/adddocs', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/change-status', 2, '/employee/emp-master/change-status', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/create', 2, '/employee/emp-master/create', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/delete', 2, '/employee/emp-master/delete', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/delete-doc', 2, '/employee/emp-master/delete-doc', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/docs-download', 2, '/employee/emp-master/docs-download', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/emp-photo', 2, '/employee/emp-master/emp-photo', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/index', 2, '/employee/emp-master/index', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/update', 2, '/employee/emp-master/update', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-master/view', 2, '/employee/emp-master/view', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-status/*', 2, '/employee/emp-status/*', NULL, NULL, 1432554645, 1432554645),
('/employee/emp-status/create', 2, '/employee/emp-status/create', NULL, NULL, 1432554645, 1432554645),
('/employee/emp-status/delete', 2, '/employee/emp-status/delete', NULL, NULL, 1432554645, 1432554645),
('/employee/emp-status/index', 2, '/employee/emp-status/index', NULL, NULL, 1432554644, 1432554644),
('/employee/emp-status/update', 2, '/employee/emp-status/update', NULL, NULL, 1432554645, 1432554645),
('/employee/emp-status/view', 2, '/employee/emp-status/view', NULL, NULL, 1432554644, 1432554644),
('/employee/export-data/*', 2, '/employee/export-data/*', NULL, NULL, 1432554645, 1432554645),
('/employee/export-data/employee-profile-pdf', 2, '/employee/export-data/employee-profile-pdf', NULL, NULL, 1432554645, 1432554645),
('/export-data/*', 2, '/export-data/*', NULL, NULL, 1432554653, 1432554653),
('/export-data/export-excel', 2, '/export-data/export-excel', NULL, NULL, 1432554653, 1432554653),
('/export-data/export-to-pdf', 2, '/export-data/export-to-pdf', NULL, NULL, 1432554653, 1432554653),
('/fees/*', 2, '/fees/*', NULL, NULL, 1432554646, 1432554646),
('/fees/bank-master/*', 2, '/fees/bank-master/*', NULL, NULL, 1432554645, 1432554645),
('/fees/bank-master/create', 2, '/fees/bank-master/create', NULL, NULL, 1432554645, 1432554645),
('/fees/bank-master/delete', 2, '/fees/bank-master/delete', NULL, NULL, 1432554645, 1432554645),
('/fees/bank-master/index', 2, '/fees/bank-master/index', NULL, NULL, 1432554645, 1432554645),
('/fees/bank-master/update', 2, '/fees/bank-master/update', NULL, NULL, 1432554645, 1432554645),
('/fees/bank-master/view', 2, '/fees/bank-master/view', NULL, NULL, 1432554645, 1432554645),
('/fees/default/*', 2, '/fees/default/*', NULL, NULL, 1432554645, 1432554645),
('/fees/default/index', 2, '/fees/default/index', NULL, NULL, 1432554645, 1432554645),
('/fees/dependent/*', 2, '/fees/dependent/*', NULL, NULL, 1432554645, 1432554645),
('/fees/dependent/get-fees-category', 2, '/fees/dependent/get-fees-category', NULL, NULL, 1432554645, 1432554645),
('/fees/fees-category-details/*', 2, '/fees/fees-category-details/*', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-category-details/create', 2, '/fees/fees-category-details/create', NULL, NULL, 1432554645, 1432554645),
('/fees/fees-category-details/delete', 2, '/fees/fees-category-details/delete', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-category-details/index', 2, '/fees/fees-category-details/index', NULL, NULL, 1432554645, 1432554645),
('/fees/fees-category-details/update', 2, '/fees/fees-category-details/update', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-category-details/view', 2, '/fees/fees-category-details/view', NULL, NULL, 1432554645, 1432554645),
('/fees/fees-collect-category/*', 2, '/fees/fees-collect-category/*', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-collect-category/create', 2, '/fees/fees-collect-category/create', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-collect-category/delete', 2, '/fees/fees-collect-category/delete', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-collect-category/index', 2, '/fees/fees-collect-category/index', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-collect-category/toggle', 2, '/fees/fees-collect-category/toggle', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-collect-category/update', 2, '/fees/fees-collect-category/update', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-collect-category/view', 2, '/fees/fees-collect-category/view', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/*', 2, '/fees/fees-payment-transaction/*', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/collect', 2, '/fees/fees-payment-transaction/collect', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/delete', 2, '/fees/fees-payment-transaction/delete', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/export-fcc-wise-fees-pdf', 2, '/fees/fees-payment-transaction/export-fcc-wise-fees-pdf', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/pay-fees', 2, '/fees/fees-payment-transaction/pay-fees', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/print-common-receipt', 2, '/fees/fees-payment-transaction/print-common-receipt', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/stu-fees-data', 2, '/fees/fees-payment-transaction/stu-fees-data', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/update', 2, '/fees/fees-payment-transaction/update', NULL, NULL, 1432554646, 1432554646),
('/fees/fees-payment-transaction/view', 2, '/fees/fees-payment-transaction/view', NULL, NULL, 1432554646, 1432554646),
('/gii/*', 2, '/gii/*', NULL, NULL, 1432554652, 1432554652),
('/gii/default/*', 2, '/gii/default/*', NULL, NULL, 1432554652, 1432554652),
('/gii/default/action', 2, '/gii/default/action', NULL, NULL, 1432554652, 1432554652),
('/gii/default/diff', 2, '/gii/default/diff', NULL, NULL, 1432554652, 1432554652),
('/gii/default/index', 2, '/gii/default/index', NULL, NULL, 1432554651, 1432554651),
('/gii/default/preview', 2, '/gii/default/preview', NULL, NULL, 1432554651, 1432554651),
('/gii/default/view', 2, '/gii/default/view', NULL, NULL, 1432554651, 1432554651),
('/languages/*', 2, '/languages/*', NULL, NULL, 1432554654, 1432554654),
('/languages/create', 2, '/languages/create', NULL, NULL, 1432554654, 1432554654),
('/languages/delete', 2, '/languages/delete', NULL, NULL, 1432554654, 1432554654),
('/languages/index', 2, '/languages/index', NULL, NULL, 1432554653, 1432554653),
('/languages/update', 2, '/languages/update', NULL, NULL, 1432554654, 1432554654),
('/languages/view', 2, '/languages/view', NULL, NULL, 1432554654, 1432554654),
('/login-details/*', 2, '/login-details/*', NULL, NULL, 1432554654, 1432554654),
('/login-details/create', 2, '/login-details/create', NULL, NULL, 1432554654, 1432554654),
('/login-details/delete', 2, '/login-details/delete', NULL, NULL, 1432554654, 1432554654),
('/login-details/index', 2, '/login-details/index', NULL, NULL, 1432554654, 1432554654),
('/login-details/update', 2, '/login-details/update', NULL, NULL, 1432554654, 1432554654),
('/login-details/view', 2, '/login-details/view', NULL, NULL, 1432554654, 1432554654),
('/national-holidays/*', 2, '/national-holidays/*', NULL, NULL, 1432554654, 1432554654),
('/national-holidays/create', 2, '/national-holidays/create', NULL, NULL, 1432554654, 1432554654),
('/national-holidays/delete', 2, '/national-holidays/delete', NULL, NULL, 1432554654, 1432554654),
('/national-holidays/index', 2, '/national-holidays/index', NULL, NULL, 1432554654, 1432554654),
('/national-holidays/update', 2, '/national-holidays/update', NULL, NULL, 1432554654, 1432554654),
('/national-holidays/view', 2, '/national-holidays/view', NULL, NULL, 1432554654, 1432554654),
('/nationality/*', 2, '/nationality/*', NULL, NULL, 1432554655, 1432554655),
('/nationality/create', 2, '/nationality/create', NULL, NULL, 1432554654, 1432554654),
('/nationality/delete', 2, '/nationality/delete', NULL, NULL, 1432554655, 1432554655),
('/nationality/index', 2, '/nationality/index', NULL, NULL, 1432554654, 1432554654),
('/nationality/update', 2, '/nationality/update', NULL, NULL, 1432554655, 1432554655),
('/nationality/view', 2, '/nationality/view', NULL, NULL, 1432554654, 1432554654),
('/organization/*', 2, '/organization/*', NULL, NULL, 1432554655, 1432554655),
('/organization/create', 2, '/organization/create', NULL, NULL, 1432554655, 1432554655),
('/organization/delete', 2, '/organization/delete', NULL, NULL, 1432554655, 1432554655),
('/organization/index', 2, '/organization/index', NULL, NULL, 1432554655, 1432554655),
('/organization/update', 2, '/organization/update', NULL, NULL, 1432554655, 1432554655),
('/organization/view', 2, '/organization/view', NULL, NULL, 1432554655, 1432554655),
('/report/*', 2, '/report/*', NULL, NULL, 1432554647, 1432554647),
('/report/default/*', 2, '/report/default/*', NULL, NULL, 1432554647, 1432554647),
('/report/default/index', 2, '/report/default/index', NULL, NULL, 1432554646, 1432554646),
('/report/dependent/*', 2, '/report/dependent/*', NULL, NULL, 1432554647, 1432554647),
('/report/dependent/index', 2, '/report/dependent/index', NULL, NULL, 1432554647, 1432554647),
('/report/dependent/studbatch', 2, '/report/dependent/studbatch', NULL, NULL, 1432554647, 1432554647),
('/report/dependent/studsection', 2, '/report/dependent/studsection', NULL, NULL, 1432554647, 1432554647),
('/report/empinforeport', 2, '/report/empinforeport', NULL, NULL, 1432554655, 1432554655),
('/report/employee/*', 2, '/report/employee/*', NULL, NULL, 1432554647, 1432554647),
('/report/employee/empinforeport', 2, '/report/employee/empinforeport', NULL, NULL, 1432554647, 1432554647),
('/report/employee/index', 2, '/report/employee/index', NULL, NULL, 1432554647, 1432554647),
('/report/employee/selected-employee-list', 2, '/report/employee/selected-employee-list', NULL, NULL, 1432554647, 1432554647),
('/report/index', 2, '/report/index', NULL, NULL, 1432554655, 1432554655),
('/report/selected-employee-list', 2, '/report/selected-employee-list', NULL, NULL, 1432554655, 1432554655),
('/report/selected-student-list', 2, '/report/selected-student-list', NULL, NULL, 1432554655, 1432554655),
('/report/student/*', 2, '/report/student/*', NULL, NULL, 1432554647, 1432554647),
('/report/student/index', 2, '/report/student/index', NULL, NULL, 1432554647, 1432554647),
('/report/student/selected-student-list', 2, '/report/student/selected-student-list', NULL, NULL, 1432554647, 1432554647),
('/report/student/stuinforeport', 2, '/report/student/stuinforeport', NULL, NULL, 1432554647, 1432554647),
('/report/stuinforeport', 2, '/report/stuinforeport', NULL, NULL, 1432554655, 1432554655),
('/rights/*', 2, '/rights/*', NULL, NULL, 1432554651, 1432554651),
('/rights/assignment/*', 2, '/rights/assignment/*', NULL, NULL, 1432554649, 1432554649),
('/rights/assignment/assign', 2, '/rights/assignment/assign', NULL, NULL, 1432554649, 1432554649),
('/rights/assignment/index', 2, '/rights/assignment/index', NULL, NULL, 1432554649, 1432554649),
('/rights/assignment/role-search', 2, '/rights/assignment/role-search', NULL, NULL, 1432554649, 1432554649),
('/rights/assignment/view', 2, '/rights/assignment/view', NULL, NULL, 1432554649, 1432554649),
('/rights/default/*', 2, '/rights/default/*', NULL, NULL, 1432554649, 1432554649),
('/rights/default/index', 2, '/rights/default/index', NULL, NULL, 1432554649, 1432554649),
('/rights/menu/*', 2, '/rights/menu/*', NULL, NULL, 1432554650, 1432554650),
('/rights/menu/create', 2, '/rights/menu/create', NULL, NULL, 1432554650, 1432554650),
('/rights/menu/delete', 2, '/rights/menu/delete', NULL, NULL, 1432554650, 1432554650),
('/rights/menu/index', 2, '/rights/menu/index', NULL, NULL, 1432554650, 1432554650),
('/rights/menu/update', 2, '/rights/menu/update', NULL, NULL, 1432554650, 1432554650),
('/rights/menu/view', 2, '/rights/menu/view', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/*', 2, '/rights/permission/*', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/assign', 2, '/rights/permission/assign', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/create', 2, '/rights/permission/create', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/delete', 2, '/rights/permission/delete', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/index', 2, '/rights/permission/index', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/role-search', 2, '/rights/permission/role-search', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/update', 2, '/rights/permission/update', NULL, NULL, 1432554650, 1432554650),
('/rights/permission/view', 2, '/rights/permission/view', NULL, NULL, 1432554650, 1432554650),
('/rights/role/*', 2, '/rights/role/*', NULL, NULL, 1432554651, 1432554651),
('/rights/role/assign', 2, '/rights/role/assign', NULL, NULL, 1432554650, 1432554650),
('/rights/role/create', 2, '/rights/role/create', NULL, NULL, 1432554650, 1432554650),
('/rights/role/delete', 2, '/rights/role/delete', NULL, NULL, 1432554650, 1432554650),
('/rights/role/index', 2, '/rights/role/index', NULL, NULL, 1432554650, 1432554650),
('/rights/role/role-search', 2, '/rights/role/role-search', NULL, NULL, 1432554651, 1432554651),
('/rights/role/update', 2, '/rights/role/update', NULL, NULL, 1432554650, 1432554650),
('/rights/role/view', 2, '/rights/role/view', NULL, NULL, 1432554650, 1432554650),
('/rights/route/*', 2, '/rights/route/*', NULL, NULL, 1432554651, 1432554651),
('/rights/route/assign', 2, '/rights/route/assign', NULL, NULL, 1432554651, 1432554651),
('/rights/route/create', 2, '/rights/route/create', NULL, NULL, 1432554651, 1432554651),
('/rights/route/index', 2, '/rights/route/index', NULL, NULL, 1432554651, 1432554651),
('/rights/route/route-search', 2, '/rights/route/route-search', NULL, NULL, 1432554651, 1432554651),
('/rights/rule/*', 2, '/rights/rule/*', NULL, NULL, 1432554651, 1432554651),
('/rights/rule/create', 2, '/rights/rule/create', NULL, NULL, 1432554651, 1432554651),
('/rights/rule/delete', 2, '/rights/rule/delete', NULL, NULL, 1432554651, 1432554651),
('/rights/rule/index', 2, '/rights/rule/index', NULL, NULL, 1432554651, 1432554651),
('/rights/rule/update', 2, '/rights/rule/update', NULL, NULL, 1432554651, 1432554651),
('/rights/rule/view', 2, '/rights/rule/view', NULL, NULL, 1432554651, 1432554651),
('/site/*', 2, '/site/*', NULL, NULL, 1432554656, 1432554656),
('/site/about', 2, '/site/about', NULL, NULL, 1432554656, 1432554656),
('/site/captcha', 2, '/site/captcha', NULL, NULL, 1432554655, 1432554655),
('/site/contact', 2, '/site/contact', NULL, NULL, 1432554655, 1432554655),
('/site/error', 2, '/site/error', NULL, NULL, 1432554655, 1432554655),
('/site/forgotpassword', 2, '/site/forgotpassword', NULL, NULL, 1432554655, 1432554655),
('/site/index', 2, '/site/index', NULL, NULL, 1432554655, 1432554655),
('/site/loadimage', 2, '/site/loadimage', NULL, NULL, 1432554655, 1432554655),
('/site/login', 2, '/site/login', NULL, NULL, 1432554655, 1432554655),
('/site/logout', 2, '/site/logout', NULL, NULL, 1432554655, 1432554655),
('/state/*', 2, '/state/*', NULL, NULL, 1432554656, 1432554656),
('/state/create', 2, '/state/create', NULL, NULL, 1432554656, 1432554656),
('/state/delete', 2, '/state/delete', NULL, NULL, 1432554656, 1432554656),
('/state/index', 2, '/state/index', NULL, NULL, 1432554656, 1432554656),
('/state/update', 2, '/state/update', NULL, NULL, 1432554656, 1432554656),
('/state/view', 2, '/state/view', NULL, NULL, 1432554656, 1432554656),
('/student/*', 2, '/student/*', NULL, NULL, 1432554642, 1432554642),
('/student/default/*', 2, '/student/default/*', NULL, NULL, 1432554639, 1432554639),
('/student/default/index', 2, '/student/default/index', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/*', 2, '/student/dependent/*', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/studbatch', 2, '/student/dependent/studbatch', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/studsection', 2, '/student/dependent/studsection', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/ustud-c-city', 2, '/student/dependent/ustud-c-city', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/ustud-c-state', 2, '/student/dependent/ustud-c-state', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/ustud-p-city', 2, '/student/dependent/ustud-p-city', NULL, NULL, 1432554639, 1432554639),
('/student/dependent/ustud-p-state', 2, '/student/dependent/ustud-p-state', NULL, NULL, 1432554639, 1432554639),
('/student/export-data/*', 2, '/student/export-data/*', NULL, NULL, 1432554639, 1432554639),
('/student/export-data/student-profile-pdf', 2, '/student/export-data/student-profile-pdf', NULL, NULL, 1432554639, 1432554639),
('/student/stu-address/*', 2, '/student/stu-address/*', NULL, NULL, 1432554640, 1432554640),
('/student/stu-address/create', 2, '/student/stu-address/create', NULL, NULL, 1432554639, 1432554639),
('/student/stu-address/delete', 2, '/student/stu-address/delete', NULL, NULL, 1432554640, 1432554640),
('/student/stu-address/index', 2, '/student/stu-address/index', NULL, NULL, 1432554639, 1432554639),
('/student/stu-address/update', 2, '/student/stu-address/update', NULL, NULL, 1432554640, 1432554640),
('/student/stu-address/view', 2, '/student/stu-address/view', NULL, NULL, 1432554639, 1432554639),
('/student/stu-category/*', 2, '/student/stu-category/*', NULL, NULL, 1432554640, 1432554640),
('/student/stu-category/create', 2, '/student/stu-category/create', NULL, NULL, 1432554640, 1432554640),
('/student/stu-category/delete', 2, '/student/stu-category/delete', NULL, NULL, 1432554640, 1432554640),
('/student/stu-category/index', 2, '/student/stu-category/index', NULL, NULL, 1432554640, 1432554640),
('/student/stu-category/update', 2, '/student/stu-category/update', NULL, NULL, 1432554640, 1432554640),
('/student/stu-category/view', 2, '/student/stu-category/view', NULL, NULL, 1432554640, 1432554640),
('/student/stu-docs/*', 2, '/student/stu-docs/*', NULL, NULL, 1432554640, 1432554640),
('/student/stu-docs/create', 2, '/student/stu-docs/create', NULL, NULL, 1432554640, 1432554640),
('/student/stu-docs/delete', 2, '/student/stu-docs/delete', NULL, NULL, 1432554640, 1432554640),
('/student/stu-docs/index', 2, '/student/stu-docs/index', NULL, NULL, 1432554640, 1432554640),
('/student/stu-docs/update', 2, '/student/stu-docs/update', NULL, NULL, 1432554640, 1432554640),
('/student/stu-docs/view', 2, '/student/stu-docs/view', NULL, NULL, 1432554640, 1432554640),
('/student/stu-guardians/*', 2, '/student/stu-guardians/*', NULL, NULL, 1432554641, 1432554641),
('/student/stu-guardians/create', 2, '/student/stu-guardians/create', NULL, NULL, 1432554640, 1432554640),
('/student/stu-guardians/delete', 2, '/student/stu-guardians/delete', NULL, NULL, 1432554640, 1432554640),
('/student/stu-guardians/index', 2, '/student/stu-guardians/index', NULL, NULL, 1432554640, 1432554640),
('/student/stu-guardians/update', 2, '/student/stu-guardians/update', NULL, NULL, 1432554640, 1432554640),
('/student/stu-guardians/view', 2, '/student/stu-guardians/view', NULL, NULL, 1432554640, 1432554640),
('/student/stu-info/*', 2, '/student/stu-info/*', NULL, NULL, 1432554641, 1432554641),
('/student/stu-info/create', 2, '/student/stu-info/create', NULL, NULL, 1432554641, 1432554641),
('/student/stu-info/delete', 2, '/student/stu-info/delete', NULL, NULL, 1432554641, 1432554641),
('/student/stu-info/index', 2, '/student/stu-info/index', NULL, NULL, 1432554641, 1432554641),
('/student/stu-info/update', 2, '/student/stu-info/update', NULL, NULL, 1432554641, 1432554641),
('/student/stu-info/view', 2, '/student/stu-info/view', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/*', 2, '/student/stu-master/*', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/adddocs', 2, '/student/stu-master/adddocs', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/addguardian', 2, '/student/stu-master/addguardian', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/change-status', 2, '/student/stu-master/change-status', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/create', 2, '/student/stu-master/create', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/delete', 2, '/student/stu-master/delete', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/delete-doc', 2, '/student/stu-master/delete-doc', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/docs-download', 2, '/student/stu-master/docs-download', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/emg-change-status', 2, '/student/stu-master/emg-change-status', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/index', 2, '/student/stu-master/index', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/stu-photo', 2, '/student/stu-master/stu-photo', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/update', 2, '/student/stu-master/update', NULL, NULL, 1432554641, 1432554641),
('/student/stu-master/view', 2, '/student/stu-master/view', NULL, NULL, 1432554641, 1432554641),
('/student/stu-status/*', 2, '/student/stu-status/*', NULL, NULL, 1432554642, 1432554642),
('/student/stu-status/create', 2, '/student/stu-status/create', NULL, NULL, 1432554642, 1432554642),
('/student/stu-status/delete', 2, '/student/stu-status/delete', NULL, NULL, 1432554642, 1432554642),
('/student/stu-status/index', 2, '/student/stu-status/index', NULL, NULL, 1432554641, 1432554641),
('/student/stu-status/update', 2, '/student/stu-status/update', NULL, NULL, 1432554642, 1432554642),
('/student/stu-status/view', 2, '/student/stu-status/view', NULL, NULL, 1432554642, 1432554642),
('/subject-master/*', 2, '/subject-master/*', NULL, NULL, 1432554656, 1432554656),
('/subject-master/create', 2, '/subject-master/create', NULL, NULL, 1432554656, 1432554656),
('/subject-master/delete', 2, '/subject-master/delete', NULL, NULL, 1432554656, 1432554656),
('/subject-master/index', 2, '/subject-master/index', NULL, NULL, 1432554656, 1432554656),
('/subject-master/update', 2, '/subject-master/update', NULL, NULL, 1432554656, 1432554656),
('/subject-master/view', 2, '/subject-master/view', NULL, NULL, 1432554656, 1432554656),
('/user/*', 2, '/user/*', NULL, NULL, 1432554657, 1432554657),
('/user/change', 2, '/user/change', NULL, NULL, 1432554656, 1432554656),
('/user/create', 2, '/user/create', NULL, NULL, 1432554656, 1432554656),
('/user/delete', 2, '/user/delete', NULL, NULL, 1432554656, 1432554656),
('/user/index', 2, '/user/index', NULL, NULL, 1432554656, 1432554656),
('/user/resetemploginid', 2, '/user/resetemploginid', NULL, NULL, 1432554657, 1432554657),
('/user/resetemppassword', 2, '/user/resetemppassword', NULL, NULL, 1432554657, 1432554657),
('/user/resetstudloginid', 2, '/user/resetstudloginid', NULL, NULL, 1432554657, 1432554657),
('/user/resetstudpassword', 2, '/user/resetstudpassword', NULL, NULL, 1432554657, 1432554657),
('/user/update', 2, '/user/update', NULL, NULL, 1432554656, 1432554656),
('/user/update-emp-password', 2, '/user/update-emp-password', NULL, NULL, 1432554657, 1432554657),
('/user/update-stud-password', 2, '/user/update-stud-password', NULL, NULL, 1432554657, 1432554657),
('/user/updateemploginid', 2, '/user/updateemploginid', NULL, NULL, 1432554657, 1432554657),
('/user/updatestudloginid', 2, '/user/updatestudloginid', NULL, NULL, 1432554657, 1432554657),
('/user/view', 2, '/user/view', NULL, NULL, 1432554656, 1432554656),
('Configuration', 2, 'Access Configuration views', NULL, NULL, 1429870570, 1430298672),
('Employee', 1, 'Employee', NULL, NULL, 1422967395, 1430299553),
('Rights', 2, 'Access Rights Module Link', NULL, NULL, 1430227237, 1431776281),
('Student', 1, 'Student', NULL, NULL, 1422958231, 1422958231),
('SuperAdmin', 1, 'SuperAdmin', NULL, NULL, 1422957183, 1422957183),
('updateAllEmpInfo', 2, 'Update Employee all details', NULL, NULL, 1430979242, 1430979242),
('updateAllStuInfo', 2, 'Update Student all details', NULL, NULL, 1430913145, 1430913145);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Employee', '/course/courses/index'),
('Employee', '/course/default/index'),
('Employee', '/dashboard/events/view-events'),
('Employee', '/dashboard/notice/view-popup'),
('Employee', '/dependent/*'),
('Employee', '/employee/default/index'),
('Employee', '/employee/dependent/*'),
('Employee', '/employee/emp-master/emp-photo'),
('Employee', '/employee/emp-master/index'),
('Employee', '/employee/emp-master/update'),
('Employee', '/employee/emp-master/view'),
('Employee', '/employee/export-data/employee-profile-pdf'),
('Employee', '/report/default/index'),
('Employee', '/report/dependent/*'),
('Employee', '/report/empinforeport'),
('Employee', '/report/employee/empinforeport'),
('Employee', '/report/employee/selected-employee-list'),
('Employee', '/report/selected-employee-list'),
('Employee', '/report/selected-student-list'),
('Employee', '/report/student/selected-student-list'),
('Employee', '/report/student/stuinforeport'),
('Employee', '/report/stuinforeport'),
('Employee', '/student/default/index'),
('Employee', '/student/stu-master/index'),
('Employee', '/student/stu-master/view'),
('Employee', '/user/change'),
('Student', '/course/courses/index'),
('Student', '/course/default/index'),
('Student', '/dashboard/events/view-events'),
('Student', '/dashboard/notice/view-popup'),
('Student', '/employee/default/index'),
('Student', '/employee/emp-master/index'),
('Student', '/fees/default/index'),
('Student', '/fees/fees-payment-transaction/stu-fees-data'),
('Student', '/student/stu-master/view'),
('Student', '/user/change'),
('SuperAdmin', '/*'),
('SuperAdmin', '/auth-assignment/*'),
('SuperAdmin', '/auth-assignment/create'),
('SuperAdmin', '/auth-assignment/delete'),
('SuperAdmin', '/auth-assignment/index'),
('SuperAdmin', '/auth-assignment/update'),
('SuperAdmin', '/auth-assignment/view'),
('SuperAdmin', '/city/*'),
('SuperAdmin', '/city/create'),
('SuperAdmin', '/city/delete'),
('SuperAdmin', '/city/index'),
('SuperAdmin', '/city/update'),
('SuperAdmin', '/city/view'),
('SuperAdmin', '/country/*'),
('SuperAdmin', '/country/create'),
('SuperAdmin', '/country/delete'),
('SuperAdmin', '/country/index'),
('SuperAdmin', '/country/update'),
('SuperAdmin', '/country/view'),
('SuperAdmin', '/course/*'),
('SuperAdmin', '/course/batches/*'),
('SuperAdmin', '/course/batches/create'),
('SuperAdmin', '/course/batches/delete'),
('SuperAdmin', '/course/batches/index'),
('SuperAdmin', '/course/batches/toggle'),
('SuperAdmin', '/course/batches/update'),
('SuperAdmin', '/course/batches/view'),
('SuperAdmin', '/course/courses/*'),
('SuperAdmin', '/course/courses/create'),
('SuperAdmin', '/course/courses/delete'),
('SuperAdmin', '/course/courses/index'),
('SuperAdmin', '/course/courses/toggle'),
('SuperAdmin', '/course/courses/update'),
('SuperAdmin', '/course/courses/view'),
('SuperAdmin', '/course/default/*'),
('SuperAdmin', '/course/default/index'),
('SuperAdmin', '/course/section/*'),
('SuperAdmin', '/course/section/create'),
('SuperAdmin', '/course/section/delete'),
('SuperAdmin', '/course/section/index'),
('SuperAdmin', '/course/section/toggle'),
('SuperAdmin', '/course/section/update'),
('SuperAdmin', '/course/section/view'),
('SuperAdmin', '/dashboard/*'),
('SuperAdmin', '/dashboard/default/*'),
('SuperAdmin', '/dashboard/default/index'),
('SuperAdmin', '/dashboard/events/*'),
('SuperAdmin', '/dashboard/events/add-event'),
('SuperAdmin', '/dashboard/events/event-delete'),
('SuperAdmin', '/dashboard/events/index'),
('SuperAdmin', '/dashboard/events/update-event'),
('SuperAdmin', '/dashboard/events/view'),
('SuperAdmin', '/dashboard/events/view-events'),
('SuperAdmin', '/dashboard/msg-of-day/*'),
('SuperAdmin', '/dashboard/msg-of-day/create'),
('SuperAdmin', '/dashboard/msg-of-day/delete'),
('SuperAdmin', '/dashboard/msg-of-day/index'),
('SuperAdmin', '/dashboard/msg-of-day/toggle'),
('SuperAdmin', '/dashboard/msg-of-day/update'),
('SuperAdmin', '/dashboard/msg-of-day/view'),
('SuperAdmin', '/dashboard/notice/*'),
('SuperAdmin', '/dashboard/notice/create'),
('SuperAdmin', '/dashboard/notice/delete'),
('SuperAdmin', '/dashboard/notice/index'),
('SuperAdmin', '/dashboard/notice/notice-file'),
('SuperAdmin', '/dashboard/notice/toggle'),
('SuperAdmin', '/dashboard/notice/update'),
('SuperAdmin', '/dashboard/notice/view'),
('SuperAdmin', '/dashboard/notice/view-popup'),
('SuperAdmin', '/debug/*'),
('SuperAdmin', '/debug/default/*'),
('SuperAdmin', '/debug/default/download-mail'),
('SuperAdmin', '/debug/default/index'),
('SuperAdmin', '/debug/default/toolbar'),
('SuperAdmin', '/debug/default/view'),
('SuperAdmin', '/default/*'),
('SuperAdmin', '/default/index'),
('SuperAdmin', '/dependent/*'),
('SuperAdmin', '/dependent/getcity'),
('SuperAdmin', '/dependent/getorgcity'),
('SuperAdmin', '/dependent/getorgstate'),
('SuperAdmin', '/dependent/getstate'),
('SuperAdmin', '/dependent/index'),
('SuperAdmin', '/dependent/studbatch'),
('SuperAdmin', '/dependent/studsection'),
('SuperAdmin', '/document-category/*'),
('SuperAdmin', '/document-category/create'),
('SuperAdmin', '/document-category/delete'),
('SuperAdmin', '/document-category/index'),
('SuperAdmin', '/document-category/update'),
('SuperAdmin', '/document-category/view'),
('SuperAdmin', '/employee/*'),
('SuperAdmin', '/employee/default/*'),
('SuperAdmin', '/employee/default/index'),
('SuperAdmin', '/employee/dependent/*'),
('SuperAdmin', '/employee/dependent/emp-c-city'),
('SuperAdmin', '/employee/dependent/emp-c-state'),
('SuperAdmin', '/employee/dependent/emp-p-city'),
('SuperAdmin', '/employee/dependent/emp-p-state'),
('SuperAdmin', '/employee/emp-address/*'),
('SuperAdmin', '/employee/emp-address/create'),
('SuperAdmin', '/employee/emp-address/delete'),
('SuperAdmin', '/employee/emp-address/index'),
('SuperAdmin', '/employee/emp-address/update'),
('SuperAdmin', '/employee/emp-address/view'),
('SuperAdmin', '/employee/emp-category/*'),
('SuperAdmin', '/employee/emp-category/create'),
('SuperAdmin', '/employee/emp-category/delete'),
('SuperAdmin', '/employee/emp-category/index'),
('SuperAdmin', '/employee/emp-category/update'),
('SuperAdmin', '/employee/emp-category/view'),
('SuperAdmin', '/employee/emp-department/*'),
('SuperAdmin', '/employee/emp-department/create'),
('SuperAdmin', '/employee/emp-department/delete'),
('SuperAdmin', '/employee/emp-department/index'),
('SuperAdmin', '/employee/emp-department/update'),
('SuperAdmin', '/employee/emp-department/view'),
('SuperAdmin', '/employee/emp-designation/*'),
('SuperAdmin', '/employee/emp-designation/create'),
('SuperAdmin', '/employee/emp-designation/delete'),
('SuperAdmin', '/employee/emp-designation/index'),
('SuperAdmin', '/employee/emp-designation/update'),
('SuperAdmin', '/employee/emp-designation/view'),
('SuperAdmin', '/employee/emp-docs/*'),
('SuperAdmin', '/employee/emp-docs/create'),
('SuperAdmin', '/employee/emp-docs/delete'),
('SuperAdmin', '/employee/emp-docs/index'),
('SuperAdmin', '/employee/emp-docs/update'),
('SuperAdmin', '/employee/emp-docs/view'),
('SuperAdmin', '/employee/emp-info/*'),
('SuperAdmin', '/employee/emp-info/create'),
('SuperAdmin', '/employee/emp-info/delete'),
('SuperAdmin', '/employee/emp-info/index'),
('SuperAdmin', '/employee/emp-info/update'),
('SuperAdmin', '/employee/emp-info/view'),
('SuperAdmin', '/employee/emp-master/*'),
('SuperAdmin', '/employee/emp-master/adddocs'),
('SuperAdmin', '/employee/emp-master/change-status'),
('SuperAdmin', '/employee/emp-master/create'),
('SuperAdmin', '/employee/emp-master/delete'),
('SuperAdmin', '/employee/emp-master/delete-doc'),
('SuperAdmin', '/employee/emp-master/docs-download'),
('SuperAdmin', '/employee/emp-master/emp-photo'),
('SuperAdmin', '/employee/emp-master/index'),
('SuperAdmin', '/employee/emp-master/update'),
('SuperAdmin', '/employee/emp-master/view'),
('SuperAdmin', '/employee/emp-status/*'),
('SuperAdmin', '/employee/emp-status/create'),
('SuperAdmin', '/employee/emp-status/delete'),
('SuperAdmin', '/employee/emp-status/index'),
('SuperAdmin', '/employee/emp-status/update'),
('SuperAdmin', '/employee/emp-status/view'),
('SuperAdmin', '/employee/export-data/*'),
('SuperAdmin', '/employee/export-data/employee-profile-pdf'),
('SuperAdmin', '/export-data/*'),
('SuperAdmin', '/export-data/export-excel'),
('SuperAdmin', '/export-data/export-to-pdf'),
('SuperAdmin', '/fees/*'),
('SuperAdmin', '/fees/bank-master/*'),
('SuperAdmin', '/fees/bank-master/create'),
('SuperAdmin', '/fees/bank-master/delete'),
('SuperAdmin', '/fees/bank-master/index'),
('SuperAdmin', '/fees/bank-master/update'),
('SuperAdmin', '/fees/bank-master/view'),
('SuperAdmin', '/fees/default/*'),
('SuperAdmin', '/fees/default/index'),
('SuperAdmin', '/fees/dependent/*'),
('SuperAdmin', '/fees/dependent/get-fees-category'),
('SuperAdmin', '/fees/fees-category-details/*'),
('SuperAdmin', '/fees/fees-category-details/create'),
('SuperAdmin', '/fees/fees-category-details/delete'),
('SuperAdmin', '/fees/fees-category-details/index'),
('SuperAdmin', '/fees/fees-category-details/update'),
('SuperAdmin', '/fees/fees-category-details/view'),
('SuperAdmin', '/fees/fees-collect-category/*'),
('SuperAdmin', '/fees/fees-collect-category/create'),
('SuperAdmin', '/fees/fees-collect-category/delete'),
('SuperAdmin', '/fees/fees-collect-category/index'),
('SuperAdmin', '/fees/fees-collect-category/toggle'),
('SuperAdmin', '/fees/fees-collect-category/update'),
('SuperAdmin', '/fees/fees-collect-category/view'),
('SuperAdmin', '/fees/fees-payment-transaction/*'),
('SuperAdmin', '/fees/fees-payment-transaction/collect'),
('SuperAdmin', '/fees/fees-payment-transaction/delete'),
('SuperAdmin', '/fees/fees-payment-transaction/export-fcc-wise-fees-pdf'),
('SuperAdmin', '/fees/fees-payment-transaction/pay-fees'),
('SuperAdmin', '/fees/fees-payment-transaction/print-common-receipt'),
('SuperAdmin', '/fees/fees-payment-transaction/stu-fees-data'),
('SuperAdmin', '/fees/fees-payment-transaction/update'),
('SuperAdmin', '/fees/fees-payment-transaction/view'),
('SuperAdmin', '/gii/*'),
('SuperAdmin', '/gii/default/*'),
('SuperAdmin', '/gii/default/action'),
('SuperAdmin', '/gii/default/diff'),
('SuperAdmin', '/gii/default/index'),
('SuperAdmin', '/gii/default/preview'),
('SuperAdmin', '/gii/default/view'),
('SuperAdmin', '/languages/*'),
('SuperAdmin', '/languages/create'),
('SuperAdmin', '/languages/delete'),
('SuperAdmin', '/languages/index'),
('SuperAdmin', '/languages/update'),
('SuperAdmin', '/languages/view'),
('SuperAdmin', '/login-details/*'),
('SuperAdmin', '/login-details/create'),
('SuperAdmin', '/login-details/delete'),
('SuperAdmin', '/login-details/index'),
('SuperAdmin', '/login-details/update'),
('SuperAdmin', '/login-details/view'),
('SuperAdmin', '/national-holidays/*'),
('SuperAdmin', '/national-holidays/create'),
('SuperAdmin', '/national-holidays/delete'),
('SuperAdmin', '/national-holidays/index'),
('SuperAdmin', '/national-holidays/update'),
('SuperAdmin', '/national-holidays/view'),
('SuperAdmin', '/nationality/*'),
('SuperAdmin', '/nationality/create'),
('SuperAdmin', '/nationality/delete'),
('SuperAdmin', '/nationality/index'),
('SuperAdmin', '/nationality/update'),
('SuperAdmin', '/nationality/view'),
('SuperAdmin', '/organization/*'),
('SuperAdmin', '/organization/create'),
('SuperAdmin', '/organization/delete'),
('SuperAdmin', '/organization/index'),
('SuperAdmin', '/organization/update'),
('SuperAdmin', '/organization/view'),
('SuperAdmin', '/report/*'),
('SuperAdmin', '/report/default/*'),
('SuperAdmin', '/report/default/index'),
('SuperAdmin', '/report/dependent/*'),
('SuperAdmin', '/report/dependent/index'),
('SuperAdmin', '/report/dependent/studbatch'),
('SuperAdmin', '/report/dependent/studsection'),
('SuperAdmin', '/report/empinforeport'),
('SuperAdmin', '/report/employee/*'),
('SuperAdmin', '/report/employee/empinforeport'),
('SuperAdmin', '/report/employee/index'),
('SuperAdmin', '/report/employee/selected-employee-list'),
('SuperAdmin', '/report/index'),
('SuperAdmin', '/report/selected-employee-list'),
('SuperAdmin', '/report/selected-student-list'),
('SuperAdmin', '/report/student/*'),
('SuperAdmin', '/report/student/index'),
('SuperAdmin', '/report/student/selected-student-list'),
('SuperAdmin', '/report/student/stuinforeport'),
('SuperAdmin', '/report/stuinforeport'),
('SuperAdmin', '/rights/*'),
('SuperAdmin', '/rights/assignment/*'),
('SuperAdmin', '/rights/assignment/assign'),
('SuperAdmin', '/rights/assignment/index'),
('SuperAdmin', '/rights/assignment/role-search'),
('SuperAdmin', '/rights/assignment/view'),
('SuperAdmin', '/rights/default/*'),
('SuperAdmin', '/rights/default/index'),
('SuperAdmin', '/rights/menu/*'),
('SuperAdmin', '/rights/menu/create'),
('SuperAdmin', '/rights/menu/delete'),
('SuperAdmin', '/rights/menu/index'),
('SuperAdmin', '/rights/menu/update'),
('SuperAdmin', '/rights/menu/view'),
('SuperAdmin', '/rights/permission/*'),
('SuperAdmin', '/rights/permission/assign'),
('SuperAdmin', '/rights/permission/create'),
('SuperAdmin', '/rights/permission/delete'),
('SuperAdmin', '/rights/permission/index'),
('SuperAdmin', '/rights/permission/role-search'),
('SuperAdmin', '/rights/permission/update'),
('SuperAdmin', '/rights/permission/view'),
('SuperAdmin', '/rights/role/*'),
('SuperAdmin', '/rights/role/assign'),
('SuperAdmin', '/rights/role/create'),
('SuperAdmin', '/rights/role/delete'),
('SuperAdmin', '/rights/role/index'),
('SuperAdmin', '/rights/role/role-search'),
('SuperAdmin', '/rights/role/update'),
('SuperAdmin', '/rights/role/view'),
('SuperAdmin', '/rights/route/*'),
('SuperAdmin', '/rights/route/assign'),
('SuperAdmin', '/rights/route/create'),
('SuperAdmin', '/rights/route/index'),
('SuperAdmin', '/rights/route/route-search'),
('SuperAdmin', '/rights/rule/*'),
('SuperAdmin', '/rights/rule/create'),
('SuperAdmin', '/rights/rule/delete'),
('SuperAdmin', '/rights/rule/index'),
('SuperAdmin', '/rights/rule/update'),
('SuperAdmin', '/rights/rule/view'),
('SuperAdmin', '/site/*'),
('SuperAdmin', '/site/about'),
('SuperAdmin', '/site/captcha'),
('SuperAdmin', '/site/contact'),
('SuperAdmin', '/site/error'),
('SuperAdmin', '/site/forgotpassword'),
('SuperAdmin', '/site/index'),
('SuperAdmin', '/site/loadimage'),
('SuperAdmin', '/site/login'),
('SuperAdmin', '/site/logout'),
('SuperAdmin', '/state/*'),
('SuperAdmin', '/state/create'),
('SuperAdmin', '/state/delete'),
('SuperAdmin', '/state/index'),
('SuperAdmin', '/state/update'),
('SuperAdmin', '/state/view'),
('SuperAdmin', '/student/*'),
('SuperAdmin', '/student/default/*'),
('SuperAdmin', '/student/default/index'),
('SuperAdmin', '/student/dependent/*'),
('SuperAdmin', '/student/dependent/studbatch'),
('SuperAdmin', '/student/dependent/studsection'),
('SuperAdmin', '/student/dependent/ustud-c-city'),
('SuperAdmin', '/student/dependent/ustud-c-state'),
('SuperAdmin', '/student/dependent/ustud-p-city'),
('SuperAdmin', '/student/dependent/ustud-p-state'),
('SuperAdmin', '/student/export-data/*'),
('SuperAdmin', '/student/export-data/student-profile-pdf'),
('SuperAdmin', '/student/stu-address/*'),
('SuperAdmin', '/student/stu-address/create'),
('SuperAdmin', '/student/stu-address/delete'),
('SuperAdmin', '/student/stu-address/index'),
('SuperAdmin', '/student/stu-address/update'),
('SuperAdmin', '/student/stu-address/view'),
('SuperAdmin', '/student/stu-category/*'),
('SuperAdmin', '/student/stu-category/create'),
('SuperAdmin', '/student/stu-category/delete'),
('SuperAdmin', '/student/stu-category/index'),
('SuperAdmin', '/student/stu-category/update'),
('SuperAdmin', '/student/stu-category/view'),
('SuperAdmin', '/student/stu-docs/*'),
('SuperAdmin', '/student/stu-docs/create'),
('SuperAdmin', '/student/stu-docs/delete'),
('SuperAdmin', '/student/stu-docs/index'),
('SuperAdmin', '/student/stu-docs/update'),
('SuperAdmin', '/student/stu-docs/view'),
('SuperAdmin', '/student/stu-guardians/*'),
('SuperAdmin', '/student/stu-guardians/create'),
('SuperAdmin', '/student/stu-guardians/delete'),
('SuperAdmin', '/student/stu-guardians/index'),
('SuperAdmin', '/student/stu-guardians/update'),
('SuperAdmin', '/student/stu-guardians/view'),
('SuperAdmin', '/student/stu-info/*'),
('SuperAdmin', '/student/stu-info/create'),
('SuperAdmin', '/student/stu-info/delete'),
('SuperAdmin', '/student/stu-info/index'),
('SuperAdmin', '/student/stu-info/update'),
('SuperAdmin', '/student/stu-info/view'),
('SuperAdmin', '/student/stu-master/*'),
('SuperAdmin', '/student/stu-master/adddocs'),
('SuperAdmin', '/student/stu-master/addguardian'),
('SuperAdmin', '/student/stu-master/change-status'),
('SuperAdmin', '/student/stu-master/create'),
('SuperAdmin', '/student/stu-master/delete'),
('SuperAdmin', '/student/stu-master/delete-doc'),
('SuperAdmin', '/student/stu-master/docs-download'),
('SuperAdmin', '/student/stu-master/emg-change-status'),
('SuperAdmin', '/student/stu-master/index'),
('SuperAdmin', '/student/stu-master/stu-photo'),
('SuperAdmin', '/student/stu-master/update'),
('SuperAdmin', '/student/stu-master/view'),
('SuperAdmin', '/student/stu-status/*'),
('SuperAdmin', '/student/stu-status/create'),
('SuperAdmin', '/student/stu-status/delete'),
('SuperAdmin', '/student/stu-status/index'),
('SuperAdmin', '/student/stu-status/update'),
('SuperAdmin', '/student/stu-status/view'),
('SuperAdmin', '/subject-master/*'),
('SuperAdmin', '/subject-master/create'),
('SuperAdmin', '/subject-master/delete'),
('SuperAdmin', '/subject-master/index'),
('SuperAdmin', '/subject-master/update'),
('SuperAdmin', '/subject-master/view'),
('SuperAdmin', '/user/*'),
('SuperAdmin', '/user/change'),
('SuperAdmin', '/user/create'),
('SuperAdmin', '/user/delete'),
('SuperAdmin', '/user/index'),
('SuperAdmin', '/user/resetemploginid'),
('SuperAdmin', '/user/resetemppassword'),
('SuperAdmin', '/user/resetstudloginid'),
('SuperAdmin', '/user/resetstudpassword'),
('SuperAdmin', '/user/update'),
('SuperAdmin', '/user/update-emp-password'),
('SuperAdmin', '/user/update-stud-password'),
('SuperAdmin', '/user/updateemploginid'),
('SuperAdmin', '/user/updatestudloginid'),
('SuperAdmin', '/user/view'),
('SuperAdmin', 'Configuration'),
('SuperAdmin', 'Rights'),
('SuperAdmin', 'updateAllEmpInfo'),
('SuperAdmin', 'updateAllStuInfo');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE `bank_master` (
  `bank_master_id` int(11) NOT NULL,
  `bank_master_name` varchar(255) NOT NULL,
  `bank_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`bank_master_id`, `bank_master_name`, `bank_alias`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Mandiri', 'Mandiri', '2017-03-01 04:53:35', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL,
  `batch_name` varchar(120) NOT NULL,
  `batch_course_id` int(11) NOT NULL,
  `batch_alias` varchar(35) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`batch_id`, `batch_name`, `batch_course_id`, `batch_alias`, `start_date`, `end_date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, '2015-2016', 0, '2015-2016', '2017-03-16', '2017-03-16', '2017-03-16 15:40:06', 1, NULL, NULL, 0),
(2, '2016-2017', 0, '2016-2017', '2017-03-16', '2017-03-16', '2017-03-16 15:40:23', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `biaya_pendaftaran`
--

CREATE TABLE `biaya_pendaftaran` (
  `pay_id` int(12) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `section` varchar(200) NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `biaya` bigint(200) NOT NULL,
  `tgl_cicilan1` datetime NOT NULL,
  `cicilan1` bigint(200) NOT NULL,
  `tgl_cicilan2` datetime NOT NULL,
  `cicilan2` bigint(200) NOT NULL,
  `tgl_cicilan3` datetime NOT NULL,
  `cicilan3` bigint(200) NOT NULL,
  `tgl_cicilan4` datetime NOT NULL,
  `cicilan4` bigint(200) NOT NULL,
  `tgl_cicilan5` datetime NOT NULL,
  `cicilan5` int(11) NOT NULL,
  `tgl_cicilan6` datetime NOT NULL,
  `cicilan6` bigint(200) NOT NULL,
  `total` bigint(200) NOT NULL,
  `ket` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biaya_pendaftaran`
--

INSERT INTO `biaya_pendaftaran` (`pay_id`, `nama`, `section`, `tgl_daftar`, `biaya`, `tgl_cicilan1`, `cicilan1`, `tgl_cicilan2`, `cicilan2`, `tgl_cicilan3`, `cicilan3`, `tgl_cicilan4`, `cicilan4`, `tgl_cicilan5`, `cicilan5`, `tgl_cicilan6`, `cicilan6`, `total`, `ket`) VALUES
(1, 'Aurel Selyma Indi Situmeang', 'Joyful 1', '2016-11-14 00:00:00', 2900000, '2014-11-15 00:00:00', 300000, '2016-11-02 00:00:00', 2600000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(2, 'Cahaya Olifia Purba', 'Joyful 1', '2016-11-14 00:00:00', 2800000, '2015-11-14 00:00:00', 300000, '2016-02-22 00:00:00', 300000, '2016-03-29 00:00:00', 1000000, '2016-04-28 00:00:00', 1200000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(3, 'Calvin Cristian Pandiangan', 'Joyful 1', '2016-02-22 00:00:00', 3400000, '2016-02-22 00:00:00', 300000, '2016-04-26 00:00:00', 1100000, '2016-06-03 00:00:00', 2000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3400000, 'Lunas'),
(4, 'Kamelia Sinurat', 'Joyful 1', '2016-06-09 00:00:00', 3400000, '2016-06-09 00:00:00', 300000, '2016-06-09 00:00:00', 500000, '2016-06-24 00:00:00', 500000, '2016-08-02 00:00:00', 1000000, '2017-01-13 00:00:00', 114000, '0000-00-00 00:00:00', 0, 2414000, ''),
(5, 'Cristian Sihombing ', 'Joyful 1', '2015-11-26 00:00:00', 2800000, '2015-11-26 00:00:00', 300000, '2016-02-04 00:00:00', 2500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(6, 'Dava Evsando Siagian ', 'Joyful 1', '2016-01-18 00:00:00', 2800000, '2016-01-18 00:00:00', 300000, '2016-02-04 00:00:00', 300000, '2016-05-27 00:00:00', 1200000, '2016-07-12 00:00:00', 1000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(7, 'Ebzan Ryaldi Sihombing', 'Joyful 1', '2016-09-14 00:00:00', 2800000, '2016-09-14 00:00:00', 500000, '2015-12-01 00:00:00', 500000, '2016-02-16 00:00:00', 1800000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(8, 'Elisabeth A J Siregar ', 'Joyful 1', '2015-11-09 00:00:00', 2800000, '2016-11-09 00:00:00', 400000, '2016-01-12 00:00:00', 1000000, '2016-07-16 00:00:00', 1400000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(9, 'Fransisca Cheysya Purba', 'Joyful 1', '2016-01-26 00:00:00', 2900000, '2016-01-26 00:00:00', 300000, '2016-07-12 00:00:00', 300000, '2016-08-10 00:00:00', 1700000, '2016-12-09 00:00:00', 600000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(10, 'Hans D Situmorang ', 'Joyful 1', '2015-11-03 00:00:00', 2800000, '2015-11-03 00:00:00', 300000, '2016-01-15 00:00:00', 400000, '2016-02-01 00:00:00', 500000, '2016-03-07 00:00:00', 800000, '2016-05-15 00:00:00', 500000, '2016-04-01 00:00:00', 300000, 2800000, 'Lunas'),
(11, 'Jify Joune Silalahi  ', 'Joyful 1', '2016-01-19 00:00:00', 2800000, '2016-01-19 00:00:00', 500000, '2016-03-17 00:00:00', 400000, '2016-04-17 00:00:00', 200000, '2016-07-19 00:00:00', 1700000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'lunas'),
(12, 'Joanita N Simatupang', 'Joyful 1', '2015-11-30 00:00:00', 2900000, '2016-11-30 00:00:00', 300000, '2016-02-25 00:00:00', 300000, '2016-04-28 00:00:00', 2300000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(13, 'Jocelyn Athea Sinaga', 'Joyful 1', '2016-01-27 00:00:00', 2900000, '2016-01-27 00:00:00', 300000, '2016-03-31 00:00:00', 500000, '2016-04-27 00:00:00', 700000, '2016-06-03 00:00:00', 700000, '2016-07-01 00:00:00', 700000, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(14, 'Leonardo Messi Samosir ', 'Joyful 1', '2016-05-20 00:00:00', 4000000, '2016-05-19 00:00:00', 500000, '2016-06-18 00:00:00', 1000000, '2016-12-16 00:00:00', 2400000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3900000, 'Lunas'),
(15, 'May Ekalista Simanjuntak', 'Joyful 1', '2016-02-22 00:00:00', 3400000, '2016-02-22 00:00:00', 400000, '2016-04-19 00:00:00', 1000000, '2016-05-20 00:00:00', 1500000, '2016-06-28 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3400000, 'Lunas'),
(16, 'Rebeka Maorin Sibarani', 'Joyful 1', '2015-09-14 00:00:00', 2900000, '2015-09-14 00:00:00', 300000, '2016-01-26 00:00:00', 300000, '2016-01-25 00:00:00', 600000, '2016-01-25 00:00:00', 1000000, '2016-04-26 00:00:00', 700000, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(17, 'Samuel A Manihuruk', 'Joyful 1', '2016-07-11 00:00:00', 900000, '2016-07-11 00:00:00', 500000, '2016-12-15 00:00:00', 400000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 900000, 'Lunas'),
(18, 'Timothy Christar Lubis ', 'Joyful 1', '2015-12-30 00:00:00', 2900000, '2015-12-30 00:00:00', 300000, '2016-05-17 00:00:00', 2000000, '2016-07-01 00:00:00', 600000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(19, 'Vani Anggelita Lubis', 'Joyful 1', '2016-01-21 00:00:00', 2900000, '2016-01-21 00:00:00', 300000, '2016-04-04 00:00:00', 500000, '2016-08-03 00:00:00', 2100000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(20, 'Brandyanto Siallagan', 'Joyful 2', '2015-11-06 00:00:00', 2800000, '2016-11-06 00:00:00', 500000, '2016-03-16 00:00:00', 2300000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(21, 'Chelsy Renata Sidabutar', 'Joyful 2', '2016-02-29 00:00:00', 3400000, '2016-02-29 00:00:00', 300000, '2016-05-11 00:00:00', 700000, '2016-06-30 00:00:00', 2400000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3400000, 'Lunas'),
(23, 'Christin Novita Turnip', 'Joyful 2', '2015-11-30 00:00:00', 2650000, '2015-11-30 00:00:00', 300000, '2016-04-06 00:00:00', 400000, '2016-05-09 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1200000, ''),
(24, 'Christina A. Simbolon', 'Joyful 2', '2016-02-29 00:00:00', 3400000, '2016-02-29 00:00:00', 680000, '2016-03-24 00:00:00', 680000, '2016-04-27 00:00:00', 680000, '2016-05-31 00:00:00', 680000, '2016-06-24 00:00:00', 680000, '0000-00-00 00:00:00', 0, 3400000, 'lunas'),
(25, 'Fedrerico Repan Sinaurat', 'Joyful 2', '2015-09-30 00:00:00', 2900000, '2015-09-30 00:00:00', 500000, '2016-03-03 00:00:00', 2400000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(26, 'Gomer Estomihi Pardede', 'Joyful 2', '2016-02-24 00:00:00', 3400000, '2016-02-24 00:00:00', 3330000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3330000, 'Disc cash 5%'),
(27, 'Javier Chiko C. Pakpahan', 'Joyful 2', '2016-06-08 00:00:00', 4000000, '2016-06-08 00:00:00', 300000, '2016-06-11 00:00:00', 1700000, '2016-07-01 00:00:00', 2000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 4000000, 'Lunas'),
(28, 'Jhon Styven Nainggolan', 'Joyful 2', '2015-09-18 00:00:00', 2900000, '2016-09-18 00:00:00', 500000, '2016-02-26 00:00:00', 2400000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(29, 'Jivana Sandioriva', 'Joyful 2', '2015-11-27 00:00:00', 2900000, '2015-11-27 00:00:00', 900000, '2016-02-24 00:00:00', 2000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(30, 'Joyce Gracellya Simbolon ', 'Joyful 2', '2016-01-15 00:00:00', 2900000, '2016-01-15 00:00:00', 300000, '2016-05-16 00:00:00', 1600000, '2016-06-29 00:00:00', 1000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(31, 'Jisyer Nauke Sitohang', 'Joyful 2', '2016-07-14 00:00:00', 4000000, '2016-07-14 00:00:00', 500000, '2016-09-26 00:00:00', 3500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 4000000, 'Lunas'),
(32, 'Kelvin B. Simanjuntak', 'Joyful 2', '2016-06-20 00:00:00', 4000000, '2016-06-20 00:00:00', 3900000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3900000, 'Cash 5%'),
(33, 'Kevin Pratama Matondang', 'Joyful 2', '2015-11-27 00:00:00', 2800000, '2016-11-27 00:00:00', 1500000, '2016-04-01 00:00:00', 1000000, '2016-07-02 00:00:00', 300000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(34, 'Livia Felisha', 'Joyful 2', '2015-11-04 00:00:00', 2800000, '2015-11-04 00:00:00', 300000, '2016-02-26 00:00:00', 1600000, '2016-03-10 00:00:00', 400000, '2016-03-22 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2800000, 'Lunas'),
(35, 'Marfel Bastian Manurung ', 'Joyful 2', '2015-09-22 00:00:00', 2900000, '2015-09-22 00:00:00', 300000, '2015-12-07 00:00:00', 1600000, '2016-02-22 00:00:00', 1000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2900000, 'Lunas'),
(36, 'Natanael Alvino Purba', 'Joyful 2', '2016-02-02 00:00:00', 3400000, '2016-02-02 00:00:00', 500000, '2016-04-11 00:00:00', 400000, '2016-05-09 00:00:00', 600000, '2016-06-01 00:00:00', 1000000, '2016-07-04 00:00:00', 900000, '0000-00-00 00:00:00', 0, 3400000, 'Lunas'),
(37, 'Novelina E. Simare-Mare', 'Joyful 2', '2015-02-02 00:00:00', 3400000, '2016-02-02 00:00:00', 700000, '2016-06-03 00:00:00', 700000, '2016-06-27 00:00:00', 1500, '2016-07-02 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3400000, 'Lunas'),
(38, 'Noah Christofer Edrian', 'TK B', '2016-11-18 00:00:00', 3200000, '2016-11-18 00:00:00', 3060000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3060000, 'Lunas/cash'),
(39, 'Rotua mutiara Gracia', 'TKB', '2016-11-22 00:00:00', 3200000, '2016-11-22 00:00:00', 500000, '2016-11-22 00:00:00', 2560000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3060000, 'Lunas/Cash'),
(40, 'Selviana Oktavia hutagaol', 'TKB', '2016-11-25 00:00:00', 3200000, '2016-11-25 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(41, 'Axwen DerellSimorangkir', 'TKB', '2016-11-28 00:00:00', 3200000, '2016-11-28 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(42, 'Chelsi Olivia renata abigail', 'TKB', '2016-12-05 00:00:00', 3200000, '2016-12-05 00:00:00', 500000, '2017-01-11 00:00:00', 1000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1500000, ''),
(43, 'Lanskris Panjaitan', 'TKB', '2016-12-05 00:00:00', 3060000, '2016-12-05 00:00:00', 3060000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3060000, 'Lunas/Cash'),
(44, 'Daniel Christian Septiano', 'TKB', '2016-12-06 00:00:00', 3060000, '2016-12-05 00:00:00', 3060000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3060000, 'Lunas/Cash'),
(45, 'Elfrita Juwita Siregar', 'TKB', '2016-12-07 00:00:00', 3200000, '2016-12-07 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(46, 'Cathleen Permaisuri Sihombing', 'TKB', '2016-12-14 00:00:00', 3200000, '2016-12-14 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(47, 'Michael Adrian Manurung', 'TKB', '2016-12-14 00:00:00', 3200000, '2016-12-14 00:00:00', 500000, '2017-01-12 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1000000, ''),
(48, 'Binary revaldo Pasaribu', 'TKB', '2016-12-14 00:00:00', 3200000, '2016-12-14 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(49, 'Bezaleel Oscar Pasaribu', 'TKB', '2016-12-14 00:00:00', 3200000, '2016-12-15 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(50, 'Gendhis Wisma Abigael', 'TK B', '2016-12-16 00:00:00', 3200000, '2016-12-16 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(51, 'Grace Novena Marbun', 'TKB', '2016-12-19 00:00:00', 3200000, '2016-12-19 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(52, 'Yosshi Yunita Siahaan', 'TKB', '2016-12-19 00:00:00', 3200000, '2016-12-19 00:00:00', 3060000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3060000, 'Lunas/Cash'),
(53, 'David Handeson Situmorang', 'TKB', '2016-12-20 00:00:00', 3200000, '2016-12-20 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(54, 'Yoely Abigael Ronauli Aruan', 'TKB', '2017-01-09 00:00:00', 3900000, '2017-01-09 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(55, 'Djudika Wasitton Simbolon', 'TKB', '2017-01-11 00:00:00', 3900000, '2017-01-11 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(56, 'Michella Putri Riany Siagian', 'SD', '2016-10-03 00:00:00', 3725000, '2016-10-03 00:00:00', 1000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1000000, ''),
(57, 'Windy Sitohang', 'SD', '2016-10-13 00:00:00', 3725000, '2016-10-13 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(58, 'Heber Situmorang', 'SD', '2016-10-14 00:00:00', 3725000, '2016-10-14 00:00:00', 1000000, '2016-11-07 00:00:00', 1300000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2300000, ''),
(59, 'Carrisa Carlene', 'SD', '2016-10-27 00:00:00', 3725000, '2016-10-27 00:00:00', 500000, '2016-11-15 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1000000, ''),
(60, 'Angel L Ginting', 'SD', '2016-11-11 00:00:00', 3725000, '2016-11-11 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(61, 'Shinta Uli', 'SD', '2016-11-15 00:00:00', 3725000, '2016-11-15 00:00:00', 725000, '2016-12-14 00:00:00', 600000, '2017-01-13 00:00:00', 600000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1925000, ''),
(62, 'Nataniel K.Nainggolan', 'SD', '2016-11-28 00:00:00', 3550000, '2016-11-28 00:00:00', 3550000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3550000, 'Lunas cash'),
(63, 'Secilia Natalin Sianturi', 'SD', '2016-12-02 00:00:00', 3725000, '2016-12-02 00:00:00', 100000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 100000, ''),
(64, 'Rizky Dermawan', 'SD', '2016-12-05 00:00:00', 3725000, '2016-12-05 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(65, 'Clarissa Situmorang', 'SD', '2016-12-05 00:00:00', 3725000, '2016-12-05 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(66, 'Henry Napitupulu', 'SD', '2016-12-05 00:00:00', 3725000, '2016-12-05 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(67, 'Risky Adinata Hutapea', 'SD', '2016-12-05 00:00:00', 3550000, '2016-12-05 00:00:00', 1000000, '2016-12-06 00:00:00', 2550000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3550000, 'Lunas cash'),
(68, 'Faith Alvian Aruan', 'SD', '2016-12-06 00:00:00', 3550000, '2016-12-06 00:00:00', 3550000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3550000, 'Lunas cash'),
(69, 'Priskila Irena Gultom', 'SD', '2016-12-09 00:00:00', 3725000, '2016-12-09 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(70, 'Jeremi lumban Toruan', 'SD', '2016-12-09 00:00:00', 3725000, '2016-12-09 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(71, 'Dirga', 'SD', '2016-12-09 00:00:00', 3725000, '2016-12-09 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(72, 'Cashya Samosir', 'SD', '2016-12-13 00:00:00', 3725000, '2016-12-13 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(73, 'Melani Patricia Situmeang', 'SD', '2016-12-13 00:00:00', 3900000, '2016-12-13 00:00:00', 600000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 600000, ''),
(74, 'Herlina Octaviana', 'SD', '2016-12-13 00:00:00', 3725000, '2016-12-13 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(75, 'Jovina sirait', 'SD', '2016-12-13 00:00:00', 3725000, '2016-12-13 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(76, 'Febriany Silaban', 'SD', '2016-12-13 00:00:00', 3900000, '2016-12-13 00:00:00', 950000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 950000, ''),
(77, 'Zaysend marulitua Lumban tobing', 'SD', '2016-12-14 00:00:00', 3900000, '2016-12-14 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(78, 'Andhin Arief', 'SD', '2016-12-15 00:00:00', 3725000, '2016-12-15 00:00:00', 725000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 725000, ''),
(79, 'Nigel Septiani', 'SD', '2016-12-15 00:00:00', 3550000, '2016-12-15 00:00:00', 3550000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 3550000, 'Lunas cash'),
(80, 'Jashinta', 'SD', '2016-12-16 00:00:00', 3725000, '2016-12-16 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(81, 'Eca Rinawati', 'SD', '2016-12-16 00:00:00', 3725000, '2016-12-16 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(82, 'Christofer', 'SD', '2016-12-16 00:00:00', 3725000, '2016-12-16 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(83, 'Mita Angelika', 'SD', '2016-12-16 00:00:00', 3725000, '2016-12-16 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(84, 'Jeniffer', 'SD', '2016-12-16 00:00:00', 3725000, '2016-12-16 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(85, 'Kamelia', 'SD', '2017-01-11 00:00:00', 3725000, '2017-01-11 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(86, 'Dendron Brandon Silalahi', 'SD', '2016-12-16 00:00:00', 3900000, '2016-12-16 00:00:00', 2000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2000000, ''),
(87, 'Josua', 'SD', '2016-12-16 00:00:00', 3725000, '2016-12-16 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(88, 'Rachel', 'SD', '2016-12-16 00:00:00', 3725000, '2016-12-16 00:00:00', 2000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 2000000, ''),
(89, 'Sartika Idola Sitorus', 'SD', '2016-12-19 00:00:00', 3725000, '2016-12-19 00:00:00', 500000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 500000, ''),
(90, 'Martha Octavia', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 'Hold'),
(91, 'Catherine Emily Earin', 'SD', '2017-01-13 00:00:00', 4775000, '2017-01-13 00:00:00', 1000000, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 1000000, '');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(35) NOT NULL,
  `city_state_id` int(11) NOT NULL,
  `city_country_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `city_state_id`, `city_country_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Batam', 18, 1, '2017-02-22 10:57:46', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Indonesia', '2017-02-17 16:07:46', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `course_alias` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_code`, `course_alias`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'SD', 'SD', 'SD', '2017-03-16 15:41:11', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `document_category`
--

CREATE TABLE `document_category` (
  `doc_category_id` int(11) NOT NULL,
  `doc_category_name` varchar(50) NOT NULL,
  `doc_category_user_type` char(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `document_category`
--

INSERT INTO `document_category` (`doc_category_id`, `doc_category_name`, `doc_category_user_type`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'KK', 'S', '2017-02-25 19:06:58', 1, NULL, NULL, 0),
(2, 'Akta Lahir', 'S', '2017-02-25 19:14:49', 1, '2017-02-27 05:11:07', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `emp_address`
--

CREATE TABLE `emp_address` (
  `emp_address_id` int(11) NOT NULL,
  `emp_cadd` varchar(255) DEFAULT NULL,
  `emp_cadd_city` int(11) DEFAULT NULL,
  `emp_cadd_state` int(11) DEFAULT NULL,
  `emp_cadd_country` int(11) DEFAULT NULL,
  `emp_cadd_pincode` int(11) DEFAULT NULL,
  `emp_cadd_house_no` varchar(25) DEFAULT NULL,
  `emp_cadd_phone_no` varchar(25) DEFAULT NULL,
  `emp_padd` varchar(255) DEFAULT NULL,
  `emp_padd_city` int(11) DEFAULT NULL,
  `emp_padd_state` int(11) DEFAULT NULL,
  `emp_padd_country` int(11) DEFAULT NULL,
  `emp_padd_pincode` int(11) DEFAULT NULL,
  `emp_padd_house_no` varchar(25) DEFAULT NULL,
  `emp_padd_phone_no` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_category`
--

CREATE TABLE `emp_category` (
  `emp_category_id` int(11) NOT NULL,
  `emp_category_name` varchar(50) NOT NULL,
  `emp_category_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_department`
--

CREATE TABLE `emp_department` (
  `emp_department_id` int(11) NOT NULL,
  `emp_department_name` varchar(65) NOT NULL,
  `emp_department_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_designation`
--

CREATE TABLE `emp_designation` (
  `emp_designation_id` int(11) NOT NULL,
  `emp_designation_name` varchar(50) NOT NULL,
  `emp_designation_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_docs`
--

CREATE TABLE `emp_docs` (
  `emp_docs_id` int(11) NOT NULL,
  `emp_docs_details` varchar(100) DEFAULT NULL,
  `emp_docs_category_id` int(11) NOT NULL,
  `emp_docs_path` varchar(150) NOT NULL,
  `emp_docs_submited_at` datetime NOT NULL,
  `emp_docs_status` tinyint(1) NOT NULL DEFAULT '0',
  `emp_docs_emp_master_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_info`
--

CREATE TABLE `emp_info` (
  `emp_info_id` int(11) NOT NULL,
  `emp_unique_id` int(11) NOT NULL,
  `emp_attendance_card_id` varchar(50) DEFAULT NULL,
  `emp_title` varchar(15) DEFAULT NULL,
  `emp_first_name` varchar(35) NOT NULL,
  `emp_middle_name` varchar(35) DEFAULT NULL,
  `emp_last_name` varchar(35) NOT NULL,
  `emp_name_alias` varchar(10) DEFAULT NULL,
  `emp_mother_name` varchar(50) DEFAULT NULL,
  `emp_gender` varchar(20) DEFAULT NULL,
  `emp_dob` date DEFAULT NULL,
  `emp_religion` varchar(50) DEFAULT NULL,
  `emp_bloodgroup` varchar(15) NOT NULL DEFAULT 'Unknown',
  `emp_joining_date` date DEFAULT NULL,
  `emp_birthplace` varchar(50) DEFAULT NULL,
  `emp_email_id` varchar(65) DEFAULT NULL,
  `emp_maritalstatus` varchar(35) DEFAULT NULL,
  `emp_mobile_no` bigint(12) DEFAULT NULL,
  `emp_photo` varchar(150) DEFAULT NULL,
  `emp_languages` varchar(255) DEFAULT NULL,
  `emp_bankaccount_no` varchar(25) DEFAULT NULL,
  `emp_qualification` varchar(50) DEFAULT NULL,
  `emp_specialization` varchar(255) DEFAULT NULL,
  `emp_experience_year` tinyint(2) DEFAULT NULL,
  `emp_experience_month` tinyint(2) DEFAULT NULL,
  `emp_hobbies` varchar(100) DEFAULT NULL,
  `emp_reference` varchar(35) DEFAULT NULL,
  `emp_guardian_name` varchar(65) DEFAULT NULL,
  `emp_guardian_relation` varchar(30) DEFAULT NULL,
  `emp_guardian_qualification` varchar(50) DEFAULT NULL,
  `emp_guardian_occupation` varchar(50) DEFAULT NULL,
  `emp_guardian_income` varchar(50) DEFAULT NULL,
  `emp_guardian_homeadd` varchar(255) DEFAULT NULL,
  `emp_guardian_officeadd` varchar(255) DEFAULT NULL,
  `emp_guardian_mobile_no` bigint(12) DEFAULT NULL,
  `emp_guardian_phone_no` varchar(25) DEFAULT NULL,
  `emp_guardian_email_id` varchar(65) DEFAULT NULL,
  `emp_info_emp_master_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_master`
--

CREATE TABLE `emp_master` (
  `emp_master_id` int(11) NOT NULL,
  `emp_master_emp_info_id` int(11) NOT NULL,
  `emp_master_user_id` int(11) NOT NULL,
  `emp_master_department_id` int(11) NOT NULL,
  `emp_master_designation_id` int(11) DEFAULT NULL,
  `emp_master_category_id` int(11) NOT NULL,
  `emp_master_nationality_id` int(11) DEFAULT NULL,
  `emp_master_emp_address_id` int(11) NOT NULL,
  `emp_master_status_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_status`
--

CREATE TABLE `emp_status` (
  `emp_status_id` int(11) NOT NULL,
  `emp_status_name` varchar(50) NOT NULL,
  `emp_status_description` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(80) NOT NULL,
  `event_detail` varchar(255) NOT NULL,
  `event_start_date` datetime NOT NULL,
  `event_end_date` datetime NOT NULL,
  `event_type` int(11) NOT NULL,
  `event_url` varchar(255) DEFAULT NULL,
  `event_all_day` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `event_detail`, `event_start_date`, `event_end_date`, `event_type`, `event_url`, `event_all_day`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Raja Salman Visit Nadia CK', 'Raja Salman Visit Nadia CK', '2017-02-28 00:00:00', '2017-02-28 00:00:00', 2, NULL, 0, '2017-02-27 05:00:27', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fees_category_details`
--

CREATE TABLE `fees_category_details` (
  `fees_category_details_id` int(11) NOT NULL,
  `fees_details_name` varchar(70) NOT NULL,
  `fees_details_category_id` int(11) NOT NULL,
  `fees_details_description` varchar(255) DEFAULT NULL,
  `fees_details_amount` decimal(10,0) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fees_collect_category`
--

CREATE TABLE `fees_collect_category` (
  `fees_collect_category_id` int(11) NOT NULL,
  `fees_collect_name` varchar(70) NOT NULL,
  `fees_collect_batch_id` int(11) NOT NULL,
  `fees_collect_details` varchar(255) DEFAULT NULL,
  `fees_collect_start_date` date NOT NULL,
  `fees_collect_end_date` date NOT NULL,
  `fees_collect_due_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  `fees_collect_course_id` int(11) NOT NULL,
  `fees_collect_section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees_collect_category`
--

INSERT INTO `fees_collect_category` (`fees_collect_category_id`, `fees_collect_name`, `fees_collect_batch_id`, `fees_collect_details`, `fees_collect_start_date`, `fees_collect_end_date`, `fees_collect_due_date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`, `fees_collect_course_id`, `fees_collect_section_id`) VALUES
(1, 'SD', 1, '', '2017-03-17', '2017-03-17', '2017-03-17', '2017-03-17 13:27:47', 1, NULL, NULL, 0, 0, 0),
(2, 'asdf', 1, '', '2017-03-17', '2017-03-17', '2017-03-17', '2017-03-17 13:29:49', 1, NULL, NULL, 0, 0, 0),
(3, 'wer', 1, '', '2017-03-17', '2017-03-17', '2017-03-17', '2017-03-17 13:31:19', 1, NULL, NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fees_payment_transaction`
--

CREATE TABLE `fees_payment_transaction` (
  `fees_pay_tran_id` int(11) NOT NULL,
  `fees_pay_tran_collect_id` int(11) NOT NULL,
  `fees_pay_tran_stu_id` int(11) NOT NULL,
  `fees_pay_tran_batch_id` int(11) NOT NULL,
  `fees_pay_tran_course_id` int(11) NOT NULL,
  `fees_pay_tran_section_id` int(11) NOT NULL,
  `fees_pay_tran_mode` tinyint(1) NOT NULL,
  `fees_pay_tran_cheque_no` int(11) DEFAULT NULL,
  `fees_pay_tran_cheque_date` date DEFAULT NULL,
  `fees_pay_tran_bank_id` int(11) DEFAULT NULL,
  `fees_pay_tran_bank_branch` varchar(50) DEFAULT NULL,
  `fees_pay_tran_amount` decimal(10,0) NOT NULL,
  `fees_pay_tran_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees_payment_transaction`
--

INSERT INTO `fees_payment_transaction` (`fees_pay_tran_id`, `fees_pay_tran_collect_id`, `fees_pay_tran_stu_id`, `fees_pay_tran_batch_id`, `fees_pay_tran_course_id`, `fees_pay_tran_section_id`, `fees_pay_tran_mode`, `fees_pay_tran_cheque_no`, `fees_pay_tran_cheque_date`, `fees_pay_tran_bank_id`, `fees_pay_tran_bank_branch`, `fees_pay_tran_amount`, `fees_pay_tran_date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 2, 1, 1, 1, 1, 1, NULL, NULL, NULL, '', '15000', '2017-03-16', '2017-03-16 16:23:17', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`language_id`, `language_name`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'indonesia', '2017-02-17 16:19:18', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_detail_id` int(11) NOT NULL,
  `login_user_id` int(11) NOT NULL,
  `login_status` tinyint(1) NOT NULL DEFAULT '0',
  `login_at` datetime NOT NULL,
  `logout_at` datetime DEFAULT NULL,
  `user_ip_address` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_detail_id`, `login_user_id`, `login_status`, `login_at`, `logout_at`, `user_ip_address`) VALUES
(1, 1, 0, '2017-02-16 09:58:49', '2017-02-24 16:02:03', '::1'),
(2, 1, 0, '2017-02-16 10:27:39', '2017-02-24 16:02:03', '::1'),
(3, 1, 0, '2017-02-16 12:27:58', '2017-02-24 16:02:03', '::1'),
(4, 1, 0, '2017-02-17 10:58:10', '2017-02-24 16:02:03', '::1'),
(5, 1, 0, '2017-02-17 16:00:47', '2017-02-24 16:02:03', '::1'),
(6, 1, 0, '2017-02-20 08:33:44', '2017-02-24 16:02:03', '::1'),
(7, 1, 0, '2017-02-20 13:19:07', '2017-02-24 16:02:03', '::1'),
(8, 1, 0, '2017-02-22 10:13:54', '2017-02-24 16:02:03', '::1'),
(9, 1, 0, '2017-02-23 09:56:10', '2017-02-24 16:02:03', '::1'),
(10, 1, 0, '2017-02-24 16:02:06', '2017-02-27 10:18:59', '::1'),
(11, 1, 0, '2017-02-25 18:40:00', '2017-02-27 10:18:59', '::1'),
(12, 1, 0, '2017-02-25 18:47:26', '2017-02-27 10:18:59', '::1'),
(13, 1, 0, '2017-02-25 18:49:02', '2017-02-27 10:18:59', '::1'),
(14, 1, 0, '2017-02-25 18:49:12', '2017-02-27 10:18:59', '::1'),
(15, 1, 0, '2017-02-27 10:19:04', '2017-02-27 02:10:50', '::1'),
(16, 1, 0, '2017-02-27 01:43:20', '2017-02-27 02:10:50', '36.76.4.201'),
(17, 1, 0, '2017-02-27 02:07:21', '2017-02-27 02:10:50', '36.76.4.201'),
(18, 1, 0, '2017-02-27 03:32:52', '2017-02-27 03:43:36', '36.76.4.201'),
(19, 1, 0, '2017-02-27 03:45:26', '2017-02-27 04:03:48', '36.76.4.201'),
(20, 1, 0, '2017-02-27 04:03:53', '2017-02-27 04:27:03', '36.76.4.201'),
(21, 1, 0, '2017-02-27 04:29:14', '2017-02-27 05:05:23', '36.76.4.201'),
(22, 1, 0, '2017-02-27 04:54:16', '2017-02-27 05:05:23', '36.76.4.201'),
(23, 1, 0, '2017-02-27 04:56:09', '2017-02-27 05:05:23', '103.246.2.254'),
(24, 1, 0, '2017-02-27 05:09:53', '2017-02-27 05:14:48', '36.76.4.201'),
(25, 1, 0, '2017-02-27 05:10:04', '2017-02-27 05:14:48', '36.76.4.201'),
(26, 1, 0, '2017-02-27 09:13:37', '2017-03-01 04:49:27', '125.163.150.45'),
(27, 1, 0, '2017-02-27 11:37:23', '2017-03-01 04:49:27', '202.67.47.24'),
(28, 1, 0, '2017-02-27 19:46:06', '2017-03-01 04:49:27', '125.165.14.50'),
(29, 1, 0, '2017-02-27 20:38:49', '2017-03-01 04:49:27', '103.246.2.254'),
(30, 1, 0, '2017-02-27 22:20:02', '2017-03-01 04:49:27', '103.246.2.254'),
(31, 1, 0, '2017-02-27 23:48:45', '2017-03-01 04:49:27', '36.77.57.213'),
(32, 1, 0, '2017-02-27 23:49:34', '2017-03-01 04:49:27', '36.77.57.213'),
(33, 1, 0, '2017-02-28 02:32:22', '2017-03-01 04:49:27', '36.77.57.213'),
(34, 1, 0, '2017-02-28 23:25:37', '2017-03-01 04:49:27', '125.163.159.24'),
(35, 1, 0, '2017-03-01 01:55:44', '2017-03-01 04:49:27', '36.78.197.36'),
(36, 1, 0, '2017-03-01 03:47:40', '2017-03-01 04:49:27', '36.78.197.36'),
(37, 1, 0, '2017-03-01 04:27:11', '2017-03-01 04:49:27', '36.78.197.36'),
(38, 1, 0, '2017-03-01 04:49:31', '2017-03-06 04:25:53', '36.78.197.36'),
(39, 1, 0, '2017-03-01 23:16:00', '2017-03-06 04:25:53', '36.78.198.22'),
(40, 1, 0, '2017-03-02 00:08:52', '2017-03-06 04:25:53', '223.255.224.101'),
(41, 1, 0, '2017-03-02 02:10:32', '2017-03-06 04:25:53', '36.78.198.22'),
(42, 1, 0, '2017-03-04 07:38:37', '2017-03-06 04:25:53', '202.67.47.30'),
(43, 1, 0, '2017-03-06 04:14:12', '2017-03-06 04:25:53', '36.78.194.192'),
(44, 1, 0, '2017-03-06 04:14:17', '2017-03-06 04:25:53', '36.78.194.192'),
(45, 1, 0, '2017-03-06 04:17:20', '2017-03-06 04:25:53', '202.67.47.25'),
(46, 1, 0, '2017-03-06 04:49:47', '2017-03-09 23:23:02', '36.78.194.192'),
(47, 1, 0, '2017-03-06 08:00:46', '2017-03-09 23:23:02', '202.67.47.4'),
(48, 1, 0, '2017-03-06 22:11:34', '2017-03-09 23:23:02', '36.78.194.192'),
(49, 1, 0, '2017-03-06 22:59:33', '2017-03-09 23:23:02', '36.78.194.192'),
(50, 1, 0, '2017-03-07 01:34:06', '2017-03-09 23:23:02', '36.78.194.192'),
(51, 1, 0, '2017-03-07 03:51:27', '2017-03-09 23:23:02', '36.78.194.192'),
(52, 1, 0, '2017-03-09 02:17:38', '2017-03-09 23:23:02', '36.77.58.161'),
(53, 1, 0, '2017-03-09 22:54:09', '2017-03-09 23:23:02', '36.77.58.161'),
(54, 1, 0, '2017-03-09 23:14:31', '2017-03-09 23:23:02', '36.77.58.161'),
(55, 1, 0, '2017-03-09 23:14:37', '2017-03-09 23:23:02', '36.77.58.161'),
(56, 1, 0, '2017-03-09 23:14:43', '2017-03-09 23:23:02', '36.77.58.161'),
(57, 1, 0, '2017-03-09 23:14:51', '2017-03-09 23:23:02', '36.77.58.161'),
(58, 1, 0, '2017-03-09 23:18:07', '2017-03-09 23:23:02', '36.77.58.161'),
(59, 1, 0, '2017-03-12 23:01:43', '2017-03-15 22:56:39', '36.77.58.161'),
(60, 1, 0, '2017-03-12 23:20:35', '2017-03-15 22:56:39', '36.76.6.253'),
(61, 1, 0, '2017-03-13 01:09:59', '2017-03-15 22:56:39', '36.76.6.253'),
(62, 1, 0, '2017-03-13 03:31:06', '2017-03-15 22:56:39', '36.76.6.253'),
(63, 1, 0, '2017-03-15 22:52:20', '2017-03-15 22:56:39', '113.212.163.131'),
(64, 1, 0, '2017-03-15 22:56:55', '2017-03-16 04:27:35', '113.212.163.131'),
(65, 1, 0, '2017-03-15 23:56:19', '2017-03-16 04:27:35', '36.69.23.4'),
(66, 1, 0, '2017-03-16 00:18:00', '2017-03-16 04:27:35', '202.67.47.17'),
(67, 1, 0, '2017-03-16 04:07:40', '2017-03-16 04:27:35', '180.242.117.131'),
(68, 1, 0, '2017-03-16 04:27:40', '2017-03-16 15:37:20', '180.242.117.131'),
(69, 1, 0, '2017-03-16 15:37:27', '2017-03-17 12:35:23', '::1'),
(70, 1, 0, '2017-03-17 11:16:19', '2017-03-17 12:35:23', '::1'),
(71, 1, 0, '2017-03-17 12:37:05', '2017-03-17 12:38:25', '::1'),
(72, 1, 1, '2017-03-17 12:38:27', NULL, '::1'),
(73, 1, 1, '2017-03-20 15:25:08', NULL, '127.0.0.1'),
(74, 1, 1, '2017-03-22 14:47:11', NULL, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `msg_of_day`
--

CREATE TABLE `msg_of_day` (
  `msg_of_day_id` int(11) NOT NULL,
  `msg_details` varchar(100) NOT NULL,
  `msg_user_type` char(3) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `msg_of_day`
--

INSERT INTO `msg_of_day` (`msg_of_day_id`, `msg_details`, `msg_user_type`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Orang yang bijak adalah orang yang menghargai usahanya sendiri dalam mendapatkan yang diinginkannya', 'S', '2017-02-25 19:17:12', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `national_holidays`
--

CREATE TABLE `national_holidays` (
  `national_holiday_id` int(11) NOT NULL,
  `national_holiday_name` varchar(50) NOT NULL,
  `national_holiday_date` date NOT NULL,
  `national_holiday_remarks` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `nationality_id` int(11) NOT NULL,
  `nationality_name` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`nationality_id`, `nationality_name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'indonesia', '2017-02-20 08:55:01', 1, '2017-02-20 08:55:23', 1, 2),
(2, 'indonesian', '2017-02-20 08:55:12', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `notice_title` varchar(25) NOT NULL,
  `notice_description` varchar(255) DEFAULT NULL,
  `notice_user_type` char(3) NOT NULL,
  `notice_date` date DEFAULT NULL,
  `notice_file_path` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `notice_title`, `notice_description`, `notice_user_type`, `notice_date`, `notice_file_path`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Sistem Baru', 'Selamat kita punya sistem baru', '0', '2017-02-27', NULL, '2017-02-27 04:59:09', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `org_id` int(11) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `org_alias` varchar(25) NOT NULL,
  `org_address_line1` varchar(255) NOT NULL,
  `org_address_line2` varchar(255) DEFAULT NULL,
  `org_phone` varchar(25) DEFAULT NULL,
  `org_email` varchar(65) DEFAULT NULL,
  `org_website` varchar(120) DEFAULT NULL,
  `org_logo` longblob NOT NULL,
  `org_logo_type` varchar(35) NOT NULL,
  `org_stu_prefix` varchar(10) NOT NULL,
  `org_emp_prefix` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`org_id`, `org_name`, `org_alias`, `org_address_line1`, `org_address_line2`, `org_phone`, `org_email`, `org_website`, `org_logo`, `org_logo_type`, `org_stu_prefix`, `org_emp_prefix`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Nadia CK', 'Sekolah', 'Batam', '', '92832939', 'nadia@nadia.com', 'http://nadia2.com', 0x89504e470d0a1a0a0000000d494844520000005a0000004608060000004cbc83e2000000097048597300000ec400000ec401952b0e1b00001e7349444154789ced9c797c5d5775efbf7b9f73ee28e95e5d8d9625d99225cf433cc4493c64f010db389421f02140fb68933294529af7ca2bb43c080fcad096d20f65e807788147a04007482084a484248e839dd8896379882ddb9225db922c4b577792ee70a6bddf1f574e4d623bb6719cbcd6bfcfe77c8e74f63af79ebdf63a6bfdd6da7b5fa1b5e62a5e7d9857157d6520cffc47087141375d88dc5599975c3b9b456bad1142bc78be8adf1e4229f51fff4c2af7156fba00b9ab32bf29f31b8abe8a570f12fec3a79ce926cebcf6d2f6b39d5fa9ed5264cef5ff95907929ced776213267f5d15771f921cf76f1b4f2cf15282f161772cff9beeb429ee7d5943957dbc5c85c5230bc8a8bc76b4eef3c4f6318e5414e266d9edc9ae22d6f6e4408645f5f413df8d0a98a850bab1a9d92baedc460b16670a818f09c52e3c2ce74c8f7f570d7e1c4b70686fca3a6291a6f5a5d679a264c9f1651f3e7550ec7e35661f2f995521a212e3c57b8dc78cde99deb2a4c5300c8a1a192fafc177a024d4da18ef1bcbb6cdf9eecfa23478b7307060aad783aa185960089ca417ef4e5c31426e0f7fee7acdc84dbbc5f0b7d8dd446c8301453a60655e78cca7f59303ffeaf1b36d44e344d0975c5e256a6ae3600a0268f57b55faf3b7ae7ba5aeedb976b4ca7ed65dffbfee09b9e792edd7aacbf70b394520a9012f0f1f0f0b07410cbccf186957bf9fb8f1dc6712cfee4b3d37962d7521c15422b9052961984d619ad39aeb42ab4b4847b56adac79fa5def6c1e5ab6b47a241633bb80d2e4235c110508a5d4cbdcc4cb46e38cf697ba93179dfd5964cef339d275146329e75d3ffcd1c0dbefbbefc49243870b4d48a4c4271a722839799436502a424b439a650b7c1ede1aa2b9b1c88fbe78848ec62e10065dfd37f0ee3f6b21376172ebaa224f3f17e4e4580c691491526159118aa5a0d2e801adc9cc9e55d1f3fbef69bdff8e773467eaea02fb81012184d25aab0b7cf64b9231eeb9e79ecb32621701b350f0177ce7be63effec007bbfefa27f79f5c984abb55420a21a487548a450bd27ce2bd03dcbec166c75e9770d8e30fde92e5d0e124274682cc9c55c7c2997908c478eae0121efce5389d534ff1cecd1e4f3d6f9188e7f9ca3da3ac5996a16f5870321912521831816c488ed92d8ffe6a64e1fdf79fbc21183462b367555a9625c24016f05eb54e9f2d385c4c30bc9880a994aedabb2f77dbc7ff57f767b76c49b622859486015a81968089969267774768add5bc79cd18119dc7ce69a6d60cf1c3bf2b914c275938d747148f00066fbd21c49caf4b6255697a0e57512ad854c78b04a5cbc35b63ec7ea112439a8006a1105a5418d2983b30505277ff8f7d8d3f7bf0e4359ffbabb9db162ca88a0b21f66aad33af46c0bc62c1b050f49bbef9cdfecffedd977ade954a7b012115083da9e049f7a30520401b0891e42fdedfcbdbd69f0237c7d42945a41581c014b41503598140a2fd09f0c710f6289e3bc1f1a130a160353f78a896bffd760bbea8476813fda2a201045a6840a315b978dceafed8473bb7def507d39e8c448ce781612eb3efbe12f44e8e8cd8cd7ff4c13d6ff8c523a7fe401a620928536813b4c0d70e529a93a20a304068b4d634561de5eb9f3ec2a24511aadb6e4784dbf18c0ac02c675a5aa0a40ff8985e0e6d1fc53ef94b763c93e2bd9f6c6334d389894409172515680b53bb68a55032c8a4d641eb92d61cbd6d73c3f6af7e65d193f575c19dc0512ea32bf98dc2ff995678be2cea222c3a3038589a79d7fb9ebf7eeb53632b0d29121a2448f03c22912c8baf71e97a2148a1588961f8280f3c34420b528504bb939bb976e60d94821508ade1b4d533595750028d89236b11913a64db427ab6eea2503a8e46a1a48f1092b0a9f16c8fd9334fd23cc5e2896d168e57892488928440cefcf983c315f9bc1fbff75b8be30d0dc1ed403750b8c4beffc635e3539ffad4798b2e673b2e440ea8181c2a2d7acf9dbbd66cfb75768321e50a042d4afbd21413bc616d96cae800ebaed7a45219b2f928b61b4023504a515d6df3bf3fbf94dfbb6b19c2088112686459cf949dcde4cbffe23bae10282c162c6ea57d669ce7769c209bf3411828ad69681863e5c20982629c8ef602531a157d277cd001948134a4aeeceb2b36eceeca26d6dc526755565abe10222384285d64df5f76cdb8e79e7bce4a47ce35726752c0f3519cc1a152e2777ff7f975cfec4cbe491a2c47e83aa55cb1646e9a592d235c33bb88d4e3fcfa799358d5144e0e87703c13df2f3167aec597ff7125eb37b5a254d9a168e9835608048690482110522011680d5a4bb42e7b035f6b66cd8ab3eac6065ed8778aa1011b2924014b909e10384e81791d30369266dd8d924caac058368214a61082485f7fbeae6b4f2ebee1d6fa62346af66aadb342087d2eea762e5af7aad3bb6251357df8eebd9b1f7b7cf41d86904b94b06261739c056d49ae5b38cabcce097ebec5453095d14c23cfbe10c155162897351b627ce9ebab9935af1ae5fbe58e6881212576a9c08963fdecddf534bb9e7d9a03fbf67062e0384a6b229110662088a7355a97df8abafa08b76c6c616434c3a183194ac52ad2598b6020c0d0a84bbc729c25d74852e9315aea2c8e9d32d1c24448113876ac901819b113ebd6d5bb96254e51a67f975c08fa0dd771b69aecc5be265a23bff57ffaa7ffc3d78ede26246ba536e25a1498dd729c8f7db0c0a35bd29c180d33bd651a4f3e1b612819c11001acc004eff9c0743ef9f9eba8a90ee12bd008a490d8a5719e7ce4a73cf18b1fd273603ba9e16ee6cfa8a0b9c64538831cdeff0c5bb7fc8ab1649aa696368c6000adc1d392505872cbba56824145d7ae611c37443217410a8b783cc0ce9d19962f28b17c91625fb74bd10ea1b501525afbf76563ad2de1dce2c5b1c34288412184ba10d77ab6e3372cfa32d03bd97d6862f61f7f68cf9b0b457f134237295534de76eb08b3db33ecde5f64664702474fe5c70f07283ab568ad89258afce567aee1cef7cfc7340d9406d008a1191d1ee0273ff81ad8c7e97e613fa78646a8afabe4ba251dd4d407a9a98b33a7730a4b164e657c6c9047fefd5734b57410a988e369814621a464d9f246a67744d9f5ec09f2e39a897c88f1bc66ddea08d9719b6dbbb37ce8f72cfa071c86c6e298027c03b96fef7864e3867a9d48582960844ba47d670d86af64d1e7ba6edbcafacb8fbf70cd8e9d99374a21ae33940a36378c31ad69809bafd31c1fd2741f8df2c4f6109eaec6a7c4cc39822f7c79056b37b6a27439b8958985a0984ef1d0bffc2371b3c02f1e7a9c3bdeb19e3bdfbd81c50bdb0898129f403948aaf27dad53aa699e5ac9c30f3fc1b4998b0804c3e04b941628349db3625cb7720add0706193ee951b403f4f517e86c0fb068a60b7e8964ba84a705d9f1305248994e7b31dbf6ddf5ebea8e9aa63c2284f05e6b8b0e757565affde4a70ebeddf7f52a8d4848734c7ce24f9278ce308f6c09e378614ea66b184cd760f83eabd6c6f9dc9757d139278ef200a1003119f0348ffcf4472cea3499da5cc5a60dd793086548278f11aa4a4ce63902c314f80afafa923cfac42e4ab6c3cc8e4676efeb61c6cc85286d00021f855250531f66f5ba56464632f41e9ac0712b50de04274727181a7678ef1d8a7c51b0a7bb12294320153d3d13a137de3665a4ae2eb04308517a4de99d52443efd5787563fb72bfb4629c41c211cb9644e12c33ec6fcce6a2ae301c29116b66c0fa32d9f77ddd9c6473fb39c784d10ad44f97d7c316b83b1d161fa0f3cce0dcb9a891a250c7f024fe590be8f9016aeab0904a23cf6d43e3efd8d7fe2c70777b2bf9864efd66edebef9167a7a06a86b998d15ae402b8dd60a5f1bf85a130a9bdc784b0b8180a2ab6b18a1349bd68669ac2972b47f1ccb14b88ec9482a0a520ad75651a5109b36361c13429c1242d817ab1ff39528cbd9460b5e46efe4f07069fa962746ae9506ed6821a5cef33b37e5696b527cffc1327d1a1ac96154d4f2b1bf58cae6db6720a4c6f3054294d30f3d49d50c25492647a9aeb23085662493229b1a226c9a84c301ecfc28e982e0bbf73fc8ce6c3f9d6f9b454dadc44eda0cf6f562974ac4ab0c464746a9a86ec0d7a739b7426981d6022c78cf1fcfa375468c2f7eead76cdd562416f69837dbe4ed6ff039d49346538f161221904f3d954c9c3c599ad9d4147e4e6b9dbb587a679e56da99e797fe7d26ce21636edf9e7ec7a9517f9dd0d42aedd1d69ca7bb2f437e22c0e27955d8aa9a1d872a78e787d6b0f4fa7a3c5f237c89903e524bf4a4b6278d1ac7b609062df245f8dc3f3e4ebf3d8a610912568cb7ac5ecd2fb73f4b5f759679ef99c7b19dc7a9999dc0c242298da73c422113cf71d04ae0a1408b33921cd0aa3ca8376e9a4ae3d4f53cf4ddfba99631b4b6f9fabd03cc9f57c5eede0c99f10640d37bb4d0bc676fee862953423f07462e764e519ecff42fd4952885b7775f4e964aaa0340698f8ed63cefbba33c83b2ed992cbee1f091cf6e66c1b5f5d86e398bd3689436f035280dbe065f81ab205811c5b67d1c4731904933fd2d73687a631be14d8d7cfe9fff8503de20b36eeba0f7577d8cee1b23140de0e53d8232483014a4602b02e14a5ccd643014e5b32efb741f852f14b66bd03e37c1073fb29e9a3a8fe1648ab7be21caaa25250c8ae8c991776cbf6acf9eec4ca5885c4a30bca45ac74be1384a75edc93c2ba4570223644a855374f9d14fc6993aa3820f6f6861c6350bc804c3b87ed94948556617e5c4ba6c6d429743215a53533b95037913c332995a5d4dea449a5c2a43e1a88d8bcf828db3c9f5e738b17b9015ef5f8e8e48d2472768afab231030c94ec09cda7a5ce58136caee8272b1aa9caa97bf07adf01404aa43dcf1fe551cd9dfc3a30f3c8fe7a5686dac6724e763509eb5d9b73f87eb2a25e559170f9c558f67b5e88bb5e4d387e76b3938506a2e0f9c4462b3f646cd9a551e35cd75742c68479546d0be872a1338341a5f6b3c3569c97a52090a7ced13ac8c51dfbe847dbdc36cbc6505034f1f67e6ea59d84e014a8acaea28479ee865c68a76ac6a13390ec33b06d8b8f6260ef7a7a998b28860b40aedcbc9cf142fbe395a4d5ab91278808744b859b08f3073768cb7be31c69d6f9724aa8aa0cb93bad2901ce8cee27aea92c882d4931d3c9b259feb7859bbd281f17167ad10d21452e1bb41b63defd1b6741e37af0c22dc3476a0064f483cadf0b5c65702ad2468d04aa17d89a305aed02825715c987bcd2a92d92a664c6f6259750bc7b6f5317bfd4c02d51676ca61fc549eba05756834471eeee79669b3696bada36f48b3e8da9b29298d87c6c7476b0fad249e16e534dd2f2b1d1fd01e9e0ce004da7181d6b99d94a2b3493a41845693b56c835c66728ee23cba3997fe2ec9a25fdaae348189a2b702044adb2c5953c1dd1f69a22294a5480cc78c12700e63b943652aa7cb494459e90a0f8d1436160e416153211c6acd71a646c779d3fa9be83e788cb7deba9ce28e51f23d255082f481512aaaa384aa030c6c1d2270709cb76e5846d773bd6cba752d4dd171eacd092a8587056567a11d505ef9cdd1ba3ca868508a80738c50e920962a809ba4adae87cf7d710937de5683d236527b3825a75cb8ba048b3e27bd3b977f3e1bbd138065582895e3d6db9b79df471713b40ea04a4384dd2314d5341cb31da17c5025b408a0842cd732b44f53384f4db8407234c3e8580a0f9f54c92597c9333e3e810a4ce5b95ddbb9fb9d9bf9fb6f3f447a24839c30a85d9c60e4e924f95f9de22ffef04d6c7bae87daa90bd9b3a38b68458458a28250a802251535d571eaea6a18b5c39c2c86cb59a52ff03484fc344a08f2c13984eda3f8529092f3a16106777fb6869ababdfce4be7e8461bcacef67fae4579dde4989aa8a8bd448d2a8ed7e618c9e036912d758f83a806bb6e289084267a928f5528c36e0e93048850082d223a4536492e3fcede7ff8183477af15d452c5ec5a953a3ac58713db366cfa64882cc44864ffde99bf99baf3dc4ae3dfd68ad70c5181f7fdfede4f2196c9520144a70e2e430dffffe0f686b9b4e6fef51dadaa6919fc8f0d5af7c01225598e6347c37802f7d7c213155928ac22e3cab192114962ae1fb597448d0df93657fd730288b783cc8e93878b1f4eeb7aede0921f07dbc9f3e98dc3770cc5e924bbb0d4f3fd94f2256c982f631aafcdd98fe04aea8a6109c8ee527b1cd3a14165a281a4336b234c25f7de60b3cfed83692631992c951b2d91c6363630c0d0d62db362dcdd33876f410372e9fc6f5d776b06fff09a29ec127fff47798da18e6e9670788c65b49a5c6f8e9cf7ec6c99327191d2d7f4e3a93617868988307bb696f9d42535b3b69d74021a9747b097987c807e76079c384fd012445d2c1b53cfa58802f7e7c174347cbce7ce182c4f01def68be3f109023174befce1b0c4f9f5fe9705da57a7b260e4bc31f313029a5237ce9b3bd7cebbe2845731ee3815938d222ea0c52697711f04751da2180432290a7a63acea6cd6fc60c06c9e70b148b364208f2f93c336674b071e3465a9a5b29b8511e7eea30e3131e9d331a5979c34c04064feee86724070d539a99357b2eebd6ad279dcee0793eb95c0e531a647279d6ac59cb2dabafa75a1609e062fa392c3f43c43d4885d383c4c7336a28f8addc7b6f9e2f7ee2397223024308b46fb068510ccb1297140c5fb6dce04cff72a1d04030606104249eaf900ab417e4e70f0cb376de000b178ca3ac2ab24627a9d00a62a5670818d3a88ccf2462390c0fa7c94d9488d7c629151d7ce5138bc5c8e572d4d6d660181247f828a3923d2f8cb3afbb87bc5d41e184cbf0cfba29b9108dc631269f39140aa3b52693c9e0ba2ea9540ad064b2058647333436d4d31848e1259fc03112a4026ba8727651a5fb288e15f9da77eaf9a7072228eaca1c5f2884f459b4b012d31417a49b97ca5c167a178d1a7cf2133348c4034a6851aed70a836323d3f8f0a76b79e0518b217b3a8e1126ec1e27e21d27a247a8d1fb116e81debe213cc7436a899026a614935355126439d9d04ae33a364af808334045459c50248ea783783e48291052003e08b082012a2ba284c351a2151142a1000849efd101d44437317f2fc2b208a943c49ddd20c3e455133f7ca491effcb4155fd4a1a53f3985a6696a8ab06861ecc5d54c57cca2cf6cb74cc1db6e9f52faee7dc7768e8cd81d08a623900241a810a265a24867eedff1748462b08354f83ac2953598990749a55ac8a78b18a6454d4d0d4af9e02b62d5d578be4765340a684cd3a2b5a595e3c78f93cde6304d132925aeeb108bc5983ab50929cb9306d5955166b6b7535d93209d4d31a5b199e1d1219a6b354eee3027fb92343624c857de4c296310d10709a48f503a26c93d9d20215a18d30e866fa1854069c5c205b1a1cecee876207729167d59e81d4030289d3ffa40db916ddbc786815610520bc1442942dfbfd92cddd9cf8952166fb6a06e7190da2607b3cae1647698f9c124a3661577bcf9361c61e2616068ffc5eff47d1f2925f3e7cf67fefcf9ecdfbf9f9ffce401a4146cdab491a54b9702a02667722bab137cf04f3f0c5a208487814985ceb0bcb197d4e829b207e3d48e0c1219fb1ea5c14ad2474ee0efdf81b21bd0993a1c3788328308e923b4c63004efbd6b5aca34c521a0f49ad1bb499456afae7966d9d2eaa6679fcb840ca91746b0cdc6a0cd93438d24c6d36c08d988fea79878e85152d2236f862861500894b0a351ac860e8c1bd7509ada8812e549598d46295daeeca9b2f2e7cd9b476767075a433018c2573ee51413b42e4f1c48a19018482d300fee81ad4fd09b3e81cc0b2cd7a057f8847d4d1441ad1964dc8af160be91a35e88b6489e8376085b58285fb3e2ba6ab56a55cd00f08cd63a772e3d9c8fdefdd66befce80575b1338fadfef9ef1dc9d77ed5eeabafe6c470b33a414ef684ab248a7d0ae8329144161502838287f9c10e53a47d0cd12eb1ec29dd24ca9a9015f2b4286241a0d128a46703dc5786e1cd7f1d01a2c3388163e5afb28ad099892ca8a3056d0c2751c0a791bdbf1307ca8e8ee21fafc418252621a164a2a7c4fa2822646c842484d08977589310c3fcbbd633e2e1281201a35bc8ffc59c7e1aa2af351214437ffb1dcf7a27059aa7767406ddad870e0d65beb1ffce9cf4ec691c1eb7738d32b8e0d86b8bda28adb2bf7d02a4fa0748971bb44aee462189268c0a22a1425561b23db3e9d606b2375f535545637100885099a9a9000d719a7afff38078f0c609f0e9e8666cef4297476b411aea8a2a40c6c05bee333911b65ece4292ae6cc21b67b3785dc0479c7a7e43b082d307d4086c91909f6329d1f8f2de4317b2ee3461c01f8be76366fae3fbc7e5ddd1660bfd6da395b65eea5389bcc79d7de5d0ab4d6f4f517e6bee5ad3bdedfd353b803a9ebcb655145931a6659e018cbcd5e5a8adba9b33304031ea634881841e49c99547fe5ab0cb574325a948c3b169e12987804a44f43d8677a958d3731c6333bf662bb2ecbaf5d40a2b68163798b814218db315148a4e1133115f501cdd4dd5bc9fdf9dd3092c4d11a0f45a9047d460bbb8337b0cb9d4eb7db44daa8454b89d40a571bcc9f17cd3df06fcb7f31756ae85f8510dbf92d66c15fadd5a4f1c71e1bbdfebffd7ed7bbd339779d896af425082d514a50e52779bffa366b798668344ac4b430541159d94071e51af2f3afc36bebc4ad6fc2ad8ae105c2b886892f0521e9d09eb0a99539f03d0ab29a436361f29e89a57d0ccfc72c64098d8d1038d18f79680fd17d3b09f71e425a06b6d21492238cfb92fbbc4dfcb37c0bae8c8254bce8e781ba8495fac13f5dbb75c58ac4f7805f4f2af98274743699cb42efce82cc9a3575cf7df31b0b1b3ff0475da17486e552a966d0d2141aa485d2064269ccaa6a426dd3f0b263843089eeda4262e713282d11a10abc78155ea206bfba1615afc7ab8c2142262226d0da253fe6d154f03172590299243235563edb59828e87b62c54d084d666f2c53cd1ba5a6ce5a147c771a489900a2d35526b041a1f494d2230f2cd6f2eda79c30d89c784103b4f2bf902fb7e5699cb46efce6cd75a23a5c86d7e43c3f66f7d73b17adf07ba26c6c69ce542d2a110012dc017265208bcd4298adac5acaa20d8d288930b51d1d800c512c6f80422338acca5606c18cf2b62f8026d7b7886c6322d5a4221b00bc84804322944550c2a82947408d95a870e84d0a792b813e318b64d76f77e943d8e16160e1134061255ae266a417d8da9bef3edc5c3b7dc5cbb0dd80aa45e89ba5d08bd7bb5370b49a0f1c9adc96577deb5fba6e153a555528ab942fb15b3d47edea57fc575e641aa858d659a848c10b22a84198a601806042ca42990be4636d42304181adc8909643c8667fb985600adf20865a187871056181d32d1d909f03d945342170af8ae83e3296c2de9d7317e612fe5017513278d96f2eca5f2993225e4dd7befd20337aeae7900f857e030e05c0e455c917d865aebc4be7db9f97ff6e72fdcbc6d5b7aa5106a0990a8f6c7e472b9978d817d2c0ef4512f2688048318f16aac580cac104810251bd7b1315c0fa97c3005a7f3192d5c100646348696e522be1012158e205259fcf42994e352f022f4aa4a1e2fcde2d1d242f61bed78228ca1141e82d5ab13a5bffedcbcee458baab608211ea4ec972f8b92e11283e1252292cffb33bff1ad63abfef64b476ecaa5dd65c210ad1a252bfc093a186249b09feb037d7486d34c097b440382502c8411b410d200d745164ba858156eb184555d85767cb0153a28307c85373181eb38b88e20670bfa8ad5bc506c645ba9893d6e1383a2092503e55d05be261eb7d447ffbc33f787774ddb1b8918db8127802e20c95918c6eb86debd02025aebe6aeaeec8a4fdc73f0a62d5b92d72b98892450fe5e887879eac8d16865e9304769b3b23499799a2b6d6635ba482f8be138989e8f274d9469a14261fc68352f0c9af48c989c742ae971131cf5e39c54558c8b4a7c19c240209533b9de3aa0d6dc9c509ff9f49ce38b16563d2384d8056c070e00b9cbddf1d762e7ac04ea8b25b5e491474eadfcca57fb963cbf2bbbdcf79c3886c0178604cacb11906814965f226296d8f0b60e36ff6e07a6e5215c0f6d1808d3c2d5068fdedfc703ffb7874229802f83205439b7d380f4910a3c259515105cbb2c5ef8930fcd787ec3faba64282477018f001921c490d6fabc99dfff2f167d26e25aeb7adb56cd4ffd7aecf6efff7060e6e38f259bc7c6ec76ad310d29a516a717a21b68c0c363fe8dd5bcfbc34ba96c0a217c412163f36f5fed62e72f4f62e8e0e442c9f23c2693bc5d08adeaea2cb56e7dfdd177ddd1dcbd7245221908c8fb8510c7811430c4abbc83f6653b675f4a595e76c305d2bb7351c6b3c8048076ad993f38585ab0fde9b125fffee8a9b9dbb78f255229159918f7d1babc554e088dd6beac9b11e03d1fbb4e860396fceedf3cc3f1fd798434f1b5815402612aaa2a2c555d6db2726562e2d6f5f5cfaf5c59939ad2187a5a08b650de00d43f79feeda9dbeb80de5d2824103f7d684d6da9a4ea7b8fe603478ee4e9ee1e67efbe0cc78ed9b250f0e7789edf1eaaf013c230ae2966bd88690668698dd2323544676794f6b6b0eaecac38dad61eed0905e5b010fc98b2d5267915f6105e085ef39f917825f8be269572181e2ee1ba5a2e5a144b00554008a88572203dfd98e5b3400832408672b56d84cb48d52e05affb1f46f92d03efeb46e6756fd1ff59f09aff30ca7f1599abbf127685f0b21916b8b0aaddf9e42e92defd979079bdd0bbfff4b81a0caf10aed2bb2b2473d5a2af10aed2bb2b247395de5d215ca5775748e6ff01ef7d4fec99af79c60000000049454e44ae426082, 'image/png', 'admin', 'admin', '2017-02-16 09:55:20', NULL, '2017-03-12 23:44:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `income_id` int(100) NOT NULL,
  `income_date` date NOT NULL,
  `income_explanation` varchar(100) NOT NULL,
  `debit_income` int(100) NOT NULL,
  `kredit_income` int(100) NOT NULL,
  `saldo_income` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`income_id`, `income_date`, `income_explanation`, `debit_income`, `kredit_income`, `saldo_income`) VALUES
(1, '2015-06-01', 'Cicilan I (Aphenta Dolly)', 400000, 0, 400000),
(2, '2015-06-01', 'Cicilan II (Aphenta Dolly)', 500000, 0, 900000),
(3, '2015-06-01', 'Cicilan I (Christin)', 350000, 0, 1250000),
(4, '2015-06-01', 'Cicilan II (Christin)', 250000, 0, 1500000),
(5, '2015-06-01', 'Cicilan I (Ebzan)', 500000, 0, 2000000),
(6, '2015-06-01', 'Cicilan II (Ebzan)', 400000, 0, 2400000),
(7, '2015-06-01', 'Cicilan I (Graciela)', 500000, 0, 2900000),
(8, '2015-06-01', 'Cicilan II (Graciela)', 400000, 0, 3300000),
(9, '2015-06-01', 'Cicilan I (Kevin)', 400000, 0, 3700000),
(10, '2015-06-01', 'Cicilan I (Elenta)', 50000, 0, 3750000),
(11, '2015-06-01', 'Cicilan I (Cahaya)', 150000, 0, 3900000),
(12, '2015-06-01', 'Cicilan I (Jesie De Vanesa)', 400000, 0, 4300000),
(13, '2015-06-01', 'Cicilan I (Christian Sihombing)', 350000, 0, 4650000),
(14, '2015-06-01', 'Cicilan I (Jify)', 150000, 0, 4800000),
(15, '2015-06-01', 'Cicilan I (Angel)', 350000, 0, 5150000),
(16, '2015-06-01', 'Cash (Irene)', 900000, 0, 6050000),
(17, '2015-06-01', 'Cicilan I (Evans)', 350000, 0, 6400000),
(18, '2015-06-01', 'Cash (Gisela)', 900000, 0, 7300000),
(19, '2015-06-01', 'Cash (Elisabeth)', 900000, 0, 8200000),
(20, '2015-06-01', 'Cash (Hans)', 900000, 0, 9100000),
(21, '2015-07-31', 'SPP Bulan Juli 2015 (Aphenta Dolly)', 150000, 0, 7849200),
(22, '2015-06-30', 'SPP Bulan Juli 2015 (Christin)', 150000, 0, 7999200),
(23, '2015-06-30', 'SPP Bulan Juli 2015 (Ebzan)', 150000, 0, 8149200),
(24, '2015-06-30', 'SPP Bulan Juli 2015 (Graciela)', 150000, 0, 8299200),
(25, '2015-06-30', 'SPP Bulan Juli 2015 (Kevin)', 150000, 0, 8449200),
(26, '2015-06-30', 'SPP Bulan Juli 2015 (Elenta)', 150000, 0, 8599200),
(27, '2015-06-30', 'SPP Bulan Juli 2015 (Cahaya)', 150000, 0, 8749200),
(28, '2015-06-30', 'SPP Bulan Juli 2015 (Brandy)', 150000, 0, 8899200),
(29, '2015-06-30', 'SPP Bulan Juli 2015 (Nigel)', 150000, 0, 9049200),
(30, '2015-06-30', 'SPP Bulan Juli 2015 (Jesie De Vanesa)', 150000, 0, 9199200),
(31, '2015-06-30', 'SPP Bulan Juli 2015 (Christian Clax)', 150000, 0, 9349200),
(32, '2015-06-30', 'SPP Bulan Juli 2015 (Christian Sihombing)', 150000, 0, 9499200),
(33, '2015-06-30', 'SPP Bulan Juli 2015 (Jify)', 150000, 0, 9649200),
(34, '2015-06-30', 'SPP Bulan Juli 2015 (Jeremi)', 150000, 0, 9799200),
(35, '2015-06-30', 'SPP Bulan Juli 2015 (Angel)', 150000, 0, 9949200),
(36, '2015-06-30', 'SPP Bulan Juli 2015 (Irene)', 150000, 0, 10099200),
(37, '2015-06-30', 'SPP Bulan Juli 2015 (Evans)', 150000, 0, 10249200),
(38, '2015-06-30', 'SPP Bulan Juli 2015 (Gisela)', 150000, 0, 10399200),
(39, '2015-06-30', 'SPP Bulan Juli 2015 (Elisabeth)', 150000, 0, 10549200),
(40, '2015-06-30', 'SPP Bulan Juli 2015 (Hans)', 150000, 0, 10699200),
(41, '2015-06-30', 'SPP Bulan Juli 2015 (Putri)', 150000, 0, 10849200),
(42, '0000-00-00', 'SPP Bulan Juli 2015 (Dava)', 150000, 0, 10999200),
(43, '2015-06-30', 'SPP Bulan Juli 2015 (Tzandi)', 150000, 0, 11149200),
(44, '0000-00-00', 'Cicilan II (Christin)', 250, 0, 12),
(45, '0000-00-00', 'Cicilan I (Dava)', 500, 0, 12),
(46, '0000-00-00', 'Cicilan I (Brandianto)', 400, 0, 12),
(47, '0000-00-00', 'Cicilan I (Putri)', 300, 0, 13),
(48, '0000-00-00', 'Cicilan I (Renata)', 150, 0, 13),
(49, '0000-00-00', 'Cicilan I (Livia)', 400, 0, 14),
(50, '0000-00-00', 'Cicilan I (Carrisa)', 400, 0, 14),
(51, '0000-00-00', 'Cicilan I (Jeremi)', 300, 0, 14),
(52, '0000-00-00', 'Cicilan II (Angel)', 350, 0, 15),
(53, '0000-00-00', 'Cicilan II (Jesie De Vanesa)', 300, 0, 14),
(54, '0000-00-00', 'Cicilan II (Jify)', 200, 0, 14),
(55, '0000-00-00', 'Cicilan II (Christian Sihombing)', 550, 0, 15),
(56, '0000-00-00', 'SPP Agustus 2015 (Ebzan)', 150, 0, 15),
(57, '0000-00-00', 'SPP September 2015 (Ebzan)', 150, 0, 15),
(58, '0000-00-00', 'SPP Agustus 2015 (Brandi)', 150, 0, 15),
(59, '0000-00-00', 'SPP Agustus 2015 (Evans Dolly)', 150, 0, 15),
(60, '0000-00-00', 'SPP Agustus 2015 (Kevin)', 150, 0, 15),
(61, '0000-00-00', 'SPP Agustus 2015 (Dava)', 150, 0, 16),
(62, '0000-00-00', 'SPP Agustus 2015 (Elisabeth)', 150, 0, 16),
(63, '0000-00-00', 'SPP Agustus 2015 (Graciela)', 150, 0, 11),
(64, '0000-00-00', 'SPP Agustus 2015 (Christian Sihombing)', 150, 0, 11),
(65, '0000-00-00', 'SPP Agustus 2015 (Aphenta Dolly)', 150, 0, 11),
(66, '0000-00-00', 'SPP Agustus 2015 (Jeremi)', 150, 0, 11),
(67, '0000-00-00', 'SPP Agustus 2015 (Christian Clax)', 150, 0, 11),
(68, '0000-00-00', 'SPP Agustus 2015 (Putri)', 150, 0, 12),
(69, '0000-00-00', 'SPP Agustus 2015 (Tzandi)', 150, 0, 12),
(70, '0000-00-00', 'SPP Agustus 2015 (Renata)', 150, 0, 12),
(71, '0000-00-00', 'SPP Agustus 2015 (Livia)', 150, 0, 12),
(72, '0000-00-00', 'SPP Agustus 2015 (Carrisa)', 150, 0, 12),
(73, '0000-00-00', 'SPP Agustus 2015 (Angel)', 150, 0, 12),
(74, '0000-00-00', 'SPP Agustus 2015 (Jesie de Vanesa)', 150, 0, 12),
(75, '0000-00-00', 'SPP September 2015 (Hans)', 150, 0, 13),
(76, '0000-00-00', 'SPP Agustus 2015 (Jify)', 150, 0, 13),
(77, '0000-00-00', 'SPP Juli 2015 (Goldwin)', 150, 0, 13),
(78, '0000-00-00', 'SPP Agustus 2015 (Nigel)', 150, 0, 13),
(79, '0000-00-00', 'Cicilan II (Dava)', 400, 0, 14),
(80, '0000-00-00', 'Cicilan II (Livia)', 450, 0, 15),
(81, '0000-00-00', 'Cicilan I (Tzandy)', 200, 0, 15),
(82, '0000-00-00', 'Cicilan II (Carrisa)', 500, 0, 15),
(83, '0000-00-00', 'Cicilan I (Jashinta)', 1, 0, 16),
(84, '0000-00-00', 'Cicilan II (Evans Dolly)', 550, 0, 17),
(85, '0000-00-00', 'Cicilan I biaya masuk SD T.P. 2016/2017 (Ebzan)', 500, 0, 17),
(86, '0000-00-00', 'Cicilan I biaya masuk SD T.P. 2016/2017 (Rebeka)', 300, 0, 17),
(87, '0000-00-00', 'Cicilan II (Renata)', 500, 0, 18),
(88, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Marfel)', 300, 0, 18),
(89, '0000-00-00', 'Cicilan III (Jify)', 42, 0, 18),
(90, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Fedrerico)', 500, 0, 18),
(91, '0000-00-00', 'SPP September 2015 (Christian Clay)', 150, 0, 19),
(92, '0000-00-00', 'SPP September 2015 (Dava)', 150, 0, 19),
(93, '0000-00-00', 'SPP September 2015 (Christin)', 150, 0, 19),
(94, '0000-00-00', 'SPP September 2015 (Brandyanto)', 150, 0, 19),
(95, '0000-00-00', 'SPP September 2015 (Elisabeth)', 150, 0, 10),
(96, '0000-00-00', 'SPP September 2015 (Livia)', 150, 0, 10),
(97, '0000-00-00', 'SPP September 2015 (Graciela)', 150, 0, 11),
(98, '0000-00-00', 'SPP September 2015 (Tzandy)', 150, 0, 11),
(99, '0000-00-00', 'SPP September 2015 (Renata)', 150, 0, 11),
(100, '0000-00-00', 'SPP September 2015 (Irene)', 150, 0, 11),
(101, '0000-00-00', 'SPP September 2015 (Carrisa)', 150, 0, 11),
(102, '0000-00-00', 'SPP September 2015 (Jashinta)', 180, 0, 11),
(103, '0000-00-00', 'SPP September 2015 (Putri)', 150, 0, 11),
(104, '0000-00-00', 'SPP September 2015 (Kevin)', 150, 0, 12),
(105, '0000-00-00', 'SPP September 2015 (Aphenta Doly)', 150, 0, 12),
(106, '0000-00-00', 'SPP September 2015 (Jeremi)', 150, 0, 12),
(107, '0000-00-00', 'SPP September 2015 (Evans Dolly)', 150, 0, 12),
(108, '0000-00-00', 'SPP September 2015 (Jesie De Vanesa)', 150, 0, 12),
(109, '0000-00-00', 'SPP September 2015 (Christian Sihombing)', 150, 0, 12),
(110, '0000-00-00', 'SPP Agustus 2015 (Elenta)', 150, 0, 13),
(111, '0000-00-00', 'SPP September 2015 (Gisela)', 150, 0, 13),
(112, '0000-00-00', 'SPP Agustus 2015 (Hans)', 150, 0, 13),
(113, '0000-00-00', 'SPP September 2015 (Angel)', 150, 0, 13),
(114, '0000-00-00', 'SPP September 2015 (Cahaya)', 150, 0, 13),
(115, '0000-00-00', 'SPP September 2015 (Christin)', 150, 0, 13),
(116, '0000-00-00', 'SPP September 2015 (Nigel)', 150, 0, 13),
(117, '0000-00-00', 'SPP Agustus 2015 (Adil)', 150, 0, 14),
(118, '0000-00-00', 'SPP September 2015 + denda (Jify)', 158, 0, 14),
(119, '0000-00-00', 'SPP Oktober 2015 (Ebzan)', 150, 0, 14),
(120, '0000-00-00', 'SPP September 2015 (Elenta)', 150, 0, 14),
(121, '0000-00-00', 'SPP Oktober 2015 (Elisabeth)', 150, 0, 14),
(122, '0000-00-00', 'Uang seragam tambahan (Kevin)', 100, 0, 14),
(123, '0000-00-00', 'Cicilan II (Elenta Purba)', 300, 0, 15),
(124, '0000-00-00', 'Cicilan III (Livia)', 500, 0, 14),
(125, '0000-00-00', 'Uang seragam tambahan (Irene)', 100, 0, 14),
(126, '0000-00-00', 'Cicilan II (Cahaya)', 750, 0, 15),
(127, '0000-00-00', 'Uang seragam tambahan (Cahaya)', 100, 0, 15),
(128, '0000-00-00', 'Cicilan II (Jashinta)', 1, 0, 16),
(129, '0000-00-00', 'Cicilan I (Nigel)', 250, 0, 16),
(130, '0000-00-00', 'Uang keamanan bln Agustus-Oktober 2015', 0, 300, 16),
(131, '0000-00-00', 'Uang seragam tambahan (Jify)', 100, 0, 18),
(132, '0000-00-00', 'Cicilan II (Tzandi)', 140, 0, 18),
(133, '0000-00-00', 'Cicilan II Biaya Masuk SD T.P. 2016/2017 (Rebeka)', 300, 0, 18),
(134, '0000-00-00', 'SPP Oktober 2015 (Gisela)', 150, 0, 17),
(135, '0000-00-00', 'SPP Oktober 2015 (Kevin)', 150, 0, 18),
(136, '0000-00-00', 'SPP Oktober 2015 (Putri)', 150, 0, 18),
(137, '0000-00-00', 'SPP Oktober 2015 (Livia)', 150, 0, 18),
(138, '0000-00-00', 'SPP Oktober 2015 (Evans)', 150, 0, 18),
(139, '0000-00-00', 'SPP Oktober 2015 (Dava)', 150, 0, 18),
(140, '0000-00-00', 'SPP Oktober-Desember 2015 (Graciela)', 450, 0, 9),
(141, '0000-00-00', 'SPP Agustus dan Oktober 2015 (Irene)', 300, 0, 10),
(142, '0000-00-00', 'SPP Oktober 2015 (Christian Clay)', 150, 0, 10),
(143, '0000-00-00', 'SPP Oktober 2015 (Christian Sihombing)', 150, 0, 10),
(144, '0000-00-00', 'SPP Oktober 2015 (Cahaya)', 150, 0, 10),
(145, '0000-00-00', 'SPP Juli dan September (Adil)', 300, 0, 10),
(146, '0000-00-00', 'SPP Oktober (Jashinta)', 180, 0, 11),
(147, '0000-00-00', 'SPP Oktober 2015 (Renata)', 150, 0, 11),
(148, '0000-00-00', 'SPP Oktober 2015 (Aphenta Doly)', 150, 0, 11),
(149, '0000-00-00', 'SPP Oktober 2015 (Nigel)', 150, 0, 11),
(150, '0000-00-00', 'SPP Oktober 2015 (Brandyanto)', 150, 0, 11),
(151, '0000-00-00', 'SPP Juli 2016 (Faith)', 180, 0, 11),
(152, '0000-00-00', 'SPP Oktober 2015 (Elenta)', 150, 0, 12),
(153, '0000-00-00', 'SPP Oktober 2015 + denda 2 hari (Jeremi)', 154, 0, 12),
(154, '0000-00-00', 'SPP Oktober 2015 + denda 2 hari (Christin Turnip)', 154, 0, 12),
(155, '0000-00-00', 'SPP Oktober 2015 (Hans)', 150, 0, 12),
(156, '0000-00-00', 'SPP Oktober 2015 (Angel)', 150, 0, 12),
(157, '0000-00-00', 'SPP Oktober 2015 (Jify)', 150, 0, 12),
(158, '0000-00-00', 'SPP Oktober 2015 (Jessie De Vanesa)', 160, 0, 13),
(159, '0000-00-00', 'SPP Oktober 2015 (Tzandi)', 160, 0, 13),
(160, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Hans)', 300, 0, 13),
(161, '0000-00-00', 'Cicilan IV Biaya Masuk TK T.P. 2015/2016 (Livia)', 250, 0, 13),
(162, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Livia)', 300, 0, 14),
(163, '0000-00-00', 'Cicilan I Biaya Masuk TK T.P. 2016/2017 (Cristhofeer)', 300, 0, 14),
(164, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Brandyanto)', 500, 0, 14),
(165, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Elisabeth)', 400, 0, 14),
(166, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Aurel)', 300, 0, 14),
(167, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Cahaya)', 300, 0, 14),
(168, '0000-00-00', 'Cicilan I Biaya Masuk TK T.P. 2016/2017 (Carrisa)', 500, 0, 14),
(169, '0000-00-00', 'Cicilan I Biaya Masuk TK T.P. 2016/2017 (Divani)', 300, 0, 14),
(170, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Christian Sihombing)', 300, 0, 14),
(171, '0000-00-00', 'Cicilan II Biaya Masuk TK T.P. 2015/2016 (Nigel)', 250, 0, 15),
(172, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Jivana)', 900, 0, 15),
(173, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Kevin)', 1, 0, 17),
(174, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Eci Lyla)', 300, 0, 17),
(175, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Joanita)', 300, 0, 17),
(176, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Gisela)', 300, 0, 18),
(177, '0000-00-00', 'Cicilan I Biaya Masuk SD T.P. 2016/2017 (Christin Turnip)', 300, 0, 18),
(178, '0000-00-00', 'SPP November 2015 (Elisabeth)', 150, 0, 18),
(179, '0000-00-00', 'SPP November 2015 (Christian Clay)', 150, 0, 18),
(180, '0000-00-00', 'SPP November 2015 (Gisela)', 150, 0, 18),
(181, '0000-00-00', 'SPP November 2015 (Ebzan)', 150, 0, 18),
(182, '0000-00-00', 'SPP November 2015 (Jashinta)', 180, 0, 19),
(183, '0000-00-00', 'SPP November 2015 (Hans)', 150, 0, 19),
(184, '0000-00-00', 'SPP November 2015 (Jeremi)', 150, 0, 19),
(185, '0000-00-00', 'SPP November 2015 (Dava)', 150, 0, 19),
(186, '0000-00-00', 'SPP November 2015 (Livia)', 150, 0, 19),
(187, '0000-00-00', 'SPP November 2015 (Christin)', 150, 0, 19),
(188, '0000-00-00', 'SPP November 2015 (Putri)', 150, 0, 20),
(189, '0000-00-00', 'SPP November 2015 (Brandyanto)', 150, 0, 10),
(190, '0000-00-00', 'SPP November 2015 (Evans)', 150, 0, 10),
(191, '0000-00-00', 'SPP November 2015 (Cahaya)', 150, 0, 10),
(192, '0000-00-00', 'SPP November 2015 (Angel)', 150, 0, 10),
(193, '0000-00-00', 'SPP November 2015 (Kevin)', 150, 0, 10),
(194, '0000-00-00', 'SPP November 2015 (Aphenta)', 150, 0, 10),
(195, '0000-00-00', 'SPP November 2015 (Elenta)', 150, 0, 11),
(196, '0000-00-00', 'SPP November 2015 (Nigel)', 150, 0, 11),
(197, '0000-00-00', 'SPP November 2015 (Christian Sihombing)', 150, 0, 11),
(198, '0000-00-00', 'SPP November 2015 (Tzandi)', 150, 0, 11),
(199, '0000-00-00', 'SPP November 2015 (Renata)', 150, 0, 11),
(200, '0000-00-00', 'SPP November 2015 (Vanesa)', 150, 0, 11),
(201, '0000-00-00', 'SPP November 2015 (Irene)', 152, 0, 11),
(202, '0000-00-00', 'SPP Agustus & September 2015 (Goldwin)', 300, 0, 12),
(203, '0000-00-00', 'SPP Oktober 2015 (Goldwin)', 150, 0, 12),
(204, '0000-00-00', 'SPP Desember 2015 (Gisela)', 150, 0, 12),
(205, '0000-00-00', 'Cicilan II Biaya Masuk SD T.P. 2016/2017 (Ebzan)', 500, 0, 13),
(206, '0000-00-00', 'Cicilan II Biaya Masuk SD T.P. 2016/2017 (Hans)', 400, 0, 13),
(207, '0000-00-00', 'Pelunasan Biaya Masuk TK T.P. 2015/2016 (Livia)', 400, 0, 13),
(208, '0000-00-00', 'Cicilan I Biaya Masuk TK T.P. 2016/2017 (Veoscar)', 350, 0, 14),
(209, '0000-00-00', 'Cicilan I Biaya Masuk TK T.P. 2016/2017 (Velila)', 350, 0, 14),
(210, '0000-00-00', 'Pelunasan Biaya Masuk TK T.P. 2015/2016 (Putri)', 600, 0, 14),
(211, '0000-00-00', 'Cicilan II Biaya Masuk SD T.P. 2016/2017 (Marvel)', 1, 0, 16),
(212, '0000-00-00', 'Cicilan I Biaya Masuk TK T.P. 2016/2017', 500, 0, 11),
(213, '0000-00-00', 'SPP Desember 2015 (Ebzan)', 150, 0, 12),
(214, '0000-00-00', 'SPP Desember 2015 (Hans)', 150, 0, 12),
(215, '0000-00-00', 'SPP Desember 2015 (Jeremi)', 150, 0, 12),
(216, '0000-00-00', 'SPP Desember 2015 (Livia)', 150, 0, 12),
(217, '0000-00-00', 'SPP Desember 2015 (Christin)', 150, 0, 12),
(218, '0000-00-00', 'SPP Desember 2015 (Elisabeth)', 150, 0, 12),
(219, '0000-00-00', 'SPP Desember 2015 (Jasintha)', 180, 0, 13),
(220, '0000-00-00', 'SPP Desember 2015 (Dava)', 150, 0, 13),
(221, '0000-00-00', 'SPP Desember 2015 (Putri)', 150, 0, 3),
(222, '0000-00-00', 'SPP Desember 2015 (Cahaya)', 150, 0, 3),
(223, '0000-00-00', 'SPP Desember 2015 (Christian Sihombing)', 150, 0, 3),
(224, '0000-00-00', 'SPP Desember 2015 (Brandyanto)', 150, 0, 3),
(225, '0000-00-00', 'SPP Desember 2015 (Kevin)', 150, 0, 3),
(226, '0000-00-00', 'SPP Desember 2015 (Angel)', 150, 0, 4),
(227, '0000-00-00', 'SPP Desember 2015 (Aphenta)', 150, 0, 4),
(228, '0000-00-00', 'SPP Desember 2015 (Evans)', 150, 0, 4),
(229, '0000-00-00', 'SPP Desember 2015 (Irene)', 150, 0, 4),
(230, '0000-00-00', 'SPP Desember 2015 (Jessie)', 150, 0, 4),
(231, '0000-00-00', 'SPP Desember 2015 (Nigel)', 150, 0, 4),
(232, '0000-00-00', 'SPP Desember 2015 (Tzandy)', 150, 0, 5),
(233, '0000-00-00', 'SPP Desember 2015 (Elenta)', 150, 0, 5),
(234, '0000-00-00', 'SPP Desember 2015 + denda 7 hari (Renata)', 164, 0, 5),
(235, '2016-01-01', 'Cicilan I SD a/n Timoty', 300000, 0, 5615441),
(236, '2016-01-01', 'Cicilan I TK B a/n Shinta Uli', 300000, 0, 5915441),
(237, '2016-01-01', 'Cicilan I  TK B a/n Dirga', 500000, 0, 6415441),
(238, '2016-01-01', 'Cicilan I PG a/n Giopson', 300000, 0, 6715441),
(239, '2016-01-01', 'Cicilan I TK B a/n Tesalonika', 300000, 0, 7015441),
(240, '2016-01-03', 'Cicilan II SD a/n Elisabeth', 1000000, 0, 8015441),
(241, '2016-01-03', 'Cicilan II TK B a/n Clarisa', 1000000, 0, 9015441),
(242, '2016-01-03', 'Cicilan II TK A a/n Veoscar M', 500000, 0, 9515441),
(243, '2016-01-03', 'Cicilan II TK B a/n Velila', 500000, 0, 10015441),
(244, '2016-01-03', 'Cicilan I TK B a/n Riski', 500000, 0, 10515441),
(245, '2016-01-03', 'Cicilan III SD a/n Hans Demian', 500000, 0, 11015441),
(246, '2016-01-03', 'Cicilan I TK B a/n Michella Putri', 500000, 0, 11515441),
(247, '2016-01-03', 'Cicilan I TK B a/n Eca Rinawati Sinaga', 300000, 0, 11815441),
(248, '2016-01-03', 'Cicilan II TK A a/n Graviola Nathania', 400000, 0, 12215441),
(249, '2016-01-03', 'Cicilan I  SD a/n Joyce Gracelya', 300000, 0, 12515441),
(250, '2016-01-05', 'Cicilan I SD a/n Chesya br. Simarmata', 300000, 0, 12815441),
(251, '2016-01-05', 'Cicilan I SD a/n Dava Evsando S', 300000, 0, 13115441),
(252, '2016-01-05', 'Cicilan I  SD a/n Jify Joune Silalahi', 500000, 0, 13615441),
(253, '2016-01-05', 'Cicilan I TK B a/n Jeremi Lumban Toruan', 300000, 0, 13915441),
(254, '2016-01-05', 'Pelunasan buku Jesie De Vanesa', 200000, 0, 14115441),
(255, '2016-01-11', 'Cicilan I  SD a/n Vanny Angelita Lubis', 300000, 0, 14415441),
(256, '2016-01-11', 'Cicilan I TK B a/n Rocky Sitompul', 300000, 0, 14715441),
(257, '2016-01-11', 'Pelunasan buku  2015/2016 a/n Nigel Septian', 400000, 0, 15115441),
(258, '2016-01-11', 'Cicilan uang buku 2016/2017 a/n Nigel Septian Tobing', 400000, 0, 15515441),
(259, '2016-01-11', 'Cicilan I SD a/n Rebecca Sibarani', 600000, 0, 16115441),
(260, '2016-01-11', 'Cicilan I  SD a/n Fransisca Chey sa', 300000, 0, 16415441),
(261, '2016-01-11', 'Cicilan I TK B a/n Cashya Samosir', 300000, 0, 16715441),
(262, '2016-01-11', 'Pelunasan TK B Tp 2016/2017 a/n Bradianto', 500000, 0, 17215441),
(263, '2016-01-11', 'Pelunasan TK B Tp 2016/2017 a/n Henry Napitupulu', 1855000, 0, 19070441),
(264, '2016-01-11', 'Cicilan I TK B Tp 2016/2017 a/n Ari', 2155000, 0, 21225441),
(265, '2016-01-11', 'Cicilan I   SD a/n Jocely A Sinaga', 300000, 0, 21525441),
(266, '2016-01-11', 'Cicilan I TK B 2016/2017 a/n Henry Napitupulu', 300000, 0, 21825441),
(267, '2016-01-18', 'SPP bln January Christian Sihombing', 150000, 0, 9134291),
(268, '2016-01-18', 'SPP bln January Angel Novianti', 150000, 0, 9284291),
(269, '2016-01-18', 'SPP bln January Gisela', 150000, 0, 9434291),
(270, '2016-01-18', 'SPP bln January Nigel septian', 150000, 0, 9584291),
(271, '2016-01-18', 'SPP bln January Elisabeth', 150000, 0, 9734291),
(272, '2016-01-18', 'SPP bln January Hans Situmorang', 150000, 0, 9884291),
(273, '2016-01-18', 'SPP bln January Apenta ', 150000, 0, 10034291),
(274, '2016-01-18', 'SPP bln January Elenta Purba', 150000, 0, 10184291),
(275, '2016-01-18', 'SPP bln January Putri', 150000, 0, 10334291),
(276, '2016-01-18', 'SPP bln January Graciela Januari 2016 - Juli 206', 900000, 0, 11234291),
(277, '2016-01-18', 'SPP bln January Kevin Pratama', 150000, 0, 11384291),
(278, '2016-01-18', 'SPP bln January Brandiant Sialagan', 150000, 0, 11534291),
(279, '2016-01-18', 'SPP bln January Jeremi Fransisco', 150000, 0, 11684291),
(280, '2016-01-18', 'SPP bln January Dava Efsando', 150000, 0, 11834291),
(281, '2016-01-18', 'SPP bln January Ebzan Sihombing', 150000, 0, 11984291),
(282, '2016-01-18', 'SPP bln January Cahaya', 150000, 0, 12134291),
(283, '2016-01-18', 'SPP bln January Livia Felisha', 150000, 0, 12284291),
(284, '2016-01-18', 'SPP bln January Christine Turnip', 150000, 0, 12434291),
(285, '2016-01-18', 'SPP bln Des-Jan Jify Joune ', 300000, 0, 12734291),
(286, '2016-01-18', 'SPP bln January Evan Dolly', 150000, 0, 12884291),
(287, '2016-01-18', 'SPP bln January Christian Clay', 150000, 0, 13034291),
(288, '2016-01-18', 'SPP bln January Jesie de Vanesa', 150000, 0, 13184291),
(289, '2016-01-18', 'SPP bln January Jasinta', 150000, 0, 13334291),
(290, '2016-01-18', 'SPP bln January Tzandy', 150000, 0, 13484291),
(291, '2016-01-18', 'SPP bln January Renata', 150000, 0, 13634291),
(292, '2016-02-01', 'Cicilan IV SD a/n Hans Demian', 500000, 0, 14134291),
(293, '2016-02-01', 'Cicilan I  TK B a/n Eka Desnita', 300000, 0, 14434291),
(294, '2016-02-01', 'Cicilan I   SD a/n Novelina Elisabeth', 700000, 0, 15134291),
(295, '2016-02-01', 'Cicilan I SD a/n Nathanael A Purba', 500000, 0, 15634291),
(296, '2016-02-01', 'Pelunasan biaya buku a/n Kevin Pratama', 500000, 0, 16134291),
(297, '2016-02-01', 'Cicilan I TK B a/n Alfaro G Simanjuntak', 300000, 0, 16434291),
(298, '2016-02-01', 'Cicilan II TK B a/n Dirga Yeriko', 500000, 0, 16934291),
(299, '2016-02-01', 'Cicilan II  SD a/n Dava Evsando', 300000, 0, 17234291),
(300, '2016-02-01', 'Pelunasan SD a/n Christian Sihombing', 2500000, 0, 19734291),
(301, '2016-02-01', 'Cicilan III TK B a/n Clarisa', 700000, 0, 20434291),
(302, '2016-02-01', 'Cicilan SD  a/n  Aurel', 2600000, 0, 23034291),
(303, '2016-02-01', 'Cicilan I TK B a/n Heber Rivaldi situmorang', 300000, 0, 23334291),
(304, '2016-02-01', 'Pelunasan', 1800000, 0, 25134291),
(305, '2016-02-01', 'Pelunasan TK B a/n Jeremi Lumban Toruan ( 2015/2016)', 600000, 0, 25734291),
(306, '2016-02-01', 'Pelunasan TK B a/n Michella', 1700000, 0, 27434291),
(307, '2016-02-01', 'Cicilan III   TK A a/n Graviola Nathania', 400000, 0, 27834291),
(308, '2016-02-01', 'Pelunasan SD a/n Marvel P Marpaung', 1000000, 0, 28834291),
(309, '2016-02-01', 'Cicilan II SD a/n Cahaya Olivia Purba', 300000, 0, 29134291),
(310, '2016-02-01', 'Cicilan I SD a/n May Ekalista S', 400000, 0, 29534291),
(311, '2016-02-01', 'Cicilan I SD a/n Calvin Christian ', 300000, 0, 29834291),
(312, '2016-02-01', 'Pelunasan SD a/n Jivana', 1000000, 0, 30834291),
(313, '2016-02-01', 'Masuk SD a/n Gomer', 3330000, 0, 34164291),
(314, '2016-02-01', 'Pelunasan SD a/n Jhon Steven Nainggolan', 2400000, 0, 36564291),
(315, '2016-02-01', 'Cicilan II  SD a/n Joanita', 300000, 0, 36864291),
(316, '2016-02-01', 'Pelunasan TK B a/n Velila CG manullang', 1350000, 0, 38214291),
(317, '2016-02-01', 'Pelunasan TK A a/n Veoscar Canata', 1250000, 0, 39464291),
(318, '2016-02-01', 'Cicilan II  SD a/n Livia Felisha', 1600000, 0, 41064291),
(319, '2016-02-01', 'Cicilan I   SD a/n Christine Anatasya. S', 680000, 0, 41744291),
(320, '2016-02-01', 'Cicilan I  SD a/n Chelsy Renata Sidabutar', 300000, 0, 42044291),
(321, '2016-02-01', 'Cicilan I  TK B Sartika Idola Sitorus', 500000, 0, 42544291),
(322, '2016-02-01', 'Cicilan I  TK B Secilia N sianturi', 1000000, 0, 43544291),
(323, '2016-02-01', 'Cicilan II  TK B Rocky Baby', 300000, 0, 43844291),
(324, '2016-02-01', 'SPP Februari 2016 Putri', 150000, 0, 43994291),
(325, '2016-02-01', 'SPP Februari 2016 Hans Situmorang', 150000, 0, 44144291),
(326, '2016-02-01', 'SPP Februari 2016 Dava Efsando', 150000, 0, 44294291),
(327, '2016-02-01', 'SPP Februari 2016 Christian Sihombing', 150000, 0, 44444291),
(328, '2016-02-01', 'SPP Februari 2016 Livia Felisha', 150000, 0, 44594291),
(329, '2016-02-01', 'SPP Februari 2016 Ebzan Sihombing', 150000, 0, 44744291),
(330, '2016-02-01', 'SPP Februari 2016 Apenta Dolly', 150000, 0, 44894291),
(331, '2016-02-05', 'SPP Februari 2016 Angel', 150000, 0, 34144291),
(332, '2016-02-05', 'SPP Februari 2016 Gisela', 150000, 0, 34294291),
(333, '2016-02-05', 'SPP Februari 2016 Kevin Pratama', 150000, 0, 34444291),
(334, '2016-02-05', 'SPP Februari 2016 Jesie de Vanesa', 150000, 0, 34594291),
(335, '2016-02-05', 'SPP Februari 2016 Jeremi Fransisco', 150000, 0, 34744291),
(336, '2016-02-05', 'SPP Februari 2016 Putri', 150000, 0, 34894291),
(337, '2016-02-05', 'SPP Februari 2016 Bradiyanto', 150000, 0, 35044291),
(338, '2016-02-05', 'SPP Februari 2016Evan Dolly', 152000, 0, 35196291),
(339, '2016-02-05', 'SPP Februari 2016 Cahaya olivia ', 150000, 0, 35346291),
(340, '2016-02-05', 'SPP Februari 2016 Jasinta', 180000, 0, 35526291),
(341, '2016-02-05', 'SPP Februari 2016 Renata', 150000, 0, 35676291),
(342, '2016-02-05', 'SPP Februari 2016 Nigel', 154000, 0, 35830291),
(343, '2016-02-05', 'SPP Februari 2016 Tzandy. D.H Tambunan', 150000, 0, 35980291),
(344, '2016-02-05', 'SPP Februari 2016 Jify J Silaban', 150000, 0, 36130291),
(345, '2016-02-05', 'SPP Februari 2016 Christian P Panjaitan', 152000, 0, 36282291),
(346, '2016-02-05', 'SPP Februari 2016 Christine Turnip', 150000, 0, 36432291),
(347, '0000-00-00', 'Cicilan V  SD a/n Hans Demian', 800, 0, 35),
(348, '0000-00-00', 'Cicilan 2015/2016 a/n Elenta Purba', 150, 0, 35),
(349, '0000-00-00', 'Cicilan 2015/2016 a/n Renata Sianturi', 200, 0, 35),
(350, '0000-00-00', 'Cicilan I  TK B a/n : Gustav Pakpahan', 500, 0, 36),
(351, '0000-00-00', 'Cicilan I TK B a/n : Chaterine Ruth', 500, 0, 36),
(352, '0000-00-00', 'Cicilan III  TK B a/n Dirga Situmorang', 500, 0, 37),
(353, '0000-00-00', 'Pelunasan SD a/n Fredrico', 2, 0, 39),
(354, '0000-00-00', 'Cicilan II  TK B a/n Riski A Hutapea', 600, 0, 40),
(355, '0000-00-00', 'Cicilan III  TK B a/n Rocky Bobby C', 300, 0, 40),
(356, '0000-00-00', 'Cicilan I TK B a/n Josua', 1, 0, 41),
(357, '0000-00-00', 'Cicilan TK B TP 2015/2016  a/n  Renata', 500, 0, 42),
(358, '0000-00-00', 'Pelunasan SD a/n Bradiyanto', 2, 0, 44),
(359, '0000-00-00', 'Cicilan II  SD a/n Jify Joune', 400, 0, 44),
(360, '0000-00-00', 'Cicilan II  TK B a/n Sartika Idola Sitorus', 600, 0, 45),
(361, '0000-00-00', 'Cicilan III  SD a/n Livia Felisha', 400, 0, 45),
(362, '0000-00-00', 'Cicilan III  TK A a/n Graviola Nathania', 450, 0, 46),
(363, '0000-00-00', 'Cicilan II TK B a/n Heber', 500, 0, 46),
(364, '0000-00-00', 'Cicilan I TK B a/n Angel Liasna br. Ginting', 300, 0, 47),
(365, '0000-00-00', 'Cicilan I  SD a/n Livia ', 500, 0, 47),
(366, '0000-00-00', 'Cicilan I TK B a/n Arabella', 500, 0, 48),
(367, '0000-00-00', 'Cicilan I SD a/n Christine Anatasya. S', 680, 0, 48),
(368, '0000-00-00', 'Pelunasan TK B  a/n Rachel Leon', 2, 0, 54),
(369, '0000-00-00', 'Cicilan III  SD a/n Cahaya Olivia Purba', 1, 0, 55),
(370, '0000-00-00', 'Cicilan II TK B a/n Chaterine', 650, 0, 56),
(371, '0000-00-00', 'Cicilan II TK B a/n Tesalonika', 300, 0, 56),
(372, '0000-00-00', 'Cicilan II TK B a/n Eka', 400, 0, 56),
(373, '0000-00-00', 'Cicilan II  PG a/n Giopson', 500, 0, 57),
(374, '0000-00-00', 'Cicilan II  TK B a/n Gustav', 650, 0, 58),
(375, '0000-00-00', 'Pelunasan TK B TP 2015/2016  a/n  Renata', 650, 0, 58),
(376, '0000-00-00', 'Cicilan II TK B a/n Jocelyn Atheya Sinaga', 500, 0, 59),
(377, '0000-00-00', 'Cicilan II  TK B Rocky Baby', 300, 0, 59),
(378, '0000-00-00', 'SPP Maret 2016 Elisabeth', 150, 0, 44),
(379, '0000-00-00', 'SPP MARET 2016 Hans Situmorang', 150, 0, 45),
(380, '0000-00-00', 'SPP MARET 2016 Dava Efsando', 150, 0, 45),
(381, '0000-00-00', 'SPP MARET 2016 Christian Sihombing', 150, 0, 45),
(382, '0000-00-00', 'SPP MARET 2016 Livia Felisha', 150, 0, 45),
(383, '0000-00-00', 'SPP MARET 2016 Ebzan Sihombing', 150, 0, 45),
(384, '0000-00-00', 'SPP MARET 2016 Apenta Dolly', 150, 0, 45),
(385, '0000-00-00', 'SPP MARET 2016 Angel', 150, 0, 45),
(386, '0000-00-00', 'SPP MARET 2016 Gisela', 150, 0, 46),
(387, '0000-00-00', 'SPP MARET 2016 Kevin Pratama', 150, 0, 46),
(388, '0000-00-00', 'SPP MARET 2016 Jesie de Vanesa', 152, 0, 46),
(389, '0000-00-00', 'SPP MARET 2016Jeremi Fransisco', 150, 0, 46),
(390, '0000-00-00', 'SPP MARET 2016 Putri', 150, 0, 46),
(391, '0000-00-00', 'SPP MARET 2016 Bradiyanto', 150, 0, 46),
(392, '0000-00-00', 'SPP MARET 2016 Evan Dolly', 152, 0, 46),
(393, '0000-00-00', 'SPP MARET 2016 Cahaya olivia ', 150, 0, 47),
(394, '0000-00-00', 'SPP MARET 2016 Jasinta', 180, 0, 47),
(395, '0000-00-00', 'SPP MARET 2016 Renata', 150, 0, 47),
(396, '0000-00-00', 'SPP MARET 2016 Nigel', 150, 0, 47),
(397, '0000-00-00', 'SPP MARET 2016 Tzandy. D.H Tambunan', 154, 0, 47),
(398, '0000-00-00', 'SPP MARET 2016 Jify J Silaban', 152, 0, 47),
(399, '0000-00-00', 'SPP MARET 2016 Christian P Panjaitan', 152, 0, 48),
(400, '0000-00-00', 'SPP MARET 2016 Iren bulan Feb-Maret \'16', 358, 0, 48),
(401, '0000-00-00', 'SPP MARET 2016 Elenta Purba', 150, 0, 48),
(402, '2016-04-01', 'Cicilan VI  SD a/n Hans Demian', 300000, 0, 48861241),
(403, '2016-04-01', 'Cicilan I SD a/n Vany', 500000, 0, 49361241),
(404, '2016-04-01', 'Cicilan I TK B a/n : Secilia Sianturi', 1000000, 0, 50361241),
(405, '2016-04-01', 'Cicilan IV TK A a/n Graviola Nathania', 500000, 0, 50861241),
(406, '2016-04-01', 'Cicilan IV  TK B a/n Heber Situmorang', 500000, 0, 51361241),
(407, '2016-04-01', 'Cicilan I  TK B a/n Herlina Siagian', 1000000, 0, 52361241),
(408, '2016-04-01', 'Cicilan III  SD a/n Rebeka', 1000000, 0, 53361241),
(409, '2016-04-01', 'Cicilan II SD  a/n Christina Turnip', 400000, 0, 53761241),
(410, '2016-04-01', 'Cicilan II  TK A a/n Ranielcy Marpaung', 500000, 0, 54261241),
(411, '2016-04-01', 'Cicilan II  SD a/n Natanael', 400000, 0, 54661241),
(412, '2016-04-01', 'Cicilan III  TK B a/n Riski Aditia', 500000, 0, 55161241),
(413, '2016-04-01', 'Cicilan I TK B a/n Jenifer Tampubolon', 1000000, 0, 56161241),
(414, '2016-04-01', 'Cicilan II TK B a/n Mita Engelita Sagala', 300000, 0, 56461241),
(415, '2016-04-01', 'Cicilan II  TK B a/n Shinta Uli', 900000, 0, 57361241),
(416, '2016-04-01', 'Cicilan I  TK B a/n Jovira Sasmita Sirait', 500000, 0, 57861241),
(417, '2016-04-01', 'Cicilan I  TK A a/n Andhin Arief', 2000000, 0, 59861241),
(418, '2016-04-01', 'Cicilan II TK B a/n Herlina Siagian', 1000000, 0, 60861241),
(419, '2016-04-01', 'Cicilan III  TK B a/n Tesalonika', 400000, 0, 61261241),
(420, '2016-04-01', 'Cicilan III  TK B a/n Eka Desnita N', 500000, 0, 61761241),
(421, '2016-04-01', 'Cicilan  TK B  TP 2015/2016 a/n Jify J S ', 200000, 0, 61961241),
(422, '2016-04-01', 'Cicilan III  PG a/n Giopson', 500000, 0, 62461241),
(423, '2016-04-01', 'Cicilan II  SD a/n  May Ekalista Simanjuntak', 1000000, 0, 63461241),
(424, '2016-04-01', 'Cicilan II TK B  a/n Arabella', 200000, 0, 63661241),
(425, '2016-04-01', 'Pelunasan SD a/n Rebeka', 700000, 0, 64361241),
(426, '2016-04-01', 'Cicilan II  SD a/n Calvin Christian', 1100000, 0, 65461241),
(427, '2016-04-01', 'Cicilan III  SD a/n Jocelyn Atheya', 700000, 0, 66161241),
(428, '2016-04-01', 'Cicilan III SD a/n Christina Anatasya', 680000, 0, 66841241),
(429, '2016-04-01', 'Pelunasan SD a/n Cahaya Olivia Purba', 1200000, 0, 68041241),
(430, '2016-04-01', 'Pelunasan SD a/n Joanita Nauli Simatupang', 2300000, 0, 70341241),
(431, '2016-04-01', 'Pelunasan TK B a/n Sartika Idola Sitorus', 1400000, 0, 71741241),
(432, '2016-04-01', 'SPP April 2016 Elisabeth', 150000, 0, 71891241),
(433, '2016-04-01', 'SPP April 2016 Hans Situmorang', 150000, 0, 72041241),
(434, '2016-04-01', 'SPP April 2016 Dava Efsando', 150000, 0, 72191241),
(435, '2016-04-01', 'SPP April 2016 Christian Sihombing', 150000, 0, 72341241),
(436, '2016-04-01', 'SPP April 2016 Livia Felisha', 150000, 0, 72491241),
(437, '2016-04-01', 'SPP April 2016 Ebzan Sihombing', 150000, 0, 72641241),
(438, '2016-04-01', 'SPP April 2016 Apenta Dolly', 150000, 0, 72791241),
(439, '2016-04-01', 'SPP April 2016 Angel', 150000, 0, 72941241),
(440, '2016-04-01', 'SPP April 2016 Gisela', 150000, 0, 73091241),
(441, '2016-04-01', 'SPP April 2016 Kevin Pratama', 150000, 0, 73241241),
(442, '2016-04-01', 'SPP April 2016 Jesie de Vanesa', 150000, 0, 73391241),
(443, '2016-04-01', 'SPP April 2016 Jeremi Fransisco', 150000, 0, 73541241),
(444, '2016-04-01', 'SPP April 2016 Putri', 150000, 0, 73691241),
(445, '2016-04-01', 'SPP April 2016 Bradiyanto', 150000, 0, 73841241),
(446, '2016-04-01', 'SPP April 2016 Evan Dolly', 156000, 0, 73997241),
(447, '2016-04-01', 'SPP April 2016 Cahaya olivia ', 150000, 0, 74147241),
(448, '2016-04-01', 'SPP April 2016 Jasinta', 180000, 0, 74327241),
(449, '2016-04-01', 'SPP April 2016 Renata', 164000, 0, 74491241),
(450, '2016-04-01', 'SPP April 2016 Nigel', 150000, 0, 74641241),
(451, '2016-04-01', 'SPP April 2016 Tzandy. D.H Tambunan', 150000, 0, 74791241),
(452, '2016-04-01', 'SPP April 2016 Jify J Silaban', 150000, 0, 74941241),
(453, '2016-04-01', 'SPP April 2016 Christian P Panjaitan', 152000, 0, 75093241),
(454, '2016-04-01', 'SPP April 2016 Iren ', 150000, 0, 75243241),
(455, '2016-04-01', 'SPP April 2016 elenta purba', 150000, 0, 75393241),
(456, '2016-04-01', 'SPP April 2016 Adil Felix Simarmata Tahun 2015', 1000000, 0, 76393241),
(457, '2016-05-04', 'cicilan 3 tk b  arabella', 200000, 0, 63874791),
(458, '2016-05-04', 'cicilan 1 tk b Ruth Tambunan', 300000, 0, 64174791),
(459, '2016-05-04', 'cicilan 1 tk b  Kamelia', 500000, 0, 64674791),
(460, '2016-05-04', 'pelunasan tk b  Mita', 2200000, 0, 66874791),
(461, '2016-05-04', 'cicilan 4 tk b  Dirga', 500000, 0, 67374791),
(462, '2016-05-09', 'cicilan 3 sd  Christin', 300000, 0, 56316291),
(463, '2016-05-09', 'cicilan 3 sd Nathanael', 600000, 0, 56916291),
(464, '2016-05-09', 'cicilan 4 tk b Heber', 500000, 0, 57416291),
(465, '2016-05-09', 'cicilan 3 tk b  Chaterine', 650000, 0, 57556291),
(466, '2016-05-10', 'cicilan 2 tk b  Cashya', 500000, 0, 58056291),
(467, '2016-05-10', 'pelunasan tk b Riski Hutapea', 600000, 0, 58728031),
(468, '2016-05-10', 'pelunasan tk b Gavriola', 450000, 0, 59178031),
(469, '2016-05-10', 'cicilan 1 tk b Priskila Gultom', 300000, 0, 59478031),
(470, '2016-05-10', 'pelunasan uang kegiatan & buku Nigel', 300000, 0, 59778031),
(471, '2016-05-11', 'cicilan 2 sd Celsy R Sidabutar', 700000, 0, 60478031),
(472, '2016-05-12', 'cicilan 1 tk b  Marta O L', 300000, 0, 60671331),
(473, '2016-05-13', 'cicilan 2 tk b Ruth Tambunan', 1000000, 0, 61569731),
(474, '2016-05-13', 'cicilan 2 tk b Angel Ginting', 700000, 0, 62269731),
(475, '2016-05-13', 'cicilan 3 tk b Gustav Pakpahan', 650000, 0, 62919731),
(476, '2016-05-13', 'pelunasan tk b  Secilia S', 500000, 0, 63419731),
(477, '2016-05-13', 'cicilan 1 tk b Rizky D S', 300000, 0, 63719731),
(478, '2016-05-13', 'cicilan 1 sd Dhini Situmeang', 300000, 0, 64019731),
(479, '2016-05-13', 'cicilan 2 tk b Cristhofeer', 500000, 0, 64519731),
(480, '2016-05-16', 'cicilan 2 sd Joyce Simbolon', 1600000, 0, 66029731),
(481, '2016-05-16', 'cicilan 2 tk b Josua de G Turnip', 1000000, 0, 67029731),
(482, '2016-05-16', 'biaya daftar tk b ( cash, disc 5 % ) Nathaniel N', 2440000, 0, 69469731),
(483, '2016-05-16', 'cicilan 2 sd Timothy C Lubis', 2000000, 0, 71469731),
(484, '2016-05-18', 'pelunasan tk b 2015/2016', 508000, 0, 71955231),
(485, '2016-05-19', 'cicilan 1 tk b ', 300000, 0, 72255231),
(486, '2016-05-19', 'cicilan 1 sd', 500000, 0, 72755231),
(487, '2016-05-19', 'cicilan 4 tk b ', 500000, 0, 73255231),
(488, '2016-05-19', 'cicilan 4 pg ', 500000, 0, 73755231),
(489, '2016-05-19', 'cicilan 4 tk b ', 300000, 0, 74055231),
(490, '2016-05-20', 'cicilan 3 sd May Ekalista', 1500000, 0, 75343231),
(491, '2016-05-21', 'biaya daftar tk b( cash, disc 5 % ) Gavra Sianturi', 2440000, 0, 77783231),
(492, '2016-05-23', 'pelunasan tk b Jeremi LT', 1900000, 0, 79649231),
(493, '2016-05-23', 'cicilan 3 tk b arabella', 500000, 0, 80149231),
(494, '2016-05-26', 'cicilan tk b  TP 2015/2016 Adil', 100000, 0, 80043231),
(495, '2016-05-27', 'cicilan 3 sd  Dava Evsando', 1200000, 0, 81081331),
(496, '2016-05-27', 'pelunasan tk b Ranielcy M', 500000, 0, 81535681),
(497, '2016-05-27', 'cicilan 4 sd Christina A S', 680000, 0, 82215681),
(498, '2016-05-02', 'spp  mei Elisabeh', 150000, 0, 82365681),
(499, '2016-05-03', 'spp  mei n juni Hans', 300000, 0, 82665681),
(500, '2016-05-04', 'spp maret Elenta', 150000, 0, 82815681),
(501, '2016-05-05', 'spp mei Gisela', 150000, 0, 82965681),
(502, '2016-05-06', 'spp mei Dava Evsando', 150000, 0, 83115681),
(503, '2016-05-07', 'spp mei Jashinta', 180000, 0, 83295681),
(504, '2016-05-07', 'spp mei Christian S', 150000, 0, 83445681),
(505, '2016-05-07', 'spp mei Kevin', 150000, 0, 83595681),
(506, '2016-05-07', 'spp mei Evans', 150000, 0, 83745681),
(507, '2016-05-07', 'spp mei Livia', 150000, 0, 83895681),
(508, '2016-05-07', 'spp mei Putri', 150000, 0, 84045681),
(509, '2016-05-08', 'spp mei Brandyanto', 150000, 0, 84195681),
(510, '2016-05-09', 'spp mei Cahaya', 150000, 0, 84345681),
(511, '2016-05-10', 'spp mei Jeremi  ', 150000, 0, 84495681),
(512, '2016-05-11', 'spp mei Angel  ', 150000, 0, 84645681),
(513, '2016-05-12', 'spp mei Tzandy', 150000, 0, 84795681),
(514, '2016-05-13', 'spp mei & juni Ebzan', 300000, 0, 85095681),
(515, '2016-05-13', 'spp mei Aphenta', 150000, 0, 85245681),
(516, '2016-05-13', 'spp mei  Nigel', 150000, 0, 85395681),
(517, '2016-05-13', 'spp mei  Renata', 150000, 0, 85695681),
(518, '2016-05-13', 'spp mei Jify', 150000, 0, 85845681),
(519, '2016-05-13', 'spp mei Christian Clay', 150000, 0, 86115681),
(520, '2016-05-13', 'spp april & mei Elenta', 300000, 0, 86415681),
(521, '2016-05-13', 'spp mei  Irene', 170000, 0, 86585681),
(522, '2016-05-13', 'spp april Adil', 150000, 0, 86735681),
(523, '2016-05-13', 'spp juni Gisela', 150000, 0, 86885681),
(524, '2016-05-13', 'spp juni Elisabeh', 150000, 0, 87035681),
(525, '2016-05-13', 'biaya wisuda  Kevin', 250000, 0, 87285681),
(526, '2016-05-13', 'biaya wisuda Elenta', 250000, 0, 87535681),
(527, '2016-05-13', 'biaya wisuda Ebzan', 250000, 0, 87785681),
(528, '2016-05-13', 'biaya wisuda Brandyanto', 250000, 0, 88035681),
(529, '2016-05-13', 'biaya wisuda Livia', 250000, 0, 88285681),
(530, '2016-05-13', 'biaya wisuda Adil', 250000, 0, 88535681),
(531, '2016-05-13', 'biaya wisuda Dava Evsando', 250000, 0, 88785681),
(532, '2016-05-13', 'biaya wisuda Hans', 250000, 0, 89035681),
(533, '2016-05-30', 'biaya wisuda Cahaya', 250000, 0, 89285681),
(534, '2016-05-30', 'biaya wisuda Elisabeh', 250000, 0, 89535681),
(535, '2016-05-30', 'biaya wisuda Jeremi', 250000, 0, 89785681),
(536, '2016-05-30', 'pembayaran seragam sd 36 set x 700.000', 0, 25200000, 59585681),
(537, '2016-05-30', 'pembayaran seragam tk 60 set x 550.000', 0, 33000000, 26585681),
(538, '2016-07-06', 'pelunasan biaya tk b Heber R Simatupang', 700000, 0, 25824681),
(539, '2016-07-06', 'cicilan 2 biaya tk b Eca Rinawati Sinaga', 500000, 0, 26324681),
(540, '2016-09-06', 'cicilan 1 sd Javier Chiko Christian', 300000, 0, 26377961),
(541, '2016-09-06', 'cicilan 1 sd Camelia Sinurat', 500000, 0, 26877961),
(542, '2016-11-06', 'donatur utk siswa tk nadia Bpk. Korianto', 1800000, 0, 28324961),
(543, '2016-11-06', 'cicilan 2 sd Javier Chiko Christian', 1700000, 0, 30024961),
(544, '2016-06-14', 'cicilan 2 tk b Marta O. Lumbangaol', 1000000, 0, 30303961),
(545, '2016-06-18', 'pelunasan biaya tk b 15/16 Elenta Purba', 400000, 0, 30338561),
(546, '2016-06-18', 'pelunasan biaya tk b Josua de Gratias Turnip', 500000, 0, 30838561),
(547, '2016-06-18', 'cicilan 2  sd Leonardo Messi', 1000000, 0, 31838561),
(548, '2016-06-20', 'pelunasan tk b Shinta Uli', 1000000, 0, 32938561),
(549, '2016-06-20', 'biaya masuk SD Kelvin B Simanjuntak', 3900000, 0, 36838561),
(550, '2016-06-23', 'cicilan 3 tk b  Arabella', 800000, 0, 37638561),
(551, '2016-06-24', 'pelunasan biaya tk a Divani Vanesha', 1800000, 0, 39438561),
(552, '2016-06-24', 'pelunasan biaya sd Christina Simbolon', 680000, 0, 40118561),
(553, '2016-06-27', 'cicilan 3 sd novelina elisabeth ', 1500000, 0, 41618561),
(554, '2016-06-28', 'pelunasan biaya sd may ekalista', 500000, 0, 42118561),
(555, '2016-06-29', 'cicilan 3 sd Camelia Sinurat', 500000, 0, 42618561),
(556, '2016-06-29', 'pelunasan sd  joyce simbolon', 1000000, 0, 43618561),
(557, '2016-06-29', 'pelunasan tk b gustav pakpahan', 700000, 0, 44318561),
(558, '2016-06-29', 'pelunasan tk b chaterine ruth maria', 700000, 0, 45018561),
(559, '2016-06-29', 'pelunasan t b Eca Rinawati Sinaga', 1400000, 0, 46418561),
(560, '2016-06-29', 'cicilan 3 tk b  cristhofeer', 700000, 0, 47118561),
(561, '2016-06-30', 'pelunasan tk b andhin arief', 500000, 0, 47618561),
(562, '2016-06-30', 'pelunasan tk b herlna octaviana s', 500000, 0, 48118561),
(563, '2016-06-30', 'pelunasan tk a Amora  C. Sihombing', 1500000, 0, 49618561),
(564, '2016-06-30', 'pelunasan tk b kamelia h.h', 2000000, 0, 51618561),
(565, '2016-06-30', 'pelunasan pg giopson', 400000, 0, 52018561),
(566, '2016-06-30', 'pelunasan tk b eka  napitupulu', 700000, 0, 52718561),
(567, '2016-06-30', 'pelunasan sd  celsy sidabutar', 2400000, 0, 55118561),
(568, '2016-06-30', 'pelunasan tk b angel simatupang', 2200000, 0, 57318561),
(569, '2016-05-31', 'uang wisuda Goldwin', 250000, 0, 52542861),
(570, '2016-02-06', 'uang wisuda Jify', 250000, 0, 52792861),
(571, '2016-03-06', 'uang wisuda Putri', 250000, 0, 53042861),
(572, '2016-01-06', 'uang wisuda Angel', 250000, 0, 53292861),
(573, '2016-01-06', 'uang wisuda Christian Sihombing', 250000, 0, 53542861),
(574, '2016-07-06', 'uang wisuda Christin N Turnip', 250000, 0, 53792861),
(575, '2016-09-06', ' uang wisuda Vanessa', 250000, 0, 54042861),
(576, '2016-07-01', 'cicilan 3 tk b cashsya samosir', 700000, 0, 40986261),
(577, '2016-07-01', 'pelunasan biaya tk b angel ginting', 500000, 0, 41486261),
(578, '2016-07-01', 'pelunsan biaya sd javier c christian', 2000000, 0, 43486261),
(579, '2016-07-02', 'cicilan 2 tk b abigail duka', 500000, 0, 43952261),
(580, '2016-07-02', 'pelunasan biaya sd jocelyn sinaga', 700000, 0, 44652261),
(581, '2016-07-02', 'pelunasan biaya sd novelina elisabet', 500000, 0, 45152261),
(582, '2016-07-02', 'pelunasan biaya sd timothy lubis', 600000, 0, 45752261),
(583, '2016-07-02', 'pelunasan biaya sd kevin matondang', 300000, 0, 46052261),
(584, '2016-07-04', 'pelunasan biaya sd nathanael purba', 900000, 0, 46936261),
(585, '2016-07-12', 'cicilan 2 sd fransisca', 300000, 0, 36218261),
(586, '2016-07-12', 'pelunasan biaya sd dava evsando', 1000000, 0, 37218261),
(587, '2016-07-14', 'cicilan 1 biaya sd jisyer', 500000, 0, 36985261),
(588, '2016-07-14', 'cicilan 1 tk b windi sitohang', 500000, 0, 37485261),
(589, '2016-07-15', 'cicilan 1 tk b jesica tambunan', 1500000, 0, 38985261),
(590, '2016-07-16', 'pelunasan tk b jesica tambunan', 1000000, 0, 39985261),
(591, '2016-07-16', 'cicilan 2 tk b jovina', 1000000, 0, 40985261),
(592, '2016-07-16', 'pelunasan tk b rocky bobby', 600000, 0, 41585261),
(593, '2016-07-16', 'pelunasan tk b jenifer tampubolon', 1200000, 0, 42785261),
(594, '2016-07-16', 'cicilan 1 uang buku n kegiatan renata', 100000, 0, 42885261),
(595, '2016-07-16', 'pelunasan sd elisabeth jelita s', 1400000, 0, 44685261),
(596, '2016-07-16', 'cicilan 1 tk a ivana purba', 1500000, 0, 46185261),
(597, '2016-07-18', 'cicilan 1 uang buku n kegiatan irene', 600000, 0, 46785261),
(598, '2016-07-19', 'cicilan 1 tk b  carisa carlene', 500000, 0, 47285261),
(599, '2016-07-19', 'peluasan sd jify', 1700000, 0, 48985261);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `costs_id` int(100) NOT NULL,
  `costs_date` date NOT NULL,
  `costs_explanation` varchar(100) NOT NULL,
  `costs_debit` int(100) NOT NULL,
  `costs_kredit` int(100) NOT NULL,
  `costs_saldo` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`costs_id`, `costs_date`, `costs_explanation`, `costs_debit`, `costs_kredit`, `costs_saldo`) VALUES
(1, '2015-06-30', 'Belanja ATK', 0, 91900, 9008100),
(2, '2015-06-30', 'Belanja ATK', 0, 108000, 8900100),
(3, '2015-06-30', 'Belanja alat kebersihan', 0, 64000, 8836100),
(4, '2015-07-01', 'Fotokopi dan jilid', 0, 60400, 8775700),
(5, '2015-07-23', 'Pulsa (Ms Wedia)', 0, 50000, 8725700),
(6, '2015-07-23', 'Belanja ATK', 0, 161200, 8564500),
(7, '2015-07-24', 'Belanja ATK', 0, 17000, 8547500),
(8, '2015-07-27', 'Belanja alat kebersihan', 0, 185000, 8362500),
(9, '2015-07-28', 'Belanja ATK dan alat kebersihan', 0, 337600, 8024900),
(10, '2015-07-29', 'Belanja ATK, alat kebersihan, dan fotokopi', 0, 170300, 7854600),
(11, '2015-07-30', 'Belanja ATK', 0, 38000, 7816600),
(12, '2015-07-31', 'Fotokopi dan jilid', 0, 117400, 7699200),
(13, '2015-08-01', 'Belanja ATK, alat kebersihan, Sanford, obat-obatan', 0, 281700, 10867500),
(14, '2015-08-02', 'Belanja ATK dan fotokopi', 0, 85850, 10781650),
(15, '2015-08-03', 'Belanja ATK dan fotokopi', 0, 23100, 10758550),
(16, '2015-08-04', 'Belanja ATK', 0, 158550, 11950000),
(17, '2015-08-04', 'Fotokopi', 0, 13350, 11936650),
(18, '2015-08-06', 'Fotokopi', 0, 1800, 13134850),
(19, '2015-08-06', 'Service printer', 0, 20000, 13114850),
(20, '2015-08-07', 'Belanja bahan dekorasi sekolah', 0, 115000, 13299850),
(21, '2015-08-07', 'Belanja kunci gembok', 0, 30000, 13269850),
(22, '2015-08-07', 'Belanja alat kebersihan', 0, 123000, 13146850),
(23, '2015-08-09', 'Belanja alat/bahan ajar dan perlengkapan lomba', 0, 91500, 13055350),
(24, '2015-08-11', 'Belanja ATK dan hadiah lomba', 0, 181500, 13473850),
(25, '2015-08-12', 'Belanja ATK', 0, 50500, 14473350),
(26, '2015-08-14', 'Belanja Sanford gelas dan isi ulang galon', 0, 26000, 15297350),
(27, '2015-08-15', 'Belanja alat/bahan dekorasi panggung dan lomba', 0, 58000, 15239350),
(28, '2015-08-16', 'Fotokopi', 0, 4000, 15235350),
(29, '2015-08-17', 'Belanja kabel mic', 0, 80000, 15155350),
(30, '2015-08-16', 'Belanja bingkisan utk ortu Irene (pinjam keyboard)', 0, 53500, 15101850),
(31, '2015-08-18', 'Belanja ATK', 0, 32500, 14639350),
(32, '2015-08-18', 'Pulsa hp sekolah', 0, 51000, 14588350),
(33, '2015-08-18', 'Belanja ATK', 0, 28000, 14560350),
(34, '2015-08-18', 'Belanja alat kebersihan', 0, 49500, 14510850),
(35, '2015-08-19', 'Belanja colokan terminasi', 0, 12000, 14498850),
(36, '2015-08-20', 'Belanja baterai remote', 0, 6000, 14792850),
(37, '2015-08-21', 'Belanja ATK', 0, 40600, 14752250),
(38, '2015-08-22', 'Belanja Sanford gelas dan isi ulang galon', 0, 24000, 14728250),
(39, '2015-08-25', 'Belanja kertas A4', 0, 33500, 14894750),
(40, '2015-08-27', 'Belanja ATK', 0, 98000, 14796750),
(41, '2015-08-27', 'Perbaiki selang toilet', 0, 50000, 14746750),
(42, '2015-08-29', 'Isi ulang Sanford', 0, 18000, 15278750),
(43, '2015-08-29', 'Ganti Bensin (Ms Wedia)', 0, 100000, 15178750),
(44, '2015-08-06', 'Gaji Guru dan Tenaga Pendidik Bulan Juni dan Juli 2015', 0, 3083077, 13145673),
(45, '2015-08-06', 'staff admintrasi', 0, 2000000, 11145673),
(46, '2015-09-02', 'Service printer', 0, 50000, 14465673),
(47, '2015-09-02', 'Belanja tissue & sabun cuci tangan', 0, 20900, 14444773),
(48, '2015-09-02', 'Belanja ATK & alat kebersihan', 0, 68000, 14376773),
(49, '2015-09-02', 'Belanja cover jilid', 0, 3000, 14373773),
(50, '2015-09-02', 'Belanja tinta printer', 0, 50000, 14323773),
(51, '2015-09-05', 'Belanja detergen & isi ulang Sanford', 0, 15000, 14808773),
(52, '2015-09-05', 'Belanja sikat baju', 0, 5000, 14803773),
(53, '2015-09-07', 'Belanja kertas A4', 0, 34000, 15419773),
(54, '2015-09-08', 'Belanja tissue & kacang hijau (utk alat peraga)', 0, 35500, 16884273),
(55, '2015-09-08', 'Belanja kacang merah (utk alat peraga)', 0, 7000, 16877273),
(56, '2015-09-09', 'Belanja karbol lantai', 0, 12800, 17414473),
(57, '2015-09-09', 'Belanja roti tawar (utk cooking project)', 0, 33600, 17380873),
(58, '2015-09-09', 'Belanja selai (utk cooking project)', 0, 66000, 17314873),
(59, '2015-09-10', 'Sisa uang seragam tambahan (Elenta)', 30000, 0, 17344873),
(60, '2015-09-10', 'Service mainan outdoor (papan titian)', 0, 200000, 17244873),
(61, '2015-09-10', 'Belanja kabel mic', 0, 80000, 17164873),
(62, '2015-09-12', 'Isi pulsa hp sekolah', 0, 51000, 17313873),
(63, '2015-09-12', 'Belanja ATK (kertas A4 1 dus, F4 1 rim, map 1 pcs)', 0, 189500, 17124373),
(64, '2015-09-12', 'Belanja buku tabungan harian 25 pcs', 0, 25000, 17099373),
(65, '2015-09-12', 'Belanja pewangi ruangan', 0, 24300, 17075073),
(66, '2015-09-12', 'Parkir motor', 0, 1000, 17074073),
(67, '2015-09-14', 'Service keran dapur', 0, 60000, 18014073),
(68, '2015-09-14', 'Belanja ATK (kertas origami 2 bks)', 0, 19000, 17995073),
(69, '2015-09-14', 'Belanja buku tabungan harian 5 pcs', 0, 5000, 17990073),
(70, '2015-09-17', 'Belanja bingkisan untuk ortu Angel (pinjam keyboard)', 0, 39000, 18451073),
(71, '2015-09-18', 'Isi ulang Sanford 3 galon', 0, 27000, 18424073),
(72, '2015-09-18', 'Pembayaran buku tabungan harian 14 pcs (Ms Riris)', 14000, 0, 18438073),
(73, '2015-09-18', 'Pembayaran buku tabungan harian 9 pcs (Ms Nur)', 9000, 0, 18447073),
(74, '2015-09-21', 'Belanja buah-buahan (alat peraga)', 0, 18000, 18429073),
(75, '2015-09-22', 'Pembayaran buku tabungan harian 5 pcs (Ms Wedia)', 5000, 0, 18434073),
(76, '2015-09-23', 'Service keran washtaple', 0, 27000, 18749073),
(77, '2015-09-26', 'Belanja ATK (tinta printer, map, amplop)', 0, 53000, 18696073),
(78, '2015-09-26', 'Belanja alat kebersihan (tissue, sabun cuci tangan, dll)', 0, 132800, 18563273),
(79, '2015-09-26', 'Belanja buku tabungan harian 5 pcs', 0, 5000, 18558273),
(80, '2015-09-27', 'Belanja alat kebersihan (sabun cuci piring) dan kapas', 0, 18500, 18539773),
(81, '2015-09-29', 'Pelunasan biaya masuk sekolah (Carrisa)', 100000, 0, 18689773),
(82, '2015-09-29', 'Belanja gembok', 0, 30000, 18659773),
(83, '2015-09-29', 'Belanja lampu 4 pcs dan ATK', 0, 190500, 18469273),
(84, '2015-05-09', 'Gaji Guru dan Tenaga Pendidik Bulan Agustus 2015', 0, 6953846, 12615427),
(85, '2015-05-09', ' staff administrasi', 0, 2000000, 10615427),
(86, '2015-10-01', 'Isi ulang Sanford 2 galon', 0, 18000, 14685427),
(87, '2015-10-02', 'Ganti pulsa internet bln Ags-Sep (Ms Febra) ', 0, 100000, 14985427),
(88, '2015-10-02', 'Ganti bensin bln Sep (Ms Wedia)', 0, 150000, 14835427),
(89, '2015-10-02', 'Pembayaran buku tabungan 2 pcs', 2000, 0, 14837427),
(90, '2015-10-03', 'Belanja karpet puzzle 3 pack, pena 1 pack, spidol 2 pcs, karton asturo 5 lbr', 0, 392000, 14445427),
(91, '2015-10-03', 'Belanja karpet puzzle 2 pack', 0, 230000, 14215427),
(92, '2015-10-03', 'Belanja mainan ular tangga (bahan ajar)', 0, 12000, 14203427),
(93, '2015-10-05', 'Isi token listrik 200rb', 0, 202500, 14500927),
(94, '2015-10-06', 'Fotokopi buku teks untuk guru (Ms Riris) 4 pcs', 0, 33350, 14567577),
(95, '2015-10-07', 'Belanja bahan cooking project (jeruk 4 kg dan gula pasir 1/2 kg)', 0, 72100, 15345477),
(96, '2015-10-08', 'Belanja ATK (isolasi, kertas asturo)', 0, 22500, 16572977),
(97, '2015-10-09', 'Isi ulang Sanford 2 galon', 0, 18000, 16554977),
(98, '2015-10-10', 'Belanja bahan dekorasi & properti natal', 0, 95000, 16459977),
(99, '2015-10-10', 'Uang keamanan bln Agustus-Oktober 2015', 0, 300000, 16159977),
(100, '2015-10-11', 'Service selang keran dapur', 0, 50000, 16109977),
(101, '2015-10-12', 'Pembayaran Biaya Masuk TK T.P. 2016/2017 (Faith)', 2155000, 0, 18264977),
(102, '2015-10-12', 'Service kursi makan', 0, 120000, 18144977),
(103, '2015-10-14', 'Belanja bahan ajar (tali skipping)', 0, 15000, 18129977),
(104, '2015-10-14', 'Belanja bahan ajar (sedotan)', 0, 2000, 18127977),
(105, '2015-10-17', 'Token Listrik 200rb', 0, 202500, 18025477),
(106, '2015-10-17', 'Isi pulsa sekolah 50rb', 0, 51000, 17974477),
(107, '2015-10-17', 'Belanja bahan kebersihan + parkir', 0, 42500, 17931977),
(108, '2015-10-17', 'Isi ulang Sanford 2 galon', 0, 18000, 17913977),
(109, '2015-10-17', 'Sumbangan kas RT', 0, 20000, 17893977),
(110, '2015-10-19', 'Belanja materai 1pcs', 0, 7000, 18026977),
(111, '2015-10-19', 'Fotokopi keperluan surat sempadan', 0, 1000, 18025977),
(112, '2015-10-19', 'Belanja kacang panjang (bahan ajar)', 0, 2000, 18023977),
(113, '2015-10-19', 'Jilid buku', 0, 6000, 18017977),
(114, '2015-10-19', 'Jilid buku', 0, 4000, 18013977),
(115, '2015-10-21', 'Laminating', 0, 4000, 18009977),
(116, '2015-10-23', 'Pembayaran buku tabungan 3 pcs', 3000, 0, 18012977),
(117, '2015-10-24', 'Isi ulang Sanford 2 galon', 0, 18000, 17994977),
(118, '2015-10-24', 'Belanja ATK (plastik mika, kertas kilat, cutter, isolasi)', 0, 42000, 17952977),
(119, '2015-10-27', 'Belanja bahan cooking project (bumbu kacang, kecap)', 0, 20000, 18232977),
(120, '2015-10-27', 'Token Listrik 100rb', 0, 102500, 18130477),
(121, '2015-10-29', 'Service ayunan', 0, 350000, 17780477),
(122, '2015-10-29', 'Service kabel speaker', 0, 45000, 17735477),
(123, '2015-10-06', 'Gaji Guru dan Tenaga Kependidikan Bulan Sep 2015', 0, 7150000, 11485477),
(124, '2015-10-06', ' staff Administrasi', 0, 2000000, 9485477),
(125, '2015-11-04', 'Token Listrik 200rb', 0, 202500, 13820977),
(126, '2015-11-04', 'Belanja ATK (asturo, isi hektar, isi cutter)', 0, 43500, 13777477),
(127, '2015-11-04', 'Belanja bahan ajar (wortel)', 0, 5000, 13772477),
(128, '2015-11-07', 'Belanja perlengkapan natal (kertas kilat)', 0, 2000, 14570477),
(129, '2015-11-07', 'Belanja alat kebersihan (sabun, tissue)', 0, 52300, 14518177),
(130, '2015-11-07', 'Isi ulang Sanford 3 galon', 0, 27000, 14491177),
(131, '2015-11-09', 'Uang keamanan bln Okt 2015 (Pak Aritonang)', 0, 500000, 14391177),
(132, '2015-11-10', 'Belanja bahan cooking project (sirup 2 botol)', 0, 37000, 14354177),
(133, '2015-11-10', 'Belanja perlengkapan natal (kertas kilat)', 0, 4000, 14350177),
(134, '2015-11-11', 'Belanja bahan ajar (tanah 2 karung)', 0, 20000, 14330177),
(135, '2015-11-11', 'Belanja bahan ajar (mentimun)', 0, 12000, 14318177),
(136, '2015-11-12', 'Belanja bahan ajar (karton, stik, piring kertas, kapas, parkir)', 0, 40700, 14277477),
(137, '2015-11-13', 'Ganti bensin motor bln Okt 2015 (Ms Wedia)', 0, 100000, 14177477),
(138, '2015-11-13', 'Token Listrik 300rb', 0, 302500, 13874977),
(139, '2015-11-13', 'Belanja ATK (kertas A4 1 rim)', 0, 34000, 13840977),
(140, '2015-11-14', 'Uang keamanan bln Okt 2015 (RT)', 0, 100000, 13740977),
(141, '2015-11-14', 'Isi ulang Sanford 2 galon + Sanford gelas 1 dus', 0, 34000, 14306977),
(142, '2015-11-15', 'Token Listrik 200rb', 0, 202500, 14104477),
(143, '2015-11-15', 'Token Listrik 100rb', 0, 102500, 14001977),
(144, '2015-11-15', 'Belanja perlengkapan natal (kertas kilat+lilin kecil)', 0, 45200, 13956777),
(145, '2015-11-17', 'Belanja perlengkapan natal (lem fox 2 botol)', 0, 20000, 13936777),
(146, '2015-11-17', 'Belanja perlengkapan natal (karton 11 lbr +isolasi besar 1 pcs)', 0, 42500, 13894277),
(147, '2015-11-20', 'Belanja perlengkapan natal (lem uhu 1 botol, karton 3 lbr, kertas krep 2 lbr)', 0, 24000, 13870277),
(148, '2015-11-23', 'Isi ulang Sanford 2 galon', 0, 18000, 13852277),
(149, '2015-11-24', 'Beli kue Hari Guru', 0, 126000, 14526277),
(150, '2015-11-26', 'Parkir ke bank', 0, 1000, 14525277),
(151, '2015-11-27', 'Belanja bahan kebersihan (detergen)', 0, 6000, 17469277),
(152, '2015-11-27', 'Belanja bahan kebersihan (wipol, sunlight, cling)', 0, 29800, 17439477),
(153, '2015-11-27', 'Parkir ke bank', 0, 1000, 17438477),
(154, '2015-11-27', 'Belanja untuk buku rapor dan perlengkapan natal', 0, 219000, 17219477),
(155, '2015-11-28', 'Laminating dan fotokopi surat izin operasional', 0, 7000, 17512477),
(156, '2015-11-29', 'Belanja ATK (clear book) untuk arsip yayasan', 0, 34000, 17478477),
(157, '2015-11-29', 'Belanja bahan kebersihan (sabun cuci tangan)', 0, 17000, 17461477),
(158, '2015-11-06', 'Gaji Guru dan Tenaga Kependidikan Bulan Okt 2015', 0, 8077300, 11964177),
(159, '2015-11-06', 'staff admin', 0, 2000000, 9964177),
(160, '2015-12-01', 'Isi ulang Sanford 2 galon', 0, 18000, 13398177),
(161, '2015-12-01', 'Belanja perlengkapan natal (pita)', 0, 12000, 13386177),
(162, '2015-12-02', 'Isi pulsa hp sekolah 20rb', 0, 22000, 13764177),
(163, '2015-12-03', 'Parkir (bank)', 0, 1000, 14463177),
(164, '2015-12-03', 'Belanja ATK (lem FOX 2 botol)', 0, 20000, 14443177),
(165, '2015-12-04', 'Token listrik 300rb', 0, 305000, 14138177),
(166, '2015-12-04', 'Ganti pulsa internet Ms Febra Bln Okt-Nov', 0, 100000, 14038177),
(167, '2015-12-04', 'Transport ke dinas tgl 01/12/15', 0, 12000, 14026177),
(168, '2015-12-07', 'Uang keamanan Bln Nov 2015 (Pak Aritonang)', 0, 500000, 15726177),
(169, '2015-12-07', 'Belanja map & amplop besar', 0, 11500, 15714677),
(170, '2015-12-08', 'Belanja perlengkapan natal (kain spanduk)', 0, 35000, 15679677),
(171, '2015-12-10', 'Isi ulang Sanford 2 galon', 0, 18000, 15661677),
(172, '2015-12-10', 'Ganti bensin Ms Wedia Bln Nov 2015', 0, 80000, 15581677),
(173, '2015-12-10', 'Belanja perlengkapan natal (karton, lem, isolasi)', 0, 65600, 15516077),
(174, '2015-12-10', 'Belanja perlengkapan natal (kain spanduk)', 0, 35000, 15481077),
(175, '2015-12-11', 'Jahit spanduk', 0, 30000, 15451077),
(176, '2015-12-11', 'Belanja perlengkapan natal (kertas krep)', 0, 52800, 15398277),
(177, '2015-12-11', 'Parkir ', 0, 1000, 15397277),
(178, '2015-12-11', 'Parkir (bank)', 0, 1000, 15396277),
(179, '2015-12-15', 'Belanja perlengkapan natal (kertas kilat)', 0, 12000, 15384277),
(180, '2015-12-15', 'Belanja perlengkapan natal (pita)', 0, 4000, 15380277),
(181, '2015-12-16', 'Belanja perlengkapan natal (AQUA gelas 2 dus, milo 3 kotak)', 0, 82200, 15298077),
(182, '2015-12-16', 'Isi pulsa hp sekolah 20rb', 0, 22000, 15276077),
(183, '2015-12-17', 'Laundry gaun untuk penari natal (punya Ica)', 0, 10000, 15266077),
(184, '2015-12-18', 'Belanja perlengkapan natal (kertas kilat 4 lbr)', 0, 8000, 15258077),
(185, '2015-12-18', 'Isi ulang Sanford 2 galon', 0, 18000, 15240077),
(186, '2015-12-18', 'Potong buku rapor', 0, 5000, 15235077),
(187, '2015-12-18', 'thr u Guru 1,250,000+850.000+850.000+850.000', 0, 3800000, 11435077),
(188, '2015-12-05', 'Salary guru November', 0, 7963636, 5201441),
(189, '2015-12-05', 'staff admin', 0, 2000000, 3201441),
(190, '2016-01-05', 'Pembayaran Salary Guru', 0, 0, 8100000),
(191, '2016-01-16', 'staff admin', 0, 0, 2800000),
(192, '2016-01-16', 'Beli Lampu di BPS 7 pcs untuk Natal di sekolah Nadia', 0, 0, 419300),
(193, '2016-01-16', 'Foto copy', 0, 0, 8400),
(194, '2016-01-16', 'Foto copy dan jilid', 0, 0, 51000),
(195, '2016-01-16', 'Beli Pulsa Listrik', 0, 0, 202500),
(196, '2016-01-18', 'Beli kain pel', 0, 0, 22000),
(197, '2016-01-18', 'Iuran PKG januari 2016', 0, 0, 30000),
(198, '2016-01-18', 'Bayar Potong rumput Bpk Saragih', 0, 0, 200000),
(199, '2016-01-18', 'Beli Pulsa Hp', 0, 0, 31000),
(200, '2016-01-18', 'Isi ulang Sanford', 0, 0, 18000),
(201, '2016-01-18', 'Beli tissue 3 Box', 0, 0, 62700),
(202, '2016-01-18', 'Belanja Hand soap dll', 0, 0, 73800),
(203, '2016-01-18', 'Beli Pulsa Listrik', 0, 0, 202500),
(204, '2016-01-18', 'Bayar iuran untuk porseni', 0, 0, 326000),
(205, '2016-01-18', 'Belanja sapu dll', 0, 0, 74000),
(206, '2016-01-18', 'Iuran PKG bulan Februari dan Maret 2016 ', 0, 0, 60000),
(207, '2016-01-18', 'Belanja stationary', 0, 0, 159950),
(208, '2016-02-05', 'Gaji Guru', 0, 0, 8100000),
(209, '2016-02-05', 'staff admin', 0, 0, 2800000),
(210, '2016-02-05', 'Beli Pulsa Simpati', 0, 0, 22000),
(211, '2016-02-05', 'Beli Karton', 0, 0, 2500),
(212, '2016-02-05', 'Beli Pulsa Listrik', 0, 0, 202500),
(213, '2016-02-05', 'Isi Paket Internet', 0, 0, 110000),
(214, '2016-02-05', 'Bayar Keamanan Bulan Des\'15 dan Jan\'16', 0, 0, 200000),
(215, '2016-02-05', 'Beli Sanford 2 Galon', 0, 0, 18000),
(216, '2016-02-05', 'Claim Parkir', 0, 0, 2000),
(217, '2016-02-05', 'Beli Pulsa Listrik', 0, 0, 202500),
(218, '2016-02-05', 'Claim Parkir', 0, 0, 7000),
(219, '2016-02-05', 'Belanja ATK', 0, 0, 66000),
(220, '2016-02-05', 'Belanja Edukits', 0, 0, 103000),
(221, '2016-02-05', 'Bayar Keamanan januari 2016', 0, 0, 500000),
(222, '2016-02-05', 'Beli Agar agar', 0, 0, 7500),
(223, '2016-02-05', 'Beli Peralatan sekolah', 0, 0, 29300),
(224, '2016-02-05', 'Beli Sanford 2 Galon', 0, 0, 18000),
(225, '2016-02-05', 'Beli Aqua 3 Botol', 0, 0, 9000),
(226, '2016-02-05', 'Beli Pulsa Listrik', 0, 0, 202500),
(227, '2016-02-05', 'Beli Sanford 1 Galon', 0, 0, 9000),
(228, '2016-03-01', 'Pelunasan SD a/n Fredrico', 0, 2400000, 0),
(229, '2016-03-01', 'Pelunasan SD a/n Bradiyanto', 0, 2300000, 0),
(230, '2016-03-01', 'Masuk TK A a/n Ranielcy Marpaung', 0, 3330000, 0),
(231, '2016-03-01', 'Pelunasan TK B  a/n Rachel Leon', 0, 2440000, 0),
(232, '2016-03-01', 'Pelunasan TK B TP 2015/2016  a/n  Renata', 0, 650000, 0),
(233, '2016-03-05', 'Gaji Guru Februari', 0, 0, 8100000),
(234, '2016-03-05', 'staff admin', 0, 0, 2800000),
(235, '2016-03-05', 'Belanja untuk cooking class', 0, 0, 100250),
(236, '2016-03-05', 'Beli sanford galon', 0, 0, 9000),
(237, '2016-03-05', 'Pulsa Listrik', 0, 0, 202500),
(238, '2016-03-05', 'Belanja tissue dll', 0, 0, 102500),
(239, '2016-03-05', 'Beli snack anak anak', 0, 0, 24000),
(240, '2016-03-05', 'Byr Bimbel untuk Ms.Nur', 0, 0, 90000),
(241, '2016-03-05', 'Byr Bimbel untuk Ms.iris', 0, 0, 534000),
(242, '2016-03-05', 'Uang transport ms.widia dari bln des\'15-Feb\'16', 0, 0, 270000),
(243, '2016-03-05', 'Uang transport ms.riris dari bln des\'15-Feb\'16', 0, 0, 90000),
(244, '2016-03-05', 'Bayar bahan kain PKG', 0, 0, 85000),
(245, '2016-03-05', 'Bayar sanford 3 galon', 0, 0, 27000),
(246, '2016-03-05', 'Sanford gelas 4 Doz', 0, 0, 60000),
(247, '2016-03-05', 'Pulsa hp', 0, 0, 52000),
(248, '2016-03-05', 'Beli sanford galon', 0, 0, 9000),
(249, '2016-03-05', 'Transport PP ke Pemadam Kebakaran', 0, 0, 300000),
(250, '2016-03-05', 'Snack anak anak ', 0, 0, 60000),
(251, '2016-03-05', 'Ucapan terima kasih ( gantinya buah )', 0, 0, 150000),
(252, '2016-03-05', 'Beli origami', 0, 0, 55350),
(253, '2016-03-05', 'Transport PP top 100', 0, 0, 100000),
(254, '2016-03-05', 'Makan siang guru acara porseni TK di Top 100', 0, 0, 38000),
(255, '2016-03-05', 'Beli snack anak anak untuk porseni', 0, 0, 88000),
(256, '2016-03-05', 'kostum senam ular anak anak', 0, 0, 200000),
(257, '2016-03-05', 'Spons bedak', 0, 0, 6800),
(258, '2016-03-05', 'Beli snack untuk karnaval tgl 18 Maret 2016', 0, 0, 60000),
(259, '2016-03-05', 'beli 1 roll double tape', 0, 0, 5000),
(260, '2016-03-05', 'beli makan siang guru di acara karnaval', 0, 0, 60000),
(261, '2016-03-05', 'Beli pulsa listrik', 0, 0, 202000),
(262, '2016-03-05', 'Beli sanford galon', 0, 0, 9000),
(263, '2016-03-05', 'Pindahkan data foto', 0, 0, 18000),
(264, '2016-03-05', 'Beli atk dan kertas', 0, 0, 74350),
(265, '2016-03-05', 'Beli sanford galon', 0, 0, 9000),
(266, '2016-03-05', 'Beli wipol dan so klin', 0, 0, 19000),
(267, '2016-03-05', 'Beli gula,telur,the dan lain lain ( untuk paskah )', 0, 0, 66500),
(268, '2016-03-05', 'Uang transport ms.nur dari bln des\'15-Feb\'16', 0, 0, 240000),
(269, '2016-03-05', 'Beli snack dan nabati dan lapet', 0, 0, 74000),
(270, '2016-03-05', 'Bayar keamanan', 0, 0, 200000),
(271, '2016-03-05', 'Beli sanford galon', 0, 0, 9000),
(272, '2016-03-05', 'Beli pulsa listrik', 0, 0, 202000),
(273, '2016-03-05', 'Beli sanford galon', 0, 0, 9000),
(274, '2016-04-01', 'Pelunasan  SD a/n Rebeka', 0, 700000, 0),
(275, '2016-04-01', 'Pelunasan  SD a/n Cahaya Olivia Purba', 0, 1200000, 0),
(276, '2016-04-01', 'Pelunasan SD a/n Joanita Nauli Simatupang', 0, 2300000, 0),
(277, '2016-04-01', 'Pelunasan  TK B a/n Sartika Idola Sitorus', 0, 1400000, 0),
(278, '2016-04-05', 'Gaji Guru maret', 0, 0, 8045000),
(279, '2016-04-05', 'staff admin', 0, 0, 2800000),
(280, '2016-04-01', 'Beli Pulsa Hp ', 0, 0, 22000),
(281, '2016-04-07', 'Foto kegiatan porseni', 0, 0, 25000),
(282, '2016-04-07', 'Beli sanford galon', 0, 0, 9000),
(283, '2016-04-09', 'Beli tinta printer canon 810 ( Januari 2016 )', 0, 0, 210000),
(284, '2016-04-11', 'Beli pulsa listrik', 0, 0, 202000),
(285, '2016-04-12', 'Beli kertas minyak dan lem fox', 0, 0, 17500),
(286, '2016-04-12', 'Beli snack anak anak ', 0, 0, 26800),
(287, '2016-04-15', 'isi ulang sanford 1 galon dan beli pulsa hp', 0, 0, 31000),
(288, '2016-04-16', 'isi ulang sanford ', 0, 0, 9000),
(289, '2016-04-16', 'isi ulang sanford ', 0, 0, 9000),
(290, '2016-04-17', 'Beli sumpit, susu bendera dan pulsa 50', 0, 0, 71000),
(291, '2016-04-18', 'Sayur bayam', 0, 0, 5000),
(292, '2016-04-18', 'Beli wipol dan mr. muscle', 0, 0, 18000),
(293, '2016-04-18', 'Beli 4 Botol tinta refil cannon', 0, 0, 120000),
(294, '2016-04-18', 'Beli sanford hand shop, wipol dll', 0, 0, 80000),
(295, '2016-04-19', 'Bayar bimbel ke ms. Nur yang bulan April 16', 0, 0, 90000),
(296, '2016-04-20', 'Beli Pulsa Listrik', 0, 0, 202000),
(297, '2016-04-20', 'Fotocopy dan jilid materi', 0, 0, 25350),
(298, '2016-04-20', 'Beli konsumsi rapat', 0, 0, 104000),
(299, '2016-04-26', 'Bayar uang keamanan ', 0, 0, 100000),
(300, '2016-04-27', 'Beli pulsa simpati', 0, 0, 22000),
(301, '2016-04-27', 'Beli nice kiloan', 0, 0, 46000),
(302, '2016-04-29', 'Isi ulang sanford 2 galon', 0, 0, 18000),
(303, '2016-04-29', 'Beli pulsa listrik', 0, 0, 102000),
(304, '2016-04-29', 'Beli kartu 3 6 GB', 0, 0, 100000),
(305, '2016-04-29', 'Beli map Tulang', 0, 0, 4300),
(306, '2016-04-30', 'Beli lakban', 0, 0, 4500),
(307, '2016-04-30', 'Tanam bunga, beli tanah hitam dan upah', 0, 0, 200000),
(308, '2016-05-04', 'isi ulang sanford', 0, 0, 9000),
(309, '2016-05-04', 'fotocopi', 0, 0, 2500),
(310, '2016-05-04', 'sidu f4 paper/atk', 0, 0, 37500),
(311, '2016-05-04', 'mirage a4 paper', 0, 0, 29500),
(312, '2016-05-04', 'buku vision f4 polos (data sd)', 0, 0, 16000),
(313, '2016-05-06', 'map plastik (berkas dapodik)', 0, 0, 16000),
(314, '2016-05-06', 'kenko biner clip', 0, 0, 5000),
(315, '2016-05-06', 'batere alkalin( mike sekolah)', 0, 0, 12000),
(316, '2016-05-06', 'isi ulang sanford', 0, 0, 9000),
(317, '2016-05-06', 'Gaji Guru April', 0, 0, 8100000),
(318, '2016-05-06', 'staff admin', 0, 0, 2800000),
(319, '2016-05-06', 'sos karbol/kebersihan', 0, 0, 8000),
(320, '2016-05-06', 'sun light', 0, 0, 8000),
(321, '2016-05-06', 'cling', 0, 0, 3000),
(322, '2016-05-06', 'mop/kain pel', 0, 0, 25000),
(323, '2016-05-06', 'isi ulang sanford', 0, 0, 9000),
(324, '2016-05-07', 'token listrik', 0, 0, 202000),
(325, '2016-05-09', 'konsumsi guru ikut gebyar paud 1', 0, 0, 67000),
(326, '2016-05-09', 'transport ms Riris (april)', 0, 0, 45000),
(327, '2016-05-09', 'transport ms Nur (maret & april)', 0, 0, 300000),
(328, '2016-05-09', 'transport Ms Wedia (april)', 0, 0, 165000),
(329, '2016-05-10', 'uang kegiatan & buku  Aphenta', 0, 700000, 0),
(330, '2016-05-10', 'keamanan satpam (4&5)', 0, 0, 500000),
(331, '2016-05-10', 'konsumsi guru ikut gebyar paud 2', 0, 0, 128260),
(332, '2016-05-11', 'pulsa simpati', 0, 0, 22000),
(333, '2016-05-11', 'konsumsi guru ikut gebyar paud 3', 0, 0, 84700),
(334, '2016-05-12', 'konsumsi guru ikut gebyar paud 4', 0, 0, 52800),
(335, '2016-05-12', 'beli sendok n garpu', 0, 0, 39800),
(336, '2016-05-12', 'isi ulang sanford', 0, 0, 9000),
(337, '2016-05-14', 'iuran PKG ( april,mei,juni )', 0, 0, 90000),
(338, '2016-05-17', 'isi ulang sanford', 0, 0, 9000),
(339, '2016-05-17', 'wipol/kebersihan', 0, 0, 13500),
(340, '2016-05-19', 'token listrik', 0, 0, 202000),
(341, '2016-05-19', 'isi ulang sanford', 0, 0, 9000),
(342, '2016-05-19', 'parkir', 0, 0, 1000),
(343, '2016-05-21', 'kertas A4/u evaluasi', 0, 0, 34000),
(344, '2016-05-23', 'pulsa simpati', 0, 0, 22000),
(345, '2016-05-23', 'parkir', 0, 0, 1000),
(346, '2016-05-23', 'stapler/atk', 0, 0, 65000),
(347, '2016-05-24', 'isi ulang sanford', 0, 0, 9000),
(348, '2016-05-25', 'isi ulang sanford', 0, 0, 9000),
(349, '2016-05-25', 'uang keamanan mei', 0, 0, 100000),
(350, '2016-05-26', 'cling + sos', 0, 0, 12800),
(351, '2016-05-26', 'jagung + beras u/ evaluasi smst 2', 0, 0, 14100),
(352, '2016-05-26', 'stamp legalisir yayasan', 0, 0, 135000),
(353, '2016-05-27', 'isi ulang sanford', 0, 0, 9000),
(354, '2016-05-27', 'hit spray', 0, 0, 27900),
(355, '2016-05-27', 'fotocopi f4', 0, 0, 8750),
(356, '2016-06-01', 'karbol wangi', 0, 0, 29500),
(357, '2016-06-01', 'isi ulang sanford', 0, 0, 9000),
(358, '2016-06-01', 'tisue paseo', 0, 0, 10500),
(359, '2016-06-02', 'isi ulang sanford', 0, 0, 9000),
(360, '2016-06-02', 'token listrik', 0, 0, 102000),
(361, '2016-06-02', 'sanford gelas + botol', 0, 0, 57000),
(362, '2016-06-03', 'beli spritus', 0, 0, 10000),
(363, '2016-06-03', 'kons rapat gugus ( nasi padang )', 0, 0, 575000),
(364, '2016-06-04', 'gaji guru Juni 2016', 0, 0, 8100000),
(365, '2016-06-05', 'beli jeruk', 0, 0, 50000),
(366, '2016-06-06', 'Ruth C D Tambunan pelunasan biaya tk b ', 0, 1200000, 0),
(367, '2016-06-06', 'isi ulang sanford', 0, 0, 9000),
(368, '2016-06-07', 'piala untuk anak berprestasi', 0, 0, 39220),
(369, '2016-06-07', 'beli minyak tanah 1 liter', 0, 0, 19000),
(370, '2016-06-07', 'laundry kaos utk wisuda', 0, 0, 16000),
(371, '0000-00-00', 'stamp pad + tinta + usb', 0, 0, 143500),
(372, '2016-06-08', 'isi ulang sanford', 0, 0, 9000),
(373, '2016-06-08', 'beli kertas kilat', 0, 0, 20000),
(374, '2016-06-09', 'laundry jas guru', 0, 0, 30000),
(375, '2016-06-09', 'beli sarung tangan utk cabut rumput', 0, 0, 5000),
(376, '2016-06-10', 'biaya transport ms.nur bln mei -16', 0, 0, 178000),
(377, '2016-06-10', 'beli lampu + paku kabel', 0, 0, 65500),
(378, '2016-06-10', 'pulsa simpati', 0, 0, 22000),
(379, '2016-06-11', 'beli stiker utk piala berprestasi siswa', 0, 0, 20000),
(380, '2016-06-11', 'fotocopi ijazah tk b', 0, 0, 9500),
(381, '2016-06-11', 'kantong kresek', 0, 0, 23000),
(382, '2016-06-11', 'Bpk. Korianto donatur utk siswa tk nadia ', 0, 1800000, 0),
(383, '2016-06-12', 'aqua botol', 0, 0, 11000),
(384, '2016-06-12', 'konsumsi guru wisuda', 0, 0, 200000),
(385, '2016-06-13', 'cuci ac', 0, 0, 320000),
(386, '2016-06-13', 'biaya transport ms.wedia bln mei -16', 0, 0, 80000),
(387, '2016-06-14', 'beli gembok', 0, 0, 40000),
(388, '2016-06-15', 'pulsa simpati', 0, 0, 52000),
(389, '2016-06-15', 'isi ulang sanford', 0, 0, 18000),
(390, '2016-06-15', 'laundry jas guru + toga siswa', 0, 0, 90000),
(391, '2016-06-15', 'fotocopi raport amos 1', 0, 0, 13200),
(392, '2016-06-16', 'fotocopi raport  ', 0, 0, 16200),
(393, '2016-06-17', 'beli kertas utk raport', 0, 0, 10000),
(394, '2016-06-17', 'isi ulang sanford', 0, 0, 9000),
(395, '2016-06-18', 'pulsa simpati + snack ultah Jify', 0, 0, 27000),
(396, '2016-06-18', 'uang keamanan bulan juni -16', 0, 0, 100000),
(397, '2016-06-18', 'beli kran airwastafel dapur', 0, 0, 100000),
(398, '2016-06-27', 'token listrik', 0, 0, 102000),
(399, '2016-06-10', 'pembelian tas 120 pcs', 0, 0, 6430000),
(400, '2016-06-10', 'alat tulis sekolah', 0, 0, 3190000),
(401, '2016-06-10', 'alat tulis sekolah', 0, 0, 1234600),
(402, '2016-06-10', 'plastik laminating', 0, 0, 160000),
(403, '2016-06-10', 'timbangan dan cash box', 0, 0, 265000),
(404, '2016-06-10', 'stamp', 0, 0, 30000),
(405, '2016-06-10', 'poster presiden', 0, 0, 56000),
(406, '2016-06-10', 'bingkai foto 14bh x 50.000', 0, 0, 700000),
(407, '2016-06-10', 'buku tulis murid sd', 0, 0, 926000),
(408, '2016-07-01', 'cicilan 3 tk b cashsya samosir', 700000, 0, 40986261),
(409, '2016-07-01', 'pelunasan biaya tk b angel ginting', 500000, 0, 41486261),
(410, '2016-07-01', 'pelunsan biaya sd javier c christian', 2000000, 0, 43486261),
(411, '2016-07-02', 'cicilan 2 tk b abigail duka', 500000, 0, 43952261),
(412, '2016-07-02', 'pelunasan biaya sd jocelyn sinaga', 700000, 0, 44652261),
(413, '2016-07-02', 'pelunasan biaya sd novelina elisabet', 500000, 0, 45152261),
(414, '2016-07-02', 'pelunasan biaya sd timothy lubis', 600000, 0, 45752261),
(415, '2016-07-02', 'pelunasan biaya sd kevin matondang', 300000, 0, 46052261),
(416, '2016-07-04', 'pelunasan biaya sd nathanael purba', 900000, 0, 46936261),
(417, '2016-07-12', 'cicilan 2 sd fransisca', 300000, 0, 36218261),
(418, '2016-07-12', 'pelunasan biaya sd dava evsando', 1000000, 0, 37218261),
(419, '2016-07-14', 'cicilan 1 biaya sd jisyer', 500000, 0, 36985261),
(420, '2016-07-14', 'cicilan 1 tk b windi sitohang', 500000, 0, 37485261),
(421, '2016-07-15', 'cicilan 1 tk b jesica tambunan', 1500000, 0, 38985261),
(422, '2016-07-16', 'pelunasan tk b jesica tambunan', 1000000, 0, 39985261),
(423, '2016-07-16', 'cicilan 2 tk b jovina', 1000000, 0, 40985261),
(424, '2016-07-16', 'pelunasan tk b rocky bobby', 600000, 0, 41585261),
(425, '2016-07-16', 'pelunasan tk b jenifer tampubolon', 1200000, 0, 42785261),
(426, '2016-07-16', 'cicilan 1 uang buku n kegiatan renata', 100000, 0, 42885261),
(427, '2016-07-16', 'pelunasan sd elisabeth jelita s', 1400000, 0, 44685261),
(428, '2016-07-16', 'cicilan 1 tk a ivana purba', 1500000, 0, 46185261),
(429, '2016-07-18', 'cicilan 1 uang buku n kegiatan  irene', 600000, 0, 46785261),
(430, '2016-07-19', 'cicilan 1 tk b carisa carlene', 500000, 0, 47285261),
(431, '2016-07-19', 'peluasan sd jify', 1700000, 0, 48985261);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(50) NOT NULL,
  `section_batch_id` int(11) NOT NULL,
  `intake` int(5) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  `section_course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_name`, `section_batch_id`, `intake`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`, `section_course_id`) VALUES
(1, 'SD A', 0, NULL, '2017-03-16 15:49:04', 1, NULL, NULL, 0, 1),
(2, 'SD 1A', 0, NULL, '2017-03-16 16:02:55', 1, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `spp_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `date_pay_juli_15` date DEFAULT NULL,
  `debit_juli_15` varchar(100) NOT NULL,
  `date_pay_agustus_15` date DEFAULT NULL,
  `debit_agustus_15` varchar(100) NOT NULL,
  `date_pay_september_15` date DEFAULT NULL,
  `debit_september_15` varchar(100) NOT NULL,
  `date_pay_oktober_15` date DEFAULT NULL,
  `debit_oktober_15` varchar(100) NOT NULL,
  `date_pay_november_15` date DEFAULT NULL,
  `debit_november_15` varchar(100) NOT NULL,
  `date_pay_desember_15` date DEFAULT NULL,
  `debit_desember_15` varchar(100) NOT NULL,
  `date_pay_januari_16` date DEFAULT NULL,
  `debit_januari_16` varchar(100) NOT NULL,
  `date_pay_februari_16` date DEFAULT NULL,
  `debit_february_16` varchar(100) NOT NULL,
  `date_pay_maret_16` date DEFAULT NULL,
  `debit_maret_16` varchar(100) NOT NULL,
  `date_pay_april_16` date DEFAULT NULL,
  `debit_april_16` varchar(100) NOT NULL,
  `date_pay_mei_16` date DEFAULT NULL,
  `debit_mei_16` varchar(100) NOT NULL,
  `date_pay_juni_16` date DEFAULT NULL,
  `debit_juni_16` varchar(100) NOT NULL,
  `saldo` bigint(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`spp_id`, `nama`, `date_pay_juli_15`, `debit_juli_15`, `date_pay_agustus_15`, `debit_agustus_15`, `date_pay_september_15`, `debit_september_15`, `date_pay_oktober_15`, `debit_oktober_15`, `date_pay_november_15`, `debit_november_15`, `date_pay_desember_15`, `debit_desember_15`, `date_pay_januari_16`, `debit_januari_16`, `date_pay_februari_16`, `debit_february_16`, `date_pay_maret_16`, `debit_maret_16`, `date_pay_april_16`, `debit_april_16`, `date_pay_mei_16`, `debit_mei_16`, `date_pay_juni_16`, `debit_juni_16`, `saldo`, `keterangan`) VALUES
(1, 'Adil Felix', '2015-10-07', '150000', '2015-10-07', '150000', '2015-09-17', '150000', '0000-00-00', '150000', '0000-00-00', '150000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '2016-04-01', '1000000(dari2015)', '2016-05-13', '150000', '0000-00-00', '', 0, ''),
(2, 'Angel Novianti Nauli S', '2015-06-30', '150000', '2015-08-13', '150000', '2015-09-10', '150000', '2015-10-15', '150000', '2015-11-09', '150000', '2015-12-10', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-11', '150000', '0000-00-00', '', 0, ''),
(3, 'Aphenta Dolly Bancin', '2015-06-30', '150000', '2015-08-10', '150000', '2015-09-09', '150000', '2015-10-08', '150000', '2015-11-09', '150000', '2015-12-10', '150000', '2016-01-18', '150000', '2016-02-01', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-13', '150000', '0000-00-00', '', 0, ''),
(4, 'Brandianto Siallagan', '2015-06-30', '150000', '2015-08-04', '150000', '2015-09-02', '150000', '2015-10-09', '150000', '2015-11-06', '150000', '2015-12-08', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-08', '150000', '0000-00-00', '', 0, ''),
(5, 'Cahaya Olifia Purba', '2015-06-30', '150000', '0000-00-00', '', '2015-09-10', '150000', '2015-10-07', '150000', '2015-11-06', '150000', '2015-12-08', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-09', '150000', '0000-00-00', '', 0, ''),
(6, 'Carissa Carlene', '0000-00-00', '150000', '2015-08-12', '150000', '2015-09-08', '150000', '0000-00-00', '', '0000-00-00', '150000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 0, ''),
(7, 'Christian Clay', '2015-06-30', '150000', '2015-08-11', '150000', '2015-09-01', '150000', '2015-10-07', '150000', '2015-11-03', '150000', '0000-00-00', '', '2016-01-18', '150000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '2016-05-13', '150000', '0000-00-00', '', 0, ''),
(8, 'Christian Sihombing', '2015-06-30', '150000', '2015-08-07', '150000', '2015-09-09', '150000', '2015-10-07', '150000', '2015-11-09', '150000', '2015-12-08', '150000', '2016-01-18', '150000', '2016-02-01', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-07', '150000', '0000-00-00', '', 0, ''),
(9, 'Christin Novyta Turnip', '2015-06-30', '150000', '0000-00-00', '', '2015-09-02', '150000', '2015-10-15', '154000(+denda 2 hari)', '2015-11-04', '150000', '2015-12-03', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 0, ''),
(10, 'Christian P Panjaitan', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '2016-02-05', '152000', '2016-03-05', '152000', '2016-04-01', '152000', '0000-00-00', '', '0000-00-00', '', 0, ''),
(11, 'Dava Evsando Siagian', '2015-06-30', '150000', '2015-08-05', '150000', '2015-09-02', '150000', '2015-10-05', '150000', '2015-11-04', '150000', '2015-12-04', '150000', '2016-01-18', '150000', '2016-02-01', '150000', '2016-03-05', '150000', '0000-00-00', '', '2016-05-06', '150000', '0000-00-00', '', 0, ''),
(12, 'Ebzan Sihombing', '2015-06-30', '150000', '2015-08-04', '150000', '2015-09-28', '150000', '2015-09-28', '150000', '2015-11-03', '150000', '2015-12-01', '150000', '2016-01-18', '150000', '2016-02-01', '150000', '2016-03-05', '150000', '0000-00-00', '', '2016-05-13', '150000', '2016-05-13', '150000', 0, ''),
(13, 'Elenta Purba', '2015-06-30', '150000', '2015-08-10', '150000', '2015-09-29', '150000', '2015-10-12', '150000', '2015-11-09', '150000', '2015-12-15', '150000', '2016-01-18', '150000', '0000-00-00', '', '2016-05-04', '150000', '2016-05-04', '150000', '2016-05-04', '150000', '0000-00-00', '', 0, ''),
(14, 'Elisabeth Aldina J. Siregar', '2015-06-30', '150000', '2015-08-06', '150000', '2015-09-29', '150000', '2015-09-29', '150000', '2015-11-02', '150000', '2015-12-04', '150000', '2016-01-18', '150000', '0000-00-00', '', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-02', '150000', '2016-05-13', '150000', 0, ''),
(15, 'Evans Dolly Yesaya Sidabutar', '2015-06-30', '150000', '2015-08-04', '150000', '2015-09-09', '150000', '2015-10-05', '150000', '2015-11-06', '150000', '2015-12-11', '150000', '2016-01-18', '150000', '2016-02-05', '152000', '2016-03-05', '152000', '2016-04-01', '156000', '2016-05-07', '150000', '0000-00-00', '', 0, ''),
(16, 'Gisela Tri Rosari T', '2015-06-30', '150000', '2015-08-28', '150000', '2015-09-10', '150000', '2015-10-01', '150000', '2015-11-03', '150000', '2015-11-30', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-05', '150000', '2016-05-13', '150000', 0, ''),
(17, 'Goldwin Munarch', '2015-06-30', '150000', '2015-11-12', '150000', '2015-11-12', '150000', '2015-11-26', '150000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', 0, ''),
(18, 'Graciela Stevanie Sitohang', '2015-06-30', '150000', '2015-08-07', '150000', '2015-09-07', '150000', '2015-10-06', '150000', '2015-10-06', '150000', '2015-10-06', '150000', '2016-01-18', '150000', '2016-01-18', '150000', '2016-01-18', '150000', '2016-01-18', '150000', '2016-01-18', '150000', '2016-01-18', '150000', 0, ''),
(19, 'Hans Damian Situmorang', '2015-06-30', '150000', '2015-08-18', '150000', '2015-09-10', '150000', '2015-10-15', '150000', '2015-11-03', '150000', '2015-12-01', '150000', '2016-01-18', '150000', '2016-02-01', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-03', '150000', '2016-05-03', '150000', 0, ''),
(20, 'Irene Hartlyn Cenobio Sinaga', '2015-06-30', '150000', '2015-10-06', '150000', '2015-09-07', '150000', '2015-10-06', '150000', '2015-11-12', '150000', '2015-12-11', '150000', '0000-00-00', '179000', '2016-03-05', '150000', '2016-03-05', '179000', '2016-04-01', '150000', '2016-05-13', '170000', '0000-00-00', '', 0, ''),
(21, 'Jasintha Dyah Ayu Maharani', '0000-00-00', '', '0000-00-00', '', '2015-09-08', '', '2015-10-08', '180000', '2015-11-03', '150000', '2015-12-04', '150000', '2016-01-18', '150000', '2016-02-05', '180000', '2016-03-05', '180000', '2016-04-01', '180000', '2016-05-07', '180000', '0000-00-00', '', 0, ''),
(22, 'Jeremi Fransisco Simaremare', '2015-06-30', '150000', '2015-08-10', '150000', '2015-09-09', '150000', '2015-10-15', '154000(+denda 2 hari)', '2015-11-03', '150000', '2015-12-02', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-10', '150000', '0000-00-00', '', 0, ''),
(23, 'Jesie de Vanesa', '2015-06-30', '150000', '2015-08-14', '150000', '2015-09-10', '150000', '2015-10-19', '160000', '2015-11-11', '150000', '2015-12-11', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '152000', '2016-04-01', '150000', '0000-00-00', '', '0000-00-00', '', 0, ''),
(24, 'Jify Joune Silalahi', '2015-06-30', '150000', '2015-08-24', '150000', '2015-09-23', '158000(+denda)', '2015-10-16', '150000', '0000-00-00', '', '2016-01-18', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '152000', '2016-04-01', '150000', '2016-05-13', '150000', '0000-00-00', '', 0, ''),
(25, 'Kevin Pratama Matondang', '2015-06-30', '150000', '2015-08-05', '150000', '2015-09-08', '150000', '2015-10-01', '150000', '2015-11-09', '150000', '2015-12-08', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-07', '150000', '0000-00-00', '', 0, ''),
(26, 'Livia Felisha', '0000-00-00', '150000', '2015-08-12', '150000', '2015-09-07', '150000', '2015-10-05', '150000', '2015-11-04', '150000', '2015-12-02', '150000', '2016-01-18', '150000', '2016-02-01', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-07', '150000', '0000-00-00', '', 0, ''),
(27, 'Nigel Septiani Tobing', '2015-06-30', '150000', '2015-08-29', '150000', '2015-09-11', '150000', '2015-10-08', '150000', '2015-11-09', '150000', '2015-12-11', '150000', '2016-01-18', '150000', '2016-02-05', '154000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-13', '150000', '0000-00-00', '', 0, ''),
(28, 'Putri Okta Aditya Rumapea', '2015-06-30', '150000', '2015-08-11', '150000', '2015-09-08', '150000', '2015-10-05', '150000', '2015-11-05', '150000', '2015-12-07', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '150000', '2016-05-07', '150000', '0000-00-00', '', 0, ''),
(29, 'Renata Simatupang', '0000-00-00', '150000', '2015-08-12', '150000', '2015-09-07', '150000', '2015-10-08', '150000', '2015-11-10', '150000', '2015-12-19', '164000(+ denda 7 hari)', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '150000', '2016-04-01', '164000', '2016-05-13', '150000', '0000-00-00', '', 0, ''),
(30, 'Tzandy Dominggo Hikara Tambunan', '2015-06-30', '150000', '2015-08-11', '150000', '2015-09-07', '150000', '2015-10-19', '160000', '2015-11-09', '150000', '2015-12-12', '150000', '2016-01-18', '150000', '2016-02-05', '150000', '2016-03-05', '154000', '2016-04-01', '150000', '2016-05-12', '150000', '0000-00-00', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(35) NOT NULL,
  `state_country_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`, `state_country_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Nanggroe Aceh Darusalam', 1, '2017-02-17 16:12:26', 1, NULL, NULL, 0),
(2, 'Bali ', 1, '2017-02-17 16:12:40', 1, NULL, NULL, 0),
(3, 'Bangka Belitung', 1, '2017-02-17 16:12:52', 1, NULL, NULL, 0),
(4, 'Banten', 1, '2017-02-17 16:13:49', 1, NULL, NULL, 0),
(5, 'Bengkulu', 1, '2017-02-17 16:13:58', 1, NULL, NULL, 0),
(6, 'Daerah Istimewa Yogyakarta(DIY) ', 1, '2017-02-17 16:14:13', 1, NULL, NULL, 0),
(7, 'DKI Jakarta', 1, '2017-02-17 16:14:19', 1, NULL, NULL, 0),
(8, 'Gorontalo ', 1, '2017-02-17 16:14:30', 1, NULL, NULL, 0),
(9, 'Jambi ', 1, '2017-02-17 16:14:37', 1, NULL, NULL, 0),
(10, 'Jawa Barat', 1, '2017-02-17 16:14:46', 1, NULL, NULL, 0),
(11, 'Jawa Tengah', 1, '2017-02-17 16:14:54', 1, NULL, NULL, 0),
(12, 'Jawa Timur', 1, '2017-02-17 16:15:00', 1, NULL, NULL, 0),
(13, 'Kalimantan Barat ', 1, '2017-02-17 16:15:06', 1, NULL, NULL, 0),
(14, 'Kalimantan Selatan ', 1, '2017-02-17 16:15:12', 1, NULL, NULL, 0),
(15, 'Kalimantan Tengah ', 1, '2017-02-17 16:16:24', 1, NULL, NULL, 0),
(16, 'Kalimantan Timur ', 1, '2017-02-17 16:16:33', 1, NULL, NULL, 0),
(17, 'Kalimantan Utara ', 1, '2017-02-17 16:16:39', 1, NULL, NULL, 0),
(18, 'Kepulauan Riau ', 1, '2017-02-17 16:16:45', 1, NULL, NULL, 0),
(19, 'Lampung ', 1, '2017-02-17 16:16:50', 1, NULL, NULL, 0),
(20, 'Maluku', 1, '2017-02-17 16:16:56', 1, NULL, NULL, 0),
(21, 'Maluku Utara ', 1, '2017-02-17 16:17:03', 1, NULL, NULL, 0),
(22, 'Nusa Tenggara Barat', 1, '2017-02-17 16:17:09', 1, NULL, NULL, 0),
(23, 'Nusa Tenggara Timur ', 1, '2017-02-17 16:17:24', 1, NULL, NULL, 0),
(24, ' Papua', 1, '2017-02-17 16:17:30', 1, NULL, NULL, 0),
(25, 'Papua Barat ', 1, '2017-02-17 16:17:35', 1, NULL, NULL, 0),
(26, 'Riau ', 1, '2017-02-17 16:17:43', 1, NULL, NULL, 0),
(27, 'Sulawesi Barat', 1, '2017-02-17 16:17:49', 1, NULL, NULL, 0),
(28, 'Sulawesi Selatan', 1, '2017-02-17 16:17:55', 1, NULL, NULL, 0),
(29, 'Sulawesi Tengah ', 1, '2017-02-17 16:18:00', 1, NULL, NULL, 0),
(30, 'Sulawesi Tenggara', 1, '2017-02-17 16:18:08', 1, NULL, NULL, 0),
(31, 'Sulawesi Utara ', 1, '2017-02-17 16:18:16', 1, NULL, NULL, 0),
(32, 'Sumatera Barat ', 1, '2017-02-17 16:18:23', 1, NULL, NULL, 0),
(33, 'Sumatera Selatan', 1, '2017-02-17 16:18:30', 1, NULL, NULL, 0),
(34, 'Sumatera Utara', 1, '2017-02-17 16:18:36', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stu_address`
--

CREATE TABLE `stu_address` (
  `stu_address_id` int(11) NOT NULL,
  `stu_cadd` varchar(255) DEFAULT NULL,
  `stu_cadd_city` int(11) DEFAULT NULL,
  `stu_cadd_state` int(11) DEFAULT NULL,
  `stu_cadd_country` int(11) DEFAULT NULL,
  `stu_cadd_pincode` int(6) DEFAULT NULL,
  `stu_cadd_house_no` varchar(25) DEFAULT NULL,
  `stu_cadd_phone_no` varchar(25) DEFAULT NULL,
  `stu_padd` varchar(255) DEFAULT NULL,
  `stu_padd_city` int(11) DEFAULT NULL,
  `stu_padd_state` int(11) DEFAULT NULL,
  `stu_padd_country` int(11) DEFAULT NULL,
  `stu_padd_pincode` int(6) DEFAULT NULL,
  `stu_padd_house_no` varchar(25) DEFAULT NULL,
  `stu_padd_phone_no` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_address`
--

INSERT INTO `stu_address` (`stu_address_id`, `stu_cadd`, `stu_cadd_city`, `stu_cadd_state`, `stu_cadd_country`, `stu_cadd_pincode`, `stu_cadd_house_no`, `stu_cadd_phone_no`, `stu_padd`, `stu_padd_city`, `stu_padd_state`, `stu_padd_country`, `stu_padd_pincode`, `stu_padd_house_no`, `stu_padd_phone_no`) VALUES
(1, 'aaaaa', NULL, NULL, 1, 12345, '8', '8677', 'aaa', 1, 18, 1, 99999, '0000872383', '999'),
(2, 'Perum. Bumi Kencana Blok H No. 12', 0, 0, 1, 29438, NULL, '82169701165', 'Perum. Bumi Kencana Blok H No. 12', 1, 18, 1, 29438, NULL, '82169701165'),
(3, 'Perum. Bumi Kencana Blok L No. 12 ', 0, 0, 1, 29438, NULL, '81364074109', 'Perum. Bumi Kencana Blok L No. 12 ', 1, 18, 1, 29438, NULL, '81364074109'),
(4, 'Kp. Bumi Permai', 0, 0, 1, 29438, NULL, '85365505520', 'Kp. Bumi Permai', 1, 18, 1, 29438, NULL, '85365505520'),
(5, 'Kp. Bumi Permai', 0, 0, 1, 29438, NULL, '82169188959', 'Kp. Bumi Permai', 1, 18, 1, 29438, NULL, '82169188959'),
(6, 'Perum. Bumi Kencana Blok A No. 21', 0, 0, 1, 29438, NULL, '8136432948', 'Perum. Bumi Kencana Blok A No. 21', 1, 18, 1, 29438, NULL, '8136432948'),
(7, 'Kp. Bumi Permai Lr. Mawar   ', 0, 0, 1, 29438, NULL, '82171556286', 'Kp. Bumi Permai Lr. Mawar   ', 1, 18, 1, 29438, NULL, '82171556286'),
(8, 'Perum. Bukit Indah (Tahap 1) Blok D No. 16', 0, 0, 1, 29438, NULL, '82283950326', 'Perum. Bukit Indah (Tahap 1) Blok D No. 16', 1, 18, 1, 29438, NULL, '82283950326'),
(9, 'Perum. Bumi Kencana Blok R No. 9   ', 0, 0, 1, 29438, NULL, '85272831944', 'Perum. Bumi Kencana Blok R No. 9   ', 1, 18, 1, 29438, NULL, '85272831944'),
(10, 'Kp. Bumi Permai  ', 0, 0, 1, 29438, NULL, '81275323335', 'Kp. Bumi Permai  ', 1, 18, 1, 29438, NULL, '81275323335'),
(11, 'Bumi Agung Permai Blok D No. 8', 0, 0, 1, 29438, NULL, '81372205156', 'Bumi Agung Permai Blok D No. 8', 1, 18, 1, 29438, NULL, '81372205156'),
(12, 'Taman Lestari Blok C4 No. 19', 0, 0, 1, 29438, NULL, '8136490639', 'Taman Lestari Blok C4 No. 19', 1, 18, 1, 29438, NULL, '8136490639'),
(13, 'Perum. Bumi Kencana ', 0, 0, 1, 29438, NULL, '81372919812', 'Perum. Bumi Kencana ', 1, 18, 1, 29438, NULL, '81372919812'),
(14, 'Bumi Agung Permai Blok A No. 11', 0, 0, 1, 29438, NULL, '81364300046', 'Bumi Agung Permai Blok A No. 11', 1, 18, 1, 29438, NULL, '81364300046'),
(15, 'Kp. Bumi Permai ', 0, 0, 1, 29438, NULL, '', 'Kp. Bumi Permai ', 1, 18, 1, 29438, NULL, ''),
(16, 'Perum. Bumi Kencana Blok L No. 3 ', 0, 0, 1, 29438, NULL, '81266243571', 'Perum. Bumi Kencana Blok L No. 3 ', 1, 18, 1, 29438, NULL, '81266243571'),
(17, 'Perum. Bumi Kencana Blok O No. 21 ', 0, 0, 1, 29438, NULL, '81276094735', 'Perum. Bumi Kencana Blok O No. 21 ', 1, 18, 1, 29438, NULL, '81276094735'),
(18, 'Kp. Bumi Permai Lr. Mawar No. 58', 0, 0, 1, 29438, NULL, '81277142477', 'Kp. Bumi Permai Lr. Mawar No. 58', 1, 18, 1, 29438, NULL, '81277142477'),
(19, 'Perum. Bukit Indah (Tahap 1) Blok E No. 5', NULL, 0, 1, 29438, '', '085375778830', 'Perum. Bukit Indah (Tahap 1) Blok E No. 5', 1, 18, 1, 29438, '', '85375778830'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stu_category`
--

CREATE TABLE `stu_category` (
  `stu_category_id` int(11) NOT NULL,
  `stu_category_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_category`
--

INSERT INTO `stu_category` (`stu_category_id`, `stu_category_name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Category Admission', '2017-02-25 19:05:45', 1, NULL, NULL, 0),
(2, 'fgh', '2017-02-27 05:22:15', 1, '2017-02-27 05:22:19', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `stu_docs`
--

CREATE TABLE `stu_docs` (
  `stu_docs_id` int(11) NOT NULL,
  `stu_docs_details` varchar(100) DEFAULT NULL,
  `stu_docs_category_id` int(11) NOT NULL,
  `stu_docs_path` varchar(150) NOT NULL,
  `stu_docs_submited_at` datetime NOT NULL,
  `stu_docs_status` tinyint(1) NOT NULL DEFAULT '0',
  `stu_docs_stu_master_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_docs`
--

INSERT INTO `stu_docs` (`stu_docs_id`, `stu_docs_details`, `stu_docs_category_id`, `stu_docs_path`, `stu_docs_submited_at`, `stu_docs_status`, `stu_docs_stu_master_id`, `created_by`) VALUES
(1, 'zdfs', 1, '1-1-728761433.png', '2017-02-25 19:11:17', 1, 1, 1),
(2, 'sdfsdf', 1, '2-1-766369693.png', '2017-02-25 19:15:17', 1, 2, 1),
(3, 'sdfsdf', 2, '2-2-547546960.png', '2017-02-25 19:15:17', 1, 2, 1),
(4, '', 1, '5-1-1155422261.png', '2017-02-27 10:21:02', 1, 5, 1),
(5, '', 1, '20-1-8681971.png', '2017-03-01 05:26:31', 1, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stu_guardians`
--

CREATE TABLE `stu_guardians` (
  `stu_guardian_id` int(11) NOT NULL,
  `guardian_name` varchar(65) DEFAULT NULL,
  `guardian_relation` varchar(30) DEFAULT NULL,
  `guardian_mobile_no` bigint(12) DEFAULT NULL,
  `guardian_phone_no` varchar(25) DEFAULT NULL,
  `guardian_qualification` varchar(50) DEFAULT NULL,
  `guardian_occupation` varchar(50) DEFAULT NULL,
  `guardian_lastedu` varchar(100) NOT NULL,
  `guardian_income` varchar(50) DEFAULT NULL,
  `guardian_email` varchar(65) DEFAULT NULL,
  `guardian_home_address` varchar(255) DEFAULT NULL,
  `guardian_office_address` varchar(255) DEFAULT NULL,
  `is_emg_contact` tinyint(1) NOT NULL DEFAULT '0',
  `guardia_stu_master_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_guardians`
--

INSERT INTO `stu_guardians` (`stu_guardian_id`, `guardian_name`, `guardian_relation`, `guardian_mobile_no`, `guardian_phone_no`, `guardian_qualification`, `guardian_occupation`, `guardian_lastedu`, `guardian_income`, `guardian_email`, `guardian_home_address`, `guardian_office_address`, `is_emg_contact`, `guardia_stu_master_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'junior', 'adad', 1313233133, 'adad', 'adadawd', 'adad', 'smp', 'adada', 'ada', 'adad', 'ada', 1, 1, '2017-03-20 16:42:25', 1, NULL, NULL, 0),
(3, 'ariana grande', 'sister', 121221212, '12121212', 'adadasda', 'asdad', 'S1', 'adada', 'asdad@a.com', 'adad', 'adada', 0, 2, '2017-03-22 14:51:34', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stu_info`
--

CREATE TABLE `stu_info` (
  `stu_info_id` int(11) NOT NULL,
  `stu_unique_id` int(11) NOT NULL,
  `stu_first_name` varchar(50) DEFAULT NULL,
  `stu_middle_name` varchar(50) DEFAULT NULL,
  `stu_last_name` varchar(50) NOT NULL,
  `stu_address` varchar(250) NOT NULL,
  `stu_gender` varchar(20) DEFAULT NULL,
  `stu_dob` date NOT NULL,
  `stu_email_id` varchar(65) DEFAULT NULL,
  `stu_bloodgroup` varchar(15) DEFAULT 'Unknown',
  `stu_birthplace` varchar(45) DEFAULT NULL,
  `stu_religion` varchar(50) DEFAULT NULL,
  `stu_admission_date` date NOT NULL,
  `stu_photo` varchar(150) DEFAULT NULL,
  `stu_languages` varchar(255) DEFAULT NULL,
  `stu_mobile_no` bigint(12) DEFAULT NULL,
  `stu_info_stu_master_id` int(11) DEFAULT NULL,
  `stu_title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_info`
--

INSERT INTO `stu_info` (`stu_info_id`, `stu_unique_id`, `stu_first_name`, `stu_middle_name`, `stu_last_name`, `stu_address`, `stu_gender`, `stu_dob`, `stu_email_id`, `stu_bloodgroup`, `stu_birthplace`, `stu_religion`, `stu_admission_date`, `stu_photo`, `stu_languages`, `stu_mobile_no`, `stu_info_stu_master_id`, `stu_title`) VALUES
(1, 1, 'Jimmi', 'J', 'Nababan', '', 'MALE', '2017-02-25', 'jimmi@nababan.com', 'Unknown', 'Porsea', 'Kristen', '2017-02-25', 'Jimmi_1.png', NULL, 654, 1, ''),
(2, 2, 'Adil', '', 'Felix', 'Perum. Bumi Kencana Blok H No. 12', 'MALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 821, NULL, ''),
(3, 3, 'Angel  ', 'Novianti ', 'Nauli S', 'Perum. Bumi Kencana Blok L No. 12 ', 'FEMALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 813, NULL, ''),
(4, 4, 'Brandianto ', '', 'Siallagan', 'Kp. Bumi Permai', 'MALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 821, NULL, ''),
(5, 5, 'Cahaya ', 'Olifia ', 'Purba', 'Kp. Bumi Permai', 'FEMALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 823, NULL, ''),
(6, 6, 'Christian ', '', 'Sihombing', 'Perum. Bumi Kencana Blok A No. 21', 'MALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 813, NULL, ''),
(7, 7, 'Christin ', 'Novyta ', 'Turnip', 'Kp. Bumi Permai Lr. Mawar   ', 'FEMALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 821, NULL, ''),
(8, 8, 'Dava ', 'Evsando', ' Siagian', 'Perum. Bukit Indah (Tahap 1) Blok D No. 16', 'MALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 822, NULL, ''),
(9, 9, 'Ebzan ', '', 'Sihombing', 'Perum. Bumi Kencana Blok R No. 9   ', 'MALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 852, NULL, ''),
(10, 10, 'Elenta ', '', 'Purba', 'Kp. Bumi Permai  ', 'FEMALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, '', 812, NULL, ''),
(11, 11, 'Elisabeth ', 'Aldinar', ' J. Sirega', 'Bumi Agung Permai Blok D No. 8', 'FEMALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 813, NULL, ''),
(12, 12, 'Gisela ', 'Tri ', 'Rosari T', 'Taman Lestari Blok C4 No. 19', 'FEMALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 813, NULL, ''),
(13, 13, 'Goldwin ', '', 'Munarch', 'Perum. Bumi Kencana ', 'FEMALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 813, NULL, ''),
(14, 14, 'Hans ', 'Damian ', 'Situmorang', 'Bumi Agung Permai Blok A No. 11', 'MALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 813, NULL, ''),
(15, 15, 'Jeremi ', 'Fransisco ', 'Simaremare', 'Kp. Bumi Permai ', 'MALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 0, NULL, ''),
(16, 16, 'Jesie ', 'de ', 'Vanesa', 'Perum. Bumi Kencana Blok L No. 3 ', 'FEMALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 812, NULL, ''),
(17, 17, 'Jify ', 'Joune', ' Silalahi', 'Perum. Bumi Kencana Blok O No. 21 ', 'FEMALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0000-00-00', NULL, 'Indonesia', 812, NULL, ''),
(18, 18, 'Kevin', ' Pratama ', 'Matondang', 'Kp. Bumi Permai Lr. Mawar No. 58', 'MALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '0002-12-02', NULL, 'Indonesia', 812, NULL, ''),
(19, 19, 'Putri  ', 'Okta', 'Aditya Rumapea', 'Perum. Bukit Indah (Tahap 1) Blok E No. 5', 'FEMALE', '0000-00-00', NULL, 'Unknown', 'batam', 'Kristen', '2015-12-02', NULL, 'Indonesia', 853, NULL, ''),
(62, 20, 't', 'tt', 't', '', 'MALE', '2017-03-01', 'asdf@asdf.com', 'Unknown', 'rty', 'Khatolik', '2017-03-01', 't_20.png', NULL, 345, 20, ''),
(63, 21, 'sdf', 'sdf', 'ssdf', '', 'MALE', '2017-03-16', '12312@asdf.com', 'Unknown', 'sdf', 'Kristen', '2017-03-16', NULL, NULL, 234, 21, ''),
(64, 22, 'sdfg', '', 'ssfg', '', 'MALE', '2017-03-17', NULL, 'Unknown', '', 'Kristen', '2017-03-17', NULL, NULL, NULL, 22, ''),
(65, 23, 'hji', '', 'ghjk', '', 'MALE', '2017-03-17', NULL, 'Unknown', '', 'Kristen', '2017-03-17', NULL, NULL, NULL, 23, ''),
(66, 24, 'asdf', '', 'asdf', '', '', '2017-03-17', NULL, 'Unknown', '', '', '2017-03-17', NULL, NULL, NULL, 24, ''),
(67, 25, 'J', 'J', 'J', '', 'MALE', '2017-03-17', NULL, 'Unknown', '', '', '2017-03-17', NULL, NULL, NULL, 1, ''),
(68, 26, 'ab', 'a', 'aa', '', '', '2017-03-01', 'a@gmail.com', 'Unknown', 'batam', 'Kristen', '2017-03-24', NULL, NULL, 1222222, 2, ''),
(69, 27, 'tes', '', 'tes', '', 'MALE', '2017-03-01', 'aa@gmail.com', 'Unknown', 'batam', 'Kristen', '2017-03-24', NULL, NULL, 1222222, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `stu_master`
--

CREATE TABLE `stu_master` (
  `stu_master_id` int(11) NOT NULL,
  `stu_master_stu_info_id` int(11) NOT NULL,
  `stu_master_user_id` int(11) DEFAULT NULL,
  `stu_master_nationality_id` int(11) DEFAULT NULL,
  `stu_master_category_id` int(11) DEFAULT NULL,
  `stu_master_course_id` int(11) NOT NULL,
  `stu_master_batch_id` int(11) NOT NULL,
  `stu_master_section_id` int(11) NOT NULL,
  `stu_master_stu_status_id` int(11) NOT NULL DEFAULT '0',
  `stu_master_stu_address_id` int(11) NOT NULL,
  `stu_master_spp_id` int(10) DEFAULT NULL,
  `stu_master_pay_id` int(10) DEFAULT NULL,
  `stu_master_income_id` int(10) DEFAULT NULL,
  `stu_master_costs_id` int(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_master`
--

INSERT INTO `stu_master` (`stu_master_id`, `stu_master_stu_info_id`, `stu_master_user_id`, `stu_master_nationality_id`, `stu_master_category_id`, `stu_master_course_id`, `stu_master_batch_id`, `stu_master_section_id`, `stu_master_stu_status_id`, `stu_master_stu_address_id`, `stu_master_spp_id`, `stu_master_pay_id`, `stu_master_income_id`, `stu_master_costs_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 67, NULL, NULL, NULL, 1, 1, 1, 0, 25, NULL, 0, NULL, 0, '2017-03-17 12:39:29', 1, NULL, NULL, 0),
(2, 68, NULL, NULL, NULL, 1, 1, 1, 1, 26, NULL, 0, NULL, 0, '2017-03-22 14:49:50', 1, NULL, NULL, 0),
(3, 69, NULL, NULL, NULL, 1, 1, 2, 2, 27, NULL, 0, NULL, 0, '2017-03-22 14:55:17', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stu_status`
--

CREATE TABLE `stu_status` (
  `stu_status_id` int(11) NOT NULL,
  `stu_status_name` varchar(50) NOT NULL,
  `stu_status_description` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_status`
--

INSERT INTO `stu_status` (`stu_status_id`, `stu_status_name`, `stu_status_description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'Rejoin', 'Rejoin', '2017-02-16 06:13:20', 1, '2017-02-23 00:00:00', 1, 0),
(2, 'Detain', 'Detain', '2017-02-16 06:13:20', 1, '2017-02-23 00:00:00', 1, 0),
(3, 'Pass Out', 'Pass Out', '2017-02-16 06:13:20', 1, '2017-02-23 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_login_id` varchar(65) NOT NULL,
  `user_password` varchar(150) NOT NULL,
  `user_type` char(2) NOT NULL,
  `is_block` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_login_id`, `user_password`, `user_type`, `is_block`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'admin', 'f6fdffe48c908deb0f4c3bd36c032e72', 'A', 0, '2017-02-16 09:57:17', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `bank_master`
--
ALTER TABLE `bank_master`
  ADD PRIMARY KEY (`bank_master_id`),
  ADD UNIQUE KEY `bank_master_name` (`bank_master_name`),
  ADD UNIQUE KEY `bank_alias` (`bank_alias`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_id`),
  ADD UNIQUE KEY `batch_name` (`batch_name`,`batch_course_id`),
  ADD UNIQUE KEY `batch_alias` (`batch_alias`),
  ADD KEY `batch_course_id` (`batch_course_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD UNIQUE KEY `city_name` (`city_name`,`city_state_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `city_state_id` (`city_state_id`),
  ADD KEY `city_country_id` (`city_country_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `country_name` (`country_name`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `course_name` (`course_name`,`course_code`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `document_category`
--
ALTER TABLE `document_category`
  ADD PRIMARY KEY (`doc_category_id`),
  ADD UNIQUE KEY `doc_category_name` (`doc_category_name`,`doc_category_user_type`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `emp_address`
--
ALTER TABLE `emp_address`
  ADD PRIMARY KEY (`emp_address_id`),
  ADD KEY `emp_cadd_city` (`emp_cadd_city`),
  ADD KEY `emp_cadd_state` (`emp_cadd_state`),
  ADD KEY `emp_cadd_country` (`emp_cadd_country`),
  ADD KEY `emp_padd_city` (`emp_padd_city`),
  ADD KEY `emp_padd_state` (`emp_padd_state`),
  ADD KEY `emp_padd_country` (`emp_padd_country`);

--
-- Indexes for table `emp_category`
--
ALTER TABLE `emp_category`
  ADD PRIMARY KEY (`emp_category_id`),
  ADD UNIQUE KEY `emp_category_name` (`emp_category_name`),
  ADD UNIQUE KEY `emp_category_alias` (`emp_category_alias`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `emp_department`
--
ALTER TABLE `emp_department`
  ADD PRIMARY KEY (`emp_department_id`),
  ADD UNIQUE KEY `emp_department_name` (`emp_department_name`),
  ADD UNIQUE KEY `emp_department_alias` (`emp_department_alias`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `emp_designation`
--
ALTER TABLE `emp_designation`
  ADD PRIMARY KEY (`emp_designation_id`),
  ADD UNIQUE KEY `emp_designation_name` (`emp_designation_name`),
  ADD UNIQUE KEY `emp_designation_alias` (`emp_designation_alias`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `emp_docs`
--
ALTER TABLE `emp_docs`
  ADD PRIMARY KEY (`emp_docs_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `emp_docs_emp_master_id` (`emp_docs_emp_master_id`);

--
-- Indexes for table `emp_info`
--
ALTER TABLE `emp_info`
  ADD PRIMARY KEY (`emp_info_id`),
  ADD UNIQUE KEY `emp_unique_id` (`emp_unique_id`),
  ADD UNIQUE KEY `emp_info_emp_master_id` (`emp_info_emp_master_id`),
  ADD UNIQUE KEY `emp_email_id` (`emp_email_id`),
  ADD UNIQUE KEY `emp_mobile_no` (`emp_mobile_no`),
  ADD UNIQUE KEY `emp_attendance_card_id` (`emp_attendance_card_id`),
  ADD KEY `emp_info_emp_master_id_fgn` (`emp_info_emp_master_id`);

--
-- Indexes for table `emp_master`
--
ALTER TABLE `emp_master`
  ADD PRIMARY KEY (`emp_master_id`),
  ADD UNIQUE KEY `emp_master_user_id` (`emp_master_user_id`),
  ADD UNIQUE KEY `emp_master_emp_info_id` (`emp_master_emp_info_id`),
  ADD KEY `emp_master_department_id` (`emp_master_department_id`),
  ADD KEY `emp_master_designation_id` (`emp_master_designation_id`),
  ADD KEY `emp_master_category_id` (`emp_master_category_id`),
  ADD KEY `emp_master_nationality_id` (`emp_master_nationality_id`),
  ADD KEY `emp_master_emp_address_id` (`emp_master_emp_address_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `emp_master_emp_info_id_frg` (`emp_master_emp_info_id`),
  ADD KEY `emp_master_user_id_frg` (`emp_master_user_id`);

--
-- Indexes for table `emp_status`
--
ALTER TABLE `emp_status`
  ADD PRIMARY KEY (`emp_status_id`),
  ADD UNIQUE KEY `emp_status_name` (`emp_status_name`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `fees_category_details`
--
ALTER TABLE `fees_category_details`
  ADD PRIMARY KEY (`fees_category_details_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `fees_details_category_id` (`fees_details_category_id`);

--
-- Indexes for table `fees_collect_category`
--
ALTER TABLE `fees_collect_category`
  ADD PRIMARY KEY (`fees_collect_category_id`),
  ADD UNIQUE KEY `fees_collect_name` (`fees_collect_name`,`fees_collect_batch_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `fees_collect_batch_id` (`fees_collect_batch_id`);

--
-- Indexes for table `fees_payment_transaction`
--
ALTER TABLE `fees_payment_transaction`
  ADD PRIMARY KEY (`fees_pay_tran_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `fees_pay_tran_bank_id` (`fees_pay_tran_bank_id`),
  ADD KEY `fees_pay_tran_collect_id` (`fees_pay_tran_collect_id`),
  ADD KEY `fees_pay_tran_stu_id` (`fees_pay_tran_stu_id`),
  ADD KEY `fees_pay_tran_batch_id` (`fees_pay_tran_batch_id`),
  ADD KEY `fees_pay_tran_course_id` (`fees_pay_tran_course_id`),
  ADD KEY `fees_pay_tran_section_id` (`fees_pay_tran_section_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_detail_id`),
  ADD KEY `login_user_id` (`login_user_id`);

--
-- Indexes for table `msg_of_day`
--
ALTER TABLE `msg_of_day`
  ADD PRIMARY KEY (`msg_of_day_id`),
  ADD UNIQUE KEY `msg_details` (`msg_details`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `national_holidays`
--
ALTER TABLE `national_holidays`
  ADD PRIMARY KEY (`national_holiday_id`),
  ADD UNIQUE KEY `national_holiday_name` (`national_holiday_name`,`national_holiday_date`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`nationality_id`),
  ADD UNIQUE KEY `nationality_name` (`nationality_name`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`org_id`),
  ADD UNIQUE KEY `org_name` (`org_name`),
  ADD UNIQUE KEY `org_alias` (`org_alias`),
  ADD UNIQUE KEY `org_id` (`org_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`costs_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`),
  ADD UNIQUE KEY `section_name` (`section_name`,`section_batch_id`),
  ADD KEY `section_batch_id` (`section_batch_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD UNIQUE KEY `state_name` (`state_name`,`state_country_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `state_country_id` (`state_country_id`);

--
-- Indexes for table `stu_address`
--
ALTER TABLE `stu_address`
  ADD PRIMARY KEY (`stu_address_id`),
  ADD KEY `stu_cadd_city` (`stu_cadd_city`),
  ADD KEY `stu_cadd_state` (`stu_cadd_state`),
  ADD KEY `stu_cadd_country` (`stu_cadd_country`),
  ADD KEY `stu_padd_city` (`stu_padd_city`),
  ADD KEY `stu_padd_state` (`stu_padd_state`),
  ADD KEY `stu_padd_country` (`stu_padd_country`);

--
-- Indexes for table `stu_category`
--
ALTER TABLE `stu_category`
  ADD PRIMARY KEY (`stu_category_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `stu_docs`
--
ALTER TABLE `stu_docs`
  ADD PRIMARY KEY (`stu_docs_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `stu_docs_stu_master_id` (`stu_docs_stu_master_id`),
  ADD KEY `stu_docs_category_id` (`stu_docs_category_id`);

--
-- Indexes for table `stu_guardians`
--
ALTER TABLE `stu_guardians`
  ADD PRIMARY KEY (`stu_guardian_id`),
  ADD UNIQUE KEY `guardian_email` (`guardian_email`),
  ADD KEY `guardia_stu_master_id` (`guardia_stu_master_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `stu_info`
--
ALTER TABLE `stu_info`
  ADD PRIMARY KEY (`stu_info_id`),
  ADD UNIQUE KEY `stu_unique_id` (`stu_unique_id`),
  ADD UNIQUE KEY `stu_email_id` (`stu_email_id`),
  ADD KEY `stu_info_stu_master_id` (`stu_info_stu_master_id`);

--
-- Indexes for table `stu_master`
--
ALTER TABLE `stu_master`
  ADD PRIMARY KEY (`stu_master_id`),
  ADD KEY `stu_master_nationality_id` (`stu_master_nationality_id`),
  ADD KEY `stu_master_category` (`stu_master_category_id`),
  ADD KEY `stu_master_course_id` (`stu_master_course_id`),
  ADD KEY `stu_master_batch_id` (`stu_master_batch_id`),
  ADD KEY `stu_master_section_id` (`stu_master_section_id`),
  ADD KEY `stu_master_stu_address_id` (`stu_master_stu_address_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `stu_master_stu_info_id_fng` (`stu_master_stu_info_id`),
  ADD KEY `stu_master_stu_info_id` (`stu_master_stu_info_id`) USING BTREE,
  ADD KEY `stu_master_user_id` (`stu_master_user_id`) USING BTREE;

--
-- Indexes for table `stu_status`
--
ALTER TABLE `stu_status`
  ADD PRIMARY KEY (`stu_status_id`),
  ADD UNIQUE KEY `stu_status_name` (`stu_status_name`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_login_id` (`user_login_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_master`
--
ALTER TABLE `bank_master`
  MODIFY `bank_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `document_category`
--
ALTER TABLE `document_category`
  MODIFY `doc_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `emp_address`
--
ALTER TABLE `emp_address`
  MODIFY `emp_address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_category`
--
ALTER TABLE `emp_category`
  MODIFY `emp_category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_department`
--
ALTER TABLE `emp_department`
  MODIFY `emp_department_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_designation`
--
ALTER TABLE `emp_designation`
  MODIFY `emp_designation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_docs`
--
ALTER TABLE `emp_docs`
  MODIFY `emp_docs_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_info`
--
ALTER TABLE `emp_info`
  MODIFY `emp_info_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_master`
--
ALTER TABLE `emp_master`
  MODIFY `emp_master_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_status`
--
ALTER TABLE `emp_status`
  MODIFY `emp_status_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fees_category_details`
--
ALTER TABLE `fees_category_details`
  MODIFY `fees_category_details_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fees_collect_category`
--
ALTER TABLE `fees_collect_category`
  MODIFY `fees_collect_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fees_payment_transaction`
--
ALTER TABLE `fees_payment_transaction`
  MODIFY `fees_pay_tran_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `msg_of_day`
--
ALTER TABLE `msg_of_day`
  MODIFY `msg_of_day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `national_holidays`
--
ALTER TABLE `national_holidays`
  MODIFY `national_holiday_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `nationality_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `income_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600;
--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `costs_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `stu_address`
--
ALTER TABLE `stu_address`
  MODIFY `stu_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `stu_category`
--
ALTER TABLE `stu_category`
  MODIFY `stu_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stu_docs`
--
ALTER TABLE `stu_docs`
  MODIFY `stu_docs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stu_guardians`
--
ALTER TABLE `stu_guardians`
  MODIFY `stu_guardian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `stu_info`
--
ALTER TABLE `stu_info`
  MODIFY `stu_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `stu_master`
--
ALTER TABLE `stu_master`
  MODIFY `stu_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `stu_status`
--
ALTER TABLE `stu_status`
  MODIFY `stu_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_category`
--
ALTER TABLE `emp_category`
  ADD CONSTRAINT `emp_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `emp_category_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`);
--
-- Database: `konveksi`
--
CREATE DATABASE IF NOT EXISTS `konveksi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `konveksi`;

-- --------------------------------------------------------

--
-- Table structure for table `accesory`
--

CREATE TABLE `accesory` (
  `id_accesory` int(20) NOT NULL,
  `nama_accesory` varchar(50) NOT NULL,
  `accesory_pelengkap` varchar(20) NOT NULL,
  `id_penjahit` int(11) NOT NULL,
  `quantity_accesory` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `no_order` bigint(100) NOT NULL,
  `nama_customer` varchar(200) NOT NULL,
  `part_number` int(100) NOT NULL,
  `jenis_potongan` varchar(200) NOT NULL,
  `size` varchar(2) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `tanggal_pesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cutting`
--

CREATE TABLE `cutting` (
  `tanggal_order` date NOT NULL,
  `no_order` int(100) NOT NULL,
  `part_number` int(11) NOT NULL,
  `jenis_potongan` varchar(100) NOT NULL,
  `size` int(20) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `id_tailor` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(20) NOT NULL,
  `nama_item` varchar(100) NOT NULL,
  `stock` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tailor`
--

CREATE TABLE `tailor` (
  `id_penjahit` int(20) NOT NULL,
  `nama_penjahit` varchar(100) NOT NULL,
  `alamat_penjahit` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `upah_borongan`
--

CREATE TABLE `upah_borongan` (
  `id_buruh` int(20) NOT NULL,
  `nama_buruh` varchar(50) NOT NULL,
  `job_finish` int(20) NOT NULL,
  `upah` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_management`
--

CREATE TABLE `user_management` (
  `user_id` int(20) NOT NULL,
  `user_login_id` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_type` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesory`
--
ALTER TABLE `accesory`
  ADD PRIMARY KEY (`id_accesory`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`no_order`);

--
-- Indexes for table `cutting`
--
ALTER TABLE `cutting`
  ADD PRIMARY KEY (`no_order`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tailor`
--
ALTER TABLE `tailor`
  ADD PRIMARY KEY (`id_penjahit`);

--
-- Indexes for table `upah_borongan`
--
ALTER TABLE `upah_borongan`
  ADD PRIMARY KEY (`id_buruh`);

--
-- Indexes for table `user_management`
--
ALTER TABLE `user_management`
  ADD PRIMARY KEY (`user_id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'nadiack', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"auth_assignment\",\"auth_item\",\"auth_item_child\",\"auth_rule\",\"bank_master\",\"batches\",\"biaya_pendaftaran\",\"city\",\"country\",\"courses\",\"document_category\",\"emp_address\",\"emp_category\",\"emp_department\",\"emp_designation\",\"emp_docs\",\"emp_info\",\"emp_master\",\"emp_status\",\"events\",\"fees_category_details\",\"fees_collect_category\",\"fees_payment_transaction\",\"languages\",\"login_details\",\"msg_of_day\",\"nationality\",\"national_holidays\",\"notice\",\"organization\",\"section\",\"spp\",\"state\",\"stu_address\",\"stu_category\",\"stu_docs\",\"stu_guardians\",\"stu_info\",\"stu_master\",\"stu_status\",\"users\"],\"table_structure[]\":[\"auth_assignment\",\"auth_item\",\"auth_item_child\",\"auth_rule\",\"bank_master\",\"batches\",\"biaya_pendaftaran\",\"city\",\"country\",\"courses\",\"document_category\",\"emp_address\",\"emp_category\",\"emp_department\",\"emp_designation\",\"emp_docs\",\"emp_info\",\"emp_master\",\"emp_status\",\"events\",\"fees_category_details\",\"fees_collect_category\",\"fees_payment_transaction\",\"languages\",\"login_details\",\"msg_of_day\",\"nationality\",\"national_holidays\",\"notice\",\"organization\",\"section\",\"spp\",\"state\",\"stu_address\",\"stu_category\",\"stu_docs\",\"stu_guardians\",\"stu_info\",\"stu_master\",\"stu_status\",\"users\"],\"table_data[]\":[\"auth_assignment\",\"auth_item\",\"auth_item_child\",\"auth_rule\",\"bank_master\",\"batches\",\"biaya_pendaftaran\",\"city\",\"country\",\"courses\",\"document_category\",\"emp_address\",\"emp_category\",\"emp_department\",\"emp_designation\",\"emp_docs\",\"emp_info\",\"emp_master\",\"emp_status\",\"events\",\"fees_category_details\",\"fees_collect_category\",\"fees_payment_transaction\",\"languages\",\"login_details\",\"msg_of_day\",\"nationality\",\"national_holidays\",\"notice\",\"organization\",\"section\",\"spp\",\"state\",\"stu_address\",\"stu_category\",\"stu_docs\",\"stu_guardians\",\"stu_info\",\"stu_master\",\"stu_status\",\"users\"],\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"excel_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_use_transaction\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'nadiabaru', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"auth_assignment\",\"auth_item\",\"auth_item_child\",\"auth_rule\",\"bank_master\",\"batches\",\"biaya_pendaftaran\",\"city\",\"country\",\"courses\",\"document_category\",\"emp_address\",\"emp_category\",\"emp_department\",\"emp_designation\",\"emp_docs\",\"emp_info\",\"emp_master\",\"emp_status\",\"events\",\"fees_category_details\",\"fees_collect_category\",\"fees_payment_transaction\",\"languages\",\"login_details\",\"msg_of_day\",\"nationality\",\"national_holidays\",\"notice\",\"organization\",\"pemasukan\",\"pengeluaran\",\"section\",\"spp\",\"state\",\"stu_address\",\"stu_category\",\"stu_docs\",\"stu_guardians\",\"stu_info\",\"stu_master\",\"stu_status\",\"users\"],\"table_structure[]\":[\"auth_assignment\",\"auth_item\",\"auth_item_child\",\"auth_rule\",\"bank_master\",\"batches\",\"biaya_pendaftaran\",\"city\",\"country\",\"courses\",\"document_category\",\"emp_address\",\"emp_category\",\"emp_department\",\"emp_designation\",\"emp_docs\",\"emp_info\",\"emp_master\",\"emp_status\",\"events\",\"fees_category_details\",\"fees_collect_category\",\"fees_payment_transaction\",\"languages\",\"login_details\",\"msg_of_day\",\"nationality\",\"national_holidays\",\"notice\",\"organization\",\"pemasukan\",\"pengeluaran\",\"section\",\"spp\",\"state\",\"stu_address\",\"stu_category\",\"stu_docs\",\"stu_guardians\",\"stu_info\",\"stu_master\",\"stu_status\",\"users\"],\"table_data[]\":[\"auth_assignment\",\"auth_item\",\"auth_item_child\",\"auth_rule\",\"bank_master\",\"batches\",\"biaya_pendaftaran\",\"city\",\"country\",\"courses\",\"document_category\",\"emp_address\",\"emp_category\",\"emp_department\",\"emp_designation\",\"emp_docs\",\"emp_info\",\"emp_master\",\"emp_status\",\"events\",\"fees_category_details\",\"fees_collect_category\",\"fees_payment_transaction\",\"languages\",\"login_details\",\"msg_of_day\",\"nationality\",\"national_holidays\",\"notice\",\"organization\",\"pemasukan\",\"pengeluaran\",\"section\",\"spp\",\"state\",\"stu_address\",\"stu_category\",\"stu_docs\",\"stu_guardians\",\"stu_info\",\"stu_master\",\"stu_status\",\"users\"],\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"excel_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_use_transaction\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'database', 'konveksi', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"accesory\",\"customer\",\"cutting\",\"item\",\"tailor\",\"upah_borongan\",\"user_management\"],\"table_structure[]\":[\"accesory\",\"customer\",\"cutting\",\"item\",\"tailor\",\"upah_borongan\",\"user_management\"],\"table_data[]\":[\"accesory\",\"customer\",\"cutting\",\"item\",\"tailor\",\"upah_borongan\",\"user_management\"],\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"excel_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_use_transaction\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(4, 'root', 'server', 'nadiafix', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"edu6baru\",\"edutesbaru\",\"konveksi\",\"phpmyadmin\",\"test\"],\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"excel_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_use_transaction\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"edutesbaru\",\"table\":\"stu_master\"},{\"db\":\"edutesbaru\",\"table\":\"biaya_pendaftaran\"},{\"db\":\"edutesbaru\",\"table\":\"pengeluaran\"},{\"db\":\"edutesbaru\",\"table\":\"pemasukan\"},{\"db\":\"edutesbaru\",\"table\":\"spp\"},{\"db\":\"edu6baru\",\"table\":\"pengeluaran\"},{\"db\":\"edu6baru\",\"table\":\"pemasukan\"},{\"db\":\"edutesbaru\",\"table\":\"stu_info\"},{\"db\":\"edutesbaru\",\"table\":\"courses\"},{\"db\":\"edu6baru\",\"table\":\"stu_master\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-03-08 08:41:03', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
