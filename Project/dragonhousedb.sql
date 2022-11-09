-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 06:21 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dragonhousedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaccomodation`
--

CREATE TABLE `tblaccomodation` (
  `ACCOMID` int(11) NOT NULL,
  `ACCOMODATION` varchar(30) NOT NULL,
  `ACCOMDESC` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccomodation`
--

INSERT INTO `tblaccomodation` (`ACCOMID`, `ACCOMODATION`, `ACCOMDESC`) VALUES
(16, '(BED ROOMS)', 'LUXURY ROOM');

-- --------------------------------------------------------

--
-- Table structure for table `tblauto`
--

CREATE TABLE `tblauto` (
  `autoid` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblguest`
--

CREATE TABLE `tblguest` (
  `GUESTID` int(11) NOT NULL,
  `REFNO` int(11) NOT NULL,
  `G_FNAME` varchar(30) NOT NULL,
  `G_LNAME` varchar(30) NOT NULL,
  `G_CITY` varchar(90) NOT NULL,
  `G_ADDRESS` varchar(90) NOT NULL,
  `DBIRTH` date NOT NULL,
  `G_PHONE` varchar(20) NOT NULL,
  `G_NATIONALITY` varchar(30) NOT NULL,
  `G_COMPANY` varchar(90) NOT NULL,
  `G_CADDRESS` varchar(90) NOT NULL,
  `G_TERMS` tinyint(4) NOT NULL,
  `G_EMAIL` varchar(99) NOT NULL,
  `G_UNAME` varchar(255) NOT NULL,
  `G_PASS` varchar(255) NOT NULL,
  `ZIP` int(11) NOT NULL,
  `LOCATION` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblguest`
--

INSERT INTO `tblguest` (`GUESTID`, `REFNO`, `G_FNAME`, `G_LNAME`, `G_CITY`, `G_ADDRESS`, `DBIRTH`, `G_PHONE`, `G_NATIONALITY`, `G_COMPANY`, `G_CADDRESS`, `G_TERMS`, `G_EMAIL`, `G_UNAME`, `G_PASS`, `ZIP`, `LOCATION`) VALUES
(1, 0, 'Asif', 'Anan', '', 'Dhaka,BD', '2020-03-30', '123456789', 'BD', '', '', 1, 'asifanan@gmail.com', 'anan', '4169c013bf7234e5f23edb9ed31c3936b3cef3b5', 0, ''),
(2, 0, 'Saraf', 'Tasnim', '', 'Sylhet,BD', '2020-03-30', '12345', 'BD', '', '', 1, 'saraftasnim@gmail.com', 'saraf', '42157ad6e50370b0699944dc01edc2356c65a722', 0, ''),
(3, 0, 'Mark', '', '', 'LOS ANGELES,USA', '2020-03-30', '12345', 'USA', '', '', 1, 'mark@gmail.com', 'mark', '89377a66aad15cd790df7e01ef99340b5512d2e8', 0, ''),
(4, 0, 'Jack ', 'MA', '', 'Sylhet,Bangladesh', '2021-02-04', '123456789', 'Bangladeshi', '', '', 1, 'jack@gmail.com', 'jack', '8c841f9fd3f944c9099adf8574b4a295b1547443', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `SUMMARYID` int(11) NOT NULL,
  `TRANSDATE` datetime NOT NULL,
  `CONFIRMATIONCODE` varchar(30) NOT NULL,
  `PQTY` int(11) NOT NULL,
  `GUESTID` int(11) NOT NULL,
  `SPRICE` double NOT NULL,
  `MSGVIEW` tinyint(1) NOT NULL,
  `STATUS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`SUMMARYID`, `TRANSDATE`, `CONFIRMATIONCODE`, `PQTY`, `GUESTID`, `SPRICE`, `MSGVIEW`, `STATUS`) VALUES
(1, '2020-04-03 04:49:45', 'gvsooait', 1, 1, 500, 0, 'Pending'),
(2, '2020-04-03 04:50:32', '2q3skqhd', 1, 1, 200, 0, 'Checkedin'),
(3, '2020-04-03 04:50:51', 'y3ss7f2j', 1, 1, 100, 0, 'Checkedout'),
(5, '2020-04-06 05:00:23', 'k07c7wda', 1, 3, 200, 0, 'Confirmed'),
(6, '2021-02-04 05:05:09', 'hxe2jf8j', 1, 3, 400, 0, 'Pending'),
(7, '2021-02-04 05:15:01', 'mekdsew4', 1, 4, 200, 0, 'Pending'),
(8, '2021-02-04 05:17:36', '8ddqoao0', 1, 4, 400, 0, 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `tblreservation`
--

CREATE TABLE `tblreservation` (
  `RESERVEID` int(11) NOT NULL,
  `CONFIRMATIONCODE` varchar(50) NOT NULL,
  `TRANSDATE` date NOT NULL,
  `ROOMID` int(11) NOT NULL,
  `ARRIVAL` datetime NOT NULL,
  `DEPARTURE` datetime NOT NULL,
  `RPRICE` double NOT NULL,
  `GUESTID` int(11) NOT NULL,
  `PRORPOSE` varchar(30) NOT NULL,
  `STATUS` varchar(11) NOT NULL,
  `BOOKDATE` datetime NOT NULL,
  `REMARKS` text NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreservation`
--

INSERT INTO `tblreservation` (`RESERVEID`, `CONFIRMATIONCODE`, `TRANSDATE`, `ROOMID`, `ARRIVAL`, `DEPARTURE`, `RPRICE`, `GUESTID`, `PRORPOSE`, `STATUS`, `BOOKDATE`, `REMARKS`, `USERID`) VALUES
(1, 'gvsooait', '2020-04-03', 19, '2020-04-03 00:00:00', '2020-04-04 00:00:00', 500, 1, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(2, '2q3skqhd', '2020-04-03', 18, '2020-04-03 00:00:00', '2020-04-04 00:00:00', 200, 1, 'Travel', 'Checkedin', '0000-00-00 00:00:00', '', 0),
(3, 'y3ss7f2j', '2020-04-03', 17, '2020-04-03 00:00:00', '2020-04-04 00:00:00', 100, 1, 'Travel', 'Checkedout', '0000-00-00 00:00:00', '', 0),
(5, 'k07c7wda', '2020-04-06', 18, '2020-04-07 00:00:00', '2020-04-08 00:00:00', 200, 3, 'Travel', 'Confirmed', '0000-00-00 00:00:00', '', 0),
(6, 'hxe2jf8j', '2021-02-04', 18, '2021-02-04 00:00:00', '2021-02-06 00:00:00', 400, 3, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(7, 'dzzq8363', '2021-02-04', 18, '2021-02-04 00:00:00', '2021-02-06 00:00:00', 400, 0, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(8, 'mekdsew4', '2021-02-04', 17, '2021-02-11 00:00:00', '2021-02-13 00:00:00', 200, 4, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(9, '8ddqoao0', '2021-02-04', 18, '2021-02-18 00:00:00', '2021-02-20 00:00:00', 400, 4, 'Travel', 'Confirmed', '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

CREATE TABLE `tblroom` (
  `ROOMID` int(11) NOT NULL,
  `ROOMNUM` int(11) NOT NULL,
  `ACCOMID` int(11) NOT NULL,
  `ROOM` varchar(30) NOT NULL,
  `ROOMDESC` varchar(255) NOT NULL,
  `NUMPERSON` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `ROOMIMAGE` varchar(255) NOT NULL,
  `OROOMNUM` int(11) NOT NULL,
  `RoomTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblroom`
--

INSERT INTO `tblroom` (`ROOMID`, `ROOMNUM`, `ACCOMID`, `ROOM`, `ROOMDESC`, `NUMPERSON`, `PRICE`, `ROOMIMAGE`, `OROOMNUM`, `RoomTypeID`) VALUES
(17, 5, 16, 'Superior Room', 'WIFI, AC, SINGLE BED', 1, 100, '', 5, 0),
(18, -2, 16, 'Deluxe Room', 'WIFI, AC, DOUBLE BED', 2, 200, '', 5, 0),
(19, 1, 16, 'Business Class Room', 'WIFI, AC, DOUBLE BED, LIVING AREA', 5, 500, '', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblroomtype`
--

CREATE TABLE `tblroomtype` (
  `RoomTypeID` int(11) NOT NULL,
  `RoomType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltitle`
--

CREATE TABLE `tbltitle` (
  `TItleID` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Subtitle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `UNAME` varchar(30) NOT NULL,
  `USER_NAME` varchar(30) NOT NULL,
  `UPASS` varchar(90) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  `PHONE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `UNAME`, `USER_NAME`, `UPASS`, `ROLE`, `PHONE`) VALUES
(1, 'Admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 9876),
(2, 'Asif Anan', 'anan', '4169c013bf7234e5f23edb9ed31c3936b3cef3b5', 'Administrator', 12345),
(3, 'Saraf', 'saraf', '39f9e233f5d739b6a31776dae52623429ce08145', 'Administrator', 99999),
(4, 'Person', 'person', 'ab2d000c0383c6c82263f5c20f47b055a739f053', 'Administrator', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `comment_sender_name` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_contact`
--

CREATE TABLE `tbl_setting_contact` (
  `SetCon_ID` int(11) NOT NULL,
  `SetConLocation` varchar(99) NOT NULL,
  `SetConEmail` varchar(99) NOT NULL,
  `SetConContactNo` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblaccomodation`
--
ALTER TABLE `tblaccomodation`
  ADD PRIMARY KEY (`ACCOMID`);

--
-- Indexes for table `tblauto`
--
ALTER TABLE `tblauto`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `tblguest`
--
ALTER TABLE `tblguest`
  ADD PRIMARY KEY (`GUESTID`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `CONFIRMATIONCODE` (`CONFIRMATIONCODE`),
  ADD KEY `GUESTID` (`GUESTID`);

--
-- Indexes for table `tblreservation`
--
ALTER TABLE `tblreservation`
  ADD PRIMARY KEY (`RESERVEID`),
  ADD KEY `ROOMID` (`ROOMID`),
  ADD KEY `GUESTID` (`GUESTID`),
  ADD KEY `CONFIRMATIONCODE` (`CONFIRMATIONCODE`);

--
-- Indexes for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`ROOMID`),
  ADD KEY `ACCOMID` (`ACCOMID`);

--
-- Indexes for table `tblroomtype`
--
ALTER TABLE `tblroomtype`
  ADD PRIMARY KEY (`RoomTypeID`);

--
-- Indexes for table `tbltitle`
--
ALTER TABLE `tbltitle`
  ADD PRIMARY KEY (`TItleID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_setting_contact`
--
ALTER TABLE `tbl_setting_contact`
  ADD PRIMARY KEY (`SetCon_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaccomodation`
--
ALTER TABLE `tblaccomodation`
  MODIFY `ACCOMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblauto`
--
ALTER TABLE `tblauto`
  MODIFY `autoid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblguest`
--
ALTER TABLE `tblguest`
  MODIFY `GUESTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblreservation`
--
ALTER TABLE `tblreservation`
  MODIFY `RESERVEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblroom`
--
ALTER TABLE `tblroom`
  MODIFY `ROOMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblroomtype`
--
ALTER TABLE `tblroomtype`
  MODIFY `RoomTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltitle`
--
ALTER TABLE `tbltitle`
  MODIFY `TItleID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_setting_contact`
--
ALTER TABLE `tbl_setting_contact`
  MODIFY `SetCon_ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
