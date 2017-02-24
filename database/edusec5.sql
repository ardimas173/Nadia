-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2017 at 04:34 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edusec5`
--

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
(1, 'TK-Batch-01', 1, 'tk-batch-01', '2015-06-23', '2016-12-23', '2015-06-24 00:00:00', 1, '2017-02-23 00:00:00', 1, 0);

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
(1, 'TK', 'TK-01', 'tk-01', '2015-06-24 00:00:00', 1, '2017-02-23 00:00:00', 1, 0);

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
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 1, 1, '2017-02-16 09:58:49', NULL, '::1'),
(2, 1, 1, '2017-02-16 10:27:39', NULL, '::1'),
(3, 1, 1, '2017-02-16 12:27:58', NULL, '::1'),
(4, 1, 1, '2017-02-17 10:58:10', NULL, '::1'),
(5, 1, 1, '2017-02-17 16:00:47', NULL, '::1'),
(6, 1, 1, '2017-02-20 08:33:44', NULL, '::1'),
(7, 1, 1, '2017-02-20 13:19:07', NULL, '::1'),
(8, 1, 1, '2017-02-22 10:13:54', NULL, '::1'),
(9, 1, 1, '2017-02-23 09:56:10', NULL, '::1');

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
(1, 'TK-Section-01', 1, 60, '2015-06-24 00:00:00', 1, '2017-02-23 00:00:00', 1, 0);

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
  `stu_cadd_phone_no` int(25) DEFAULT NULL,
  `stu_padd` varchar(255) DEFAULT NULL,
  `stu_padd_city` int(11) DEFAULT NULL,
  `stu_padd_state` int(11) DEFAULT NULL,
  `stu_padd_country` int(11) DEFAULT NULL,
  `stu_padd_pincode` int(6) DEFAULT NULL,
  `stu_padd_house_no` varchar(25) DEFAULT NULL,
  `stu_padd_phone_no` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

--
-- Dumping data for table `stu_guardians`
--

INSERT INTO `stu_guardians` (`stu_guardian_id`, `guardian_name`, `guardian_relation`, `guardian_mobile_no`, `guardian_phone_no`, `guardian_qualification`, `guardian_occupation`, `guardian_income`, `guardian_email`, `guardian_home_address`, `guardian_office_address`, `is_emg_contact`, `guardia_stu_master_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_status`) VALUES
(1, 'kevin bruyne', 'ammmo', 81277653973, '081277653973', '', 'asdadasd', '$500000', 'a@a.com', 'batam', 'batam', 1, 6, '2017-02-20 11:55:06', 1, NULL, NULL, 0),
(2, 'kevin bruyne', 'ammmo', 81277653973, 'a', '', 'a', '$500000', 'a', 'a', 'a', 1, 7, '2017-02-20 14:02:49', 1, NULL, NULL, 0);

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
  `stu_info_stu_master_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_info`
--

INSERT INTO `stu_info` (`stu_info_id`, `stu_unique_id`, `stu_first_name`, `stu_middle_name`, `stu_last_name`, `stu_address`, `stu_gender`, `stu_dob`, `stu_email_id`, `stu_bloodgroup`, `stu_birthplace`, `stu_religion`, `stu_admission_date`, `stu_photo`, `stu_languages`, `stu_mobile_no`, `stu_info_stu_master_id`) VALUES
(2, 2, 'Adil', '', 'Felix', 'Perum. Bumi Kencana Blok H No. 12', 'MALE', '0000-00-00', '', 'Unknown', 'batam', 'Kristen', '0000-00-00', '', 'Indonesia', 82169701165, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stu_master`
--

CREATE TABLE `stu_master` (
  `stu_master_id` int(11) NOT NULL,
  `stu_master_stu_info_id` int(11) NOT NULL,
  `stu_master_user_id` int(11) NOT NULL,
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
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(2, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(3, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(4, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(5, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(6, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(7, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(8, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(9, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(10, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(11, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(12, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(13, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1),
(14, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1899-12-31 00:00:00', 1, '1899-12-31 00:00:00', 1, 1);

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
(1, 'admin', 'f6fdffe48c908deb0f4c3bd36c032e72', 'A', 0, '2017-02-16 09:57:17', 1, NULL, NULL),
(2, 'admin1', 'abcbbfaea4e618fa7f88cb6b47c6969c', 'S', 0, '2017-02-16 13:23:50', 1, NULL, NULL),
(3, 'admin2', 'af8eb328301d219cfd1d50e6c6a48f58', 'S', 0, '2017-02-17 16:38:57', 1, NULL, NULL),
(4, 'admin3', '7169390683d2b222ba778ca6374b59d3', 'S', 0, '2017-02-17 16:57:37', 1, NULL, NULL),
(5, 'admin4', 'dfa5f43cb476ef890a83010f0da7c6b0', 'S', 0, '2017-02-17 17:02:05', 1, NULL, NULL),
(6, 'admin5', '3cb1add04670b8ccbefdf6142aa1dc0b', 'S', 0, '2017-02-20 08:35:39', 1, NULL, NULL),
(7, 'admin6', 'b48d62f30f50c2c191ab949186c532d3', 'S', 0, '2017-02-20 11:23:19', 1, NULL, NULL),
(8, 'admin7', '908850562f5e1ad058c9bc1481a6203a', 'S', 0, '2017-02-20 14:02:11', 1, NULL, NULL),
(9, 'admin8', '93e900918a9e9fa19b75c1664e2b4760', 'S', 0, '2017-02-22 15:37:43', 1, NULL, NULL);

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
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`nationality_id`),
  ADD UNIQUE KEY `nationality_name` (`nationality_name`),
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
  MODIFY `bank_master_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `doc_category_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `fees_category_details_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fees_collect_category`
--
ALTER TABLE `fees_collect_category`
  MODIFY `fees_collect_category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fees_payment_transaction`
--
ALTER TABLE `fees_payment_transaction`
  MODIFY `fees_pay_tran_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `msg_of_day`
--
ALTER TABLE `msg_of_day`
  MODIFY `msg_of_day_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `nationality_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `national_holidays`
--
ALTER TABLE `national_holidays`
  MODIFY `national_holiday_id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `stu_address`
--
ALTER TABLE `stu_address`
  MODIFY `stu_address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stu_category`
--
ALTER TABLE `stu_category`
  MODIFY `stu_category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stu_docs`
--
ALTER TABLE `stu_docs`
  MODIFY `stu_docs_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stu_guardians`
--
ALTER TABLE `stu_guardians`
  MODIFY `stu_guardian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stu_info`
--
ALTER TABLE `stu_info`
  MODIFY `stu_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stu_master`
--
ALTER TABLE `stu_master`
  MODIFY `stu_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `stu_status`
--
ALTER TABLE `stu_status`
  MODIFY `stu_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_category`
--
ALTER TABLE `emp_category`
  ADD CONSTRAINT `emp_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `emp_category_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
