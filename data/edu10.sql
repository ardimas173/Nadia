-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 17, 2017 at 08:56 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edu10`
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
(72, 1, 1, '2017-03-17 12:38:27', NULL, '::1');

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
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(67, 25, 'J', 'J', 'J', '', 'MALE', '2017-03-17', NULL, 'Unknown', '', '', '2017-03-17', NULL, NULL, NULL, 1, '');

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
(1, 67, NULL, NULL, NULL, 1, 1, 1, 0, 25, '2017-03-17 12:39:29', 1, NULL, NULL, 0);

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
  MODIFY `login_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `msg_of_day`
--
ALTER TABLE `msg_of_day`
  MODIFY `msg_of_day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `stu_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
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
  MODIFY `stu_guardian_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stu_info`
--
ALTER TABLE `stu_info`
  MODIFY `stu_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `stu_master`
--
ALTER TABLE `stu_master`
  MODIFY `stu_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
