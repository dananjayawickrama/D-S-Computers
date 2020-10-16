-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 16, 2020 at 03:45 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d_s_computers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_insert_all_itemstable`
--

DROP TABLE IF EXISTS `admin_insert_all_itemstable`;
CREATE TABLE IF NOT EXISTS `admin_insert_all_itemstable` (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Item_Id` int(25) NOT NULL,
  `Item_Name` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Supplier` varchar(255) NOT NULL,
  `Current_Quantity` int(255) NOT NULL,
  `Quantity` int(25) NOT NULL,
  `Status` varchar(255) NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_insert_all_itemstable`
--

INSERT INTO `admin_insert_all_itemstable` (`No`, `Item_Id`, `Item_Name`, `Date`, `Supplier`, `Current_Quantity`, `Quantity`, `Status`) VALUES
(1, 9, 'Iphone 6 covers', '2020-10-30', 'E3w', 0, 10, ''),
(2, 10, 'Sony HeadPhone 22x', '2020-10-23', 'Sony', 0, 5, 'ADD'),
(3, 11, 'iphone handfree', '2020-10-02', 'iteq', 0, 10, 'Add Item'),
(4, 11, 'iphone handfree', '2020-10-15', 'iteq', 10, 10, 'Update Item'),
(5, 3, 'Keyboard cover', '2020-10-16', 'Esd', 180, 180, 'Update Item');

-- --------------------------------------------------------

--
-- Table structure for table `admin_itemstable`
--

DROP TABLE IF EXISTS `admin_itemstable`;
CREATE TABLE IF NOT EXISTS `admin_itemstable` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `P_date` varchar(255) NOT NULL,
  `I_date` varchar(255) NOT NULL,
  `Supplier` varchar(255) NOT NULL,
  `Purchase_Price` double NOT NULL,
  `Sell_Price` double NOT NULL,
  `Quantity` int(255) NOT NULL,
  `Total_price` double NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_itemstable`
--

INSERT INTO `admin_itemstable` (`Id`, `Name`, `P_date`, `I_date`, `Supplier`, `Purchase_Price`, `Sell_Price`, `Quantity`, `Total_price`) VALUES
(1, 'Dell Mouse', 'Sep 8, 2020', 'Sep 18, 2020', 'Dell mart', 500, 600, 2, 5000),
(2, 'Dell Keyboard', 'Sep 8, 2020', 'Sep 18, 2020', 'Dell mart', 600, 650, 2, 6000),
(3, 'Keyboard cover', '2020-10-15', '2020-10-16', 'Esd', 200, 350, 180, 36000),
(4, 'Kingston Pen Drive 32Gb', '2020-09-30', '2020-09-24', 'QEW sells', 1500, 1700, 49, 7500),
(5, '4gb Ram DD3', '2020-09-10', '2020-09-30', 'Stec', 4500, 5000, 0, 13500),
(6, 'SSD 256Gb ', '2020-09-17', '2020-09-30', 'Wmart1', 10000, 12000, 1, 30000),
(7, 'Lap covers', '2020-09-30', '2020-10-13', 'cover T', 500, 650, 3, 5000),
(8, 'DDR4 8gb Ram', '2020-10-01', '2020-10-02', 'Qmart ', 10000, 12000, 0, 30000),
(9, 'Iphone 6 covers', '2020-10-16', '2020-10-30', 'E3w', 400, 550, 5, 4000),
(10, 'Sony HeadPhone 22xi', '2020-10-01', '2020-10-08', 'Sony', 40000, 48000, 38, 200000),
(11, 'iphone handfree', '2020-10-16', '2020-10-15', 'iteq', 500, 600, 10, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `customers_final_total_bills`
--

DROP TABLE IF EXISTS `customers_final_total_bills`;
CREATE TABLE IF NOT EXISTS `customers_final_total_bills` (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Billno` int(255) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `Cid` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Total` double NOT NULL,
  `Cash` double NOT NULL,
  `Balance` double NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers_final_total_bills`
--

INSERT INTO `customers_final_total_bills` (`No`, `Billno`, `Cname`, `Cid`, `Date`, `Total`, `Cash`, `Balance`) VALUES
(1, 1, 'Nihal', 'Niha_1', '2020-10-15', 1150, 1500, 350),
(2, 2, 'Dananjaya', 'Dananjay_2', '2020-10-15', 3700, 4000, 300),
(3, 3, 'adsd', 'ads_3', '2020-10-15', 650, 7000, 6350),
(4, 4, 'Dilan', 'Dila_4', '2020-10-16', 62400, 65000, 2600),
(5, 4, 'Dilan', 'Dila_4', '2020-10-16', 62400, 65000, 2600),
(6, 6, 'Kasun', 'Kasu_6', '2020-10-16', 49300, 50000, 700);

-- --------------------------------------------------------

--
-- Table structure for table `customer_item_bills`
--

DROP TABLE IF EXISTS `customer_item_bills`;
CREATE TABLE IF NOT EXISTS `customer_item_bills` (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Cname` varchar(255) NOT NULL,
  `Cid` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Iid` int(255) NOT NULL,
  `Billid` int(144) NOT NULL,
  `Iprice` double NOT NULL,
  `Quantity` int(25) NOT NULL,
  `Price` double NOT NULL,
  `Date` varchar(255) NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_item_bills`
--

INSERT INTO `customer_item_bills` (`No`, `Cname`, `Cid`, `Iname`, `Iid`, `Billid`, `Iprice`, `Quantity`, `Price`, `Date`) VALUES
(76, 'Dilan', 'Dila_4', 'Keyboard cover', 3, 4, 350, 2, 700, '2020-10-16'),
(77, 'Dilan', 'Dila_4', 'Sony HeadPhone 22xi', 10, 4, 48000, 1, 48000, '2020-10-16'),
(78, 'Dilan', 'Dila_4', 'Kingston Pen Drive 32Gb', 4, 4, 1700, 1, 1700, '2020-10-16'),
(79, 'Dilan', 'Dila_4', 'DDR4 8gb Ram', 8, 4, 12000, 1, 12000, '2020-10-16'),
(80, 'Kasun', 'Kasu_6', 'Lap covers', 7, 6, 650, 2, 1300, '2020-10-16'),
(81, 'Kasun', 'Kasu_6', 'Sony HeadPhone 22xi', 10, 6, 48000, 1, 48000, '2020-10-16');

-- --------------------------------------------------------

--
-- Table structure for table `onedaybills`
--

DROP TABLE IF EXISTS `onedaybills`;
CREATE TABLE IF NOT EXISTS `onedaybills` (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Billno` int(255) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `Cid` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Total` double NOT NULL,
  `Cash` double NOT NULL,
  `Balance` double NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onedaybills`
--

INSERT INTO `onedaybills` (`No`, `Billno`, `Cname`, `Cid`, `Date`, `Total`, `Cash`, `Balance`) VALUES
(1, 6, 'Kasun', 'Kasu_6', '2020-10-16', 49300, 50000, 700);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
