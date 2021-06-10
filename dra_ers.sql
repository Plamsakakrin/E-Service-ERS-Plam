-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 12:22 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dra_ers`
--

-- --------------------------------------------------------

--
-- Table structure for table `ers_approved_memo`
--

CREATE TABLE `ers_approved_memo` (
  `id` int(11) NOT NULL,
  `form1id2` int(11) NOT NULL,
  `memo_detail` varchar(500) CHARACTER SET utf8 NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_cust_sat_result`
--

CREATE TABLE `ers_cust_sat_result` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cust_sat_formid` int(11) NOT NULL,
  `cust_sat_form_detailid` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_education`
--

CREATE TABLE `ers_education` (
  `id` int(11) NOT NULL,
  `ers_form1id` int(11) NOT NULL,
  `be_year` int(11) NOT NULL,
  `institute_name` varchar(500) CHARACTER SET utf8 NOT NULL,
  `study_period` int(11) NOT NULL,
  `degree` varchar(500) CHARACTER SET utf8 NOT NULL,
  `remark` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_follower`
--

CREATE TABLE `ers_follower` (
  `id` int(11) NOT NULL,
  `ers_form1id` int(11) NOT NULL,
  `prefix_id` int(11) NOT NULL,
  `first_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_form1`
--

CREATE TABLE `ers_form1` (
  `id` int(11) NOT NULL,
  `ers_form1` int(11) NOT NULL,
  `request_code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `request_date` date NOT NULL,
  `prefixid` int(11) NOT NULL,
  `first_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `age` int(11) NOT NULL,
  `nationalityid` int(11) NOT NULL,
  `raceid` int(11) NOT NULL,
  `religionid` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `birth_provinceid` int(11) NOT NULL,
  `birth_countryid` int(11) NOT NULL,
  `father_prefixid` int(11) NOT NULL,
  `father_first_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `father_last_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `mother_prefixid` int(11) NOT NULL,
  `mother_first_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `mother_last_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `spouse_prefixid` int(11) NOT NULL,
  `spouse_first_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `spouse_last_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `TotalChildren` int(11) NOT NULL,
  `BoyChildren` int(11) NOT NULL,
  `GirlChildren` int(11) NOT NULL,
  `current_position` int(11) NOT NULL,
  `main_orgid` int(11) NOT NULL,
  `sub_orgid` int(11) NOT NULL,
  `passport_number` varchar(200) CHARACTER SET utf8 NOT NULL,
  `passport_issue_by` varchar(200) CHARACTER SET utf8 NOT NULL,
  `passport_type` int(11) NOT NULL,
  `adviser` varchar(200) CHARACTER SET utf8 NOT NULL,
  `objective` varchar(500) CHARACTER SET utf8 NOT NULL,
  `use_budget_of` varchar(500) NOT NULL,
  `thailand_resident` varchar(500) CHARACTER SET utf8 NOT NULL,
  `street` varchar(500) CHARACTER SET utf8 NOT NULL,
  `province_id` int(11) NOT NULL,
  `districtid` int(11) NOT NULL,
  `sub_districtid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_form1_file_attachment`
--

CREATE TABLE `ers_form1_file_attachment` (
  `id` int(11) NOT NULL,
  `ers_form1id` int(11) NOT NULL,
  `document_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `file_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `file_type` int(11) NOT NULL,
  `file_path` varchar(200) CHARACTER SET utf8 NOT NULL,
  `file_size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_form1_flow_status`
--

CREATE TABLE `ers_form1_flow_status` (
  `id` int(11) NOT NULL,
  `ers_form1id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_typeid` int(11) NOT NULL,
  `flow_statusid` int(11) NOT NULL,
  `status_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_form2`
--

CREATE TABLE `ers_form2` (
  `id` int(11) NOT NULL,
  `form1id` int(11) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `main_orgid` int(11) DEFAULT NULL,
  `sub_orgid` int(11) DEFAULT NULL,
  `org_leaderid` int(11) DEFAULT NULL,
  `mainorg_th` text DEFAULT NULL,
  `mainorg_en` text DEFAULT NULL,
  `history_org` text NOT NULL,
  `under_unit` varchar(200) CHARACTER SET utf8 NOT NULL,
  `religion_detail1` varchar(200) CHARACTER SET utf8 NOT NULL,
  `religion_detail2` varchar(200) CHARACTER SET utf8 NOT NULL,
  `office_address` varchar(500) NOT NULL,
  `office_street` varchar(500) NOT NULL,
  `office_provinceid` int(11) NOT NULL,
  `office_districtid` int(11) DEFAULT NULL,
  `office_subdistrictid` int(11) NOT NULL,
  `office_posecode` int(11) NOT NULL,
  `total_member` int(11) DEFAULT NULL,
  `male_member` int(11) DEFAULT NULL,
  `female_member` int(11) DEFAULT NULL,
  `evangelist_number_limit` int(11) DEFAULT NULL,
  `evangelist_number` int(11) DEFAULT NULL,
  `doctor_number` int(11) DEFAULT NULL,
  `nurse_number` int(11) DEFAULT NULL,
  `other_number` int(11) DEFAULT NULL,
  `current_evangelist_sq` int(11) DEFAULT NULL,
  `year_plan_period` int(11) DEFAULT NULL,
  `prefix` int(11) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `race` int(11) DEFAULT NULL,
  `nationality` int(11) DEFAULT NULL,
  `religion` int(11) DEFAULT NULL,
  `old` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `street` varchar(500) DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL,
  `districtid` int(11) DEFAULT NULL,
  `sub_districtid` int(11) DEFAULT NULL,
  `posecode` int(11) DEFAULT NULL,
  `guarantee_by` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `guarantee_position` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `guarantee_date` date DEFAULT NULL,
  `doc_status` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `ers_form2`
--

INSERT INTO `ers_form2` (`id`, `form1id`, `request_date`, `main_orgid`, `sub_orgid`, `org_leaderid`, `mainorg_th`, `mainorg_en`, `history_org`, `under_unit`, `religion_detail1`, `religion_detail2`, `office_address`, `office_street`, `office_provinceid`, `office_districtid`, `office_subdistrictid`, `office_posecode`, `total_member`, `male_member`, `female_member`, `evangelist_number_limit`, `evangelist_number`, `doctor_number`, `nurse_number`, `other_number`, `current_evangelist_sq`, `year_plan_period`, `prefix`, `fname`, `lname`, `race`, `nationality`, `religion`, `old`, `address`, `street`, `provinceid`, `districtid`, `sub_districtid`, `posecode`, `guarantee_by`, `guarantee_position`, `guarantee_date`, `doc_status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 'ชื่อองค์การทางศาสนา (1)', 'ชื่อองค์การทางศาสนา (1)', 'ประวัติองค์การศาสนา และความสัมพันธ์กับองค์การทางศาสนา\r\nในต่างประเทศ', 'สังกัดอยู่ใน', 'ทำงานด้านการสอนศาสนาคริสต์ศาสนา', 'นิกาย', 'สำนัก1', 'ถนน1', 1, 43, 223, 11, 20, 10, 10, 40, 10, 10, 10, 10, NULL, 2, 1, 'นาม1', 'นามสกุล1', 1, 1, 1, 10, 'test', 'test', 1, 30, 183, 111, NULL, NULL, NULL, 1, 1, '2021-06-10 17:00:30', 1, '2021-06-10 17:04:10'),
(2, NULL, NULL, NULL, NULL, NULL, 'ชื่อองค์การทางศาสนา (2)', 'ชื่อองค์การทางศาสนา (2)', 'ประวัติองค์การศาสนา และความสัมพันธ์กับองค์การทางศาสนา\r\nในต่างประเทศ', 'ซึ่งสังกัดอยู่ใน', 'ทำงานด้านการสอนศาสนาคริสต์ศาสนา', 'นิกาย', 'โดยสำนักงานตั้งอยู่เลขที่', 'ถนน', 1, 33, 195, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ทดสอบ', 'ทดสอบ', 0, 0, 0, NULL, NULL, NULL, 1, 48, 233, NULL, NULL, NULL, NULL, 1, 1, '2021-06-10 17:05:13', 1, '2021-06-10 17:07:26'),
(3, NULL, NULL, NULL, NULL, NULL, 'ชื่อองค์การทางศาสนา (3)', 'ชื่อองค์การทางศาสนา (3)', 'test', 'test', 'test', 'test', 'test', 'test', 1, 43, 223, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test', 'test', 0, 0, 0, NULL, NULL, NULL, 1, 33, 192, 44, NULL, NULL, NULL, 1, 1, '2021-06-10 17:06:33', 1, '2021-06-10 17:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `ers_form3`
--

CREATE TABLE `ers_form3` (
  `id` int(11) NOT NULL,
  `form1id` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `last_date_in_thailand` date NOT NULL,
  `last_date_visa_approved_from` date NOT NULL,
  `last_date_visa_approved_to` date NOT NULL,
  `round4_month_number` int(11) NOT NULL,
  `round4_start_month` int(11) NOT NULL,
  `round4_end_month` int(11) NOT NULL,
  `round4_detail` varchar(500) CHARACTER SET utf8 NOT NULL,
  `request_by` varchar(200) CHARACTER SET utf8 NOT NULL,
  `guarantee_by` varchar(200) CHARACTER SET utf8 NOT NULL,
  `guarantee_position` varchar(200) CHARACTER SET utf8 NOT NULL,
  `guarantee_date` date NOT NULL,
  `doc_status` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_form4`
--

CREATE TABLE `ers_form4` (
  `id` int(11) NOT NULL,
  `form1id` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `main_orgid` int(11) NOT NULL,
  `sub_orgid` int(11) NOT NULL,
  `org_leaderid` int(11) NOT NULL,
  `request_by` varchar(200) CHARACTER SET utf8 NOT NULL,
  `guarantee_by` varchar(200) CHARACTER SET utf8 NOT NULL,
  `guarantee_date` date NOT NULL,
  `doc_status` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_org_action`
--

CREATE TABLE `ers_org_action` (
  `id` int(11) NOT NULL,
  `ers_form2id` int(11) NOT NULL,
  `action` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `ers_org_action`
--

INSERT INTO `ers_org_action` (`id`, `ers_form2id`, `action`) VALUES
(1, 1, 'แนวการดำเนินของแผนงานหรือโครงการ1'),
(2, 1, 'แนวการดำเนินของแผนงานหรือโครงการ2');

-- --------------------------------------------------------

--
-- Table structure for table `ers_org_income_source`
--

CREATE TABLE `ers_org_income_source` (
  `id` int(11) NOT NULL,
  `ers_form2id` int(11) NOT NULL,
  `incomesource` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `ers_org_income_source`
--

INSERT INTO `ers_org_income_source` (`id`, `ers_form2id`, `incomesource`) VALUES
(1, 1, 'เงินทุนและที่มาของรายได้1'),
(2, 1, 'เงินทุนและที่มาของรายได้2');

-- --------------------------------------------------------

--
-- Table structure for table `ers_org_longterm_plan`
--

CREATE TABLE `ers_org_longterm_plan` (
  `id` int(11) NOT NULL,
  `ers_form2id` int(11) DEFAULT NULL,
  `plan_type` int(11) DEFAULT NULL,
  `plan_detail` varchar(500) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `ers_org_longterm_plan`
--

INSERT INTO `ers_org_longterm_plan` (`id`, `ers_form2id`, `plan_type`, `plan_detail`) VALUES
(1, 1, 1, 'แผนงาน1'),
(2, 1, 2, 'แผนงาน2');

-- --------------------------------------------------------

--
-- Table structure for table `ers_org_objective`
--

CREATE TABLE `ers_org_objective` (
  `id` int(11) NOT NULL,
  `ers_form2id` int(11) DEFAULT NULL,
  `objective` varchar(500) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `ers_org_objective`
--

INSERT INTO `ers_org_objective` (`id`, `ers_form2id`, `objective`) VALUES
(1, 1, 'วัตถุประสงค์ของแผนงานหรือโครงการ1'),
(2, 1, 'วัตถุประสงค์ของแผนงานหรือโครงการ2');

-- --------------------------------------------------------

--
-- Table structure for table `ers_request_history`
--

CREATE TABLE `ers_request_history` (
  `id` int(11) NOT NULL,
  `ers_form1id` int(11) NOT NULL,
  `request_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_request_objective`
--

CREATE TABLE `ers_request_objective` (
  `id` int(11) NOT NULL,
  `ers_form1id` int(11) NOT NULL,
  `objective` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_request_plan`
--

CREATE TABLE `ers_request_plan` (
  `id` int(11) NOT NULL,
  `ers_form1id` int(11) NOT NULL,
  `plan_type` int(11) NOT NULL,
  `plan_detail` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_request_reason`
--

CREATE TABLE `ers_request_reason` (
  `id` int(11) NOT NULL,
  `ers_form1id` int(11) NOT NULL,
  `reason_detail` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_thailand_stay_history`
--

CREATE TABLE `ers_thailand_stay_history` (
  `id` int(11) NOT NULL,
  `ers_form1id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `details` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_work_area`
--

CREATE TABLE `ers_work_area` (
  `id` int(11) NOT NULL,
  `ers_form1id` int(11) NOT NULL,
  `work_area_sub_disrictid` int(11) NOT NULL,
  `work_area_disrictid` int(11) NOT NULL,
  `work_area_provinceid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_work_area_plan`
--

CREATE TABLE `ers_work_area_plan` (
  `id` int(11) NOT NULL,
  `ers_form1id` int(11) NOT NULL,
  `work_area_sub_disrictid` int(11) NOT NULL,
  `work_area_disrictid` int(11) NOT NULL,
  `work_area_provinceid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_work_permit_flow_status`
--

CREATE TABLE `ers_work_permit_flow_status` (
  `id` int(11) NOT NULL,
  `ers_work_permit_requestid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_typeid` int(11) NOT NULL,
  `flow_statusid` int(11) NOT NULL,
  `status_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `ers_work_permit_request`
--

CREATE TABLE `ers_work_permit_request` (
  `id` int(11) NOT NULL,
  `form1id` int(11) NOT NULL,
  `ref_work_permit_requestid` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `work_permit_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `former_work_permit_expire` date NOT NULL,
  `work_permit_expire_request` date NOT NULL,
  `detail` varchar(500) CHARACTER SET utf8 NOT NULL,
  `request_by` varchar(200) CHARACTER SET utf8 NOT NULL,
  `guarantee_by` varchar(200) CHARACTER SET utf8 NOT NULL,
  `guarantee_position` varchar(200) CHARACTER SET utf8 NOT NULL,
  `guarantee_date` date NOT NULL,
  `is_renew` int(11) NOT NULL,
  `doc_status` int(11) NOT NULL,
  `approved_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `remark` varchar(500) CHARACTER SET utf8 NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_loginhistorylog`
--

CREATE TABLE `log_loginhistorylog` (
  `id` int(11) NOT NULL,
  `IPAddress` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Action` int(11) NOT NULL,
  `ActionDateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mt_country`
--

CREATE TABLE `mt_country` (
  `id` int(11) NOT NULL,
  `name_th` varchar(200) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(200) CHARACTER SET utf8 NOT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `mt_country`
--

INSERT INTO `mt_country` (`id`, `name_th`, `name_en`, `is_active`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, '\0\0B\0\0\0\0#\0\0\0\08\0\0@\0\0\0\0*', '\0\0B\0\0\0\0#\0\0\0\08\0\0@\0\0\0\0*', 1, 1, '2021-05-19 15:34:32', 1, '2021-05-19 15:34:32'),
(2, '\0\0@\0\0\0\0@\0\0\0\0-\0\0#\0\0L\0\0A\0\0%\0\0\0\0\0\0L', '\0\0@\0\0\0\0@\0\0\0\0-\0\0#\0\0L\0\0A\0\0%\0\0\0\0\0\0L', 1, 1, '2021-05-19 15:34:48', 1, '2021-05-19 15:34:48'),
(3, '\0\0@\0\0\"\0\0-\0\0#\0\0!\0\0\0\05', '\0\0@\0\0\"\0\0-\0\0#\0\0!\0\0\0\05', 1, 1, '2021-05-19 15:35:04', 1, '2021-05-19 15:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `mt_cust_sat_form`
--

CREATE TABLE `mt_cust_sat_form` (
  `id` int(11) NOT NULL,
  `form_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `mt_cust_sat_form_detail`
--

CREATE TABLE `mt_cust_sat_form_detail` (
  `id` int(11) NOT NULL,
  `cust_sat_formid` int(11) NOT NULL,
  `stion_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `mt_district`
--

CREATE TABLE `mt_district` (
  `id` int(5) NOT NULL,
  `name_th` varchar(150) NOT NULL,
  `name_en` text NOT NULL,
  `province_id` int(5) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mt_district`
--

INSERT INTO `mt_district` (`id`, `name_th`, `name_en`, `province_id`) VALUES
(1, 'พระนคร', 'พระนคร   ', 1),
(2, 'ดุสิต', 'ดุสิต   ', 1),
(3, 'หนองจอก', 'หนองจอก   ', 1),
(4, 'บางรัก', 'บางรัก   ', 1),
(5, 'บางเขน', 'บางเขน   ', 1),
(6, 'บางกะปิ', 'บางกะปิ   ', 1),
(7, 'ปทุมวัน', 'ปทุมวัน   ', 1),
(8, 'ป้อมปราบศัตรูพ่าย', 'ป้อมปราบศัตรูพ่าย   ', 1),
(9, 'พระโขนง', 'พระโขนง   ', 1),
(10, 'มีนบุรี', 'มีนบุรี   ', 1),
(11, 'ลาดกระบัง', 'ลาดกระบัง   ', 1),
(12, 'ยานนาวา', 'ยานนาวา   ', 1),
(13, 'สัมพันธวงศ์', 'สัมพันธวงศ์   ', 1),
(14, 'พญาไท', 'พญาไท   ', 1),
(15, 'ธนบุรี', 'ธนบุรี   ', 1),
(16, 'บางกอกใหญ่', 'บางกอกใหญ่   ', 1),
(17, 'ห้วยขวาง', 'ห้วยขวาง   ', 1),
(18, 'คลองสาน', 'คลองสาน   ', 1),
(19, 'ตลิ่งชัน', 'ตลิ่งชัน   ', 1),
(20, 'บางกอกน้อย', 'บางกอกน้อย   ', 1),
(21, 'บางขุนเทียน', 'บางขุนเทียน   ', 1),
(22, 'ภาษีเจริญ', 'ภาษีเจริญ   ', 1),
(23, 'หนองแขม', 'หนองแขม   ', 1),
(24, 'ราษฎร์บูรณะ', 'ราษฎร์บูรณะ   ', 1),
(25, 'บางพลัด', 'บางพลัด   ', 1),
(26, 'ดินแดง', 'ดินแดง   ', 1),
(27, 'บึงกุ่ม', 'บึงกุ่ม   ', 1),
(28, 'สาทร', 'สาทร   ', 1),
(29, 'บางซื่อ', 'บางซื่อ   ', 1),
(30, 'จตุจักร', 'จตุจักร   ', 1),
(31, 'บางคอแหลม', 'บางคอแหลม   ', 1),
(32, 'ประเวศ', 'ประเวศ   ', 1),
(33, 'คลองเตย', 'คลองเตย   ', 1),
(34, 'สวนหลวง', 'สวนหลวง   ', 1),
(35, 'จอมทอง', 'จอมทอง   ', 1),
(36, 'ดอนเมือง', 'ดอนเมือง   ', 1),
(37, 'ราชเทวี', 'ราชเทวี   ', 1),
(38, 'ลาดพร้าว', 'ลาดพร้าว   ', 1),
(39, 'วัฒนา', 'วัฒนา   ', 1),
(40, 'บางแค', 'บางแค   ', 1),
(41, 'หลักสี่', 'หลักสี่   ', 1),
(42, 'สายไหม', 'สายไหม   ', 1),
(43, 'คันนายาว', 'คันนายาว   ', 1),
(44, 'สะพานสูง', 'สะพานสูง   ', 1),
(45, 'วังทองหลาง', 'วังทองหลาง   ', 1),
(46, 'คลองสามวา', 'คลองสามวา   ', 1),
(47, 'บางนา', 'บางนา   ', 1),
(48, 'ทวีวัฒนา', 'ทวีวัฒนา   ', 1),
(49, 'ทุ่งครุ', 'ทุ่งครุ   ', 1),
(50, 'บางบอน', 'บางบอน   ', 1),
(51, 'บ้านทะวาย', '*บ้านทะวาย   ', 1),
(52, 'เมืองสมุทรปราการ', 'เมืองสมุทรปราการ   ', 2),
(53, 'บางบ่อ', 'บางบ่อ   ', 2),
(54, 'บางพลี', 'บางพลี   ', 2),
(55, 'พระประแดง', 'พระประแดง   ', 2),
(56, 'พระสมุทรเจดีย์', 'พระสมุทรเจดีย์   ', 2),
(57, 'บางเสาธง', 'บางเสาธง   ', 2),
(58, 'เมืองนนทบุรี', 'เมืองนนทบุรี   ', 3),
(59, 'บางกรวย', 'บางกรวย   ', 3),
(60, 'บางใหญ่', 'บางใหญ่   ', 3),
(61, 'บางบัวทอง', 'บางบัวทอง   ', 3),
(62, 'ไทรน้อย', 'ไทรน้อย   ', 3),
(63, 'ปากเกร็ด', 'ปากเกร็ด   ', 3),
(64, 'เทศบาลนครนนทบุรี (สาขาแขวงท่าทราย)', 'เทศบาลนครนนทบุรี (สาขาแขวงท่าทราย)*   ', 3),
(65, 'เทศบาลเมืองปากเกร็ด', 'เทศบาลเมืองปากเกร็ด*   ', 3),
(66, 'เมืองปทุมธานี', 'เมืองปทุมธานี   ', 4),
(67, 'คลองหลวง', 'คลองหลวง   ', 4),
(68, 'ธัญบุรี', 'ธัญบุรี   ', 4),
(69, 'หนองเสือ', 'หนองเสือ   ', 4),
(70, 'ลาดหลุมแก้ว', 'ลาดหลุมแก้ว   ', 4),
(71, 'ลำลูกกา', 'ลำลูกกา   ', 4),
(72, 'สามโคก', 'สามโคก   ', 4),
(73, 'ลำลูกกา (สาขาตำบลคูคต)', 'ลำลูกกา (สาขาตำบลคูคต)*   ', 4),
(74, 'พระนครศรีอยุธยา', 'พระนครศรีอยุธยา   ', 5),
(75, 'ท่าเรือ', 'ท่าเรือ   ', 5),
(76, 'นครหลวง', 'นครหลวง   ', 5),
(77, 'บางไทร', 'บางไทร   ', 5),
(78, 'บางบาล', 'บางบาล   ', 5),
(79, 'บางปะอิน', 'บางปะอิน   ', 5),
(80, 'บางปะหัน', 'บางปะหัน   ', 5),
(81, 'ผักไห่', 'ผักไห่   ', 5),
(82, 'ภาชี', 'ภาชี   ', 5),
(83, 'ลาดบัวหลวง', 'ลาดบัวหลวง   ', 5),
(84, 'วังน้อย', 'วังน้อย   ', 5),
(85, 'เสนา', 'เสนา   ', 5),
(86, 'บางซ้าย', 'บางซ้าย   ', 5),
(87, 'อุทัย', 'อุทัย   ', 5),
(88, 'มหาราช', 'มหาราช   ', 5),
(89, 'บ้านแพรก', 'บ้านแพรก   ', 5),
(90, 'เมืองอ่างทอง', 'เมืองอ่างทอง   ', 6),
(91, 'ไชโย', 'ไชโย   ', 6),
(92, 'ป่าโมก', 'ป่าโมก   ', 6),
(93, 'โพธิ์ทอง', 'โพธิ์ทอง   ', 6),
(94, 'แสวงหา', 'แสวงหา   ', 6),
(95, 'วิเศษชัยชาญ', 'วิเศษชัยชาญ   ', 6),
(96, 'สามโก้', 'สามโก้   ', 6),
(97, 'เมืองลพบุรี', 'เมืองลพบุรี   ', 7),
(98, 'พัฒนานิคม', 'พัฒนานิคม   ', 7),
(99, 'โคกสำโรง', 'โคกสำโรง   ', 7),
(100, 'ชัยบาดาล', 'ชัยบาดาล   ', 7),
(101, 'ท่าวุ้ง', 'ท่าวุ้ง   ', 7),
(102, 'บ้านหมี่', 'บ้านหมี่   ', 7),
(103, 'ท่าหลวง', 'ท่าหลวง   ', 7),
(104, 'สระโบสถ์', 'สระโบสถ์   ', 7),
(105, 'โคกเจริญ', 'โคกเจริญ   ', 7),
(106, 'ลำสนธิ', 'ลำสนธิ   ', 7),
(107, 'หนองม่วง', 'หนองม่วง   ', 7),
(108, 'อ.บ้านเช่า  จ.ลพบุรี', '*อ.บ้านเช่า  จ.ลพบุรี   ', 7),
(109, 'เมืองสิงห์บุรี', 'เมืองสิงห์บุรี   ', 8),
(110, 'บางระจัน', 'บางระจัน   ', 8),
(111, 'ค่ายบางระจัน', 'ค่ายบางระจัน   ', 8),
(112, 'พรหมบุรี', 'พรหมบุรี   ', 8),
(113, 'ท่าช้าง', 'ท่าช้าง   ', 8),
(114, 'อินทร์บุรี', 'อินทร์บุรี   ', 8),
(115, 'เมืองชัยนาท', 'เมืองชัยนาท   ', 9),
(116, 'มโนรมย์', 'มโนรมย์   ', 9),
(117, 'วัดสิงห์', 'วัดสิงห์   ', 9),
(118, 'สรรพยา', 'สรรพยา   ', 9),
(119, 'สรรคบุรี', 'สรรคบุรี   ', 9),
(120, 'หันคา', 'หันคา   ', 9),
(121, 'หนองมะโมง', 'หนองมะโมง   ', 9),
(122, 'เนินขาม', 'เนินขาม   ', 9),
(123, 'เมืองสระบุรี', 'เมืองสระบุรี   ', 10),
(124, 'แก่งคอย', 'แก่งคอย   ', 10),
(125, 'หนองแค', 'หนองแค   ', 10),
(126, 'วิหารแดง', 'วิหารแดง   ', 10),
(127, 'หนองแซง', 'หนองแซง   ', 10),
(128, 'บ้านหมอ', 'บ้านหมอ   ', 10),
(129, 'ดอนพุด', 'ดอนพุด   ', 10),
(130, 'หนองโดน', 'หนองโดน   ', 10),
(131, 'พระพุทธบาท', 'พระพุทธบาท   ', 10),
(132, 'เสาไห้', 'เสาไห้   ', 10),
(133, 'มวกเหล็ก', 'มวกเหล็ก   ', 10),
(134, 'วังม่วง', 'วังม่วง   ', 10),
(135, 'เฉลิมพระเกียรติ', 'เฉลิมพระเกียรติ   ', 10),
(136, 'เมืองชลบุรี', 'เมืองชลบุรี   ', 11),
(137, 'บ้านบึง', 'บ้านบึง   ', 11),
(138, 'หนองใหญ่', 'หนองใหญ่   ', 11),
(139, 'บางละมุง', 'บางละมุง   ', 11),
(140, 'พานทอง', 'พานทอง   ', 11),
(141, 'พนัสนิคม', 'พนัสนิคม   ', 11),
(142, 'ศรีราชา', 'ศรีราชา   ', 11),
(143, 'เกาะสีชัง', 'เกาะสีชัง   ', 11),
(144, 'สัตหีบ', 'สัตหีบ   ', 11),
(145, 'บ่อทอง', 'บ่อทอง   ', 11),
(146, 'เกาะจันทร์', 'เกาะจันทร์   ', 11),
(147, 'สัตหีบ (สาขาตำบลบางเสร่)', 'สัตหีบ (สาขาตำบลบางเสร่)*   ', 11),
(148, 'ท้องถิ่นเทศบาลเมืองหนองปรือ', 'ท้องถิ่นเทศบาลเมืองหนองปรือ*   ', 11),
(149, 'เทศบาลตำบลแหลมฉบัง', 'เทศบาลตำบลแหลมฉบัง*   ', 11),
(150, 'เทศบาลเมืองชลบุรี', 'เทศบาลเมืองชลบุรี*   ', 11),
(151, 'เมืองระยอง', 'เมืองระยอง   ', 12),
(152, 'บ้านฉาง', 'บ้านฉาง   ', 12),
(153, 'แกลง', 'แกลง   ', 12),
(154, 'วังจันทร์', 'วังจันทร์   ', 12),
(155, 'บ้านค่าย', 'บ้านค่าย   ', 12),
(156, 'ปลวกแดง', 'ปลวกแดง   ', 12),
(157, 'เขาชะเมา', 'เขาชะเมา   ', 12),
(158, 'นิคมพัฒนา', 'นิคมพัฒนา   ', 12),
(159, 'สาขาตำบลมาบข่า', 'สาขาตำบลมาบข่า*   ', 12),
(160, 'เมืองจันทบุรี', 'เมืองจันทบุรี   ', 13),
(161, 'ขลุง', 'ขลุง   ', 13),
(162, 'ท่าใหม่', 'ท่าใหม่   ', 13),
(163, 'โป่งน้ำร้อน', 'โป่งน้ำร้อน   ', 13),
(164, 'มะขาม', 'มะขาม   ', 13),
(165, 'แหลมสิงห์', 'แหลมสิงห์   ', 13),
(166, 'สอยดาว', 'สอยดาว   ', 13),
(167, 'แก่งหางแมว', 'แก่งหางแมว   ', 13),
(168, 'นายายอาม', 'นายายอาม   ', 13),
(169, 'เขาคิชฌกูฏ', 'เขาคิชฌกูฏ   ', 13),
(170, 'กิ่ง อ.กำพุธ  จ.จันทบุรี', '*กิ่ง อ.กำพุธ  จ.จันทบุรี   ', 13),
(171, 'เมืองตราด', 'เมืองตราด   ', 14),
(172, 'คลองใหญ่', 'คลองใหญ่   ', 14),
(173, 'เขาสมิง', 'เขาสมิง   ', 14),
(174, 'บ่อไร่', 'บ่อไร่   ', 14),
(175, 'แหลมงอบ', 'แหลมงอบ   ', 14),
(176, 'เกาะกูด', 'เกาะกูด   ', 14),
(177, 'เกาะช้าง', 'เกาะช้าง   ', 14),
(178, 'เมืองฉะเชิงเทรา', 'เมืองฉะเชิงเทรา   ', 15),
(179, 'บางคล้า', 'บางคล้า   ', 15),
(180, 'บางน้ำเปรี้ยว', 'บางน้ำเปรี้ยว   ', 15),
(181, 'บางปะกง', 'บางปะกง   ', 15),
(182, 'บ้านโพธิ์', 'บ้านโพธิ์   ', 15),
(183, 'พนมสารคาม', 'พนมสารคาม   ', 15),
(184, 'ราชสาส์น', 'ราชสาส์น   ', 15),
(185, 'สนามชัย', 'สนามชัย   ', 15),
(186, 'แปลงยาว', 'แปลงยาว   ', 15),
(187, 'ท่าตะเกียบ', 'ท่าตะเกียบ   ', 15),
(188, 'คลองเขื่อน', 'คลองเขื่อน   ', 15),
(189, 'เมืองปราจีนบุรี', 'เมืองปราจีนบุรี   ', 16),
(190, 'กบินทร์บุรี', 'กบินทร์บุรี   ', 16),
(191, 'นาดี', 'นาดี   ', 16),
(192, 'สระแก้ว', '*สระแก้ว   ', 16),
(193, 'วังน้ำเย็น', '*วังน้ำเย็น   ', 16),
(194, 'บ้านสร้าง', 'บ้านสร้าง   ', 16),
(195, 'ประจันตคาม', 'ประจันตคาม   ', 16),
(196, 'ศรีมหาโพธิ', 'ศรีมหาโพธิ   ', 16),
(197, 'ศรีมโหสถ', 'ศรีมโหสถ   ', 16),
(198, 'อรัญประเทศ', '*อรัญประเทศ   ', 16),
(199, 'ตาพระยา', '*ตาพระยา   ', 16),
(200, 'วัฒนานคร', '*วัฒนานคร   ', 16),
(201, 'คลองหาด', '*คลองหาด   ', 16),
(202, 'เมืองนครนายก', 'เมืองนครนายก   ', 17),
(203, 'ปากพลี', 'ปากพลี   ', 17),
(204, 'บ้านนา', 'บ้านนา   ', 17),
(205, 'องครักษ์', 'องครักษ์   ', 17),
(206, 'เมืองสระแก้ว', 'เมืองสระแก้ว   ', 18),
(207, 'คลองหาด', 'คลองหาด   ', 18),
(208, 'ตาพระยา', 'ตาพระยา   ', 18),
(209, 'วังน้ำเย็น', 'วังน้ำเย็น   ', 18),
(210, 'วัฒนานคร', 'วัฒนานคร   ', 18),
(211, 'อรัญประเทศ', 'อรัญประเทศ   ', 18),
(212, 'เขาฉกรรจ์', 'เขาฉกรรจ์   ', 18),
(213, 'โคกสูง', 'โคกสูง   ', 18),
(214, 'วังสมบูรณ์', 'วังสมบูรณ์   ', 18),
(215, 'เมืองนครราชสีมา', 'เมืองนครราชสีมา   ', 19),
(216, 'ครบุรี', 'ครบุรี   ', 19),
(217, 'เสิงสาง', 'เสิงสาง   ', 19),
(218, 'คง', 'คง   ', 19),
(219, 'บ้านเหลื่อม', 'บ้านเหลื่อม   ', 19),
(220, 'จักราช', 'จักราช   ', 19),
(221, 'โชคชัย', 'โชคชัย   ', 19),
(222, 'ด่านขุนทด', 'ด่านขุนทด   ', 19),
(223, 'โนนไทย', 'โนนไทย   ', 19),
(224, 'โนนสูง', 'โนนสูง   ', 19),
(225, 'ขามสะแกแสง', 'ขามสะแกแสง   ', 19),
(226, 'บัวใหญ่', 'บัวใหญ่   ', 19),
(227, 'ประทาย', 'ประทาย   ', 19),
(228, 'ปักธงชัย', 'ปักธงชัย   ', 19),
(229, 'พิมาย', 'พิมาย   ', 19),
(230, 'ห้วยแถลง', 'ห้วยแถลง   ', 19),
(231, 'ชุมพวง', 'ชุมพวง   ', 19),
(232, 'สูงเนิน', 'สูงเนิน   ', 19),
(233, 'ขามทะเลสอ', 'ขามทะเลสอ   ', 19),
(234, 'สีคิ้ว', 'สีคิ้ว   ', 19),
(235, 'ปากช่อง', 'ปากช่อง   ', 19),
(236, 'หนองบุญมาก', 'หนองบุญมาก   ', 19),
(237, 'แก้งสนามนาง', 'แก้งสนามนาง   ', 19),
(238, 'โนนแดง', 'โนนแดง   ', 19),
(239, 'วังน้ำเขียว', 'วังน้ำเขียว   ', 19),
(240, 'เทพารักษ์', 'เทพารักษ์   ', 19),
(241, 'เมืองยาง', 'เมืองยาง   ', 19),
(242, 'พระทองคำ', 'พระทองคำ   ', 19),
(243, 'ลำทะเมนชัย', 'ลำทะเมนชัย   ', 19),
(244, 'บัวลาย', 'บัวลาย   ', 19),
(245, 'สีดา', 'สีดา   ', 19),
(246, 'เฉลิมพระเกียรติ', 'เฉลิมพระเกียรติ   ', 19),
(247, 'ท้องถิ่นเทศบาลตำบลโพธิ์กลาง', 'ท้องถิ่นเทศบาลตำบลโพธิ์กลาง*   ', 19),
(248, 'สาขาตำบลมะค่า-พลสงคราม', 'สาขาตำบลมะค่า-พลสงคราม*   ', 19),
(249, 'โนนลาว', '*โนนลาว   ', 19),
(250, 'เมืองบุรีรัมย์', 'เมืองบุรีรัมย์   ', 20),
(251, 'คูเมือง', 'คูเมือง   ', 20),
(252, 'กระสัง', 'กระสัง', 20),
(253, 'นางรอง', 'นางรอง   ', 20),
(254, 'หนองกี่', 'หนองกี่   ', 20),
(255, 'ละหานทราย', 'ละหานทราย   ', 20),
(256, 'ประโคนชัย', 'ประโคนชัย   ', 20),
(257, 'บ้านกรวด', 'บ้านกรวด   ', 20),
(258, 'พุทไธสง', 'พุทไธสง   ', 20),
(259, 'ลำปลายมาศ', 'ลำปลายมาศ   ', 20),
(260, 'สตึก', 'สตึก   ', 20),
(261, 'ปะคำ', 'ปะคำ   ', 20),
(262, 'นาโพธิ์', 'นาโพธิ์   ', 20),
(263, 'หนองหงส์', 'หนองหงส์   ', 20),
(264, 'พลับพลาชัย', 'พลับพลาชัย   ', 20),
(265, 'ห้วยราช', 'ห้วยราช   ', 20),
(266, 'โนนสุวรรณ', 'โนนสุวรรณ   ', 20),
(267, 'ชำนิ', 'ชำนิ   ', 20),
(268, 'บ้านใหม่ไชยพจน์', 'บ้านใหม่ไชยพจน์   ', 20),
(269, 'โนนดินแดง', 'โนนดินแดง   ', 20),
(270, 'บ้านด่าน', 'บ้านด่าน   ', 20),
(271, 'แคนดง', 'แคนดง   ', 20),
(272, 'เฉลิมพระเกียรติ', 'เฉลิมพระเกียรติ   ', 20),
(273, 'เมืองสุรินทร์', 'เมืองสุรินทร์   ', 21),
(274, 'ชุมพลบุรี', 'ชุมพลบุรี   ', 21),
(275, 'ท่าตูม', 'ท่าตูม   ', 21),
(276, 'จอมพระ', 'จอมพระ   ', 21),
(277, 'ปราสาท', 'ปราสาท   ', 21),
(278, 'กาบเชิง', 'กาบเชิง   ', 21),
(279, 'รัตนบุรี', 'รัตนบุรี   ', 21),
(280, 'สนม', 'สนม   ', 21),
(281, 'ศีขรภูมิ', 'ศีขรภูมิ   ', 21),
(282, 'สังขะ', 'สังขะ   ', 21),
(283, 'ลำดวน', 'ลำดวน   ', 21),
(284, 'สำโรงทาบ', 'สำโรงทาบ   ', 21),
(285, 'บัวเชด', 'บัวเชด   ', 21),
(286, 'พนมดงรัก', 'พนมดงรัก   ', 21),
(287, 'ศรีณรงค์', 'ศรีณรงค์   ', 21),
(288, 'เขวาสินรินทร์', 'เขวาสินรินทร์   ', 21),
(289, 'โนนนารายณ์', 'โนนนารายณ์   ', 21),
(290, 'เมืองศรีสะเกษ', 'เมืองศรีสะเกษ   ', 22),
(291, 'ยางชุมน้อย', 'ยางชุมน้อย   ', 22),
(292, 'กันทรารมย์', 'กันทรารมย์   ', 22),
(293, 'กันทรลักษ์', 'กันทรลักษ์   ', 22),
(294, 'ขุขันธ์', 'ขุขันธ์   ', 22),
(295, 'ไพรบึง', 'ไพรบึง   ', 22),
(296, 'ปรางค์กู่', 'ปรางค์กู่   ', 22),
(297, 'ขุนหาญ', 'ขุนหาญ   ', 22),
(298, 'ราษีไศล', 'ราษีไศล   ', 22),
(299, 'อุทุมพรพิสัย', 'อุทุมพรพิสัย   ', 22),
(300, 'บึงบูรพ์', 'บึงบูรพ์   ', 22),
(301, 'ห้วยทับทัน', 'ห้วยทับทัน   ', 22),
(302, 'โนนคูณ', 'โนนคูณ   ', 22),
(303, 'ศรีรัตนะ', 'ศรีรัตนะ   ', 22),
(304, 'น้ำเกลี้ยง', 'น้ำเกลี้ยง   ', 22),
(305, 'วังหิน', 'วังหิน   ', 22),
(306, 'ภูสิงห์', 'ภูสิงห์   ', 22),
(307, 'เมืองจันทร์', 'เมืองจันทร์   ', 22),
(308, 'เบญจลักษ์', 'เบญจลักษ์   ', 22),
(309, 'พยุห์', 'พยุห์   ', 22),
(310, 'โพธิ์ศรีสุวรรณ', 'โพธิ์ศรีสุวรรณ   ', 22),
(311, 'ศิลาลาด', 'ศิลาลาด   ', 22),
(312, 'เมืองอุบลราชธานี', 'เมืองอุบลราชธานี   ', 23),
(313, 'ศรีเมืองใหม่', 'ศรีเมืองใหม่   ', 23),
(314, 'โขงเจียม', 'โขงเจียม   ', 23),
(315, 'เขื่องใน', 'เขื่องใน   ', 23),
(316, 'เขมราฐ', 'เขมราฐ   ', 23),
(317, 'ชานุมาน', '*ชานุมาน   ', 23),
(318, 'เดชอุดม', 'เดชอุดม   ', 23),
(319, 'นาจะหลวย', 'นาจะหลวย   ', 23),
(320, 'น้ำยืน', 'น้ำยืน   ', 23),
(321, 'บุณฑริก', 'บุณฑริก   ', 23),
(322, 'ตระการพืชผล', 'ตระการพืชผล   ', 23),
(323, 'กุดข้าวปุ้น', 'กุดข้าวปุ้น   ', 23),
(324, 'พนา', '*พนา   ', 23),
(325, 'ม่วงสามสิบ', 'ม่วงสามสิบ   ', 23),
(326, 'วารินชำราบ', 'วารินชำราบ   ', 23),
(327, 'อำนาจเจริญ', '*อำนาจเจริญ   ', 23),
(328, 'เสนางคนิคม', '*เสนางคนิคม   ', 23),
(329, 'หัวตะพาน', '*หัวตะพาน   ', 23),
(330, 'พิบูลมังสาหาร', 'พิบูลมังสาหาร   ', 23),
(331, 'ตาลสุม', 'ตาลสุม   ', 23),
(332, 'โพธิ์ไทร', 'โพธิ์ไทร   ', 23),
(333, 'สำโรง', 'สำโรง   ', 23),
(334, 'กิ่งอำเภอลืออำนาจ', '*กิ่งอำเภอลืออำนาจ   ', 23),
(335, 'ดอนมดแดง', 'ดอนมดแดง   ', 23),
(336, 'สิรินธร', 'สิรินธร   ', 23),
(337, 'ทุ่งศรีอุดม', 'ทุ่งศรีอุดม   ', 23),
(338, 'ปทุมราชวงศา', '*ปทุมราชวงศา   ', 23),
(339, 'กิ่งอำเภอศรีหลักชัย', '*กิ่งอำเภอศรีหลักชัย   ', 23),
(340, 'นาเยีย', 'นาเยีย   ', 23),
(341, 'นาตาล', 'นาตาล   ', 23),
(342, 'เหล่าเสือโก้ก', 'เหล่าเสือโก้ก   ', 23),
(343, 'สว่างวีระวงศ์', 'สว่างวีระวงศ์   ', 23),
(344, 'น้ำขุ่น', 'น้ำขุ่น   ', 23),
(345, 'อ.สุวรรณวารี  จ.อุบลราชธานี', '*อ.สุวรรณวารี  จ.อุบลราชธานี   ', 23),
(346, 'เมืองยโสธร', 'เมืองยโสธร   ', 24),
(347, 'ทรายมูล', 'ทรายมูล   ', 24),
(348, 'กุดชุม', 'กุดชุม   ', 24),
(349, 'คำเขื่อนแก้ว', 'คำเขื่อนแก้ว   ', 24),
(350, 'ป่าติ้ว', 'ป่าติ้ว   ', 24),
(351, 'มหาชนะชัย', 'มหาชนะชัย   ', 24),
(352, 'ค้อวัง', 'ค้อวัง   ', 24),
(353, 'เลิงนกทา', 'เลิงนกทา   ', 24),
(354, 'ไทยเจริญ', 'ไทยเจริญ   ', 24),
(355, 'เมืองชัยภูมิ', 'เมืองชัยภูมิ   ', 25),
(356, 'บ้านเขว้า', 'บ้านเขว้า   ', 25),
(357, 'คอนสวรรค์', 'คอนสวรรค์   ', 25),
(358, 'เกษตรสมบูรณ์', 'เกษตรสมบูรณ์   ', 25),
(359, 'หนองบัวแดง', 'หนองบัวแดง   ', 25),
(360, 'จัตุรัส', 'จัตุรัส   ', 25),
(361, 'บำเหน็จณรงค์', 'บำเหน็จณรงค์   ', 25),
(362, 'หนองบัวระเหว', 'หนองบัวระเหว   ', 25),
(363, 'เทพสถิต', 'เทพสถิต   ', 25),
(364, 'ภูเขียว', 'ภูเขียว   ', 25),
(365, 'บ้านแท่น', 'บ้านแท่น   ', 25),
(366, 'แก้งคร้อ', 'แก้งคร้อ   ', 25),
(367, 'คอนสาร', 'คอนสาร   ', 25),
(368, 'ภักดีชุมพล', 'ภักดีชุมพล   ', 25),
(369, 'เนินสง่า', 'เนินสง่า   ', 25),
(370, 'ซับใหญ่', 'ซับใหญ่   ', 25),
(371, 'เมืองชัยภูมิ (สาขาตำบลโนนสำราญ)', 'เมืองชัยภูมิ (สาขาตำบลโนนสำราญ)*   ', 25),
(372, 'สาขาตำบลบ้านหว่าเฒ่า', 'สาขาตำบลบ้านหว่าเฒ่า*   ', 25),
(373, 'หนองบัวแดง (สาขาตำบลวังชมภู)', 'หนองบัวแดง (สาขาตำบลวังชมภู)*   ', 25),
(374, 'กิ่งอำเภอซับใหญ่ (สาขาตำบลซับใหญ่)', 'กิ่งอำเภอซับใหญ่ (สาขาตำบลซับใหญ่)*   ', 25),
(375, 'สาขาตำบลโคกเพชร', 'สาขาตำบลโคกเพชร*   ', 25),
(376, 'เทพสถิต (สาขาตำบลนายางกลัก)', 'เทพสถิต (สาขาตำบลนายางกลัก)*   ', 25),
(377, 'บ้านแท่น (สาขาตำบลบ้านเต่า)', 'บ้านแท่น (สาขาตำบลบ้านเต่า)*   ', 25),
(378, 'แก้งคร้อ (สาขาตำบลท่ามะไฟหวาน)', 'แก้งคร้อ (สาขาตำบลท่ามะไฟหวาน)*   ', 25),
(379, 'คอนสาร (สาขาตำบลโนนคูณ)', 'คอนสาร (สาขาตำบลโนนคูณ)*   ', 25),
(380, 'เมืองอำนาจเจริญ', 'เมืองอำนาจเจริญ   ', 26),
(381, 'ชานุมาน', 'ชานุมาน   ', 26),
(382, 'ปทุมราชวงศา', 'ปทุมราชวงศา   ', 26),
(383, 'พนา', 'พนา   ', 26),
(384, 'เสนางคนิคม', 'เสนางคนิคม   ', 26),
(385, 'หัวตะพาน', 'หัวตะพาน   ', 26),
(386, 'ลืออำนาจ', 'ลืออำนาจ   ', 26),
(387, 'เมืองหนองบัวลำภู', 'เมืองหนองบัวลำภู   ', 27),
(388, 'นากลาง', 'นากลาง   ', 27),
(389, 'โนนสัง', 'โนนสัง   ', 27),
(390, 'ศรีบุญเรือง', 'ศรีบุญเรือง   ', 27),
(391, 'สุวรรณคูหา', 'สุวรรณคูหา   ', 27),
(392, 'นาวัง', 'นาวัง   ', 27),
(393, 'เมืองขอนแก่น', 'เมืองขอนแก่น   ', 28),
(394, 'บ้านฝาง', 'บ้านฝาง   ', 28),
(395, 'พระยืน', 'พระยืน   ', 28),
(396, 'หนองเรือ', 'หนองเรือ   ', 28),
(397, 'ชุมแพ', 'ชุมแพ   ', 28),
(398, 'สีชมพู', 'สีชมพู   ', 28),
(399, 'น้ำพอง', 'น้ำพอง   ', 28),
(400, 'อุบลรัตน์', 'อุบลรัตน์   ', 28),
(401, 'กระนวน', 'กระนวน   ', 28),
(402, 'บ้านไผ่', 'บ้านไผ่   ', 28),
(403, 'เปือยน้อย', 'เปือยน้อย   ', 28),
(404, 'พล', 'พล   ', 28),
(405, 'แวงใหญ่', 'แวงใหญ่   ', 28),
(406, 'แวงน้อย', 'แวงน้อย   ', 28),
(407, 'หนองสองห้อง', 'หนองสองห้อง   ', 28),
(408, 'ภูเวียง', 'ภูเวียง   ', 28),
(409, 'มัญจาคีรี', 'มัญจาคีรี   ', 28),
(410, 'ชนบท', 'ชนบท   ', 28),
(411, 'เขาสวนกวาง', 'เขาสวนกวาง   ', 28),
(412, 'ภูผาม่าน', 'ภูผาม่าน   ', 28),
(413, 'ซำสูง', 'ซำสูง   ', 28),
(414, 'โคกโพธิ์ไชย', 'โคกโพธิ์ไชย   ', 28),
(415, 'หนองนาคำ', 'หนองนาคำ   ', 28),
(416, 'บ้านแฮด', 'บ้านแฮด   ', 28),
(417, 'โนนศิลา', 'โนนศิลา   ', 28),
(418, 'เวียงเก่า', 'เวียงเก่า   ', 28),
(419, 'ท้องถิ่นเทศบาลตำบลบ้านเป็ด', 'ท้องถิ่นเทศบาลตำบลบ้านเป็ด*   ', 28),
(420, 'เทศบาลตำบลเมืองพล', 'เทศบาลตำบลเมืองพล*   ', 28),
(421, 'เมืองอุดรธานี', 'เมืองอุดรธานี   ', 29),
(422, 'กุดจับ', 'กุดจับ   ', 29),
(423, 'หนองวัวซอ', 'หนองวัวซอ   ', 29),
(424, 'กุมภวาปี', 'กุมภวาปี   ', 29),
(425, 'โนนสะอาด', 'โนนสะอาด   ', 29),
(426, 'หนองหาน', 'หนองหาน   ', 29),
(427, 'ทุ่งฝน', 'ทุ่งฝน   ', 29),
(428, 'ไชยวาน', 'ไชยวาน   ', 29),
(429, 'ศรีธาตุ', 'ศรีธาตุ   ', 29),
(430, 'วังสามหมอ', 'วังสามหมอ   ', 29),
(431, 'บ้านดุง', 'บ้านดุง   ', 29),
(432, 'หนองบัวลำภู', '*หนองบัวลำภู   ', 29),
(433, 'ศรีบุญเรือง', '*ศรีบุญเรือง   ', 29),
(434, 'นากลาง', '*นากลาง   ', 29),
(435, 'สุวรรณคูหา', '*สุวรรณคูหา   ', 29),
(436, 'โนนสัง', '*โนนสัง   ', 29),
(437, 'บ้านผือ', 'บ้านผือ   ', 29),
(438, 'น้ำโสม', 'น้ำโสม   ', 29),
(439, 'เพ็ญ', 'เพ็ญ   ', 29),
(440, 'สร้างคอม', 'สร้างคอม   ', 29),
(441, 'หนองแสง', 'หนองแสง   ', 29),
(442, 'นายูง', 'นายูง   ', 29),
(443, 'พิบูลย์รักษ์', 'พิบูลย์รักษ์   ', 29),
(444, 'กู่แก้ว', 'กู่แก้ว   ', 29),
(445, 'ประจักษ์ศิลปาคม', 'ประจักษ์ศิลปาคม   ', 29),
(446, 'เมืองเลย', 'เมืองเลย   ', 30),
(447, 'นาด้วง', 'นาด้วง   ', 30),
(448, 'เชียงคาน', 'เชียงคาน   ', 30),
(449, 'ปากชม', 'ปากชม   ', 30),
(450, 'ด่านซ้าย', 'ด่านซ้าย   ', 30),
(451, 'นาแห้ว', 'นาแห้ว   ', 30),
(452, 'ภูเรือ', 'ภูเรือ   ', 30),
(453, 'ท่าลี่', 'ท่าลี่   ', 30),
(454, 'วังสะพุง', 'วังสะพุง   ', 30),
(455, 'ภูกระดึง', 'ภูกระดึง   ', 30),
(456, 'ภูหลวง', 'ภูหลวง   ', 30),
(457, 'ผาขาว', 'ผาขาว   ', 30),
(458, 'เอราวัณ', 'เอราวัณ   ', 30),
(459, 'หนองหิน', 'หนองหิน   ', 30),
(460, 'เมืองหนองคาย', 'เมืองหนองคาย   ', 31),
(461, 'ท่าบ่อ', 'ท่าบ่อ   ', 31),
(462, 'บึงกาฬ', 'บึงกาฬ   ', 31),
(463, 'พรเจริญ', 'พรเจริญ   ', 31),
(464, 'โพนพิสัย', 'โพนพิสัย   ', 31),
(465, 'โซ่พิสัย', 'โซ่พิสัย   ', 31),
(466, 'ศรีเชียงใหม่', 'ศรีเชียงใหม่   ', 31),
(467, 'สังคม', 'สังคม   ', 31),
(468, 'เซกา', 'เซกา   ', 31),
(469, 'ปากคาด', 'ปากคาด   ', 31),
(470, 'บึงโขงหลง', 'บึงโขงหลง   ', 31),
(471, 'ศรีวิไล', 'ศรีวิไล   ', 31),
(472, 'บุ่งคล้า', 'บุ่งคล้า   ', 31),
(473, 'สระใคร', 'สระใคร   ', 31),
(474, 'เฝ้าไร่', 'เฝ้าไร่   ', 31),
(475, 'รัตนวาปี', 'รัตนวาปี   ', 31),
(476, 'โพธิ์ตาก', 'โพธิ์ตาก   ', 31),
(477, 'เมืองมหาสารคาม', 'เมืองมหาสารคาม   ', 32),
(478, 'แกดำ', 'แกดำ   ', 32),
(479, 'โกสุมพิสัย', 'โกสุมพิสัย   ', 32),
(480, 'กันทรวิชัย', 'กันทรวิชัย   ', 32),
(481, 'เชียงยืน', 'เชียงยืน   ', 32),
(482, 'บรบือ', 'บรบือ   ', 32),
(483, 'นาเชือก', 'นาเชือก   ', 32),
(484, 'พยัคฆภูมิพิสัย', 'พยัคฆภูมิพิสัย   ', 32),
(485, 'วาปีปทุม', 'วาปีปทุม   ', 32),
(486, 'นาดูน', 'นาดูน   ', 32),
(487, 'ยางสีสุราช', 'ยางสีสุราช   ', 32),
(488, 'กุดรัง', 'กุดรัง   ', 32),
(489, 'ชื่นชม', 'ชื่นชม   ', 32),
(490, 'หลุบ', '*หลุบ   ', 32),
(491, 'เมืองร้อยเอ็ด', 'เมืองร้อยเอ็ด   ', 33),
(492, 'เกษตรวิสัย', 'เกษตรวิสัย   ', 33),
(493, 'ปทุมรัตต์', 'ปทุมรัตต์   ', 33),
(494, 'จตุรพักตรพิมาน', 'จตุรพักตรพิมาน   ', 33),
(495, 'ธวัชบุรี', 'ธวัชบุรี   ', 33),
(496, 'พนมไพร', 'พนมไพร   ', 33),
(497, 'โพนทอง', 'โพนทอง   ', 33),
(498, 'โพธิ์ชัย', 'โพธิ์ชัย   ', 33),
(499, 'หนองพอก', 'หนองพอก   ', 33),
(500, 'เสลภูมิ', 'เสลภูมิ   ', 33),
(501, 'สุวรรณภูมิ', 'สุวรรณภูมิ   ', 33),
(502, 'เมืองสรวง', 'เมืองสรวง   ', 33),
(503, 'โพนทราย', 'โพนทราย   ', 33),
(504, 'อาจสามารถ', 'อาจสามารถ   ', 33),
(505, 'เมยวดี', 'เมยวดี   ', 33),
(506, 'ศรีสมเด็จ', 'ศรีสมเด็จ   ', 33),
(507, 'จังหาร', 'จังหาร   ', 33),
(508, 'เชียงขวัญ', 'เชียงขวัญ   ', 33),
(509, 'หนองฮี', 'หนองฮี   ', 33),
(510, 'ทุ่งเขาหลวง', 'ทุ่งเขาหลวง   ', 33),
(511, 'เมืองกาฬสินธุ์', 'เมืองกาฬสินธุ์   ', 34),
(512, 'นามน', 'นามน   ', 34),
(513, 'กมลาไสย', 'กมลาไสย   ', 34),
(514, 'ร่องคำ', 'ร่องคำ   ', 34),
(515, 'กุฉินารายณ์', 'กุฉินารายณ์   ', 34),
(516, 'เขาวง', 'เขาวง   ', 34),
(517, 'ยางตลาด', 'ยางตลาด   ', 34),
(518, 'ห้วยเม็ก', 'ห้วยเม็ก   ', 34),
(519, 'สหัสขันธ์', 'สหัสขันธ์   ', 34),
(520, 'คำม่วง', 'คำม่วง   ', 34),
(521, 'ท่าคันโท', 'ท่าคันโท   ', 34),
(522, 'หนองกุงศรี', 'หนองกุงศรี   ', 34),
(523, 'สมเด็จ', 'สมเด็จ   ', 34),
(524, 'ห้วยผึ้ง', 'ห้วยผึ้ง   ', 34),
(525, 'สามชัย', 'สามชัย   ', 34),
(526, 'นาคู', 'นาคู   ', 34),
(527, 'ดอนจาน', 'ดอนจาน   ', 34),
(528, 'ฆ้องชัย', 'ฆ้องชัย   ', 34),
(529, 'เมืองสกลนคร', 'เมืองสกลนคร   ', 35),
(530, 'กุสุมาลย์', 'กุสุมาลย์   ', 35),
(531, 'กุดบาก', 'กุดบาก   ', 35),
(532, 'พรรณานิคม', 'พรรณานิคม   ', 35),
(533, 'พังโคน', 'พังโคน   ', 35),
(534, 'วาริชภูมิ', 'วาริชภูมิ   ', 35),
(535, 'นิคมน้ำอูน', 'นิคมน้ำอูน   ', 35),
(536, 'วานรนิวาส', 'วานรนิวาส   ', 35),
(537, 'คำตากล้า', 'คำตากล้า   ', 35),
(538, 'บ้านม่วง', 'บ้านม่วง   ', 35),
(539, 'อากาศอำนวย', 'อากาศอำนวย   ', 35),
(540, 'สว่างแดนดิน', 'สว่างแดนดิน   ', 35),
(541, 'ส่องดาว', 'ส่องดาว   ', 35),
(542, 'เต่างอย', 'เต่างอย   ', 35),
(543, 'โคกศรีสุพรรณ', 'โคกศรีสุพรรณ   ', 35),
(544, 'เจริญศิลป์', 'เจริญศิลป์   ', 35),
(545, 'โพนนาแก้ว', 'โพนนาแก้ว   ', 35),
(546, 'ภูพาน', 'ภูพาน   ', 35),
(547, 'วานรนิวาส (สาขาตำบลกุดเรือคำ)', 'วานรนิวาส (สาขาตำบลกุดเรือคำ)*   ', 35),
(548, 'อ.บ้านหัน  จ.สกลนคร', '*อ.บ้านหัน  จ.สกลนคร   ', 35),
(549, 'เมืองนครพนม', 'เมืองนครพนม   ', 36),
(550, 'ปลาปาก', 'ปลาปาก   ', 36),
(551, 'ท่าอุเทน', 'ท่าอุเทน   ', 36),
(552, 'บ้านแพง', 'บ้านแพง   ', 36),
(553, 'ธาตุพนม', 'ธาตุพนม   ', 36),
(554, 'เรณูนคร', 'เรณูนคร   ', 36),
(555, 'นาแก', 'นาแก   ', 36),
(556, 'ศรีสงคราม', 'ศรีสงคราม   ', 36),
(557, 'นาหว้า', 'นาหว้า   ', 36),
(558, 'โพนสวรรค์', 'โพนสวรรค์   ', 36),
(559, 'นาทม', 'นาทม   ', 36),
(560, 'วังยาง', 'วังยาง   ', 36),
(561, 'เมืองมุกดาหาร', 'เมืองมุกดาหาร   ', 37),
(562, 'นิคมคำสร้อย', 'นิคมคำสร้อย   ', 37),
(563, 'ดอนตาล', 'ดอนตาล   ', 37),
(564, 'ดงหลวง', 'ดงหลวง   ', 37),
(565, 'คำชะอี', 'คำชะอี   ', 37),
(566, 'หว้านใหญ่', 'หว้านใหญ่   ', 37),
(567, 'หนองสูง', 'หนองสูง   ', 37),
(568, 'เมืองเชียงใหม่', 'เมืองเชียงใหม่   ', 38),
(569, 'จอมทอง', 'จอมทอง   ', 38),
(570, 'แม่แจ่ม', 'แม่แจ่ม   ', 38),
(571, 'เชียงดาว', 'เชียงดาว   ', 38),
(572, 'ดอยสะเก็ด', 'ดอยสะเก็ด   ', 38),
(573, 'แม่แตง', 'แม่แตง   ', 38),
(574, 'แม่ริม', 'แม่ริม   ', 38),
(575, 'สะเมิง', 'สะเมิง   ', 38),
(576, 'ฝาง', 'ฝาง   ', 38),
(577, 'แม่อาย', 'แม่อาย   ', 38),
(578, 'พร้าว', 'พร้าว   ', 38),
(579, 'สันป่าตอง', 'สันป่าตอง   ', 38),
(580, 'สันกำแพง', 'สันกำแพง   ', 38),
(581, 'สันทราย', 'สันทราย   ', 38),
(582, 'หางดง', 'หางดง   ', 38),
(583, 'ฮอด', 'ฮอด   ', 38),
(584, 'ดอยเต่า', 'ดอยเต่า   ', 38),
(585, 'อมก๋อย', 'อมก๋อย   ', 38),
(586, 'สารภี', 'สารภี   ', 38),
(587, 'เวียงแหง', 'เวียงแหง   ', 38),
(588, 'ไชยปราการ', 'ไชยปราการ   ', 38),
(589, 'แม่วาง', 'แม่วาง   ', 38),
(590, 'แม่ออน', 'แม่ออน   ', 38),
(591, 'ดอยหล่อ', 'ดอยหล่อ   ', 38),
(592, 'เทศบาลนครเชียงใหม่ (สาขาแขวงกาลวิละ', 'เทศบาลนครเชียงใหม่ (สาขาแขวงกาลวิละ*   ', 38),
(593, 'เทศบาลนครเชียงใหม่ (สาขาแขวงศรีวิชั', 'เทศบาลนครเชียงใหม่ (สาขาแขวงศรีวิชั*   ', 38),
(594, 'เทศบาลนครเชียงใหม่ (สาขาเม็งราย', 'เทศบาลนครเชียงใหม่ (สาขาเม็งราย*   ', 38),
(595, 'เมืองลำพูน', 'เมืองลำพูน   ', 39),
(596, 'แม่ทา', 'แม่ทา   ', 39),
(597, 'บ้านโฮ่ง', 'บ้านโฮ่ง   ', 39),
(598, 'ลี้', 'ลี้   ', 39),
(599, 'ทุ่งหัวช้าง', 'ทุ่งหัวช้าง   ', 39),
(600, 'ป่าซาง', 'ป่าซาง   ', 39),
(601, 'บ้านธิ', 'บ้านธิ   ', 39),
(602, 'เวียงหนองล่อง', 'เวียงหนองล่อง   ', 39),
(603, 'เมืองลำปาง', 'เมืองลำปาง   ', 40),
(604, 'แม่เมาะ', 'แม่เมาะ   ', 40),
(605, 'เกาะคา', 'เกาะคา   ', 40),
(606, 'เสริมงาม', 'เสริมงาม   ', 40),
(607, 'งาว', 'งาว   ', 40),
(608, 'แจ้ห่ม', 'แจ้ห่ม   ', 40),
(609, 'วังเหนือ', 'วังเหนือ   ', 40),
(610, 'เถิน', 'เถิน   ', 40),
(611, 'แม่พริก', 'แม่พริก   ', 40),
(612, 'แม่ทะ', 'แม่ทะ   ', 40),
(613, 'สบปราบ', 'สบปราบ   ', 40),
(614, 'ห้างฉัตร', 'ห้างฉัตร   ', 40),
(615, 'เมืองปาน', 'เมืองปาน   ', 40),
(616, 'เมืองอุตรดิตถ์', 'เมืองอุตรดิตถ์   ', 41),
(617, 'ตรอน', 'ตรอน   ', 41),
(618, 'ท่าปลา', 'ท่าปลา   ', 41),
(619, 'น้ำปาด', 'น้ำปาด   ', 41),
(620, 'ฟากท่า', 'ฟากท่า   ', 41),
(621, 'บ้านโคก', 'บ้านโคก   ', 41),
(622, 'พิชัย', 'พิชัย   ', 41),
(623, 'ลับแล', 'ลับแล   ', 41),
(624, 'ทองแสนขัน', 'ทองแสนขัน   ', 41),
(625, 'เมืองแพร่', 'เมืองแพร่   ', 42),
(626, 'ร้องกวาง', 'ร้องกวาง   ', 42),
(627, 'ลอง', 'ลอง   ', 42),
(628, 'สูงเม่น', 'สูงเม่น   ', 42),
(629, 'เด่นชัย', 'เด่นชัย   ', 42),
(630, 'สอง', 'สอง   ', 42),
(631, 'วังชิ้น', 'วังชิ้น   ', 42),
(632, 'หนองม่วงไข่', 'หนองม่วงไข่   ', 42),
(633, 'เมืองน่าน', 'เมืองน่าน   ', 43),
(634, 'แม่จริม', 'แม่จริม   ', 43),
(635, 'บ้านหลวง', 'บ้านหลวง   ', 43),
(636, 'นาน้อย', 'นาน้อย   ', 43),
(637, 'ปัว', 'ปัว   ', 43),
(638, 'ท่าวังผา', 'ท่าวังผา   ', 43),
(639, 'เวียงสา', 'เวียงสา   ', 43),
(640, 'ทุ่งช้าง', 'ทุ่งช้าง   ', 43),
(641, 'เชียงกลาง', 'เชียงกลาง   ', 43),
(642, 'นาหมื่น', 'นาหมื่น   ', 43),
(643, 'สันติสุข', 'สันติสุข   ', 43),
(644, 'บ่อเกลือ', 'บ่อเกลือ   ', 43),
(645, 'สองแคว', 'สองแคว   ', 43),
(646, 'ภูเพียง', 'ภูเพียง   ', 43),
(647, 'เฉลิมพระเกียรติ', 'เฉลิมพระเกียรติ   ', 43),
(648, 'เมืองพะเยา', 'เมืองพะเยา   ', 44),
(649, 'จุน', 'จุน   ', 44),
(650, 'เชียงคำ', 'เชียงคำ   ', 44),
(651, 'เชียงม่วน', 'เชียงม่วน   ', 44),
(652, 'ดอกคำใต้', 'ดอกคำใต้   ', 44),
(653, 'ปง', 'ปง   ', 44),
(654, 'แม่ใจ', 'แม่ใจ   ', 44),
(655, 'ภูซาง', 'ภูซาง   ', 44),
(656, 'ภูกามยาว', 'ภูกามยาว   ', 44),
(657, 'เมืองเชียงราย', 'เมืองเชียงราย   ', 45),
(658, 'เวียงชัย', 'เวียงชัย   ', 45),
(659, 'เชียงของ', 'เชียงของ   ', 45),
(660, 'เทิง', 'เทิง   ', 45),
(661, 'พาน', 'พาน   ', 45),
(662, 'ป่าแดด', 'ป่าแดด   ', 45),
(663, 'แม่จัน', 'แม่จัน   ', 45),
(664, 'เชียงแสน', 'เชียงแสน   ', 45),
(665, 'แม่สาย', 'แม่สาย   ', 45),
(666, 'แม่สรวย', 'แม่สรวย   ', 45),
(667, 'เวียงป่าเป้า', 'เวียงป่าเป้า   ', 45),
(668, 'พญาเม็งราย', 'พญาเม็งราย   ', 45),
(669, 'เวียงแก่น', 'เวียงแก่น   ', 45),
(670, 'ขุนตาล', 'ขุนตาล   ', 45),
(671, 'แม่ฟ้าหลวง', 'แม่ฟ้าหลวง   ', 45),
(672, 'แม่ลาว', 'แม่ลาว   ', 45),
(673, 'เวียงเชียงรุ้ง', 'เวียงเชียงรุ้ง   ', 45),
(674, 'ดอยหลวง', 'ดอยหลวง   ', 45),
(675, 'เมืองแม่ฮ่องสอน', 'เมืองแม่ฮ่องสอน   ', 46),
(676, 'ขุนยวม', 'ขุนยวม   ', 46),
(677, 'ปาย', 'ปาย   ', 46),
(678, 'แม่สะเรียง', 'แม่สะเรียง   ', 46),
(679, 'แม่ลาน้อย', 'แม่ลาน้อย   ', 46),
(680, 'สบเมย', 'สบเมย   ', 46),
(681, 'ปางมะผ้า', 'ปางมะผ้า   ', 46),
(682, 'อ.ม่วยต่อ  จ.แม่ฮ่องสอน', '*อ.ม่วยต่อ  จ.แม่ฮ่องสอน   ', 46),
(683, 'เมืองนครสวรรค์', 'เมืองนครสวรรค์   ', 47),
(684, 'โกรกพระ', 'โกรกพระ   ', 47),
(685, 'ชุมแสง', 'ชุมแสง   ', 47),
(686, 'หนองบัว', 'หนองบัว   ', 47),
(687, 'บรรพตพิสัย', 'บรรพตพิสัย   ', 47),
(688, 'เก้าเลี้ยว', 'เก้าเลี้ยว   ', 47),
(689, 'ตาคลี', 'ตาคลี   ', 47),
(690, 'ท่าตะโก', 'ท่าตะโก   ', 47),
(691, 'ไพศาลี', 'ไพศาลี   ', 47),
(692, 'พยุหะคีรี', 'พยุหะคีรี   ', 47),
(693, 'ลาดยาว', 'ลาดยาว   ', 47),
(694, 'ตากฟ้า', 'ตากฟ้า   ', 47),
(695, 'แม่วงก์', 'แม่วงก์   ', 47),
(696, 'แม่เปิน', 'แม่เปิน   ', 47),
(697, 'ชุมตาบง', 'ชุมตาบง   ', 47),
(698, 'สาขาตำบลห้วยน้ำหอม', 'สาขาตำบลห้วยน้ำหอม*   ', 47),
(699, 'กิ่งอำเภอชุมตาบง (สาขาตำบลชุมตาบง)', 'กิ่งอำเภอชุมตาบง (สาขาตำบลชุมตาบง)*   ', 47),
(700, 'แม่วงก์ (สาขาตำบลแม่เล่ย์)', 'แม่วงก์ (สาขาตำบลแม่เล่ย์)*   ', 47),
(701, 'เมืองอุทัยธานี', 'เมืองอุทัยธานี   ', 48),
(702, 'ทัพทัน', 'ทัพทัน   ', 48),
(703, 'สว่างอารมณ์', 'สว่างอารมณ์   ', 48),
(704, 'หนองฉาง', 'หนองฉาง   ', 48),
(705, 'หนองขาหย่าง', 'หนองขาหย่าง   ', 48),
(706, 'บ้านไร่', 'บ้านไร่   ', 48),
(707, 'ลานสัก', 'ลานสัก   ', 48),
(708, 'ห้วยคต', 'ห้วยคต   ', 48),
(709, 'เมืองกำแพงเพชร', 'เมืองกำแพงเพชร   ', 49),
(710, 'ไทรงาม', 'ไทรงาม   ', 49),
(711, 'คลองลาน', 'คลองลาน   ', 49),
(712, 'ขาณุวรลักษบุรี', 'ขาณุวรลักษบุรี   ', 49),
(713, 'คลองขลุง', 'คลองขลุง   ', 49),
(714, 'พรานกระต่าย', 'พรานกระต่าย   ', 49),
(715, 'ลานกระบือ', 'ลานกระบือ   ', 49),
(716, 'ทรายทองวัฒนา', 'ทรายทองวัฒนา   ', 49),
(717, 'ปางศิลาทอง', 'ปางศิลาทอง   ', 49),
(718, 'บึงสามัคคี', 'บึงสามัคคี   ', 49),
(719, 'โกสัมพีนคร', 'โกสัมพีนคร   ', 49),
(720, 'เมืองตาก', 'เมืองตาก   ', 50),
(721, 'บ้านตาก', 'บ้านตาก   ', 50),
(722, 'สามเงา', 'สามเงา   ', 50),
(723, 'แม่ระมาด', 'แม่ระมาด   ', 50),
(724, 'ท่าสองยาง', 'ท่าสองยาง   ', 50),
(725, 'แม่สอด', 'แม่สอด   ', 50),
(726, 'พบพระ', 'พบพระ   ', 50),
(727, 'อุ้มผาง', 'อุ้มผาง   ', 50),
(728, 'วังเจ้า', 'วังเจ้า   ', 50),
(729, 'กิ่ง อ.ท่าปุย  จ.ตาก', '*กิ่ง อ.ท่าปุย  จ.ตาก   ', 50),
(730, 'เมืองสุโขทัย', 'เมืองสุโขทัย   ', 51),
(731, 'บ้านด่านลานหอย', 'บ้านด่านลานหอย   ', 51),
(732, 'คีรีมาศ', 'คีรีมาศ   ', 51),
(733, 'กงไกรลาศ', 'กงไกรลาศ   ', 51),
(734, 'ศรีสัชนาลัย', 'ศรีสัชนาลัย   ', 51),
(735, 'ศรีสำโรง', 'ศรีสำโรง   ', 51),
(736, 'สวรรคโลก', 'สวรรคโลก   ', 51),
(737, 'ศรีนคร', 'ศรีนคร   ', 51),
(738, 'ทุ่งเสลี่ยม', 'ทุ่งเสลี่ยม   ', 51),
(739, 'เมืองพิษณุโลก', 'เมืองพิษณุโลก   ', 52),
(740, 'นครไทย', 'นครไทย   ', 52),
(741, 'ชาติตระการ', 'ชาติตระการ   ', 52),
(742, 'บางระกำ', 'บางระกำ   ', 52),
(743, 'บางกระทุ่ม', 'บางกระทุ่ม   ', 52),
(744, 'พรหมพิราม', 'พรหมพิราม   ', 52),
(745, 'วัดโบสถ์', 'วัดโบสถ์   ', 52),
(746, 'วังทอง', 'วังทอง   ', 52),
(747, 'เนินมะปราง', 'เนินมะปราง   ', 52),
(748, 'เมืองพิจิตร', 'เมืองพิจิตร   ', 53),
(749, 'วังทรายพูน', 'วังทรายพูน   ', 53),
(750, 'โพธิ์ประทับช้าง', 'โพธิ์ประทับช้าง   ', 53),
(751, 'ตะพานหิน', 'ตะพานหิน   ', 53),
(752, 'บางมูลนาก', 'บางมูลนาก   ', 53),
(753, 'โพทะเล', 'โพทะเล   ', 53),
(754, 'สามง่าม', 'สามง่าม   ', 53),
(755, 'ทับคล้อ', 'ทับคล้อ   ', 53),
(756, 'สากเหล็ก', 'สากเหล็ก   ', 53),
(757, 'บึงนาราง', 'บึงนาราง   ', 53),
(758, 'ดงเจริญ', 'ดงเจริญ   ', 53),
(759, 'วชิรบารมี', 'วชิรบารมี   ', 53),
(760, 'เมืองเพชรบูรณ์', 'เมืองเพชรบูรณ์   ', 54),
(761, 'ชนแดน', 'ชนแดน   ', 54),
(762, 'หล่มสัก', 'หล่มสัก   ', 54),
(763, 'หล่มเก่า', 'หล่มเก่า   ', 54),
(764, 'วิเชียรบุรี', 'วิเชียรบุรี   ', 54),
(765, 'ศรีเทพ', 'ศรีเทพ   ', 54),
(766, 'หนองไผ่', 'หนองไผ่   ', 54),
(767, 'บึงสามพัน', 'บึงสามพัน   ', 54),
(768, 'น้ำหนาว', 'น้ำหนาว   ', 54),
(769, 'วังโป่ง', 'วังโป่ง   ', 54),
(770, 'เขาค้อ', 'เขาค้อ   ', 54),
(771, 'เมืองราชบุรี', 'เมืองราชบุรี   ', 55),
(772, 'จอมบึง', 'จอมบึง   ', 55),
(773, 'สวนผึ้ง', 'สวนผึ้ง   ', 55),
(774, 'ดำเนินสะดวก', 'ดำเนินสะดวก   ', 55),
(775, 'บ้านโป่ง', 'บ้านโป่ง   ', 55),
(776, 'บางแพ', 'บางแพ   ', 55),
(777, 'โพธาราม', 'โพธาราม   ', 55),
(778, 'ปากท่อ', 'ปากท่อ   ', 55),
(779, 'วัดเพลง', 'วัดเพลง   ', 55),
(780, 'บ้านคา', 'บ้านคา   ', 55),
(781, 'ท้องถิ่นเทศบาลตำบลบ้านฆ้อง', 'ท้องถิ่นเทศบาลตำบลบ้านฆ้อง   ', 55),
(782, 'เมืองกาญจนบุรี', 'เมืองกาญจนบุรี   ', 56),
(783, 'ไทรโยค', 'ไทรโยค   ', 56),
(784, 'บ่อพลอย', 'บ่อพลอย   ', 56),
(785, 'ศรีสวัสดิ์', 'ศรีสวัสดิ์   ', 56),
(786, 'ท่ามะกา', 'ท่ามะกา   ', 56),
(787, 'ท่าม่วง', 'ท่าม่วง   ', 56),
(788, 'ทองผาภูมิ', 'ทองผาภูมิ   ', 56),
(789, 'สังขละบุรี', 'สังขละบุรี   ', 56),
(790, 'พนมทวน', 'พนมทวน   ', 56),
(791, 'เลาขวัญ', 'เลาขวัญ   ', 56),
(792, 'ด่านมะขามเตี้ย', 'ด่านมะขามเตี้ย   ', 56),
(793, 'หนองปรือ', 'หนองปรือ   ', 56),
(794, 'ห้วยกระเจา', 'ห้วยกระเจา   ', 56),
(795, 'สาขาตำบลท่ากระดาน', 'สาขาตำบลท่ากระดาน*   ', 56),
(796, 'บ้านทวน  จ.กาญจนบุรี', '*บ้านทวน  จ.กาญจนบุรี   ', 56),
(797, 'เมืองสุพรรณบุรี', 'เมืองสุพรรณบุรี   ', 57),
(798, 'เดิมบางนางบวช', 'เดิมบางนางบวช   ', 57),
(799, 'ด่านช้าง', 'ด่านช้าง   ', 57),
(800, 'บางปลาม้า', 'บางปลาม้า   ', 57),
(801, 'ศรีประจันต์', 'ศรีประจันต์   ', 57),
(802, 'ดอนเจดีย์', 'ดอนเจดีย์   ', 57),
(803, 'สองพี่น้อง', 'สองพี่น้อง   ', 57),
(804, 'สามชุก', 'สามชุก   ', 57),
(805, 'อู่ทอง', 'อู่ทอง   ', 57),
(806, 'หนองหญ้าไซ', 'หนองหญ้าไซ   ', 57),
(807, 'เมืองนครปฐม', 'เมืองนครปฐม   ', 58),
(808, 'กำแพงแสน', 'กำแพงแสน   ', 58),
(809, 'นครชัยศรี', 'นครชัยศรี   ', 58),
(810, 'ดอนตูม', 'ดอนตูม   ', 58),
(811, 'บางเลน', 'บางเลน   ', 58),
(812, 'สามพราน', 'สามพราน   ', 58),
(813, 'พุทธมณฑล', 'พุทธมณฑล   ', 58),
(814, 'เมืองสมุทรสาคร', 'เมืองสมุทรสาคร   ', 59),
(815, 'กระทุ่มแบน', 'กระทุ่มแบน   ', 59),
(816, 'บ้านแพ้ว', 'บ้านแพ้ว   ', 59),
(817, 'เมืองสมุทรสงคราม', 'เมืองสมุทรสงคราม   ', 60),
(818, 'บางคนที', 'บางคนที   ', 60),
(819, 'อัมพวา', 'อัมพวา   ', 60),
(820, 'เมืองเพชรบุรี', 'เมืองเพชรบุรี   ', 61),
(821, 'เขาย้อย', 'เขาย้อย   ', 61),
(822, 'หนองหญ้าปล้อง', 'หนองหญ้าปล้อง   ', 61),
(823, 'ชะอำ', 'ชะอำ   ', 61),
(824, 'ท่ายาง', 'ท่ายาง   ', 61),
(825, 'บ้านลาด', 'บ้านลาด   ', 61),
(826, 'บ้านแหลม', 'บ้านแหลม   ', 61),
(827, 'แก่งกระจาน', 'แก่งกระจาน   ', 61),
(828, 'เมืองประจวบคีรีขันธ์', 'เมืองประจวบคีรีขันธ์   ', 62),
(829, 'กุยบุรี', 'กุยบุรี   ', 62),
(830, 'ทับสะแก', 'ทับสะแก   ', 62),
(831, 'บางสะพาน', 'บางสะพาน   ', 62),
(832, 'บางสะพานน้อย', 'บางสะพานน้อย   ', 62),
(833, 'ปราณบุรี', 'ปราณบุรี   ', 62),
(834, 'หัวหิน', 'หัวหิน   ', 62),
(835, 'สามร้อยยอด', 'สามร้อยยอด   ', 62),
(836, 'เมืองนครศรีธรรมราช', 'เมืองนครศรีธรรมราช   ', 63),
(837, 'พรหมคีรี', 'พรหมคีรี   ', 63),
(838, 'ลานสกา', 'ลานสกา   ', 63),
(839, 'ฉวาง', 'ฉวาง   ', 63),
(840, 'พิปูน', 'พิปูน   ', 63),
(841, 'เชียรใหญ่', 'เชียรใหญ่   ', 63),
(842, 'ชะอวด', 'ชะอวด   ', 63),
(843, 'ท่าศาลา', 'ท่าศาลา   ', 63),
(844, 'ทุ่งสง', 'ทุ่งสง   ', 63),
(845, 'นาบอน', 'นาบอน   ', 63),
(846, 'ทุ่งใหญ่', 'ทุ่งใหญ่   ', 63),
(847, 'ปากพนัง', 'ปากพนัง   ', 63),
(848, 'ร่อนพิบูลย์', 'ร่อนพิบูลย์   ', 63),
(849, 'สิชล', 'สิชล   ', 63),
(850, 'ขนอม', 'ขนอม   ', 63),
(851, 'หัวไทร', 'หัวไทร   ', 63),
(852, 'บางขัน', 'บางขัน   ', 63),
(853, 'ถ้ำพรรณรา', 'ถ้ำพรรณรา   ', 63),
(854, 'จุฬาภรณ์', 'จุฬาภรณ์   ', 63),
(855, 'พระพรหม', 'พระพรหม   ', 63),
(856, 'นบพิตำ', 'นบพิตำ   ', 63),
(857, 'ช้างกลาง', 'ช้างกลาง   ', 63),
(858, 'เฉลิมพระเกียรติ', 'เฉลิมพระเกียรติ   ', 63),
(859, 'เชียรใหญ่ (สาขาตำบลเสือหึง)', 'เชียรใหญ่ (สาขาตำบลเสือหึง)*   ', 63),
(860, 'สาขาตำบลสวนหลวง', 'สาขาตำบลสวนหลวง**   ', 63),
(861, 'ร่อนพิบูลย์ (สาขาตำบลหินตก)', 'ร่อนพิบูลย์ (สาขาตำบลหินตก)*   ', 63),
(862, 'หัวไทร (สาขาตำบลควนชะลิก)', 'หัวไทร (สาขาตำบลควนชะลิก)*   ', 63),
(863, 'ทุ่งสง (สาขาตำบลกะปาง)', 'ทุ่งสง (สาขาตำบลกะปาง)*   ', 63),
(864, 'เมืองกระบี่', 'เมืองกระบี่   ', 64),
(865, 'เขาพนม', 'เขาพนม   ', 64),
(866, 'เกาะลันตา', 'เกาะลันตา   ', 64),
(867, 'คลองท่อม', 'คลองท่อม   ', 64),
(868, 'อ่าวลึก', 'อ่าวลึก   ', 64),
(869, 'ปลายพระยา', 'ปลายพระยา   ', 64),
(870, 'ลำทับ', 'ลำทับ   ', 64),
(871, 'เหนือคลอง', 'เหนือคลอง   ', 64),
(872, 'เมืองพังงา', 'เมืองพังงา   ', 65),
(873, 'เกาะยาว', 'เกาะยาว   ', 65),
(874, 'กะปง', 'กะปง   ', 65),
(875, 'ตะกั่วทุ่ง', 'ตะกั่วทุ่ง   ', 65),
(876, 'ตะกั่วป่า', 'ตะกั่วป่า   ', 65),
(877, 'คุระบุรี', 'คุระบุรี   ', 65),
(878, 'ทับปุด', 'ทับปุด   ', 65),
(879, 'ท้ายเหมือง', 'ท้ายเหมือง   ', 65),
(880, 'เมืองภูเก็ต', 'เมืองภูเก็ต   ', 66),
(881, 'กะทู้', 'กะทู้   ', 66),
(882, 'ถลาง', 'ถลาง   ', 66),
(883, 'ทุ่งคา', '*ทุ่งคา   ', 66),
(884, 'เมืองสุราษฎร์ธานี', 'เมืองสุราษฎร์ธานี   ', 67),
(885, 'กาญจนดิษฐ์', 'กาญจนดิษฐ์   ', 67),
(886, 'ดอนสัก', 'ดอนสัก   ', 67),
(887, 'เกาะสมุย', 'เกาะสมุย   ', 67),
(888, 'เกาะพะงัน', 'เกาะพะงัน   ', 67),
(889, 'ไชยา', 'ไชยา   ', 67),
(890, 'ท่าชนะ', 'ท่าชนะ   ', 67),
(891, 'คีรีรัฐนิคม', 'คีรีรัฐนิคม   ', 67),
(892, 'บ้านตาขุน', 'บ้านตาขุน   ', 67),
(893, 'พนม', 'พนม   ', 67),
(894, 'ท่าฉาง', 'ท่าฉาง   ', 67),
(895, 'บ้านนาสาร', 'บ้านนาสาร   ', 67),
(896, 'บ้านนาเดิม', 'บ้านนาเดิม   ', 67),
(897, 'เคียนซา', 'เคียนซา   ', 67),
(898, 'เวียงสระ', 'เวียงสระ   ', 67),
(899, 'พระแสง', 'พระแสง   ', 67),
(900, 'พุนพิน', 'พุนพิน   ', 67),
(901, 'ชัยบุรี', 'ชัยบุรี   ', 67),
(902, 'วิภาวดี', 'วิภาวดี   ', 67),
(903, 'เกาะพงัน (สาขาตำบลเกาะเต่า)', 'เกาะพงัน (สาขาตำบลเกาะเต่า)*   ', 67),
(904, 'อ.บ้านดอน  จ.สุราษฎร์ธานี', '*อ.บ้านดอน  จ.สุราษฎร์ธานี   ', 67),
(905, 'เมืองระนอง', 'เมืองระนอง   ', 68),
(906, 'ละอุ่น', 'ละอุ่น   ', 68),
(907, 'กะเปอร์', 'กะเปอร์   ', 68),
(908, 'กระบุรี', 'กระบุรี   ', 68),
(909, 'สุขสำราญ', 'สุขสำราญ   ', 68),
(910, 'เมืองชุมพร', 'เมืองชุมพร   ', 69),
(911, 'ท่าแซะ', 'ท่าแซะ   ', 69),
(912, 'ปะทิว', 'ปะทิว   ', 69),
(913, 'หลังสวน', 'หลังสวน   ', 69),
(914, 'ละแม', 'ละแม   ', 69),
(915, 'พะโต๊ะ', 'พะโต๊ะ   ', 69),
(916, 'สวี', 'สวี   ', 69),
(917, 'ทุ่งตะโก', 'ทุ่งตะโก   ', 69),
(918, 'เมืองสงขลา', 'เมืองสงขลา   ', 70),
(919, 'สทิงพระ', 'สทิงพระ   ', 70),
(920, 'จะนะ', 'จะนะ   ', 70),
(921, 'นาทวี', 'นาทวี   ', 70),
(922, 'เทพา', 'เทพา   ', 70),
(923, 'สะบ้าย้อย', 'สะบ้าย้อย   ', 70),
(924, 'ระโนด', 'ระโนด   ', 70),
(925, 'กระแสสินธุ์', 'กระแสสินธุ์   ', 70),
(926, 'รัตภูมิ', 'รัตภูมิ   ', 70),
(927, 'สะเดา', 'สะเดา   ', 70),
(928, 'หาดใหญ่', 'หาดใหญ่   ', 70),
(929, 'นาหม่อม', 'นาหม่อม   ', 70),
(930, 'ควนเนียง', 'ควนเนียง   ', 70),
(931, 'บางกล่ำ', 'บางกล่ำ   ', 70),
(932, 'สิงหนคร', 'สิงหนคร   ', 70),
(933, 'คลองหอยโข่ง', 'คลองหอยโข่ง   ', 70),
(934, 'ท้องถิ่นเทศบาลตำบลสำนักขาม', 'ท้องถิ่นเทศบาลตำบลสำนักขาม   ', 70),
(935, 'เทศบาลตำบลบ้านพรุ', 'เทศบาลตำบลบ้านพรุ*   ', 70),
(936, 'เมืองสตูล', 'เมืองสตูล   ', 71),
(937, 'ควนโดน', 'ควนโดน   ', 71),
(938, 'ควนกาหลง', 'ควนกาหลง   ', 71),
(939, 'ท่าแพ', 'ท่าแพ   ', 71),
(940, 'ละงู', 'ละงู   ', 71),
(941, 'ทุ่งหว้า', 'ทุ่งหว้า   ', 71),
(942, 'มะนัง', 'มะนัง   ', 71),
(943, 'เมืองตรัง', 'เมืองตรัง   ', 72),
(944, 'กันตัง', 'กันตัง   ', 72),
(945, 'ย่านตาขาว', 'ย่านตาขาว   ', 72),
(946, 'ปะเหลียน', 'ปะเหลียน   ', 72),
(947, 'สิเกา', 'สิเกา   ', 72),
(948, 'ห้วยยอด', 'ห้วยยอด   ', 72),
(949, 'วังวิเศษ', 'วังวิเศษ   ', 72),
(950, 'นาโยง', 'นาโยง   ', 72),
(951, 'รัษฎา', 'รัษฎา   ', 72),
(952, 'หาดสำราญ', 'หาดสำราญ   ', 72),
(953, 'อำเภอเมืองตรัง(สาขาคลองเต็ง)', 'อำเภอเมืองตรัง(สาขาคลองเต็ง)**   ', 72),
(954, 'เมืองพัทลุง', 'เมืองพัทลุง   ', 73),
(955, 'กงหรา', 'กงหรา   ', 73),
(956, 'เขาชัยสน', 'เขาชัยสน   ', 73),
(957, 'ตะโหมด', 'ตะโหมด   ', 73),
(958, 'ควนขนุน', 'ควนขนุน   ', 73),
(959, 'ปากพะยูน', 'ปากพะยูน   ', 73),
(960, 'ศรีบรรพต', 'ศรีบรรพต   ', 73),
(961, 'ป่าบอน', 'ป่าบอน   ', 73),
(962, 'บางแก้ว', 'บางแก้ว   ', 73),
(963, 'ป่าพะยอม', 'ป่าพะยอม   ', 73),
(964, 'ศรีนครินทร์', 'ศรีนครินทร์   ', 73),
(965, 'เมืองปัตตานี', 'เมืองปัตตานี   ', 74),
(966, 'โคกโพธิ์', 'โคกโพธิ์   ', 74),
(967, 'หนองจิก', 'หนองจิก   ', 74),
(968, 'ปะนาเระ', 'ปะนาเระ   ', 74),
(969, 'มายอ', 'มายอ   ', 74),
(970, 'ทุ่งยางแดง', 'ทุ่งยางแดง   ', 74),
(971, 'สายบุรี', 'สายบุรี   ', 74),
(972, 'ไม้แก่น', 'ไม้แก่น   ', 74),
(973, 'ยะหริ่ง', 'ยะหริ่ง   ', 74),
(974, 'ยะรัง', 'ยะรัง   ', 74),
(975, 'กะพ้อ', 'กะพ้อ   ', 74),
(976, 'แม่ลาน', 'แม่ลาน   ', 74),
(977, 'เมืองยะลา', 'เมืองยะลา   ', 75),
(978, 'เบตง', 'เบตง   ', 75),
(979, 'บันนังสตา', 'บันนังสตา   ', 75),
(980, 'ธารโต', 'ธารโต   ', 75),
(981, 'ยะหา', 'ยะหา   ', 75),
(982, 'รามัน', 'รามัน   ', 75),
(983, 'กาบัง', 'กาบัง   ', 75),
(984, 'กรงปินัง', 'กรงปินัง   ', 75),
(985, 'เมืองนราธิวาส', 'เมืองนราธิวาส   ', 76),
(986, 'ตากใบ', 'ตากใบ   ', 76),
(987, 'บาเจาะ', 'บาเจาะ   ', 76),
(988, 'ยี่งอ', 'ยี่งอ   ', 76),
(989, 'ระแงะ', 'ระแงะ   ', 76),
(990, 'รือเสาะ', 'รือเสาะ   ', 76),
(991, 'ศรีสาคร', 'ศรีสาคร   ', 76),
(992, 'แว้ง', 'แว้ง   ', 76),
(993, 'สุคิริน', 'สุคิริน   ', 76),
(994, 'สุไหงโก-ลก', 'สุไหงโก-ลก   ', 76),
(995, 'สุไหงปาดี', 'สุไหงปาดี   ', 76),
(996, 'จะแนะ', 'จะแนะ   ', 76),
(997, 'เจาะไอร้อง', 'เจาะไอร้อง   ', 76),
(998, 'อ.บางนรา  จ.นราธิวาส', '*อ.บางนรา  จ.นราธิวาส   ', 76),
(999, 'บึงโขงหลง', 'บึงโขงหลง', 77),
(1000, 'เมืองบึงกาฬ', '', 77),
(1001, 'พรเจริญ', '', 77),
(1002, 'โซ่พิสัย', '', 77),
(1003, 'เซกา', '', 77),
(1004, 'ปากคาด', '', 77),
(1005, 'ศรีวิไล', '', 77),
(1006, 'บุ่งคล้า', '', 77),
(1007, 'อ.เมืองนนทบุรี', '', 3),
(1008, '', '', 42),
(1009, 'บางแค', '', 0),
(1010, 'พนมสารคาม', '', 32),
(1011, 'บางขุนเทียน', '', 0),
(1012, 'บึงโขลงหลง', '', 31),
(1013, 'กิ่งอำเภอเวียงเชีบงรุ้ง', '', 45),
(1014, 'โพนาแก้ว', '', 35),
(1015, 'ดอกคำใต้', '', 0),
(1016, '', '', 0),
(1017, 'เมือง', '', 27),
(1018, 'กุฉินารายณ์', '', 0),
(1019, 'ภาษีเจริญ', '', 0),
(1020, 'ธนบุรี', '', 0),
(1021, 'กุฉินนารายณ์', '', 34),
(1022, 'ตลิ่งชัน', '', 0),
(1023, 'บางตลาด', '', 34),
(1024, 'จอมทอง', '', 0),
(1025, 'คลองสามวา', '', 0),
(1026, 'ท่าศลา', '', 63),
(1027, 'เมือง', '', 4),
(1028, 'สาทร', '', 0),
(1029, 'กิ่งอำเภอนบพิตำ', '', 63),
(1030, 'อ.เลิงนกทา', '', 24),
(1031, 'เมือง', '', 19),
(1032, 'เมือง', '', 66),
(1033, 'ท่ามะกา', '', 0),
(1034, 'บางบอน', '', 0),
(1035, 'บางกอกน้อย', '', 0),
(1036, 'คำซะอี', '', 37),
(1037, 'กิ่งอำเภอโพธิ์ศรีสุวรรณ', '', 22),
(1038, 'เมืองกาฬสนธ์ุ', '', 34),
(1039, 'ดุสิต', '', 0),
(1040, 'เมือง', '', 21),
(1041, 'เมืองสมุทรสงคราม', '', 0),
(1042, 'เมืองกาฬสินธิ์', '', 0),
(1043, 'เมือง', '', 50),
(1044, 'เมือง', '', 54),
(1045, 'หนองแขม', '', 0),
(1046, 'อัมพวา', '', 0),
(1047, 'เมือง', '', 49),
(1048, 'พาขาง', '', 30),
(1049, 'กิ่งอ.บ้านด่าน', '', 20);

-- --------------------------------------------------------

--
-- Table structure for table `mt_division`
--

CREATE TABLE `mt_division` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `mt_evangelist_sq`
--

CREATE TABLE `mt_evangelist_sq` (
  `id` int(11) NOT NULL,
  `sub_orgid` int(11) NOT NULL,
  `sq_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `mt_flow_status`
--

CREATE TABLE `mt_flow_status` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `mt_main_org`
--

CREATE TABLE `mt_main_org` (
  `id` int(11) NOT NULL,
  `name_th` varchar(500) DEFAULT NULL,
  `name_en` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `street` varchar(500) DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL,
  `districtid` int(11) DEFAULT NULL,
  `sub_districtid` int(11) DEFAULT NULL,
  `phone_number` int(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_date` date NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) DEFAULT NULL,
  `update_date` date NOT NULL DEFAULT current_timestamp(),
  `posecode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `mt_menu`
--

CREATE TABLE `mt_menu` (
  `ID` int(11) NOT NULL,
  `menu_name` varchar(250) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `fafaicon` varchar(30) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mt_menu`
--

INSERT INTO `mt_menu` (`ID`, `menu_name`, `sort_order`, `fafaicon`, `link`, `is_active`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'ระบบจัดการหนังสือรับรองคนต่างด้าวขอรับการตรวจลงตราประเภทคนอยู่ชั่วคราวเพื่อพำนักอยู่ในราชอาณาจักรเกินกว่า 90 วัน (รายใหม่)', 1, 'fa fa-book', '#', 1, 1, '2021-05-19 17:33:20', 1, '2021-05-19 17:33:20'),
(2, 'ระบบจัดการหนังสือรับรองเพื่อขอต่ออายุวีซ่า', 2, 'fa fa-book', '#', 1, 1, '2021-05-19 17:33:20', 1, '2021-05-19 17:33:20'),
(3, 'ระบบจัดการหนังสือรับรองเพื่อขอมีใบอนุญาตทำงาน', 3, 'fa fa-book', '#', 1, 1, '2021-05-19 17:33:20', 1, '2021-05-19 17:33:20'),
(4, 'ระบบจัดการหนังสือรับรองเพื่อขอต่อใบอนุญาตทำงาน', 4, 'fa fa-book', '#', 1, 1, '2021-05-19 17:33:20', 1, '2021-05-19 17:33:20'),
(5, 'ประเมินความพึงพอใจ', 5, 'fa fa-check', '#', 1, 1, '2021-05-19 17:33:20', 1, '2021-05-19 17:33:20'),
(6, 'รายงาน', 6, 'fa fa-chart-bar', '#', 1, 1, '2021-05-19 17:33:20', 1, '2021-05-19 17:33:20'),
(7, 'จัดการระบบ', 7, 'fa fa-cog', '#', 1, 1, '2021-05-19 17:33:20', 1, '2021-05-19 17:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `mt_menulv2`
--

CREATE TABLE `mt_menulv2` (
  `ID` int(11) NOT NULL,
  `menu_name` varchar(250) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `fafaicon` varchar(30) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `menu_ID` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mt_menulv2`
--

INSERT INTO `mt_menulv2` (`ID`, `menu_name`, `sort_order`, `fafaicon`, `link`, `menu_ID`, `is_active`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'แบบ อก. 1 - 4', 1, NULL, '/orgform_page', 1, 1, 1, '2021-05-19 17:36:06', 1, '2021-05-19 17:36:06'),
(2, 'แบบ อก. 1 - 4', 1, NULL, '#', 2, 1, 1, '2021-05-19 17:36:06', 1, '2021-05-19 17:36:06'),
(3, 'หนังสือขอมีใบอนุญาตทำงาน', 1, NULL, '#', 3, 1, 1, '2021-05-19 17:36:06', 1, '2021-05-19 17:36:06'),
(4, 'หนังสือขอต่อใบอนุญาตทำงาน', 1, NULL, '#', 4, 1, 1, '2021-05-19 17:36:06', 1, '2021-05-19 17:36:06'),
(5, 'รายงานสถิติรายการคำขอ', 1, NULL, '#', 6, 1, 1, '2021-05-19 17:36:06', 1, '2021-05-19 17:36:06'),
(6, 'รายงานสรุปแบบประเมินความพึงพอใจ', 2, NULL, '#', 6, 1, 1, '2021-05-19 17:36:06', 1, '2021-05-19 17:36:06'),
(7, 'รายงานสถิติการเข้าใช้งานระบบ', 3, NULL, '#', 6, 1, 1, '2021-05-19 17:36:06', 1, '2021-05-19 17:36:06'),
(8, 'ผู้ใช้งานระบบ', 1, NULL, '/home', 7, 1, 1, '2021-05-19 17:36:06', 1, '2021-05-19 17:36:06'),
(9, 'องค์การทางศาสนา', 2, NULL, '/settingorgform_page', 7, 1, 1, '2021-05-19 17:36:06', 1, '2021-05-19 17:36:06'),
(10, 'แบบ อก. 1 ที่ใกล้ครบกำหนดวันหมดอายุ', 3, NULL, '#', 7, 1, 1, '2021-05-19 17:36:06', 1, '2021-05-19 17:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `mt_menu_permission`
--

CREATE TABLE `mt_menu_permission` (
  `id` int(11) NOT NULL,
  `role_typeid` int(11) NOT NULL,
  `menu2id` int(11) NOT NULL,
  `menuid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `mt_nationality`
--

CREATE TABLE `mt_nationality` (
  `id` int(11) NOT NULL,
  `name_th` varchar(200) NOT NULL,
  `name_en` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `mt_nationality`
--

INSERT INTO `mt_nationality` (`id`, `name_th`, `name_en`, `is_active`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'โปรตุเกส', 'โปรตุเกส', 1, 1, '2021-05-19 15:30:30', 1, '2021-05-19 15:30:30'),
(2, 'เนเธอร์แลนด์', 'เนเธอร์แลนด์', 1, 1, '2021-05-19 15:30:30', 1, '2021-05-19 15:30:30'),
(3, 'เยอรมนี', 'เยอรมนี', 1, 1, '2021-05-19 15:30:34', 1, '2021-05-19 15:30:34'),
(4, 'ฝรั่งเศส', 'ฝรั่งเศส', 1, 1, '2021-05-19 15:30:34', 1, '2021-05-19 15:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `mt_org_leader`
--

CREATE TABLE `mt_org_leader` (
  `id` int(11) NOT NULL,
  `main_orgid` int(11) NOT NULL,
  `prefixid` int(11) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `street` varchar(500) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `provinceid` int(11) NOT NULL,
  `districtid` int(11) NOT NULL,
  `sub_districtid` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `mt_ prefix`
--

CREATE TABLE `mt_ prefix` (
  `id` int(11) NOT NULL,
  `prefix_name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `mt_ prefix`
--

INSERT INTO `mt_ prefix` (`id`, `prefix_name`, `description`, `is_active`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'นาย', '', 1, 1, '2021-05-19 00:00:00', 1, '2021-05-19 00:00:00'),
(2, 'นางสาว', '', 1, 1, '2021-05-19 14:57:49', 1, '2021-05-19 14:57:49'),
(3, 'นาง', '', 1, 1, '2021-05-19 15:00:11', 1, '2021-05-19 15:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `mt_province`
--

CREATE TABLE `mt_province` (
  `id` int(11) NOT NULL,
  `name_th` varchar(150) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(150) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mt_province`
--

INSERT INTO `mt_province` (`id`, `name_th`, `name_en`) VALUES
(1, 'กรุงเทพมหานคร', 'Bangkok'),
(2, 'สมุทรปราการ', 'Samut Prakan'),
(3, 'นนทบุรี', 'Nonthaburi'),
(4, 'ปทุมธานี', 'Pathum Thani'),
(5, 'พระนครศรีอยุธยา', 'Phra Nakhon Si Ayutthaya'),
(6, 'อ่างทอง', 'Ang Thong'),
(7, 'ลพบุรี', 'Loburi'),
(8, 'สิงห์บุรี', 'Sing Buri'),
(9, 'ชัยนาท', 'Chai Nat'),
(10, 'สระบุรี', 'Saraburi'),
(11, 'ชลบุรี', 'Chon Buri'),
(12, 'ระยอง', 'Rayong'),
(13, 'จันทบุรี', 'Chanthaburi'),
(14, 'ตราด', 'Trat'),
(15, 'ฉะเชิงเทรา', 'Chachoengsao'),
(16, 'ปราจีนบุรี', 'Prachin Buri'),
(17, 'นครนายก', 'Nakhon Nayok'),
(18, 'สระแก้ว', 'Sa Kaeo'),
(19, 'นครราชสีมา', 'Nakhon Ratchasima'),
(20, 'บุรีรัมย์', 'Buri Ram'),
(21, 'สุรินทร์', 'Surin'),
(22, 'ศรีสะเกษ', 'Si Sa Ket'),
(23, 'อุบลราชธานี', 'Ubon Ratchathani'),
(24, 'ยโสธร', 'Yasothon'),
(25, 'ชัยภูมิ', 'Chaiyaphum'),
(26, 'อำนาจเจริญ', 'Amnat Charoen'),
(27, 'หนองบัวลำภู', 'Nong Bua Lam Phu'),
(28, 'ขอนแก่น', 'Khon Kaen'),
(29, 'อุดรธานี', 'Udon Thani'),
(30, 'เลย', 'Loei'),
(31, 'หนองคาย', 'Nong Khai'),
(32, 'มหาสารคาม', 'Maha Sarakham'),
(33, 'ร้อยเอ็ด', 'Roi Et'),
(34, 'กาฬสินธุ์', 'Kalasin'),
(35, 'สกลนคร', 'Sakon Nakhon'),
(36, 'นครพนม', 'Nakhon Phanom'),
(37, 'มุกดาหาร', 'Mukdahan'),
(38, 'เชียงใหม่', 'Chiang Mai'),
(39, 'ลำพูน', 'Lamphun'),
(40, 'ลำปาง', 'Lampang'),
(41, 'อุตรดิตถ์', 'Uttaradit'),
(42, 'แพร่', 'Phrae'),
(43, 'น่าน', 'Nan'),
(44, 'พะเยา', 'Phayao'),
(45, 'เชียงราย', 'Chiang Rai'),
(46, 'แม่ฮ่องสอน', 'Mae Hong Son'),
(47, 'นครสวรรค์', 'Nakhon Sawan'),
(48, 'อุทัยธานี', 'Uthai Thani'),
(49, 'กำแพงเพชร', 'Kamphaeng Phet'),
(50, 'ตาก', 'Tak'),
(51, 'สุโขทัย', 'Sukhothai'),
(52, 'พิษณุโลก', 'Phitsanulok'),
(53, 'พิจิตร', 'Phichit'),
(54, 'เพชรบูรณ์', 'Phetchabun'),
(55, 'ราชบุรี', 'Ratchaburi'),
(56, 'กาญจนบุรี', 'Kanchanaburi'),
(57, 'สุพรรณบุรี', 'Suphan Buri'),
(58, 'นครปฐม', 'Nakhon Pathom'),
(59, 'สมุทรสาคร', 'Samut Sakhon'),
(60, 'สมุทรสงคราม', 'Samut Songkhram'),
(61, 'เพชรบุรี', 'Phetchaburi'),
(62, 'ประจวบคีรีขันธ์', 'Prachuap Khiri Khan'),
(63, 'นครศรีธรรมราช', 'Nakhon Si Thammarat'),
(64, 'กระบี่', 'Krabi'),
(65, 'พังงา', 'Phangnga'),
(66, 'ภูเก็ต', 'Phuket'),
(67, 'สุราษฎร์ธานี', 'Surat Thani'),
(68, 'ระนอง', 'Ranong'),
(69, 'ชุมพร', 'Chumphon'),
(70, 'สงขลา', 'Songkhla'),
(71, 'สตูล', 'Satun'),
(72, 'ตรัง', 'Trang'),
(73, 'พัทลุง', 'Phatthalung'),
(74, 'ปัตตานี', 'Pattani'),
(75, 'ยะลา', 'Yala'),
(76, 'นราธิวาส', 'Narathiwat'),
(77, 'บึงกาฬ', 'buogkan'),
(78, 'เบตง', 'Batong'),
(79, '-', '');

-- --------------------------------------------------------

--
-- Table structure for table `mt_race`
--

CREATE TABLE `mt_race` (
  `id` int(11) NOT NULL,
  `name_th` varchar(200) NOT NULL,
  `name_en` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `mt_race`
--

INSERT INTO `mt_race` (`id`, `name_th`, `name_en`, `is_active`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'โปรตุเกส', 'โปรตุเกส', 1, 1, '2021-05-19 15:27:31', 1, '2021-05-19 15:27:31'),
(2, 'เนเธอร์แลนด์', 'เนเธอร์แลนด์', 1, 1, '2021-05-19 15:27:45', 1, '2021-05-19 15:27:45'),
(3, 'เยอรมนี', 'เยอรมนี', 1, 1, '2021-05-19 15:28:00', 1, '2021-05-19 15:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `mt_religion`
--

CREATE TABLE `mt_religion` (
  `id` int(11) NOT NULL,
  `name_th` varchar(200) NOT NULL,
  `name_en` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `mt_religion`
--

INSERT INTO `mt_religion` (`id`, `name_th`, `name_en`, `is_active`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'คริสต์', 'คริสต์', 1, 1, '2021-05-19 15:37:10', 1, '2021-05-19 15:37:10'),
(2, 'อิสลาม', 'อิสลาม', 1, 1, '2021-05-19 15:37:30', 1, '2021-05-19 15:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `mt_role_type`
--

CREATE TABLE `mt_role_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `mt_role_type`
--

INSERT INTO `mt_role_type` (`id`, `name`, `is_active`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'ผู้ดูแลระบบ (Super Admin) ', 1, 1, '2021-05-19 17:26:48', 1, '2021-05-19 17:26:48'),
(2, 'เจ้าหน้าที่กรมการศาสนา (Admin) ', 1, 1, '2021-05-19 17:27:05', 1, '2021-05-19 17:27:05'),
(3, 'เจ้าหน้าที่องค์การทางศาสนา (User)', 1, 1, '2021-05-19 17:27:30', 1, '2021-05-19 17:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `mt_sub_district`
--

CREATE TABLE `mt_sub_district` (
  `id` int(5) NOT NULL,
  `name_th` varchar(150) NOT NULL,
  `district_id` int(5) NOT NULL DEFAULT 0,
  `province_id` int(5) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mt_sub_district`
--

INSERT INTO `mt_sub_district` (`id`, `name_th`, `district_id`, `province_id`) VALUES
(1, 'พระบรมมหาราชวัง', 1, 1),
(2, 'วังบูรพาภิรมย์', 1, 1),
(3, 'วัดราชบพิธ', 1, 1),
(4, 'สำราญราษฎร์', 1, 1),
(5, 'ศาลเจ้าพ่อเสือ', 1, 1),
(6, 'เสาชิงช้า', 1, 1),
(7, 'บวรนิเวศ', 1, 1),
(8, 'ตลาดยอด', 1, 1),
(9, 'ชนะสงคราม', 1, 1),
(10, 'บ้านพานถม', 1, 1),
(11, 'บางขุนพรหม', 1, 1),
(12, 'วัดสามพระยา', 1, 1),
(13, 'ดุสิต', 2, 1),
(14, 'วชิรพยาบาล', 2, 1),
(15, 'สวนจิตรลดา', 2, 1),
(16, 'สี่แยกมหานาค', 2, 1),
(17, 'บางซื่อ', 2, 1),
(18, 'ถนนนครไชยศรี', 2, 1),
(19, 'สามเสนใน', 2, 1),
(20, 'กระทุ่มราย', 3, 1),
(21, 'หนองจอก', 3, 1),
(22, 'คลองสิบ', 3, 1),
(23, 'คลองสิบสอง', 3, 1),
(24, 'โคกแฝด', 3, 1),
(25, 'คู้ฝั่งเหนือ', 3, 1),
(26, 'ลำผักชี', 3, 1),
(27, 'ลำต้อยติ่ง', 3, 1),
(28, 'มหาพฤฒาราม', 4, 1),
(29, 'สีลม', 4, 1),
(30, 'สุริยวงศ์', 4, 1),
(31, 'บางรัก', 4, 1),
(32, 'สี่พระยา', 4, 1),
(33, 'ลาดยาว', 5, 1),
(34, 'อนุสาวรีย์', 5, 1),
(35, 'คลองถนน', 5, 1),
(36, 'ตลาดบางเขน', 5, 1),
(37, 'สีกัน', 5, 1),
(38, 'สายไหม', 5, 1),
(39, 'ทุ่งสองห้อง', 5, 1),
(40, 'ท่าแร้ง', 5, 1),
(41, 'ออเงิน', 5, 1),
(42, 'บางเขน', 5, 1),
(43, 'คลองจั่น', 6, 1),
(44, 'วังทองหลาง', 6, 1),
(45, 'ลาดพร้าว', 6, 1),
(46, 'คลองกุ่ม', 6, 1),
(47, 'สะพานสูง', 6, 1),
(48, 'คันนายาว', 6, 1),
(49, 'จรเข้บัว', 6, 1),
(50, 'หัวหมาก', 6, 1),
(51, 'รองเมือง', 7, 1),
(52, 'วังใหม่', 7, 1),
(53, 'ปทุมวัน', 7, 1),
(54, 'ลุมพินี', 7, 1),
(55, 'ป้อมปราบ', 8, 1),
(56, 'วัดเทพศิรินทร์', 8, 1),
(57, 'คลองมหานาค', 8, 1),
(58, 'บ้านบาตร', 8, 1),
(59, 'วัดโสมนัส', 8, 1),
(60, 'นางเลิ้ง', 8, 1),
(61, 'คลองเตย', 9, 1),
(62, 'คลองตัน', 9, 1),
(63, 'พระโขนง', 9, 1),
(64, 'บางนา', 9, 1),
(65, 'บางจาก', 9, 1),
(66, 'สวนหลวง', 9, 1),
(67, 'หนองบอน', 9, 1),
(68, 'ประเวศ', 9, 1),
(69, 'ดอกไม้', 9, 1),
(70, 'พระโขนง', 9, 1),
(71, 'คลองตัน', 9, 1),
(72, 'คลองเตย', 9, 1),
(73, 'มีนบุรี', 10, 1),
(74, 'แสนแสบ', 10, 1),
(75, 'บางชัน', 10, 1),
(76, 'ทรายกองดิน', 10, 1),
(77, 'ทรายกองดินใต้', 10, 1),
(78, 'สามวาตะวันออก', 10, 1),
(79, 'สามวาตะวันตก', 10, 1),
(80, 'ลาดกระบัง', 11, 1),
(81, 'คลองสองต้นนุ่น', 11, 1),
(82, 'คลองสามประเวศ', 11, 1),
(83, 'ลำปลาทิว', 11, 1),
(84, 'ทับยาว', 11, 1),
(85, 'ขุมทอง', 11, 1),
(86, 'ทุ่งวัดดอน', 12, 1),
(87, 'ยานนาวา', 12, 1),
(88, 'ช่องนนทรี', 12, 1),
(89, 'บางโพงพาง', 12, 1),
(90, 'วัดพระยาไกร', 12, 1),
(91, 'บางโคล่', 12, 1),
(92, 'บางคอแหลม', 12, 1),
(93, 'ทุ่งมหาเมฆ', 12, 1),
(94, 'บางโคล่', 12, 1),
(95, 'บางคอแหลม', 12, 1),
(96, 'จักรวรรดิ', 13, 1),
(97, 'สัมพันธวงศ์', 13, 1),
(98, 'ตลาดน้อย', 13, 1),
(99, 'สามเสนใน', 14, 1),
(100, 'ถนนเพชรบุรี', 14, 1),
(101, 'ทุ่งพญาไท', 14, 1),
(102, 'มักกะสัน', 14, 1),
(103, 'ถนนพญาไท', 14, 1),
(104, 'ทุ่งพญาไท', 14, 1),
(105, 'วัดกัลยาณ์', 15, 1),
(106, 'หิรัญรูจี', 15, 1),
(107, 'บางยี่เรือ', 15, 1),
(108, 'บุคคโล', 15, 1),
(109, 'ตลาดพลู', 15, 1),
(110, 'ดาวคะนอง', 15, 1),
(111, 'สำเหร่', 15, 1),
(112, 'คลองสาน', 15, 1),
(113, 'วัดอรุณ', 16, 1),
(114, 'วัดท่าพระ', 16, 1),
(115, 'ห้วยขวาง', 17, 1),
(116, 'บางกะปิ', 17, 1),
(117, 'ดินแดง', 17, 1),
(118, 'สามเสนนอก', 17, 1),
(119, 'สมเด็จเจ้าพระยา', 18, 1),
(120, 'คลองสาน', 18, 1),
(121, 'บางลำภูล่าง', 18, 1),
(122, 'คลองต้นไทร', 18, 1),
(123, 'คลองชักพระ', 19, 1),
(124, 'ตลิ่งชัน', 19, 1),
(125, 'ฉิมพลี', 19, 1),
(126, 'บางพรม', 19, 1),
(127, 'บางระมาด', 19, 1),
(128, 'ทวีวัฒนา', 19, 1),
(129, 'บางเชือกหนัง', 19, 1),
(130, 'ศาลาธรรมสพน์', 19, 1),
(131, 'บางพลัด', 20, 1),
(132, 'บางบำหรุ', 20, 1),
(133, 'บางอ้อ', 20, 1),
(134, 'ศิริราช', 20, 1),
(135, 'บ้านช่างหล่อ', 20, 1),
(136, 'บางขุนนนท์', 20, 1),
(137, 'บางขุนศรี', 20, 1),
(138, 'บางยี่ขัน', 20, 1),
(139, 'อรุณอมรินทร์', 20, 1),
(140, 'บางยี่ขัน', 20, 1),
(141, 'บางบำหรุ', 20, 1),
(142, 'บางอ้อ', 20, 1),
(143, 'บางค้อ', 21, 1),
(144, 'จอมทอง', 21, 1),
(145, 'บางขุนเทียน', 21, 1),
(146, 'บางบอน', 21, 1),
(147, 'ท่าข้าม', 21, 1),
(148, 'บางมด', 21, 1),
(149, 'แสมดำ', 21, 1),
(150, 'บางหว้า', 22, 1),
(151, 'บางด้วน', 22, 1),
(152, 'บางแค', 22, 1),
(153, 'บางแคเหนือ', 22, 1),
(154, 'บางไผ่', 22, 1),
(155, 'บางจาก', 22, 1),
(156, 'บางแวก', 22, 1),
(157, 'คลองขวาง', 22, 1),
(158, 'ปากคลองภาษีเจริญ', 22, 1),
(159, 'คูหาสวรรค์', 22, 1),
(160, 'หลักสอง', 23, 1),
(161, 'หนองแขม', 23, 1),
(162, 'หนองค้างพลู', 23, 1),
(163, 'ราษฎร์บูรณะ', 24, 1),
(164, 'บางปะกอก', 24, 1),
(165, 'บางมด', 24, 1),
(166, 'ทุ่งครุ', 24, 1),
(167, 'บางพลัด', 25, 1),
(168, 'บางอ้อ', 25, 1),
(169, 'บางบำหรุ', 25, 1),
(170, 'บางยี่ขัน', 25, 1),
(171, 'ดินแดง', 26, 1),
(172, 'คลองกุ่ม', 27, 1),
(173, 'สะพานสูง', 27, 1),
(174, 'คันนายาว', 27, 1),
(175, 'ทุ่งวัดดอน', 28, 1),
(176, 'ยานนาวา', 28, 1),
(177, 'ทุ่งมหาเมฆ', 28, 1),
(178, 'บางซื่อ', 29, 1),
(179, 'ลาดยาว', 30, 1),
(180, 'เสนานิคม', 30, 1),
(181, 'จันทรเกษม', 30, 1),
(182, 'จอมพล', 30, 1),
(183, 'จตุจักร', 30, 1),
(184, 'บางคอแหลม', 31, 1),
(185, 'วัดพระยาไกร', 31, 1),
(186, 'บางโคล่', 31, 1),
(187, 'ประเวศ', 32, 1),
(188, 'หนองบอน', 32, 1),
(189, 'ดอกไม้', 32, 1),
(190, 'สวนหลวง', 32, 1),
(191, 'คลองเตย', 33, 1),
(192, 'คลองตัน', 33, 1),
(193, 'พระโขนง', 33, 1),
(194, 'คลองเตยเหนือ', 33, 1),
(195, 'คลองตันเหนือ', 33, 1),
(196, 'พระโขนงเหนือ', 33, 1),
(197, 'สวนหลวง', 34, 1),
(198, 'บางขุนเทียน', 35, 1),
(199, 'บางค้อ', 35, 1),
(200, 'บางมด', 35, 1),
(201, 'จอมทอง', 35, 1),
(202, 'ตลาดบางเขน', 36, 1),
(203, 'สีกัน', 36, 1),
(204, 'ทุ่งสองห้อง', 36, 1),
(205, 'ทุ่งพญาไท', 37, 1),
(206, 'ถนนพญาไท', 37, 1),
(207, 'ถนนเพชรบุรี', 37, 1),
(208, 'มักกะสัน', 37, 1),
(209, 'ลาดพร้าว', 38, 1),
(210, 'จรเข้บัว', 38, 1),
(211, 'คลองเตยเหนือ', 39, 1),
(212, 'คลองตันเหนือ', 39, 1),
(213, 'พระโขนงเหนือ', 39, 1),
(214, 'บางแค', 40, 1),
(215, 'บางแคเหนือ', 40, 1),
(216, 'บางไผ่', 40, 1),
(217, 'หลักสอง', 40, 1),
(218, 'ทุ่งสองห้อง', 41, 1),
(219, 'ตลาดบางเขน', 41, 1),
(220, 'สายไหม', 42, 1),
(221, 'ออเงิน', 42, 1),
(222, 'คลองถนน', 42, 1),
(223, 'คันนายาว', 43, 1),
(224, 'สะพานสูง', 44, 1),
(225, 'วังทองหลาง', 45, 1),
(226, 'สามวาตะวันตก', 46, 1),
(227, 'สามวาตะวันออก', 46, 1),
(228, 'บางชัน', 46, 1),
(229, 'ทรายกองดิน', 46, 1),
(230, 'ทรายกองดินใต้', 46, 1),
(231, 'บางนา', 47, 1),
(232, 'ทวีวัฒนา', 48, 1),
(233, 'ศาลาธรรมสพน์', 48, 1),
(234, 'บางมด', 49, 1),
(235, 'ทุ่งครุ', 49, 1),
(236, 'บางบอน', 50, 1),
(237, 'ปากน้ำ', 52, 2),
(238, 'สำโรงเหนือ', 52, 2),
(239, 'บางเมือง', 52, 2),
(240, 'ท้ายบ้าน', 52, 2),
(241, 'นาเกลือ', 52, 2),
(242, 'แหลมฟ้าผ่า', 52, 2),
(243, 'ในคลองบางปลากด', 52, 2),
(244, 'บางปูใหม่', 52, 2),
(245, 'ปากคลองบางปลากด', 52, 2),
(246, 'แพรกษา', 52, 2),
(247, 'บางโปรง', 52, 2),
(248, 'บางปู', 52, 2),
(249, 'บางด้วน', 52, 2),
(250, 'บางเมืองใหม่', 52, 2),
(251, 'เทพารักษ์', 52, 2),
(252, 'ท้ายบ้านใหม่', 52, 2),
(253, 'แพรกษาใหม่', 52, 2),
(254, 'บางปูเก่า', 52, 2),
(255, 'ในคลองบางปลากด', 52, 2),
(256, 'ปากคลองบางปลากด', 52, 2),
(257, 'แหลมฟ้าผ่า', 52, 2),
(258, 'บ้านคลองสวน', 52, 2),
(259, 'นาเกลือ', 52, 2),
(260, 'บางบ่อ', 53, 2),
(261, 'บ้านระกาศ', 53, 2),
(262, 'บางพลีน้อย', 53, 2),
(263, 'บางเพรียง', 53, 2),
(264, 'คลองด่าน', 53, 2),
(265, 'คลองสวน', 53, 2),
(266, 'เปร็ง', 53, 2),
(267, 'คลองนิยมยาตรา', 53, 2),
(268, 'คลองนิยม', 53, 2),
(269, 'บางพลีใหญ่', 54, 2),
(270, 'บางแก้ว', 54, 2),
(271, 'บางปลา', 54, 2),
(272, 'บางโฉลง', 54, 2),
(273, 'บางเสาธง', 54, 2),
(274, 'ศรีษะจรเข้ใหญ่', 54, 2),
(275, 'ศรีษะจรเข้น้อย', 54, 2),
(276, 'ราชาเทวะ', 54, 2),
(277, 'หนองปรือ', 54, 2),
(278, 'ตลาด', 55, 2),
(279, 'บางพึ่ง', 55, 2),
(280, 'บางจาก', 55, 2),
(281, 'บางครุ', 55, 2),
(282, 'บางหญ้าแพรก', 55, 2),
(283, 'บางหัวเสือ', 55, 2),
(284, 'สำโรงใต้', 55, 2),
(285, 'บางยอ', 55, 2),
(286, 'บางกะเจ้า', 55, 2),
(287, 'บางน้ำผึ้ง', 55, 2),
(288, 'บางกระสอบ', 55, 2),
(289, 'บางกอบัว', 55, 2),
(290, 'ทรงคนอง', 55, 2),
(291, 'สำโรง', 55, 2),
(292, 'สำโรงกลาง', 55, 2),
(293, 'นาเกลือ', 56, 2),
(294, 'บ้านคลองสวน', 56, 2),
(295, 'แหลมฟ้าผ่า', 56, 2),
(296, 'ปากคลองบางปลากด', 56, 2),
(297, 'ในคลองบางปลากด', 56, 2),
(298, 'บางเสาธง', 57, 2),
(299, 'ศีรษะจรเข้น้อย', 57, 2),
(300, 'ศีรษะจรเข้ใหญ่', 57, 2),
(301, 'สวนใหญ่', 58, 3),
(302, 'ตลาดขวัญ', 58, 3),
(303, 'บางเขน', 58, 3),
(304, 'บางกระสอ', 58, 3),
(305, 'ท่าทราย', 58, 3),
(306, 'บางไผ่', 58, 3),
(307, 'บางศรีเมือง', 58, 3),
(308, 'บางกร่าง', 58, 3),
(309, 'ไทรม้า', 58, 3),
(310, 'บางรักน้อย', 58, 3),
(311, 'วัดชลอ', 59, 3),
(312, 'บางกรวย', 59, 3),
(313, 'บางสีทอง', 59, 3),
(314, 'บางขนุน', 59, 3),
(315, 'บางขุนกอง', 59, 3),
(316, 'บางคูเวียง', 59, 3),
(317, 'มหาสวัสดิ์', 59, 3),
(318, 'ปลายบาง', 59, 3),
(319, 'ศาลากลาง', 59, 3),
(320, 'บางม่วง', 60, 3),
(321, 'บางแม่นาง', 60, 3),
(322, 'บางเลน', 60, 3),
(323, 'เสาธงหิน', 60, 3),
(324, 'บางใหญ่', 60, 3),
(325, 'บ้านใหม่', 60, 3),
(326, 'โสนลอย', 61, 3),
(327, 'บางบัวทอง', 61, 3),
(328, 'บางรักใหญ่', 61, 3),
(329, 'บางคูรัด', 61, 3),
(330, 'ละหาร', 61, 3),
(331, 'ลำโพ', 61, 3),
(332, 'พิมลราช', 61, 3),
(333, 'บางรักพัฒนา', 61, 3),
(334, 'ไทรน้อย', 62, 3),
(335, 'ราษฎร์นิยม', 62, 3),
(336, 'หนองเพรางาย', 62, 3),
(337, 'ไทรใหญ่', 62, 3),
(338, 'ขุนศรี', 62, 3),
(339, 'คลองขวาง', 62, 3),
(340, 'ทวีวัฒนา', 62, 3),
(341, 'ปากเกร็ด', 63, 3),
(342, 'บางตลาด', 63, 3),
(343, 'บ้านใหม่', 63, 3),
(344, 'บางพูด', 63, 3),
(345, 'บางตะไนย์', 63, 3),
(346, 'คลองพระอุดม', 63, 3),
(347, 'ท่าอิฐ', 63, 3),
(348, 'เกาะเกร็ด', 63, 3),
(349, 'อ้อมเกร็ด', 63, 3),
(350, 'คลองข่อย', 63, 3),
(351, 'บางพลับ', 63, 3),
(352, 'คลองเกลือ', 63, 3),
(353, 'บางปรอก', 66, 4),
(354, 'บ้านใหม่', 66, 4),
(355, 'บ้านกลาง', 66, 4),
(356, 'บ้านฉาง', 66, 4),
(357, 'บ้านกระแชง', 66, 4),
(358, 'บางขะแยง', 66, 4),
(359, 'บางคูวัด', 66, 4),
(360, 'บางหลวง', 66, 4),
(361, 'บางเดื่อ', 66, 4),
(362, 'บางพูด', 66, 4),
(363, 'บางพูน', 66, 4),
(364, 'บางกะดี', 66, 4),
(365, 'สวนพริกไทย', 66, 4),
(366, 'หลักหก', 66, 4),
(367, 'คลองหนึ่ง', 67, 4),
(368, 'คลองสอง', 67, 4),
(369, 'คลองสาม', 67, 4),
(370, 'คลองสี่', 67, 4),
(371, 'คลองห้า', 67, 4),
(372, 'คลองหก', 67, 4),
(373, 'คลองเจ็ด', 67, 4),
(374, 'ประชาธิปัตย์', 68, 4),
(375, 'บึงยี่โถ', 68, 4),
(376, 'รังสิต', 68, 4),
(377, 'ลำผักกูด', 68, 4),
(378, 'บึงสนั่น', 68, 4),
(379, 'บึงน้ำรักษ์', 68, 4),
(380, 'บึงบา', 69, 4),
(381, 'บึงบอน', 69, 4),
(382, 'บึงกาสาม', 69, 4),
(383, 'บึงชำอ้อ', 69, 4),
(384, 'หนองสามวัง', 69, 4),
(385, 'ศาลาครุ', 69, 4),
(386, 'นพรัตน์', 69, 4),
(387, 'ระแหง', 70, 4),
(388, 'ลาดหลุมแก้ว', 70, 4),
(389, 'คูบางหลวง', 70, 4),
(390, 'คูขวาง', 70, 4),
(391, 'คลองพระอุดม', 70, 4),
(392, 'บ่อเงิน', 70, 4),
(393, 'หน้าไม้', 70, 4),
(394, 'คูคต', 71, 4),
(395, 'ลาดสวาย', 71, 4),
(396, 'บึงคำพร้อย', 71, 4),
(397, 'ลำลูกกา', 71, 4),
(398, 'บึงทองหลาง', 71, 4),
(399, 'ลำไทร', 71, 4),
(400, 'บึงคอไห', 71, 4),
(401, 'พืชอุดม', 71, 4),
(402, 'บางเตย', 72, 4),
(403, 'คลองควาย', 72, 4),
(404, 'สามโคก', 72, 4),
(405, 'กระแชง', 72, 4),
(406, 'บางโพธิ์เหนือ', 72, 4),
(407, 'เชียงรากใหญ่', 72, 4),
(408, 'บ้านปทุม', 72, 4),
(409, 'บ้านงิ้ว', 72, 4),
(410, 'เชียงรากน้อย', 72, 4),
(411, 'บางกระบือ', 72, 4),
(412, 'ท้ายเกาะ', 72, 4),
(413, 'ประตูชัย', 74, 5),
(414, 'กะมัง', 74, 5),
(415, 'หอรัตนไชย', 74, 5),
(416, 'หัวรอ', 74, 5),
(417, 'ท่าวาสุกรี', 74, 5),
(418, 'ไผ่ลิง', 74, 5),
(419, 'ปากกราน', 74, 5),
(420, 'ภูเขาทอง', 74, 5),
(421, 'สำเภาล่ม', 74, 5),
(422, 'สวนพริก', 74, 5),
(423, 'คลองตะเคียน', 74, 5),
(424, 'วัดตูม', 74, 5),
(425, 'หันตรา', 74, 5),
(426, 'ลุมพลี', 74, 5),
(427, 'บ้านใหม่', 74, 5),
(428, 'บ้านเกาะ', 74, 5),
(429, 'คลองสวนพลู', 74, 5),
(430, 'คลองสระบัว', 74, 5),
(431, 'เกาะเรียน', 74, 5),
(432, 'บ้านป้อม', 74, 5),
(433, 'บ้านรุน', 74, 5),
(434, 'จำปา', 74, 5),
(435, 'ท่าเรือ', 75, 5),
(436, 'จำปา', 75, 5),
(437, 'ท่าหลวง', 75, 5),
(438, 'บ้านร่อม', 75, 5),
(439, 'ศาลาลอย', 75, 5),
(440, 'วังแดง', 75, 5),
(441, 'โพธิ์เอน', 75, 5),
(442, 'ปากท่า', 75, 5),
(443, 'หนองขนาก', 75, 5),
(444, 'ท่าเจ้าสนุก', 75, 5),
(445, 'นครหลวง', 76, 5),
(446, 'ท่าช้าง', 76, 5),
(447, 'บ่อโพง', 76, 5),
(448, 'บ้านชุ้ง', 76, 5),
(449, 'ปากจั่น', 76, 5),
(450, 'บางระกำ', 76, 5),
(451, 'บางพระครู', 76, 5),
(452, 'แม่ลา', 76, 5),
(453, 'หนองปลิง', 76, 5),
(454, 'คลองสะแก', 76, 5),
(455, 'สามไถ', 76, 5),
(456, 'พระนอน', 76, 5),
(457, 'บางไทร', 77, 5),
(458, 'บางพลี', 77, 5),
(459, 'สนามชัย', 77, 5),
(460, 'บ้านแป้ง', 77, 5),
(461, 'หน้าไม้', 77, 5),
(462, 'บางยี่โท', 77, 5),
(463, 'แคออก', 77, 5),
(464, 'แคตก', 77, 5),
(465, 'ช่างเหล็ก', 77, 5),
(466, 'กระแชง', 77, 5),
(467, 'บ้านกลึง', 77, 5),
(468, 'ช้างน้อย', 77, 5),
(469, 'ห่อหมก', 77, 5),
(470, 'ไผ่พระ', 77, 5),
(471, 'กกแก้วบูรพา', 77, 5),
(472, 'ไม้ตรา', 77, 5),
(473, 'บ้านม้า', 77, 5),
(474, 'บ้านเกาะ', 77, 5),
(475, 'ราชคราม', 77, 5),
(476, 'ช้างใหญ่', 77, 5),
(477, 'โพแตง', 77, 5),
(478, 'เชียงรากน้อย', 77, 5),
(479, 'โคกช้าง', 77, 5),
(480, 'บางบาล', 78, 5),
(481, 'วัดยม', 78, 5),
(482, 'ไทรน้อย', 78, 5),
(483, 'สะพานไทย', 78, 5),
(484, 'มหาพราหมณ์', 78, 5),
(485, 'กบเจา', 78, 5),
(486, 'บ้านคลัง', 78, 5),
(487, 'พระขาว', 78, 5),
(488, 'น้ำเต้า', 78, 5),
(489, 'ทางช้าง', 78, 5),
(490, 'วัดตะกู', 78, 5),
(491, 'บางหลวง', 78, 5),
(492, 'บางหลวงโดด', 78, 5),
(493, 'บางหัก', 78, 5),
(494, 'บางชะนี', 78, 5),
(495, 'บ้านกุ่ม', 78, 5),
(496, 'บ้านเลน', 79, 5),
(497, 'เชียงรากน้อย', 79, 5),
(498, 'บ้านโพ', 79, 5),
(499, 'บ้านกรด', 79, 5),
(500, 'บางกระสั้น', 79, 5),
(501, 'คลองจิก', 79, 5),
(502, 'บ้านหว้า', 79, 5),
(503, 'วัดยม', 79, 5),
(504, 'บางประแดง', 79, 5),
(505, 'สามเรือน', 79, 5),
(506, 'เกาะเกิด', 79, 5),
(507, 'บ้านพลับ', 79, 5),
(508, 'บ้านแป้ง', 79, 5),
(509, 'คุ้งลาน', 79, 5),
(510, 'ตลิ่งชัน', 79, 5),
(511, 'บ้านสร้าง', 79, 5),
(512, 'ตลาดเกรียบ', 79, 5),
(513, 'ขนอนหลวง', 79, 5),
(514, 'บางปะหัน', 80, 5),
(515, 'ขยาย', 80, 5),
(516, 'บางเดื่อ', 80, 5),
(517, 'เสาธง', 80, 5),
(518, 'ทางกลาง', 80, 5),
(519, 'บางเพลิง', 80, 5),
(520, 'หันสัง', 80, 5),
(521, 'บางนางร้า', 80, 5),
(522, 'ตานิม', 80, 5),
(523, 'ทับน้ำ', 80, 5),
(524, 'บ้านม้า', 80, 5),
(525, 'ขวัญเมือง', 80, 5),
(526, 'บ้านลี่', 80, 5),
(527, 'โพธิ์สามต้น', 80, 5),
(528, 'พุทเลา', 80, 5),
(529, 'ตาลเอน', 80, 5),
(530, 'บ้านขล้อ', 80, 5),
(531, 'ผักไห่', 81, 5),
(532, 'อมฤต', 81, 5),
(533, 'บ้านแค', 81, 5),
(534, 'ลาดน้ำเค็ม', 81, 5),
(535, 'ตาลาน', 81, 5),
(536, 'ท่าดินแดง', 81, 5),
(537, 'ดอนลาน', 81, 5),
(538, 'นาคู', 81, 5),
(539, 'กุฎี', 81, 5),
(540, 'ลำตะเคียน', 81, 5),
(541, 'โคกช้าง', 81, 5),
(542, 'จักราช', 81, 5),
(543, 'หนองน้ำใหญ่', 81, 5),
(544, 'ลาดชิด', 81, 5),
(545, 'หน้าโคก', 81, 5),
(546, 'บ้านใหญ่', 81, 5),
(547, 'ภาชี', 82, 5),
(548, 'โคกม่วง', 82, 5),
(549, 'ระโสม', 82, 5),
(550, 'หนองน้ำใส', 82, 5),
(551, 'ดอนหญ้านาง', 82, 5),
(552, 'ไผ่ล้อม', 82, 5),
(553, 'กระจิว', 82, 5),
(554, 'พระแก้ว', 82, 5),
(555, 'ลาดบัวหลวง', 83, 5),
(556, 'หลักชัย', 83, 5),
(557, 'สามเมือง', 83, 5),
(558, 'พระยาบันลือ', 83, 5),
(559, 'สิงหนาท', 83, 5),
(560, 'คู้สลอด', 83, 5),
(561, 'คลองพระยาบันลือ', 83, 5),
(562, 'ลำตาเสา', 84, 5),
(563, 'บ่อตาโล่', 84, 5),
(564, 'วังน้อย', 84, 5),
(565, 'ลำไทร', 84, 5),
(566, 'สนับทึบ', 84, 5),
(567, 'พยอม', 84, 5),
(568, 'หันตะเภา', 84, 5),
(569, 'วังจุฬา', 84, 5),
(570, 'ข้าวงาม', 84, 5),
(571, 'ชะแมบ', 84, 5),
(572, 'เสนา', 85, 5),
(573, 'บ้านแพน', 85, 5),
(574, 'เจ้าเจ็ด', 85, 5),
(575, 'สามกอ', 85, 5),
(576, 'บางนมโค', 85, 5),
(577, 'หัวเวียง', 85, 5),
(578, 'มารวิชัย', 85, 5),
(579, 'บ้านโพธิ์', 85, 5),
(580, 'รางจรเข้', 85, 5),
(581, 'บ้านกระทุ่ม', 85, 5),
(582, 'บ้านแถว', 85, 5),
(583, 'ชายนา', 85, 5),
(584, 'สามตุ่ม', 85, 5),
(585, 'ลาดงา', 85, 5),
(586, 'ดอนทอง', 85, 5),
(587, 'บ้านหลวง', 85, 5),
(588, 'เจ้าเสด็จ', 85, 5),
(589, 'บางซ้าย', 86, 5),
(590, 'แก้วฟ้า', 86, 5),
(591, 'เต่าเล่า', 86, 5),
(592, 'ปลายกลัด', 86, 5),
(593, 'เทพมงคล', 86, 5),
(594, 'วังพัฒนา', 86, 5),
(595, 'คานหาม', 87, 5),
(596, 'บ้านช้าง', 87, 5),
(597, 'สามบัณฑิต', 87, 5),
(598, 'บ้านหีบ', 87, 5),
(599, 'หนองไม้ซุง', 87, 5),
(600, 'อุทัย', 87, 5),
(601, 'เสนา', 87, 5),
(602, 'หนองน้ำส้ม', 87, 5),
(603, 'โพสาวหาญ', 87, 5),
(604, 'ธนู', 87, 5),
(605, 'ข้าวเม่า', 87, 5),
(606, 'หัวไผ่', 88, 5),
(607, 'กะทุ่ม', 88, 5),
(608, 'มหาราช', 88, 5),
(609, 'น้ำเต้า', 88, 5),
(610, 'บางนา', 88, 5),
(611, 'โรงช้าง', 88, 5),
(612, 'เจ้าปลุก', 88, 5),
(613, 'พิตเพียน', 88, 5),
(614, 'บ้านนา', 88, 5),
(615, 'บ้านขวาง', 88, 5),
(616, 'ท่าตอ', 88, 5),
(617, 'บ้านใหม่', 88, 5),
(618, 'บ้านแพรก', 89, 5),
(619, 'บ้านใหม่', 89, 5),
(620, 'สำพะเนียง', 89, 5),
(621, 'คลองน้อย', 89, 5),
(622, 'สองห้อง', 89, 5),
(623, 'ตลาดหลวง', 90, 6),
(624, 'บางแก้ว', 90, 6),
(625, 'ศาลาแดง', 90, 6),
(626, 'ป่างิ้ว', 90, 6),
(627, 'บ้านแห', 90, 6),
(628, 'ตลาดกรวด', 90, 6),
(629, 'มหาดไทย', 90, 6),
(630, 'บ้านอิฐ', 90, 6),
(631, 'หัวไผ่', 90, 6),
(632, 'จำปาหล่อ', 90, 6),
(633, 'โพสะ', 90, 6),
(634, 'บ้านรี', 90, 6),
(635, 'คลองวัว', 90, 6),
(636, 'ย่านซื่อ', 90, 6),
(637, 'จรเข้ร้อง', 91, 6),
(638, 'ไชยภูมิ', 91, 6),
(639, 'ชัยฤทธิ์', 91, 6),
(640, 'เทวราช', 91, 6),
(641, 'ราชสถิตย์', 91, 6),
(642, 'ไชโย', 91, 6),
(643, 'หลักฟ้า', 91, 6),
(644, 'ชะไว', 91, 6),
(645, 'ตรีณรงค์', 91, 6),
(646, 'บางปลากด', 92, 6),
(647, 'ป่าโมก', 92, 6),
(648, 'สายทอง', 92, 6),
(649, 'โรงช้าง', 92, 6),
(650, 'บางเสด็จ', 92, 6),
(651, 'นรสิงห์', 92, 6),
(652, 'เอกราช', 92, 6),
(653, 'โผงเผง', 92, 6),
(654, 'อ่างแก้ว', 93, 6),
(655, 'อินทประมูล', 93, 6),
(656, 'บางพลับ', 93, 6),
(657, 'หนองแม่ไก่', 93, 6),
(658, 'รำมะสัก', 93, 6),
(659, 'บางระกำ', 93, 6),
(660, 'โพธิ์รังนก', 93, 6),
(661, 'องครักษ์', 93, 6),
(662, 'โคกพุทรา', 93, 6),
(663, 'ยางช้าย', 93, 6),
(664, 'บ่อแร่', 93, 6),
(665, 'ทางพระ', 93, 6),
(666, 'สามง่าม', 93, 6),
(667, 'บางเจ้าฉ่า', 93, 6),
(668, 'คำหยาด', 93, 6),
(669, 'แสวงหา', 94, 6),
(670, 'ศรีพราน', 94, 6),
(671, 'บ้านพราน', 94, 6),
(672, 'วังน้ำเย็น', 94, 6),
(673, 'สีบัวทอง', 94, 6),
(674, 'ห้วยไผ่', 94, 6),
(675, 'จำลอง', 94, 6),
(676, 'ไผ่จำศิล', 95, 6),
(677, 'ศาลเจ้าโรงทอง', 95, 6),
(678, 'ไผ่ดำพัฒนา', 95, 6),
(679, 'สาวร้องไห้', 95, 6),
(680, 'ท่าช้าง', 95, 6),
(681, 'ยี่ล้น', 95, 6),
(682, 'บางจัก', 95, 6),
(683, 'ห้วยคันแหลน', 95, 6),
(684, 'คลองขนาก', 95, 6),
(685, 'ไผ่วง', 95, 6),
(686, 'สี่ร้อย', 95, 6),
(687, 'ม่วงเตี้ย', 95, 6),
(688, 'หัวตะพาน', 95, 6),
(689, 'หลักแก้ว', 95, 6),
(690, 'ตลาดใหม่', 95, 6),
(691, 'สามโก้', 96, 6),
(692, 'ราษฎรพัฒนา', 96, 6),
(693, 'อบทม', 96, 6),
(694, 'โพธิ์ม่วงพันธ์', 96, 6),
(695, 'มงคลธรรมนิมิต', 96, 6),
(696, 'ทะเลชุบศร', 97, 7),
(697, 'ท่าหิน', 97, 7),
(698, 'กกโก', 97, 7),
(699, 'โก่งธนู', 97, 7),
(700, 'เขาพระงาม', 97, 7),
(701, 'เขาสามยอด', 97, 7),
(702, 'โคกกะเทียม', 97, 7),
(703, 'โคกลำพาน', 97, 7),
(704, 'โคกตูม', 97, 7),
(705, 'งิ้วราย', 97, 7),
(706, 'ดอนโพธิ์', 97, 7),
(707, 'ตะลุง', 97, 7),
(708, 'ทะเลชุบศร', 97, 7),
(709, 'ท่าแค', 97, 7),
(710, 'ท่าศาลา', 97, 7),
(711, 'นิคมสร้างตนเอง', 97, 7),
(712, 'บางขันหมาก', 97, 7),
(713, 'บ้านข่อย', 97, 7),
(714, 'ท้ายตลาด', 97, 7),
(715, 'ป่าตาล', 97, 7),
(716, 'พรหมมาสตร์', 97, 7),
(717, 'โพธิ์เก้าต้น', 97, 7),
(718, 'โพธิ์ตรุ', 97, 7),
(719, 'สี่คลอง', 97, 7),
(720, 'ถนนใหญ่', 97, 7),
(721, 'พัฒนานิคม', 98, 7),
(722, 'ช่องสาริกา', 98, 7),
(723, 'มะนาวหวาน', 98, 7),
(724, 'ดีลัง', 98, 7),
(725, 'โคกสลุง', 98, 7),
(726, 'ชอนน้อย', 98, 7),
(727, 'หนองบัว', 98, 7),
(728, 'ห้วยขุนราม', 98, 7),
(729, 'น้ำสุด', 98, 7),
(730, 'โคกสำโรง', 99, 7),
(731, 'เกาะแก้ว', 99, 7),
(732, 'ถลุงเหล็ก', 99, 7),
(733, 'หลุมข้าว', 99, 7),
(734, 'ห้วยโป่ง', 99, 7),
(735, 'คลองเกตุ', 99, 7),
(736, 'สะแกราบ', 99, 7),
(737, 'เพนียด', 99, 7),
(738, 'วังเพลิง', 99, 7),
(739, 'ดงมะรุม', 99, 7),
(740, 'ชอนสารเดช', 99, 7),
(741, 'หนองม่วง', 99, 7),
(742, 'บ่อทอง', 99, 7),
(743, 'ยางโทน', 99, 7),
(744, 'ชอนสมบูรณ์', 99, 7),
(745, 'โคกเจริญ', 99, 7),
(746, 'ยางราก', 99, 7),
(747, 'วังขอนขว้าง', 99, 7),
(748, 'ดงดินแดง', 99, 7),
(749, 'วังจั่น', 99, 7),
(750, 'หนองมะค่า', 99, 7),
(751, 'หนองแขม', 99, 7),
(752, 'วังทอง', 99, 7),
(753, 'ชอนสารเดช', 99, 7),
(754, 'ยางโทน', 99, 7),
(755, 'ชอนสมบูรณ์', 99, 7),
(756, 'ดงดินแดง', 99, 7),
(757, 'บ่อทอง', 99, 7),
(758, 'หนองม่วง', 99, 7),
(759, 'ยางราก', 99, 7),
(760, 'โคกเจริญ', 99, 7),
(761, 'ทุ่งท่าช้าง', 99, 7),
(762, 'มหาโพธิ์', 99, 7),
(763, 'สระโบสถ์', 99, 7),
(764, 'ลำนารายณ์', 100, 7),
(765, 'ชัยนารายณ์', 100, 7),
(766, 'ศิลาทิพย์', 100, 7),
(767, 'ห้วยหิน', 100, 7),
(768, 'ม่วงค่อม', 100, 7),
(769, 'บัวชุม', 100, 7),
(770, 'ท่าดินดำ', 100, 7),
(771, 'มะกอกหวาน', 100, 7),
(772, 'ซับตะเคียน', 100, 7),
(773, 'นาโสม', 100, 7),
(774, 'หนองยายโต๊ะ', 100, 7),
(775, 'เกาะรัง', 100, 7),
(776, 'หนองรี', 100, 7),
(777, 'ท่ามะนาว', 100, 7),
(778, 'กุดตาเพชร', 100, 7),
(779, 'ลำสนธิ', 100, 7),
(780, 'นิคมลำนารายณ์', 100, 7),
(781, 'ชัยบาดาล', 100, 7),
(782, 'บ้านใหม่สามัคคี', 100, 7),
(783, 'ซับสมบูรณ์', 100, 7),
(784, 'เขารวก', 100, 7),
(785, 'เขาแหลม', 100, 7),
(786, 'เขาฉกรรจ์', 100, 7),
(787, 'กุดตาเพชร', 100, 7),
(788, 'หนองรี', 100, 7),
(789, 'ลำสนธิ', 100, 7),
(790, 'หนองผักแว่น', 100, 7),
(791, 'ซับจำปา', 100, 7),
(792, 'แก่งผักกูด', 100, 7),
(793, 'ท่าหลวง', 100, 7),
(794, 'ท่าวุ้ง', 101, 7),
(795, 'บางคู้', 101, 7),
(796, 'โพตลาดแก้ว', 101, 7),
(797, 'บางลี่', 101, 7),
(798, 'บางงา', 101, 7),
(799, 'โคกสลุด', 101, 7),
(800, 'เขาสมอคอน', 101, 7),
(801, 'หัวสำโรง', 101, 7),
(802, 'ลาดสาลี่', 101, 7),
(803, 'บ้านเบิก', 101, 7),
(804, 'มุจลินท์', 101, 7),
(805, 'ไผ่ใหญ่', 102, 7),
(806, 'บ้านทราย', 102, 7),
(807, 'บ้านกล้วย', 102, 7),
(808, 'ดงพลับ', 102, 7),
(809, 'บ้านชี', 102, 7),
(810, 'พุคา', 102, 7),
(811, 'หินปัก', 102, 7),
(812, 'บางพึ่ง', 102, 7),
(813, 'หนองทรายขาว', 102, 7),
(814, 'บางกะพี้', 102, 7),
(815, 'หนองเต่า', 102, 7),
(816, 'โพนทอง', 102, 7),
(817, 'บางขาม', 102, 7),
(818, 'ดอนดึง', 102, 7),
(819, 'ชอนม่วง', 102, 7),
(820, 'หนองกระเบียน', 102, 7),
(821, 'สายห้วยแก้ว', 102, 7),
(822, 'มหาสอน', 102, 7),
(823, 'บ้านหมี่', 102, 7),
(824, 'เชียงงา', 102, 7),
(825, 'หนองเมือง', 102, 7),
(826, 'สนามแจง', 102, 7),
(827, 'ท่าหลวง', 103, 7),
(828, 'แก่งผักกูด', 103, 7),
(829, 'ซับจำปา', 103, 7),
(830, 'หนองผักแว่น', 103, 7),
(831, 'ทะเลวังวัด', 103, 7),
(832, 'หัวลำ', 103, 7),
(833, 'สระโบสถ์', 104, 7),
(834, 'มหาโพธิ', 104, 7),
(835, 'ทุ่งท่าช้าง', 104, 7),
(836, 'ห้วยใหญ่', 104, 7),
(837, 'นิยมชัย', 104, 7),
(838, 'โคกเจริญ', 105, 7),
(839, 'ยางราก', 105, 7),
(840, 'หนองมะค่า', 105, 7),
(841, 'วังทอง', 105, 7),
(842, 'โคกแสมสาร', 105, 7),
(843, 'ลำสนธิ', 106, 7),
(844, 'ซับสมบูรณ์', 106, 7),
(845, 'หนองรี', 106, 7),
(846, 'กุดตาเพชร', 106, 7),
(847, 'เขารวก', 106, 7),
(848, 'เขาน้อย', 106, 7),
(849, 'หนองม่วง', 107, 7),
(850, 'บ่อทอง', 107, 7),
(851, 'ดงดินแดง', 107, 7),
(852, 'ชอนสมบูรณ์', 107, 7),
(853, 'ยางโทน', 107, 7),
(854, 'ชอนสารเดช', 107, 7),
(855, 'บางพุทรา', 109, 8),
(856, 'บางมัญ', 109, 8),
(857, 'โพกรวม', 109, 8),
(858, 'ม่วงหมู่', 109, 8),
(859, 'หัวไผ่', 109, 8),
(860, 'ต้นโพธิ์', 109, 8),
(861, 'จักรสีห์', 109, 8),
(862, 'บางกระบือ', 109, 8),
(863, 'สิงห์', 110, 8),
(864, 'ไม้ดัด', 110, 8),
(865, 'เชิงกลัด', 110, 8),
(866, 'โพชนไก่', 110, 8),
(867, 'แม่ลา', 110, 8),
(868, 'บ้านจ่า', 110, 8),
(869, 'พักทัน', 110, 8),
(870, 'สระแจง', 110, 8),
(871, 'โพทะเล', 111, 8),
(872, 'บางระจัน', 111, 8),
(873, 'โพสังโฆ', 111, 8),
(874, 'ท่าข้าม', 111, 8),
(875, 'คอทราย', 111, 8),
(876, 'หนองกระทุ่ม', 111, 8),
(877, 'พระงาม', 112, 8),
(878, 'พรหมบุรี', 112, 8),
(879, 'บางน้ำเชี่ยว', 112, 8),
(880, 'บ้านหม้อ', 112, 8),
(881, 'บ้านแป้ง', 112, 8),
(882, 'หัวป่า', 112, 8),
(883, 'โรงช้าง', 112, 8),
(884, 'ถอนสมอ', 113, 8),
(885, 'โพประจักษ์', 113, 8),
(886, 'วิหารขาว', 113, 8),
(887, 'พิกุลทอง', 113, 8),
(888, 'อินทร์บุรี', 114, 8),
(889, 'ประศุก', 114, 8),
(890, 'ทับยา', 114, 8),
(891, 'งิ้วราย', 114, 8),
(892, 'ชีน้ำร้าย', 114, 8),
(893, 'ท่างาม', 114, 8),
(894, 'น้ำตาล', 114, 8),
(895, 'ทองเอน', 114, 8),
(896, 'ห้วยชัน', 114, 8),
(897, 'โพธิ์ชัย', 114, 8),
(898, 'ในเมือง', 115, 9),
(899, 'บ้านกล้วย', 115, 9),
(900, 'ท่าชัย', 115, 9),
(901, 'ชัยนาท', 115, 9),
(902, 'เขาท่าพระ', 115, 9),
(903, 'หาดท่าเสา', 115, 9),
(904, 'ธรรมามูล', 115, 9),
(905, 'เสือโฮก', 115, 9),
(906, 'นางลือ', 115, 9),
(907, 'คุ้งสำเภา', 116, 9),
(908, 'วัดโคก', 116, 9),
(909, 'ศิลาดาน', 116, 9),
(910, 'ท่าฉนวน', 116, 9),
(911, 'หางน้ำสาคร', 116, 9),
(912, 'ไร่พัฒนา', 116, 9),
(913, 'อู่ตะเภา', 116, 9),
(914, 'วัดสิงห์', 117, 9),
(915, 'มะขามเฒ่า', 117, 9),
(916, 'หนองน้อย', 117, 9),
(917, 'หนองบัว', 117, 9),
(918, 'หนองมะโมง', 117, 9),
(919, 'หนองขุ่น', 117, 9),
(920, 'บ่อแร่', 117, 9),
(921, 'กุดจอก', 117, 9),
(922, 'วังตะเคียน', 117, 9),
(923, 'สะพานหิน', 117, 9),
(924, 'วังหมัน', 117, 9),
(925, 'สรรพยา', 118, 9),
(926, 'ตลุก', 118, 9),
(927, 'เขาแก้ว', 118, 9),
(928, 'โพนางดำตก', 118, 9),
(929, 'โพนางดำออก', 118, 9),
(930, 'บางหลวง', 118, 9),
(931, 'หาดอาษา', 118, 9),
(932, 'แพรกศรีราชา', 119, 9),
(933, 'เที่ยงแท้', 119, 9),
(934, 'ห้วยกรด', 119, 9),
(935, 'โพงาม', 119, 9),
(936, 'บางขุด', 119, 9),
(937, 'ดงคอน', 119, 9),
(938, 'ดอนกำ', 119, 9),
(939, 'ห้วยกรดพัฒนา', 119, 9),
(940, 'หันคา', 120, 9),
(941, 'บ้านเชี่ยน', 120, 9),
(942, 'เนินขาม', 120, 9),
(943, 'สุขเดือนห้า', 120, 9),
(944, 'ไพรนกยูง', 120, 9),
(945, 'หนองแซง', 120, 9),
(946, 'ห้วยงู', 120, 9),
(947, 'วังไก่เถื่อน', 120, 9),
(948, 'เด่นใหญ่', 120, 9),
(949, 'กะบกเตี้ย', 120, 9),
(950, 'สามง่ามท่าโบสถ์', 120, 9),
(951, 'หนองมะโมง', 121, 9),
(952, 'วังตะเคียน', 121, 9),
(953, 'สะพานหิน', 121, 9),
(954, 'กุดจอก', 121, 9),
(955, 'เนินขาม', 122, 9),
(956, 'กะบกเตี้ย', 122, 9),
(957, 'สุขเดือนห้า', 122, 9),
(958, 'ปากเพรียว', 123, 10),
(959, 'หน้าพระลาน', 123, 10),
(960, 'พุแค', 123, 10),
(961, 'ห้วยบง', 123, 10),
(962, 'ดาวเรือง', 123, 10),
(963, 'นาโฉง', 123, 10),
(964, 'โคกสว่าง', 123, 10),
(965, 'หนองโน', 123, 10),
(966, 'หนองยาว', 123, 10),
(967, 'ปากข้าวสาร', 123, 10),
(968, 'หนองปลาไหล', 123, 10),
(969, 'กุดนกเปล้า', 123, 10),
(970, 'ตลิ่งชัน', 123, 10),
(971, 'ตะกุด', 123, 10),
(972, 'บ้านแก้ง', 123, 10),
(973, 'ผึ้งรวง', 123, 10),
(974, 'เขาดินพัฒนา', 123, 10),
(975, 'แก่งคอย', 124, 10),
(976, 'ทับกวาง', 124, 10),
(977, 'ตาลเดี่ยว', 124, 10),
(978, 'ห้วยแห้ง', 124, 10),
(979, 'ท่าคล้อ', 124, 10),
(980, 'หินซ้อน', 124, 10),
(981, 'บ้านธาตุ', 124, 10),
(982, 'บ้านป่า', 124, 10),
(983, 'ท่าตูม', 124, 10),
(984, 'ชะอม', 124, 10),
(985, 'สองคอน', 124, 10),
(986, 'เตาปูน', 124, 10),
(987, 'ชำผักแพว', 124, 10),
(988, 'ท่ามะปราง', 124, 10),
(989, 'หนองแค', 125, 10),
(990, 'กุ่มหัก', 125, 10),
(991, 'คชสิทธิ์', 125, 10),
(992, 'โคกตูม', 125, 10),
(993, 'โคกแย้', 125, 10),
(994, 'บัวลอย', 125, 10),
(995, 'ไผ่ต่ำ', 125, 10),
(996, 'โพนทอง', 125, 10),
(997, 'ห้วยขมิ้น', 125, 10),
(998, 'ห้วยทราย', 125, 10),
(999, 'หนองไข่น้ำ', 125, 10),
(1000, 'หนองแขม', 125, 10),
(1001, 'หนองจิก', 125, 10),
(1002, 'หนองจรเข้', 125, 10),
(1003, 'หนองนาก', 125, 10),
(1004, 'หนองปลาหมอ', 125, 10),
(1005, 'หนองปลิง', 125, 10),
(1006, 'หนองโรง', 125, 10),
(1007, 'หนองหมู', 126, 10),
(1008, 'บ้านลำ', 126, 10),
(1009, 'คลองเรือ', 126, 10),
(1010, 'วิหารแดง', 126, 10),
(1011, 'หนองสรวง', 126, 10),
(1012, 'เจริญธรรม', 126, 10),
(1013, 'หนองแซง', 127, 10),
(1014, 'หนองควายโซ', 127, 10),
(1015, 'หนองหัวโพ', 127, 10),
(1016, 'หนองสีดา', 127, 10),
(1017, 'หนองกบ', 127, 10),
(1018, 'ไก่เส่า', 127, 10),
(1019, 'โคกสะอาด', 127, 10),
(1020, 'ม่วงหวาน', 127, 10),
(1021, 'เขาดิน', 127, 10),
(1022, 'บ้านหมอ', 128, 10),
(1023, 'บางโขมด', 128, 10),
(1024, 'สร่างโศก', 128, 10),
(1025, 'ตลาดน้อย', 128, 10),
(1026, 'หรเทพ', 128, 10),
(1027, 'โคกใหญ่', 128, 10),
(1028, 'ไผ่ขวาง', 128, 10),
(1029, 'บ้านครัว', 128, 10),
(1030, 'หนองบัว', 128, 10),
(1031, 'ดงตะงาว', 128, 10),
(1032, 'บ้านหลวง', 128, 10),
(1033, 'ไผ่หลิ่ว', 128, 10),
(1034, 'ดอนพุด', 128, 10),
(1035, 'ดอนพุด', 129, 10),
(1036, 'ไผ่หลิ่ว', 129, 10),
(1037, 'บ้านหลวง', 129, 10),
(1038, 'ดงตะงาว', 129, 10),
(1039, 'หนองโดน', 130, 10),
(1040, 'บ้านกลับ', 130, 10),
(1041, 'ดอนทอง', 130, 10),
(1042, 'บ้านโปร่ง', 130, 10),
(1043, 'พระพุทธบาท', 131, 10),
(1044, 'ขุนโขลน', 131, 10),
(1045, 'ธารเกษม', 131, 10),
(1046, 'นายาว', 131, 10),
(1047, 'พุคำจาน', 131, 10),
(1048, 'เขาวง', 131, 10),
(1049, 'ห้วยป่าหวาย', 131, 10),
(1050, 'พุกร่าง', 131, 10),
(1051, 'หนองแก', 131, 10),
(1052, 'เสาไห้', 132, 10),
(1053, 'บ้านยาง', 132, 10),
(1054, 'หัวปลวก', 132, 10),
(1055, 'งิ้วงาม', 132, 10),
(1056, 'ศาลารีไทย', 132, 10),
(1057, 'ต้นตาล', 132, 10),
(1058, 'ท่าช้าง', 132, 10),
(1059, 'พระยาทด', 132, 10),
(1060, 'ม่วงงาม', 132, 10),
(1061, 'เริงราง', 132, 10),
(1062, 'เมืองเก่า', 132, 10),
(1063, 'สวนดอกไม้', 132, 10),
(1064, 'มวกเหล็ก', 133, 10),
(1065, 'มิตรภาพ', 133, 10),
(1066, 'แสลงพัน', 133, 10),
(1067, 'หนองย่างเสือ', 133, 10),
(1068, 'ลำสมพุง', 133, 10),
(1069, 'คำพราน', 133, 10),
(1070, 'ลำพญากลาง', 133, 10),
(1071, 'วังม่วง', 133, 10),
(1072, 'ซับสนุ่น', 133, 10),
(1073, 'แสลงพัน', 134, 10),
(1074, 'คำพราน', 134, 10),
(1075, 'วังม่วง', 134, 10),
(1076, 'เขาดินพัฒนา', 135, 10),
(1077, 'บ้านแก้ง', 135, 10),
(1078, 'ผึ้งรวง', 135, 10),
(1079, 'พุแค', 135, 10),
(1080, 'ห้วยบง', 135, 10),
(1081, 'หน้าพระลาน', 135, 10),
(1082, 'บางปลาสร้อย', 136, 11),
(1083, 'มะขามหย่ง', 136, 11),
(1084, 'บ้านโขด', 136, 11),
(1085, 'แสนสุข', 136, 11),
(1086, 'บ้านสวน', 136, 11),
(1087, 'หนองรี', 136, 11),
(1088, 'นาป่า', 136, 11),
(1089, 'หนองข้างคอก', 136, 11),
(1090, 'ดอนหัวฬ่อ', 136, 11),
(1091, 'หนองไม้แดง', 136, 11),
(1092, 'บางทราย', 136, 11),
(1093, 'คลองตำหรุ', 136, 11),
(1094, 'เหมือง', 136, 11),
(1095, 'บ้านปึก', 136, 11),
(1096, 'ห้วยกะปิ', 136, 11),
(1097, 'เสม็ด', 136, 11),
(1098, 'อ่างศิลา', 136, 11),
(1099, 'สำนักบก', 136, 11),
(1100, 'เทศบาลเมืองชลบุรี', 136, 11),
(1101, 'บ้านบึง', 137, 11),
(1102, 'คลองกิ่ว', 137, 11),
(1103, 'มาบไผ่', 137, 11),
(1104, 'หนองซ้ำซาก', 137, 11),
(1105, 'หนองบอนแดง', 137, 11),
(1106, 'หนองชาก', 137, 11),
(1107, 'หนองอิรุณ', 137, 11),
(1108, 'หนองไผ่แก้ว', 137, 11),
(1109, 'หนองเสือช้าง', 137, 11),
(1110, 'คลองพลู', 137, 11),
(1111, 'หนองใหญ่', 137, 11),
(1112, 'หนองใหญ่', 138, 11),
(1113, 'คลองพลู', 138, 11),
(1114, 'หนองเสือช้าง', 138, 11),
(1115, 'ห้างสูง', 138, 11),
(1116, 'เขาซก', 138, 11),
(1117, 'บางละมุง', 139, 11),
(1118, 'หนองปรือ', 139, 11),
(1119, 'หนองปลาไหล', 139, 11),
(1120, 'โป่ง', 139, 11),
(1121, 'เขาไม้แก้ว', 139, 11),
(1122, 'ห้วยใหญ่', 139, 11),
(1123, 'ตะเคียนเตี้ย', 139, 11),
(1124, 'นาเกลือ', 139, 11),
(1125, 'พานทอง', 140, 11),
(1126, 'หนองตำลึง', 140, 11),
(1127, 'มาบโป่ง', 140, 11),
(1128, 'หนองกะขะ', 140, 11),
(1129, 'หนองหงษ์', 140, 11),
(1130, 'โคกขี้หนอน', 140, 11),
(1131, 'บ้านเก่า', 140, 11),
(1132, 'หน้าประดู่', 140, 11),
(1133, 'บางนาง', 140, 11),
(1134, 'เกาะลอย', 140, 11),
(1135, 'บางหัก', 140, 11),
(1136, 'พนัสนิคม', 141, 11),
(1137, 'หน้าพระธาตุ', 141, 11),
(1138, 'วัดหลวง', 141, 11),
(1139, 'บ้านเซิด', 141, 11),
(1140, 'นาเริก', 141, 11),
(1141, 'หมอนนาง', 141, 11),
(1142, 'สระสี่เหลี่ยม', 141, 11),
(1143, 'วัดโบสถ์', 141, 11),
(1144, 'กุฎโง้ง', 141, 11),
(1145, 'หัวถนน', 141, 11),
(1146, 'ท่าข้าม', 141, 11),
(1147, 'ท่าบุญมี', 141, 11),
(1148, 'หนองปรือ', 141, 11),
(1149, 'หนองขยาด', 141, 11),
(1150, 'ทุ่งขวาง', 141, 11),
(1151, 'หนองเหียง', 141, 11),
(1152, 'นาวังหิน', 141, 11),
(1153, 'บ้านช้าง', 141, 11),
(1154, 'เกาะจันทร์', 141, 11),
(1155, 'โคกเพลาะ', 141, 11),
(1156, 'ไร่หลักทอง', 141, 11),
(1157, 'นามะตูม', 141, 11),
(1158, 'บ้านเซิด', 141, 11),
(1159, 'พูนพัฒนาทรัพย์', 141, 11),
(1160, 'บ่อกวางทอง', 141, 11),
(1161, 'วัดสุวรรณ', 141, 11),
(1162, 'บ่อทอง', 141, 11),
(1163, 'ศรีราชา', 142, 11),
(1164, 'สุรศักดิ์', 142, 11),
(1165, 'ทุ่งสุขลา', 142, 11),
(1166, 'บึง', 142, 11),
(1167, 'หนองขาม', 142, 11),
(1168, 'เขาคันทรง', 142, 11),
(1169, 'บางพระ', 142, 11),
(1170, 'บ่อวิน', 142, 11),
(1171, 'ท่าเทววงษ์', 142, 11),
(1172, 'ท่าเทววงษ์', 143, 11),
(1173, 'สัตหีบ', 144, 11),
(1174, 'นาจอมเทียน', 144, 11),
(1175, 'พลูตาหลวง', 144, 11),
(1176, 'บางเสร่', 144, 11),
(1177, 'แสมสาร', 144, 11),
(1178, 'บ่อทอง', 145, 11),
(1179, 'วัดสุวรรณ', 145, 11),
(1180, 'บ่อกวางทอง', 145, 11),
(1181, 'ธาตุทอง', 145, 11),
(1182, 'เกษตรสุวรรณ', 145, 11),
(1183, 'พลวงทอง', 145, 11),
(1184, 'เกาะจันทร์', 146, 11),
(1185, 'ท่าบุญมี', 146, 11),
(1186, 'หนองปรือ', 148, 11),
(1187, 'ท่าประดู่', 151, 12),
(1188, 'เชิงเนิน', 151, 12),
(1189, 'ตะพง', 151, 12),
(1190, 'ปากน้ำ', 151, 12),
(1191, 'เพ', 151, 12),
(1192, 'แกลง', 151, 12),
(1193, 'บ้านแลง', 151, 12),
(1194, 'นาตาขวัญ', 151, 12),
(1195, 'เนินพระ', 151, 12),
(1196, 'กะเฉด', 151, 12),
(1197, 'ทับมา', 151, 12),
(1198, 'น้ำคอก', 151, 12),
(1199, 'ห้วยโป่ง', 151, 12),
(1200, 'มาบตาพุด', 151, 12),
(1201, 'สำนักทอง', 151, 12),
(1202, 'สำนักท้อน', 151, 12),
(1203, 'พลา', 151, 12),
(1204, 'สำนักท้อน', 152, 12),
(1205, 'พลา', 152, 12),
(1206, 'บ้านฉาง', 152, 12),
(1207, 'ทางเกวียน', 153, 12),
(1208, 'วังหว้า', 153, 12),
(1209, 'ชากโดน', 153, 12),
(1210, 'เนินฆ้อ', 153, 12),
(1211, 'กร่ำ', 153, 12),
(1212, 'ชากพง', 153, 12),
(1213, 'กระแสบน', 153, 12),
(1214, 'บ้านนา', 153, 12),
(1215, 'ทุ่งควายกิน', 153, 12),
(1216, 'กองดิน', 153, 12),
(1217, 'คลองปูน', 153, 12),
(1218, 'พังราด', 153, 12),
(1219, 'ปากน้ำกระแส', 153, 12),
(1220, 'น้ำเป็น', 153, 12),
(1221, 'ชำฆ้อ', 153, 12),
(1222, 'ห้วยทับมอญ', 153, 12),
(1223, 'ห้วยยาง', 153, 12),
(1224, 'สองสลึง', 153, 12),
(1225, 'เขาน้อย', 153, 12),
(1226, 'ชุมแสง', 153, 12),
(1227, 'วังจันทร์', 153, 12),
(1228, 'วังจันทร์', 154, 12),
(1229, 'ชุมแสง', 154, 12),
(1230, 'ป่ายุบใน', 154, 12),
(1231, 'พลงตาเอี่ยม', 154, 12),
(1232, 'บ้านค่าย', 155, 12),
(1233, 'หนองละลอก', 155, 12),
(1234, 'หนองตะพาน', 155, 12),
(1235, 'ตาขัน', 155, 12),
(1236, 'บางบุตร', 155, 12),
(1237, 'หนองบัว', 155, 12),
(1238, 'ชากบก', 155, 12),
(1239, 'มาบข่า', 155, 12),
(1240, 'พนานิคม', 155, 12),
(1241, 'นิคมพัฒนา', 155, 12),
(1242, 'มะขามคู่', 155, 12),
(1243, 'หนองไร่', 155, 12),
(1244, 'มาบยางพร', 155, 12),
(1245, 'แม่น้ำคู้', 155, 12),
(1246, 'ละหาร', 155, 12),
(1247, 'ตาสิทธิ์', 155, 12),
(1248, 'ปลวกแดง', 155, 12),
(1249, 'ปลวกแดง', 156, 12),
(1250, 'ตาสิทธิ์', 156, 12),
(1251, 'ละหาร', 156, 12),
(1252, 'แม่น้ำคู้', 156, 12),
(1253, 'มาบยางพร', 156, 12),
(1254, 'หนองไร่', 156, 12),
(1255, 'น้ำเป็น', 157, 12),
(1256, 'ห้วยทับมอญ', 157, 12),
(1257, 'ชำฆ้อ', 157, 12),
(1258, 'เขาน้อย', 157, 12),
(1259, 'นิคมพัฒนา', 158, 12),
(1260, 'มาบข่า', 158, 12),
(1261, 'พนานิคม', 158, 12),
(1262, 'มะขามคู่', 158, 12),
(1263, 'ตลาด', 160, 13),
(1264, 'วัดใหม่', 160, 13),
(1265, 'คลองนารายณ์', 160, 13),
(1266, 'เกาะขวาง', 160, 13),
(1267, 'คมบาง', 160, 13),
(1268, 'ท่าช้าง', 160, 13),
(1269, 'จันทนิมิต', 160, 13),
(1270, 'บางกะจะ', 160, 13),
(1271, 'แสลง', 160, 13),
(1272, 'หนองบัว', 160, 13),
(1273, 'พลับพลา', 160, 13),
(1274, 'ขลุง', 161, 13),
(1275, 'บ่อ', 161, 13),
(1276, 'เกวียนหัก', 161, 13),
(1277, 'ตะปอน', 161, 13),
(1278, 'บางชัน', 161, 13),
(1279, 'วันยาว', 161, 13),
(1280, 'ซึ้ง', 161, 13),
(1281, 'มาบไพ', 161, 13),
(1282, 'วังสรรพรส', 161, 13),
(1283, 'ตรอกนอง', 161, 13),
(1284, 'ตกพรม', 161, 13),
(1285, 'บ่อเวฬุ', 161, 13),
(1286, 'ท่าใหม่', 162, 13),
(1287, 'ยายร้า', 162, 13),
(1288, 'สีพยา', 162, 13),
(1289, 'บ่อพุ', 162, 13),
(1290, 'พลอยแหวน', 162, 13),
(1291, 'เขาวัว', 162, 13),
(1292, 'เขาบายศรี', 162, 13),
(1293, 'สองพี่น้อง', 162, 13),
(1294, 'ทุ่งเบญจา', 162, 13),
(1295, 'วังโตนด', 162, 13),
(1296, 'รำพัน', 162, 13),
(1297, 'โขมง', 162, 13),
(1298, 'ตะกาดเง้า', 162, 13),
(1299, 'คลองขุด', 162, 13),
(1300, 'กระแจะ', 162, 13),
(1301, 'สนามไชย', 162, 13),
(1302, 'ช้างข้าม', 162, 13),
(1303, 'นายายอาม', 162, 13),
(1304, 'แก่งหางแมว', 162, 13),
(1305, 'สามพี่น้อง', 162, 13),
(1306, 'เขาวงกต', 162, 13),
(1307, 'พวา', 162, 13),
(1308, 'ขุนซ่อง', 162, 13),
(1309, 'เขาแก้ว', 162, 13),
(1310, 'กระแจะ', 162, 13),
(1311, 'สนามไช', 162, 13),
(1312, 'ช้างข้าม', 162, 13),
(1313, 'วังโตนด', 162, 13),
(1314, 'นายายอาม', 162, 13),
(1315, 'แก่งหางแมว', 162, 13),
(1316, 'ทับไทร', 163, 13),
(1317, 'โป่งน้ำร้อน', 163, 13),
(1318, 'ทรายขาว', 163, 13),
(1319, 'หนองตาคง', 163, 13),
(1320, 'ปะตง', 163, 13),
(1321, 'ทุ่งขนาน', 163, 13),
(1322, 'สะตอน', 163, 13),
(1323, 'ทับช้าง', 163, 13),
(1324, 'เทพนิมิต', 163, 13),
(1325, 'คลองใหญ่', 163, 13),
(1326, 'มะขาม', 164, 13),
(1327, 'ท่าหลวง', 164, 13),
(1328, 'ปัถวี', 164, 13),
(1329, 'วังแซ้ม', 164, 13),
(1330, 'พลวง', 164, 13),
(1331, 'ฉมัน', 164, 13),
(1332, 'ตะเคียนทอง', 164, 13),
(1333, 'อ่างคีรี', 164, 13),
(1334, 'คลองพลู', 164, 13),
(1335, 'ซากไทย', 164, 13),
(1336, 'ปากน้ำแหลมสิงห์', 165, 13),
(1337, 'เกาะเปริด', 165, 13),
(1338, 'หนองชิ่ม', 165, 13),
(1339, 'พลิ้ว', 165, 13),
(1340, 'คลองน้ำเค็ม', 165, 13),
(1341, 'บางสระเก้า', 165, 13),
(1342, 'บางกะไชย', 165, 13),
(1343, 'ปะตง', 166, 13),
(1344, 'ทุ่งขนาน', 166, 13),
(1345, 'ทับช้าง', 166, 13),
(1346, 'ทรายขาว', 166, 13),
(1347, 'สะตอน', 166, 13),
(1348, 'แก่งหางแมว', 167, 13),
(1349, 'ขุนซ่อง', 167, 13),
(1350, 'สามพี่น้อง', 167, 13),
(1351, 'พวา', 167, 13),
(1352, 'เขาวงกต', 167, 13),
(1353, 'นายายอาม', 168, 13),
(1354, 'วังโตนด', 168, 13),
(1355, 'กระแจะ', 168, 13),
(1356, 'สนามไชย', 168, 13),
(1357, 'ช้างข้าม', 168, 13),
(1358, 'วังใหม่', 168, 13),
(1359, 'ชากไทย', 169, 13),
(1360, 'พลวง', 169, 13),
(1361, 'ตะเคียนทอง', 169, 13),
(1362, 'คลองพลู', 169, 13),
(1363, 'จันทเขลม', 169, 13),
(1364, 'บางพระ', 171, 14),
(1365, 'หนองเสม็ด', 171, 14),
(1366, 'หนองโสน', 171, 14),
(1367, 'หนองคันทรง', 171, 14),
(1368, 'ห้วงน้ำขาว', 171, 14),
(1369, 'อ่าวใหญ่', 171, 14),
(1370, 'วังกระแจะ', 171, 14),
(1371, 'ห้วยแร้ง', 171, 14),
(1372, 'เนินทราย', 171, 14),
(1373, 'ท่าพริก', 171, 14),
(1374, 'ท่ากุ่ม', 171, 14),
(1375, 'ตะกาง', 171, 14),
(1376, 'ชำราก', 171, 14),
(1377, 'แหลมกลัด', 171, 14),
(1378, 'คลองใหญ่', 172, 14),
(1379, 'ไม้รูด', 172, 14),
(1380, 'หาดเล็ก', 172, 14),
(1381, 'เขาสมิง', 173, 14),
(1382, 'แสนตุ้ง', 173, 14),
(1383, 'วังตะเคียน', 173, 14),
(1384, 'ท่าโสม', 173, 14),
(1385, 'สะตอ', 173, 14),
(1386, 'ประณีต', 173, 14),
(1387, 'เทพนิมิต', 173, 14),
(1388, 'ทุ่งนนทรี', 173, 14),
(1389, 'บ่อไร่', 173, 14),
(1390, 'ด่านชุมพล', 173, 14),
(1391, 'หนองบอน', 173, 14),
(1392, 'ช้างทูน', 173, 14),
(1393, 'บ่อพลอย', 173, 14),
(1394, 'บ่อพลอย', 174, 14),
(1395, 'ช้างทูน', 174, 14),
(1396, 'ด่านชุมพล', 174, 14),
(1397, 'หนองบอน', 174, 14),
(1398, 'นนทรีย์', 174, 14),
(1399, 'แหลมงอบ', 175, 14),
(1400, 'น้ำเชี่ยว', 175, 14),
(1401, 'บางปิด', 175, 14),
(1402, 'เกาะช้าง', 175, 14),
(1403, 'เกาะหมาก', 175, 14),
(1404, 'เกาะกูด', 175, 14),
(1405, 'คลองใหญ่', 175, 14),
(1406, 'เกาะช้างใต้', 175, 14),
(1407, 'เกาะหมาก', 176, 14),
(1408, 'เกาะกูด', 176, 14),
(1409, 'เกาะช้าง', 177, 14),
(1410, 'เกาะช้างใต้', 177, 14),
(1411, 'หน้าเมือง', 178, 15),
(1412, 'ท่าไข่', 178, 15),
(1413, 'บ้านใหม่', 178, 15),
(1414, 'คลองนา', 178, 15),
(1415, 'บางตีนเป็ด', 178, 15),
(1416, 'บางไผ่', 178, 15),
(1417, 'คลองจุกกระเฌอ', 178, 15),
(1418, 'บางแก้ว', 178, 15),
(1419, 'บางขวัญ', 178, 15),
(1420, 'คลองนครเนื่องเขต', 178, 15),
(1421, 'วังตะเคียน', 178, 15),
(1422, 'โสธร', 178, 15),
(1423, 'บางพระ', 178, 15),
(1424, 'บางกะไห', 178, 15),
(1425, 'หนามแดง', 178, 15),
(1426, 'คลองเปรง', 178, 15),
(1427, 'คลองอุดมชลจร', 178, 15),
(1428, 'คลองหลวงแพ่ง', 178, 15),
(1429, 'บางเตย', 178, 15),
(1430, 'บางคล้า', 179, 15),
(1431, 'ก้อนแก้ว', 179, 15),
(1432, 'คลองเขื่อน', 179, 15),
(1433, 'บางสวน', 179, 15),
(1434, 'บางเล่า', 179, 15),
(1435, 'บางโรง', 179, 15),
(1436, 'บางตลาด', 179, 15),
(1437, 'บางกระเจ็ด', 179, 15),
(1438, 'ปากน้ำ', 179, 15),
(1439, 'ท่าทองหลาง', 179, 15),
(1440, 'สาวชะโงก', 179, 15),
(1441, 'เสม็ดเหนือ', 179, 15),
(1442, 'เสม็ดใต้', 179, 15),
(1443, 'หัวไทร', 179, 15),
(1444, 'บางน้ำเปรี้ยว', 180, 15),
(1445, 'บางขนาก', 180, 15),
(1446, 'สิงโตทอง', 180, 15),
(1447, 'หมอนทอง', 180, 15),
(1448, 'บึงน้ำรักษ์', 180, 15),
(1449, 'ดอนเกาะกา', 180, 15),
(1450, 'โยธะกา', 180, 15),
(1451, 'ดอนฉิมพลี', 180, 15),
(1452, 'ศาลาแดง', 180, 15),
(1453, 'โพรงอากาศ', 180, 15),
(1454, 'บางปะกง', 181, 15),
(1455, 'ท่าสะอ้าน', 181, 15),
(1456, 'บางวัว', 181, 15),
(1457, 'บางสมัคร', 181, 15),
(1458, 'บางผึ้ง', 181, 15),
(1459, 'บางเกลือ', 181, 15),
(1460, 'สองคลอง', 181, 15),
(1461, 'หนองจอก', 181, 15),
(1462, 'พิมพา', 181, 15),
(1463, 'ท่าข้าม', 181, 15),
(1464, 'หอมศีล', 181, 15),
(1465, 'เขาดิน', 181, 15),
(1466, 'บ้านโพธิ์', 182, 15),
(1467, 'เกาะไร่', 182, 15),
(1468, 'คลองขุด', 182, 15),
(1469, 'คลองบ้านโพธิ์', 182, 15),
(1470, 'คลองประเวศ', 182, 15),
(1471, 'ดอนทราย', 182, 15),
(1472, 'เทพราช', 182, 15),
(1473, 'ท่าพลับ', 182, 15),
(1474, 'หนองตีนนก', 182, 15),
(1475, 'หนองบัว', 182, 15),
(1476, 'บางซ่อน', 182, 15),
(1477, 'บางกรูด', 182, 15),
(1478, 'แหลมประดู่', 182, 15),
(1479, 'ลาดขวาง', 182, 15),
(1480, 'สนามจันทร์', 182, 15),
(1481, 'แสนภูดาษ', 182, 15),
(1482, 'สิบเอ็ดศอก', 182, 15),
(1483, 'เกาะขนุน', 183, 15),
(1484, 'บ้านซ่อง', 183, 15),
(1485, 'พนมสารคาม', 183, 15),
(1486, 'เมืองเก่า', 183, 15),
(1487, 'หนองยาว', 183, 15),
(1488, 'ท่าถ่าน', 183, 15),
(1489, 'หนองแหน', 183, 15),
(1490, 'เขาหินซ้อน', 183, 15),
(1491, 'บางคา', 184, 15),
(1492, 'เมืองใหม่', 184, 15),
(1493, 'ดงน้อย', 184, 15),
(1494, 'คู้ยายหมี', 185, 15),
(1495, 'ท่ากระดาน', 185, 15),
(1496, 'ทุ่งพระยา', 185, 15),
(1497, 'ท่าตะเกียบ', 185, 15),
(1498, 'ลาดกระทิง', 185, 15),
(1499, 'คลองตะเกรา', 185, 15),
(1500, 'แปลงยาว', 186, 15),
(1501, 'วังเย็น', 186, 15),
(1502, 'หัวสำโรง', 186, 15),
(1503, 'หนองไม้แก่น', 186, 15),
(1504, 'ท่าตะเกียบ', 187, 15),
(1505, 'คลองตะเกรา', 187, 15),
(1506, 'ก้อนแก้ว', 188, 15),
(1507, 'คลองเขื่อน', 188, 15),
(1508, 'บางเล่า', 188, 15),
(1509, 'บางโรง', 188, 15),
(1510, 'บางตลาด', 188, 15),
(1511, 'หน้าเมือง', 189, 16),
(1512, 'รอบเมือง', 189, 16),
(1513, 'วัดโบสถ์', 189, 16),
(1514, 'บางเดชะ', 189, 16),
(1515, 'ท่างาม', 189, 16),
(1516, 'บางบริบูรณ์', 189, 16),
(1517, 'ดงพระราม', 189, 16),
(1518, 'บ้านพระ', 189, 16),
(1519, 'โคกไม้ลาย', 189, 16),
(1520, 'ไม้เค็ด', 189, 16),
(1521, 'ดงขี้เหล็ก', 189, 16),
(1522, 'เนินหอม', 189, 16),
(1523, 'โนนห้อม', 189, 16),
(1524, 'กบินทร์', 190, 16),
(1525, 'เมืองเก่า', 190, 16),
(1526, 'วังดาล', 190, 16),
(1527, 'นนทรี', 190, 16),
(1528, 'ย่านรี', 190, 16),
(1529, 'วังตะเคียน', 190, 16),
(1530, 'หาดนางแก้ว', 190, 16),
(1531, 'ลาดตะเคียน', 190, 16),
(1532, 'บ้านนา', 190, 16),
(1533, 'บ่อทอง', 190, 16),
(1534, 'หนองกี่', 190, 16),
(1535, 'นาแขม', 190, 16),
(1536, 'เขาไม้แก้ว', 190, 16),
(1537, 'วังท่าช้าง', 190, 16),
(1538, 'สะพานหิน', 190, 16),
(1539, 'นาดี', 190, 16),
(1540, 'ลำพันตา', 190, 16),
(1541, 'ทุ่งโพธิ์', 190, 16),
(1542, 'นาดี', 191, 16),
(1543, 'สำพันตา', 191, 16),
(1544, 'สะพานหิน', 191, 16),
(1545, 'ทุ่งโพธิ์', 191, 16),
(1546, 'แก่งดินสอ', 191, 16),
(1547, 'บุพราหมณ์', 191, 16),
(1548, 'สระแก้ว', 192, 16),
(1549, 'บ้านแก้ง', 192, 16),
(1550, 'ศาลาลำดวน', 192, 16),
(1551, 'โคกปี่ฆ้อง', 192, 16),
(1552, 'ท่าแยก', 192, 16),
(1553, 'ท่าเกษม', 192, 16),
(1554, 'เขาฉกรรจ์', 192, 16),
(1555, 'สระขวัญ', 192, 16),
(1556, 'หนองหว้า', 192, 16),
(1557, 'พระเพลิง', 192, 16),
(1558, 'หนองบอน', 192, 16),
(1559, 'เขาสามสิบ', 192, 16),
(1560, 'ตาหลังใน', 192, 16),
(1561, 'วังสมบูรณ์', 192, 16),
(1562, 'วังน้ำเย็น', 192, 16),
(1563, 'วังน้ำเย็น', 193, 16),
(1564, 'วังสมบูรณ์', 193, 16),
(1565, 'ตาหลังใน', 193, 16),
(1566, 'วังใหม่', 193, 16),
(1567, 'คลองหินปูน', 193, 16),
(1568, 'ทุ่งมหาเจริญ', 193, 16),
(1569, 'บ้านสร้าง', 194, 16),
(1570, 'บางกระเบา', 194, 16),
(1571, 'บางเตย', 194, 16),
(1572, 'บางยาง', 194, 16),
(1573, 'บางแตน', 194, 16),
(1574, 'บางพลวง', 194, 16),
(1575, 'บางปลาร้า', 194, 16),
(1576, 'บางขาม', 194, 16),
(1577, 'กระทุ่มแพ้ว', 194, 16),
(1578, 'ประจันตคาม', 195, 16),
(1579, 'เกาะลอย', 195, 16),
(1580, 'บ้านหอย', 195, 16),
(1581, 'หนองแสง', 195, 16),
(1582, 'ดงบัง', 195, 16),
(1583, 'คำโตนด', 195, 16),
(1584, 'บุฝ้าย', 195, 16),
(1585, 'หนองแก้ว', 195, 16),
(1586, 'โพธิ์งาม', 195, 16),
(1587, 'ศรีมหาโพธิ', 196, 16),
(1588, 'สัมพันธ์', 196, 16),
(1589, 'บ้านทาม', 196, 16),
(1590, 'ท่าตูม', 196, 16),
(1591, 'บางกุ้ง', 196, 16),
(1592, 'ดงกระทงยาม', 196, 16),
(1593, 'หนองโพรง', 196, 16),
(1594, 'หัวหว้า', 196, 16),
(1595, 'หาดยาง', 196, 16),
(1596, 'กรอกสมบูรณ์', 196, 16),
(1597, 'คู้ลำพัน', 196, 16),
(1598, 'โคกปีบ', 196, 16),
(1599, 'โคกไทย', 196, 16),
(1600, 'ไผ่ชะเลือด', 196, 16),
(1601, 'โคกปีบ', 197, 16),
(1602, 'โคกไทย', 197, 16),
(1603, 'คู้ลำพัน', 197, 16),
(1604, 'ไผ่ชะเลือด', 197, 16),
(1605, 'อรัญประเทศ', 198, 16),
(1606, 'เมืองไผ่', 198, 16),
(1607, 'หันทราย', 198, 16),
(1608, 'คลองน้ำใส', 198, 16),
(1609, 'ท่าข้าม', 198, 16),
(1610, 'ป่าไร่', 198, 16),
(1611, 'ทับพริก', 198, 16),
(1612, 'บ้านใหม่หนองไทร', 198, 16),
(1613, 'ผ่านศึก', 198, 16),
(1614, 'หนองสังข์', 198, 16),
(1615, 'คลองทับจันทร์', 198, 16),
(1616, 'ฟากห้วย', 198, 16),
(1617, 'บ้านด่าน', 198, 16),
(1618, 'ตาพระยา', 199, 16),
(1619, 'ทัพเสด็จ', 199, 16),
(1620, 'โคกสูง', 199, 16),
(1621, 'หนองแวง', 199, 16),
(1622, 'หนองม่วง', 199, 16),
(1623, 'ทัพราช', 199, 16),
(1624, 'ทัพไทย', 199, 16),
(1625, 'โนนหมากมุ่น', 199, 16),
(1626, 'โคคลาน', 199, 16),
(1627, 'วัฒนานคร', 200, 16),
(1628, 'ท่าเกวียน', 200, 16),
(1629, 'ซับมะกรูด', 200, 16),
(1630, 'ผักขะ', 200, 16),
(1631, 'โนนหมากเค็ง', 200, 16),
(1632, 'หนองน้ำใส', 200, 16),
(1633, 'ช่องกุ่ม', 200, 16),
(1634, 'หนองแวง', 200, 16),
(1635, 'ไทยอุดม', 200, 16),
(1636, 'ไทรเดี่ยว', 200, 16),
(1637, 'คลองหาด', 200, 16),
(1638, 'แซร์ออ', 200, 16),
(1639, 'หนองหมากฝ้าย', 200, 16),
(1640, 'หนองตะเคียนบอน', 200, 16),
(1641, 'ห้วยโจด', 200, 16),
(1642, 'คลองหาด', 201, 16),
(1643, 'ไทยอุดม', 201, 16),
(1644, 'ซับมะกรูด', 201, 16),
(1645, 'ไทรเดี่ยว', 201, 16),
(1646, 'คลองไก่เถื่อน', 201, 16),
(1647, 'เบญจขร', 201, 16),
(1648, 'ไทรทอง', 201, 16),
(1649, 'นครนายก', 202, 17),
(1650, 'ท่าช้าง', 202, 17),
(1651, 'บ้านใหญ่', 202, 17),
(1652, 'วังกระโจม', 202, 17),
(1653, 'ท่าทราย', 202, 17),
(1654, 'ดอนยอ', 202, 17),
(1655, 'ศรีจุฬา', 202, 17),
(1656, 'ดงละคร', 202, 17),
(1657, 'ศรีนาวา', 202, 17),
(1658, 'สาริกา', 202, 17),
(1659, 'หินตั้ง', 202, 17),
(1660, 'เขาพระ', 202, 17),
(1661, 'พรหมณี', 202, 17),
(1662, 'เกาะหวาย', 203, 17),
(1663, 'เกาะโพธิ์', 203, 17),
(1664, 'ปากพลี', 203, 17),
(1665, 'โคกกรวด', 203, 17),
(1666, 'ท่าเรือ', 203, 17),
(1667, 'หนองแสง', 203, 17),
(1668, 'นาหินลาด', 203, 17),
(1669, 'บ้านนา', 204, 17),
(1670, 'บ้านพร้าว', 204, 17),
(1671, 'บ้านพริก', 204, 17),
(1672, 'อาษา', 204, 17),
(1673, 'ทองหลาง', 204, 17),
(1674, 'บางอ้อ', 204, 17),
(1675, 'พิกุลออก', 204, 17),
(1676, 'ป่าขะ', 204, 17),
(1677, 'เขาเพิ่ม', 204, 17),
(1678, 'ศรีกะอาง', 204, 17),
(1679, 'พระอาจารย์', 205, 17),
(1680, 'บึงศาล', 205, 17),
(1681, 'ศีรษะกระบือ', 205, 17),
(1682, 'โพธิ์แทน', 205, 17),
(1683, 'บางสมบูรณ์', 205, 17),
(1684, 'ทรายมูล', 205, 17),
(1685, 'บางปลากด', 205, 17),
(1686, 'บางลูกเสือ', 205, 17),
(1687, 'องครักษ์', 205, 17),
(1688, 'ชุมพล', 205, 17),
(1689, 'คลองใหญ่', 205, 17),
(1690, 'สระแก้ว', 206, 18),
(1691, 'บ้านแก้ง', 206, 18),
(1692, 'ศาลาลำดวน', 206, 18),
(1693, 'โคกปี่ฆ้อง', 206, 18),
(1694, 'ท่าแยก', 206, 18),
(1695, 'ท่าเกษม', 206, 18),
(1696, 'เขาฉกรรจ์', 206, 18),
(1697, 'สระขวัญ', 206, 18),
(1698, 'หนองหว้า', 206, 18),
(1699, 'พระเพลิง', 206, 18),
(1700, 'หนองบอน', 206, 18),
(1701, 'เขาสามสิบ', 206, 18),
(1702, 'คลองหาด', 207, 18),
(1703, 'ไทยอุดม', 207, 18),
(1704, 'ซับมะกรูด', 207, 18),
(1705, 'ไทรเดี่ยว', 207, 18),
(1706, 'คลองไก่เถื่อน', 207, 18),
(1707, 'เบญจขร', 207, 18),
(1708, 'ไทรทอง', 207, 18),
(1709, 'ตาพระยา', 208, 18),
(1710, 'ทัพเสด็จ', 208, 18),
(1711, 'โคกสูง', 208, 18),
(1712, 'หนองแวง', 208, 18),
(1713, 'หนองม่วง', 208, 18),
(1714, 'ทัพราช', 208, 18),
(1715, 'ทัพไทย', 208, 18),
(1716, 'โนนหมากมุ่น', 208, 18),
(1717, 'โคคลาน', 208, 18),
(1718, 'วังน้ำเย็น', 209, 18),
(1719, 'วังสมบูรณ์', 209, 18),
(1720, 'ตาหลังใน', 209, 18),
(1721, 'วังใหม่', 209, 18),
(1722, 'คลองหินปูน', 209, 18),
(1723, 'ทุ่งมหาเจริญ', 209, 18),
(1724, 'วังทอง', 209, 18),
(1725, 'วัฒนานคร', 210, 18),
(1726, 'ท่าเกวียน', 210, 18),
(1727, 'ผักขะ', 210, 18),
(1728, 'โนนหมากเค็ง', 210, 18),
(1729, 'หนองน้ำใส', 210, 18),
(1730, 'ช่องกุ่ม', 210, 18),
(1731, 'หนองแวง', 210, 18),
(1732, 'แซร์ออ', 210, 18),
(1733, 'หนองหมากฝ้าย', 210, 18),
(1734, 'หนองตะเคียนบอน', 210, 18),
(1735, 'ห้วยโจด', 210, 18),
(1736, 'อรัญประเทศ', 211, 18),
(1737, 'เมืองไผ่', 211, 18),
(1738, 'หันทราย', 211, 18),
(1739, 'คลองน้ำใส', 211, 18),
(1740, 'ท่าข้าม', 211, 18),
(1741, 'ป่าไร่', 211, 18),
(1742, 'ทับพริก', 211, 18),
(1743, 'บ้านใหม่หนองไทร', 211, 18),
(1744, 'ผ่านศึก', 211, 18),
(1745, 'หนองสังข์', 211, 18),
(1746, 'คลองทับจันทร์', 211, 18),
(1747, 'ฟากห้วย', 211, 18),
(1748, 'บ้านด่าน', 211, 18),
(1749, 'เขาฉกรรจ์', 212, 18),
(1750, 'หนองหว้า', 212, 18),
(1751, 'พระเพลิง', 212, 18),
(1752, 'เขาสามสิบ', 212, 18),
(1753, 'โคกสูง', 213, 18),
(1754, 'หนองม่วง', 213, 18),
(1755, 'หนองแวง', 213, 18),
(1756, 'โนนหมากมุ่น', 213, 18),
(1757, 'วังสมบูรณ์', 214, 18),
(1758, 'วังใหม่', 214, 18),
(1759, 'วังทอง', 214, 18),
(1760, 'ในเมือง', 215, 19),
(1761, 'โพธิ์กลาง', 215, 19),
(1762, 'หนองจะบก', 215, 19),
(1763, 'โคกสูง', 215, 19),
(1764, 'มะเริง', 215, 19),
(1765, 'หนองระเวียง', 215, 19),
(1766, 'ปรุใหญ่', 215, 19),
(1767, 'หมื่นไวย', 215, 19),
(1768, 'พลกรัง', 215, 19),
(1769, 'หนองไผ่ล้อม', 215, 19),
(1770, 'หัวทะเล', 215, 19),
(1771, 'บ้านเกาะ', 215, 19),
(1772, 'บ้านใหม่', 215, 19),
(1773, 'พุดซา', 215, 19),
(1774, 'บ้านโพธิ์', 215, 19),
(1775, 'จอหอ', 215, 19),
(1776, 'โคกกรวด', 215, 19),
(1777, 'ไชยมงคล', 215, 19),
(1778, 'หนองบัวศาลา', 215, 19),
(1779, 'สุรนารี', 215, 19),
(1780, 'สีมุม', 215, 19),
(1781, 'ตลาด', 215, 19),
(1782, 'พะเนา', 215, 19),
(1783, 'หนองกระทุ่ม', 215, 19),
(1784, 'หนองไข่น้ำ', 215, 19),
(1785, 'แชะ', 216, 19),
(1786, 'เฉลียง', 216, 19),
(1787, 'ครบุรี', 216, 19),
(1788, 'โคกกระชาย', 216, 19),
(1789, 'จระเข้หิน', 216, 19),
(1790, 'มาบตะโกเอน', 216, 19),
(1791, 'อรพิมพ์', 216, 19),
(1792, 'บ้านใหม่', 216, 19),
(1793, 'ลำเพียก', 216, 19),
(1794, 'ครบุรีใต้', 216, 19),
(1795, 'ตะแบกบาน', 216, 19),
(1796, 'สระว่านพระยา', 216, 19),
(1797, 'เสิงสาง', 217, 19),
(1798, 'สระตะเคียน', 217, 19),
(1799, 'โนนสมบูรณ์', 217, 19),
(1800, 'กุดโบสถ์', 217, 19),
(1801, 'สุขไพบูลย์', 217, 19),
(1802, 'บ้านราษฎร์', 217, 19),
(1803, 'เมืองคง', 218, 19),
(1804, 'คูขาด', 218, 19),
(1805, 'เทพาลัย', 218, 19),
(1806, 'ตาจั่น', 218, 19),
(1807, 'บ้านปรางค์', 218, 19),
(1808, 'หนองมะนาว', 218, 19),
(1809, 'หนองบัว', 218, 19),
(1810, 'โนนเต็ง', 218, 19),
(1811, 'ดอนใหญ่', 218, 19),
(1812, 'ขามสมบูรณ์', 218, 19),
(1813, 'บ้านเหลื่อม', 219, 19),
(1814, 'วังโพธิ์', 219, 19),
(1815, 'โคกกระเบื้อง', 219, 19),
(1816, 'ช่อระกา', 219, 19),
(1817, 'จักราช', 220, 19),
(1818, 'ท่าช้าง', 220, 19),
(1819, 'ทองหลาง', 220, 19),
(1820, 'สีสุก', 220, 19),
(1821, 'หนองขาม', 220, 19),
(1822, 'หนองงูเหลือม', 220, 19),
(1823, 'หนองพลวง', 220, 19),
(1824, 'หนองยาง', 220, 19),
(1825, 'พระพุทธ', 220, 19),
(1826, 'ศรีละกอ', 220, 19),
(1827, 'คลองเมือง', 220, 19),
(1828, 'ช้างทอง', 220, 19),
(1829, 'หินโคน', 220, 19),
(1830, 'กระโทก', 221, 19),
(1831, 'พลับพลา', 221, 19),
(1832, 'ท่าอ่าง', 221, 19),
(1833, 'ทุ่งอรุณ', 221, 19),
(1834, 'ท่าลาดขาว', 221, 19),
(1835, 'ท่าจะหลุง', 221, 19),
(1836, 'ท่าเยี่ยม', 221, 19),
(1837, 'โชคชัย', 221, 19),
(1838, 'ละลมใหม่พัฒนา', 221, 19),
(1839, 'ด่านเกวียน', 221, 19),
(1840, 'กุดพิมาน', 222, 19),
(1841, 'ด่านขุนทด', 222, 19),
(1842, 'ด่านนอก', 222, 19),
(1843, 'ด่านใน', 222, 19),
(1844, 'ตะเคียน', 222, 19),
(1845, 'บ้านเก่า', 222, 19),
(1846, 'บ้านแปรง', 222, 19),
(1847, 'พันชนะ', 222, 19),
(1848, 'สระจรเข้', 222, 19),
(1849, 'หนองกราด', 222, 19),
(1850, 'หนองบัวตะเกียด', 222, 19),
(1851, 'หนองบัวละคร', 222, 19),
(1852, 'หินดาด', 222, 19),
(1853, 'สำนักตะคร้อ', 222, 19),
(1854, 'ห้วยบง', 222, 19),
(1855, 'หนองแวง', 222, 19),
(1856, 'โนนเมืองพัฒนา', 222, 19),
(1857, 'หนองไทร', 222, 19),
(1858, 'บึงปรือ', 222, 19),
(1859, 'โนนไทย', 223, 19),
(1860, 'ด่านจาก', 223, 19),
(1861, 'กำปัง', 223, 19),
(1862, 'สำโรง', 223, 19),
(1863, 'ค้างพลู', 223, 19),
(1864, 'บ้านวัง', 223, 19),
(1865, 'บัลลังก์', 223, 19),
(1866, 'สายออ', 223, 19),
(1867, 'ถนนโพธิ์', 223, 19),
(1868, 'พังเทียม', 223, 19),
(1869, 'สระพระ', 223, 19),
(1870, 'ทัพรั้ง', 223, 19),
(1871, 'หนองหอย', 223, 19),
(1872, 'มะค่า', 223, 19),
(1873, 'มาบกราด', 223, 19),
(1874, 'โนนสูง', 224, 19),
(1875, 'ใหม่', 224, 19),
(1876, 'โตนด', 224, 19),
(1877, 'บิง', 224, 19),
(1878, 'ดอนชมพู', 224, 19),
(1879, 'ธารปราสาท', 224, 19),
(1880, 'หลุมข้าว', 224, 19),
(1881, 'มะค่า', 224, 19),
(1882, 'พลสงคราม', 224, 19),
(1883, 'จันอัด', 224, 19),
(1884, 'ขามเฒ่า', 224, 19),
(1885, 'ด่านคล้า', 224, 19),
(1886, 'ลำคอหงษ์', 224, 19),
(1887, 'เมืองปราสาท', 224, 19),
(1888, 'ดอนหวาย', 224, 19),
(1889, 'ลำมูล', 224, 19),
(1890, 'ขามสะแกแสง', 225, 19),
(1891, 'โนนเมือง', 225, 19),
(1892, 'เมืองนาท', 225, 19),
(1893, 'ชีวึก', 225, 19),
(1894, 'พะงาด', 225, 19),
(1895, 'หนองหัวฟาน', 225, 19),
(1896, 'เมืองเกษตร', 225, 19),
(1897, 'บัวใหญ่', 226, 19),
(1898, 'ห้วยยาง', 226, 19),
(1899, 'เสมาใหญ่', 226, 19),
(1900, 'บึงพะไล', 226, 19),
(1901, 'ดอนตะหนิน', 226, 19),
(1902, 'หนองบัวสะอาด', 226, 19),
(1903, 'โนนทองหลาง', 226, 19),
(1904, 'หนองหว้า', 226, 19),
(1905, 'บัวลาย', 226, 19),
(1906, 'สีดา', 226, 19),
(1907, 'โพนทอง', 226, 19),
(1908, 'แก้งสนามนาง', 226, 19),
(1909, 'กุดจอก', 226, 19),
(1910, 'ด่านช้าง', 226, 19),
(1911, 'โนนจาน', 226, 19),
(1912, 'สีสุก', 226, 19),
(1913, 'สามเมือง', 226, 19),
(1914, 'โนนสำราญ', 226, 19),
(1915, 'ขุนทอง', 226, 19),
(1916, 'หนองตาดใหญ่', 226, 19),
(1917, 'เมืองพะไล', 226, 19),
(1918, 'โนนประดู่', 226, 19),
(1919, 'หนองแจ้งใหญ่', 226, 19),
(1920, 'ประทาย', 227, 19),
(1921, 'โนนแดง', 227, 19),
(1922, 'กระทุ่มราย', 227, 19),
(1923, 'วังไม้แดง', 227, 19),
(1924, 'วังหิน', 227, 19),
(1925, 'ตลาดไทร', 227, 19),
(1926, 'หนองพลวง', 227, 19),
(1927, 'หนองค่าย', 227, 19),
(1928, 'หันห้วยทราย', 227, 19),
(1929, 'ดอนมัน', 227, 19),
(1930, 'โนนตาเถร', 227, 19),
(1931, 'สำพะเนียง', 227, 19),
(1932, 'นางรำ', 227, 19),
(1933, 'โนนเพ็ด', 227, 19),
(1934, 'ทุ่งสว่าง', 227, 19),
(1935, 'ดอนยาวใหญ่', 227, 19),
(1936, 'โคกกลาง', 227, 19),
(1937, 'เมืองโดน', 227, 19),
(1938, 'เมืองปัก', 228, 19),
(1939, 'ตะคุ', 228, 19),
(1940, 'โคกไทย', 228, 19),
(1941, 'สำโรง', 228, 19),
(1942, 'ตะขบ', 228, 19),
(1943, 'นกออก', 228, 19),
(1944, 'ดอน', 228, 19),
(1945, 'วังน้ำเขียว', 228, 19),
(1946, 'ตูม', 228, 19),
(1947, 'งิ้ว', 228, 19),
(1948, 'สะแกราช', 228, 19),
(1949, 'ลำนางแก้ว', 228, 19),
(1950, 'วังหมี', 228, 19),
(1951, 'ระเริง', 228, 19),
(1952, 'อุดมทรัพย์', 228, 19),
(1953, 'ภูหลวง', 228, 19),
(1954, 'ธงชัยเหนือ', 228, 19),
(1955, 'สุขเกษม', 228, 19),
(1956, 'เกษมทรัพย์', 228, 19),
(1957, 'บ่อปลาทอง', 228, 19),
(1958, 'ในเมือง', 229, 19),
(1959, 'สัมฤทธิ์', 229, 19),
(1960, 'โบสถ์', 229, 19),
(1961, 'กระเบื้องใหญ่', 229, 19),
(1962, 'ท่าหลวง', 229, 19),
(1963, 'รังกาใหญ่', 229, 19),
(1964, 'ชีวาน', 229, 19),
(1965, 'นิคมสร้างตนเอง', 229, 19),
(1966, 'กระชอน', 229, 19),
(1967, 'ดงใหญ่', 229, 19),
(1968, 'ธารละหลอด', 229, 19),
(1969, 'หนองระเวียง', 229, 19),
(1970, 'ห้วยแถลง', 230, 19),
(1971, 'ทับสวาย', 230, 19);

-- --------------------------------------------------------

--
-- Table structure for table `mt_sub_org`
--

CREATE TABLE `mt_sub_org` (
  `id` int(11) NOT NULL,
  `main_orgid` int(11) DEFAULT NULL,
  `name_th` varchar(500) DEFAULT NULL,
  `name_en` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `street` varchar(500) DEFAULT NULL,
  `zip_code` varchar(100) DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL,
  `districtid` int(11) DEFAULT NULL,
  `sub_districtid` int(11) DEFAULT NULL,
  `phone_number` int(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ievangelist_number_limit` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_date` date NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) DEFAULT NULL,
  `update_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `mt_sub_org`
--

INSERT INTO `mt_sub_org` (`id`, `main_orgid`, `name_th`, `name_en`, `address`, `street`, `zip_code`, `provinceid`, `districtid`, `sub_districtid`, `phone_number`, `email`, `ievangelist_number_limit`, `is_active`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 1, 'ชื่อองค์การทางศาสนา (1)', 'ชื่อองค์การทางศาสนา (1)', NULL, NULL, NULL, 1, 30, 183, NULL, NULL, 1, 1, 1, '2021-06-10', 1, '2021-06-10'),
(2, 2, 'ชื่อองค์การทางศาสนา (2)', 'ชื่อองค์การทางศาสนา (2)', NULL, NULL, '22', 1, 30, 183, NULL, NULL, 2, 1, 1, '2021-06-10', 1, '2021-06-10'),
(3, 3, 'ชื่อองค์การทางศาสนา (3)', 'ชื่อองค์การทางศาสนา (3)', NULL, NULL, NULL, 1, 48, 232, NULL, NULL, 33, 1, 1, '2021-06-10', NULL, '2021-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `mt_user`
--

CREATE TABLE `mt_user` (
  `id` int(11) NOT NULL,
  `prefixid` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `divisionid` int(11) NOT NULL,
  `position` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `street` varchar(200) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_card` varchar(20) NOT NULL,
  `role_typeid` int(11) NOT NULL,
  `provinceid` int(11) NOT NULL,
  `districtid` int(11) NOT NULL,
  `sub_districtid` int(11) NOT NULL,
  `main_orgid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `image_path` varchar(250) NOT NULL,
  `is_active` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`, `description`) VALUES
(1, 1, 'เปิด'),
(2, 2, 'ปิด');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'SuperAdmin test', 'xcx@zxx', NULL, '$2y$10$/EwM0E5z8.XOqktE1CdzruYUh4uPviVV7P/qaeLldCkD3.b/unvvm', 'uLlk7rPvsguig9ggdTg0DdpZq9K32phCUhXf3y2jpXzqfdSeODyrAyscbLW4', '2021-05-10 02:54:19', '2021-05-10 02:54:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ers_education`
--
ALTER TABLE `ers_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_follower`
--
ALTER TABLE `ers_follower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_form1`
--
ALTER TABLE `ers_form1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_form1_file_attachment`
--
ALTER TABLE `ers_form1_file_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_form1_flow_status`
--
ALTER TABLE `ers_form1_flow_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_form2`
--
ALTER TABLE `ers_form2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_form3`
--
ALTER TABLE `ers_form3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_form4`
--
ALTER TABLE `ers_form4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_org_action`
--
ALTER TABLE `ers_org_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_org_income_source`
--
ALTER TABLE `ers_org_income_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_org_longterm_plan`
--
ALTER TABLE `ers_org_longterm_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_org_objective`
--
ALTER TABLE `ers_org_objective`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_request_history`
--
ALTER TABLE `ers_request_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_request_objective`
--
ALTER TABLE `ers_request_objective`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_request_plan`
--
ALTER TABLE `ers_request_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_request_reason`
--
ALTER TABLE `ers_request_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_thailand_stay_history`
--
ALTER TABLE `ers_thailand_stay_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_work_area`
--
ALTER TABLE `ers_work_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_work_area_plan`
--
ALTER TABLE `ers_work_area_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_work_permit_flow_status`
--
ALTER TABLE `ers_work_permit_flow_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ers_work_permit_request`
--
ALTER TABLE `ers_work_permit_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `log_loginhistorylog`
--
ALTER TABLE `log_loginhistorylog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_country`
--
ALTER TABLE `mt_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_cust_sat_form`
--
ALTER TABLE `mt_cust_sat_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_cust_sat_form_detail`
--
ALTER TABLE `mt_cust_sat_form_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_division`
--
ALTER TABLE `mt_division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_evangelist_sq`
--
ALTER TABLE `mt_evangelist_sq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_flow_status`
--
ALTER TABLE `mt_flow_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_main_org`
--
ALTER TABLE `mt_main_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_menu`
--
ALTER TABLE `mt_menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mt_menulv2`
--
ALTER TABLE `mt_menulv2`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mt_menu_permission`
--
ALTER TABLE `mt_menu_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_nationality`
--
ALTER TABLE `mt_nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_org_leader`
--
ALTER TABLE `mt_org_leader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_ prefix`
--
ALTER TABLE `mt_ prefix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_province`
--
ALTER TABLE `mt_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_race`
--
ALTER TABLE `mt_race`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_religion`
--
ALTER TABLE `mt_religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_role_type`
--
ALTER TABLE `mt_role_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_sub_org`
--
ALTER TABLE `mt_sub_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_user`
--
ALTER TABLE `mt_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ers_education`
--
ALTER TABLE `ers_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_follower`
--
ALTER TABLE `ers_follower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_form1`
--
ALTER TABLE `ers_form1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_form1_file_attachment`
--
ALTER TABLE `ers_form1_file_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_form1_flow_status`
--
ALTER TABLE `ers_form1_flow_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_form2`
--
ALTER TABLE `ers_form2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ers_form3`
--
ALTER TABLE `ers_form3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_form4`
--
ALTER TABLE `ers_form4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_org_action`
--
ALTER TABLE `ers_org_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ers_org_income_source`
--
ALTER TABLE `ers_org_income_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ers_org_longterm_plan`
--
ALTER TABLE `ers_org_longterm_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ers_org_objective`
--
ALTER TABLE `ers_org_objective`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ers_request_history`
--
ALTER TABLE `ers_request_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_request_objective`
--
ALTER TABLE `ers_request_objective`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_request_plan`
--
ALTER TABLE `ers_request_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_request_reason`
--
ALTER TABLE `ers_request_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_thailand_stay_history`
--
ALTER TABLE `ers_thailand_stay_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_work_area`
--
ALTER TABLE `ers_work_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_work_area_plan`
--
ALTER TABLE `ers_work_area_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_work_permit_flow_status`
--
ALTER TABLE `ers_work_permit_flow_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ers_work_permit_request`
--
ALTER TABLE `ers_work_permit_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_loginhistorylog`
--
ALTER TABLE `log_loginhistorylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mt_country`
--
ALTER TABLE `mt_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mt_cust_sat_form`
--
ALTER TABLE `mt_cust_sat_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mt_cust_sat_form_detail`
--
ALTER TABLE `mt_cust_sat_form_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mt_division`
--
ALTER TABLE `mt_division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mt_evangelist_sq`
--
ALTER TABLE `mt_evangelist_sq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mt_flow_status`
--
ALTER TABLE `mt_flow_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mt_main_org`
--
ALTER TABLE `mt_main_org`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mt_menu`
--
ALTER TABLE `mt_menu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mt_menulv2`
--
ALTER TABLE `mt_menulv2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mt_menu_permission`
--
ALTER TABLE `mt_menu_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mt_nationality`
--
ALTER TABLE `mt_nationality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mt_org_leader`
--
ALTER TABLE `mt_org_leader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mt_ prefix`
--
ALTER TABLE `mt_ prefix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mt_province`
--
ALTER TABLE `mt_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `mt_race`
--
ALTER TABLE `mt_race`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mt_religion`
--
ALTER TABLE `mt_religion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mt_role_type`
--
ALTER TABLE `mt_role_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mt_sub_org`
--
ALTER TABLE `mt_sub_org`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mt_user`
--
ALTER TABLE `mt_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
