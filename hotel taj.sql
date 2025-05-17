-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2025 at 08:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel taj`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `room_name` varchar(100) DEFAULT NULL,
  `room_image` varchar(255) DEFAULT NULL,
  `room_price` double DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `num_guests` int(11) DEFAULT NULL,
  `special_requests` text DEFAULT NULL,
  `id_card_type` varchar(50) DEFAULT NULL,
  `id_card_number` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'PENDING',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_id` varchar(100) DEFAULT NULL,
  `payment_amount` decimal(10,2) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `email`, `full_name`, `phone`, `address`, `city`, `room_id`, `room_name`, `room_image`, `room_price`, `check_in`, `check_out`, `num_guests`, `special_requests`, `id_card_type`, `id_card_number`, `status`, `created_at`, `order_id`, `payment_amount`, `payment_status`, `payment_date`, `payment_id`) VALUES
('BK1747463426338', 'demo@gmail.com', 'Demo', '7061445612', 'Naidu Colony,Mumbai,Maharashtra', 'Mumbai', 3, 'Executive Room', 'https://diamondhotel.com/wp-content/uploads/2024/02/premier-executive3.jpg', 6000, '2025-05-18', '2025-05-19', 2, 'Hello Sir', 'Aadhar Card', '761268042268', 'PENDING', '2025-05-17 06:30:26', NULL, NULL, NULL, NULL, NULL),
('BK1747463816333', 'demo@gmail.com', 'Demo', '7903141781', 'Naidu Colony,Mumbai,Maharashtra', 'Mumbai', 2, 'Suite Room', 'https://www.maurya.com/wp-content/uploads/2017/09/Mithila-Suite-1.jpg', 7500, '2025-05-23', '2025-05-24', 2, 'dfdsfasdf', 'Aadhar Card', '761268042268', 'PENDING', '2025-05-17 06:36:56', NULL, NULL, NULL, NULL, NULL),
('BK1747463999716', 'demo@gmail.com', 'Demo', '1234567890', 'Naidu Colony,Mumbai,Maharashtra', 'Mumbai', 2, 'Suite Room', 'https://www.maurya.com/wp-content/uploads/2017/09/Mithila-Suite-1.jpg', 7500, '2025-05-24', '2025-06-07', 2, 'fas', 'Aadhar Card', '761268042268', 'CONFIRMED', '2025-05-17 06:39:59', 'order_QVtssaxVBd7lXl', 750000.00, 'SUCCESS', '2025-05-17 12:10:31', 'pay_QVtt7EMZwOPqIx'),
('BK1747464216341', 'demo@gmail.com', 'Demo', '1234567890', 'Naidu Colony,Mumbai,Maharashtra', 'Mumbai', 2, 'Suite Room', 'https://www.maurya.com/wp-content/uploads/2017/09/Mithila-Suite-1.jpg', 7500, '2025-05-24', '2025-05-29', 2, 'df', 'Aadhar Card', '761268042268', 'CONFIRMED', '2025-05-17 06:43:36', 'order_QVtwhNA2lj57In', 750000.00, 'SUCCESS', '2025-05-17 12:14:03', 'pay_QVtwp2iWA9CYfi'),
('BK1747464607298', 'demo@gmail.com', 'Demo', '1234567890', 'Naidu Colony,Mumbai,Maharashtra', 'Mumbai', 1, 'Deluxe Room', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSVDRiajFgRSxe7B54xwJLB_pTN5jh4oWlwQ&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSVDRiajFgRSxe7B54xwJLB_pTN5jh4oWlwQ&s', 4000, '2025-05-17', '2025-05-17', 2, 'gwrgsd', 'Aadhar Card', '761268042268', 'PENDING', '2025-05-17 06:50:07', NULL, NULL, NULL, NULL, NULL),
('BK1747464608598', 'demo@gmail.com', 'Demo', '1234567890', 'Naidu Colony,Mumbai,Maharashtra', 'Mumbai', 1, 'Deluxe Room', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSVDRiajFgRSxe7B54xwJLB_pTN5jh4oWlwQ&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSVDRiajFgRSxe7B54xwJLB_pTN5jh4oWlwQ&s', 4000, '2025-05-17', '2025-05-17', 2, 'gwrgsd', 'Aadhar Card', '761268042268', 'CONFIRMED', '2025-05-17 06:50:09', 'order_QVu3b677H7Qq0J', 400000.00, 'SUCCESS', '2025-05-17 12:20:43', 'pay_QVu3qlm0ZbTnEu'),
('BK1747467327301', 'robin@gmail.com', 'Robin Raj', '6201234569', 'Chandrapura, Bokaro,jharkhand', 'Bokaro', 2, 'Suite Room', 'https://www.maurya.com/wp-content/uploads/2017/09/Mithila-Suite-1.jpg', 7500, '2025-05-18', '2025-05-21', 2, 'Cat is there', 'Aadhar Card', '761268042269', 'CONFIRMED', '2025-05-17 07:35:27', 'order_QVupTOZP0Y6Pkg', 750000.00, 'SUCCESS', '2025-05-17 13:06:05', 'pay_QVupmpcbTWfqQ7'),
('BK1747477928266', 'raju.pandit1174@gmail.com', 'Raju Kumar', '7061445610', 'India', 'Kolkata', 1, 'Deluxe Room', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSVDRiajFgRSxe7B54xwJLB_pTN5jh4oWlwQ&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSVDRiajFgRSxe7B54xwJLB_pTN5jh4oWlwQ&s', 4000, '2025-05-17', '2025-05-18', 2, 'ko', 'Aadhar Card', '761268042269', 'CONFIRMED', '2025-05-17 10:32:08', 'order_QVxq7gZPBKvExZ', 400000.00, 'SUCCESS', '2025-05-17 16:02:46', 'pay_QVxqQcOwen04Oy'),
('BK1747478123930', 'raju.pandit1174@gmail.com', 'Raju Kumar', '7061445610', 'India', 'Kolkata', 2, 'Suite Room', 'https://www.maurya.com/wp-content/uploads/2017/09/Mithila-Suite-1.jpg', 7500, '2025-05-19', '2025-05-20', 2, 'ghj', 'Aadhar Card', '761268042269', 'PENDING', '2025-05-17 10:35:23', NULL, NULL, NULL, NULL, NULL),
('BK1747478383607', 'raju.pandit1174@gmail.com', 'Raju Kumar', '7061445610', 'India', 'Kolkata', 3, 'Executive Room', 'https://diamondhotel.com/wp-content/uploads/2024/02/premier-executive3.jpg', 6000, '2025-05-31', '2025-06-01', 2, 'kkkkkoko', 'Aadhar Card', '761268042269', 'CONFIRMED', '2025-05-17 10:39:43', 'order_QVxy7Qiesx3l8k', 6000.00, 'SUCCESS', '2025-05-17 16:10:23', 'pay_QVxyTUo0viyvoA'),
('BK1747478812512', 'demo@gmail.com', 'Demo', '7989228502', 'Naidu Colony,Mumbai,Maharashtra', 'Mumbai', 3, 'Executive Room', 'https://diamondhotel.com/wp-content/uploads/2024/02/premier-executive3.jpg', 6000, '2025-05-27', '2025-05-28', 2, 'll', 'Aadhar Card', '761268042268', 'CONFIRMED', '2025-05-17 10:46:52', 'order_QVy5fmMrFqhOo7', 6000.00, 'SUCCESS', '2025-05-17 16:17:20', 'pay_QVy5mTPM78v6VA'),
('BK1747479551350', 'demo@gmail.com', 'Demo', '1234567890', 'Naidu Colony,Mumbai,Maharashtra', 'Mumbai', 2, 'Suite Room', 'https://www.maurya.com/wp-content/uploads/2017/09/Mithila-Suite-1.jpg', 7500, '2025-05-24', '2025-05-31', 2, 'lllll', 'Aadhar Card', '761268042268', 'CONFIRMED', '2025-05-17 10:59:11', 'order_QVyIhAhHn8SboK', 7500.00, 'SUCCESS', '2025-05-17 16:35:02', 'pay_QVyInuZPrSdc6x'),
('BK1747480340666', 'makshad@gmail.com', 'Makshad', '7903141782', 'Pakistan', 'Lahore', 2, 'Suite Room', 'https://www.maurya.com/wp-content/uploads/2017/09/Mithila-Suite-1.jpg', 7500, '2025-05-24', '2025-05-25', 2, 'Car Parking needed', 'Aadhar Card', '761268042299', 'CONFIRMED', '2025-05-17 11:12:20', 'order_QVyWZt7kNNgBwE', 7500.00, 'SUCCESS', '2025-05-17 16:42:55', 'pay_QVyWn3ZJDfHDGh'),
('BK1747484969145', 'raju.pandit1174@gmail.com', 'Raju Kumar', '7061445610', 'India', 'Kolkata', 2, 'Suite Room', 'https://www.maurya.com/wp-content/uploads/2017/09/Mithila-Suite-1.jpg', 7500, '2025-05-24', '2025-05-25', 2, 'none', 'Aadhar Card', '761268042269', 'CONFIRMED', '2025-05-17 12:29:29', 'order_QVzq4ZkBs2utrP', 7500.00, 'SUCCESS', '2025-05-17 18:00:00', 'pay_QVzqGzLf8HrHan'),
('BK1747485139158', 'raju.pandit1174@gmail.com', 'Raju Kumar', '7061445610', 'India', 'Kolkata', 2, 'Suite Room', 'https://www.maurya.com/wp-content/uploads/2017/09/Mithila-Suite-1.jpg', 7500, '2025-05-31', '2025-06-07', 2, 'hi', 'Aadhar Card', '761268042269', 'CONFIRMED', '2025-05-17 12:32:19', 'order_QVzt3N6XLaoZMV', 7500.00, 'SUCCESS', '2025-05-17 18:03:08', 'pay_QVztaZEqV8PRA1'),
('BK1747504684954', 'demo@gmail.com', 'Demo', '7903141781', 'Naidu Colony,Mumbai,Maharashtra', 'Mumbai', 2, 'Suite Room', 'https://www.maurya.com/wp-content/uploads/2017/09/Mithila-Suite-1.jpg', 7500, '2025-05-17', '2025-05-18', 2, 'Can we bring pet with us', 'Aadhar Card', '761268042268', 'CONFIRMED', '2025-05-17 17:58:04', 'order_QW5RB005egg6mD', 7500.00, 'SUCCESS', '2025-05-17 23:28:45', 'pay_QW5RYu9Z8k7R7X');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `submitted_at`) VALUES
(1, 'Raju ', 'raju.pandit1174@gmail.com', 'About Staff', 'Your Staff behaviour was too good', '2025-05-15 16:41:45'),
(2, 'Sameer', 'fuddi@gmail.com', 'Car', 'Car lost in your hotel', '2025-05-15 16:55:12'),
(3, 'Makshad', 'makshad@gmail.com', 'Car Parking', 'The car parking slot was not Available', '2025-05-17 11:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `placeName` varchar(100) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `placeName`, `imageUrl`) VALUES
(1, 'Reception Area', 'https://media.istockphoto.com/id/1164435677/photo/happy-hotel-clerks-are-welcoming-professional-at-counter.jpg?s=612x612&w=0&k=20&c=XNbtAFwGK4AHd7JKKQycDwTQcIXFagIxt9TXLNb0Dd4='),
(2, 'Deluxe Room', 'https://images.pexels.com/photos/271639/pexels-photo-271639.jpeg'),
(3, 'Swimming Pool', 'https://images.pexels.com/photos/21856211/pexels-photo-21856211.jpeg'),
(5, 'Hotel Lounge', 'https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg'),
(6, 'Executive Suite', 'https://images.pexels.com/photos/189333/pexels-photo-189333.jpeg'),
(7, 'Spa & Wellness', 'https://images.pexels.com/photos/374870/pexels-photo-374870.jpeg'),
(8, 'Hotel Gym', 'https://images.pexels.com/photos/1954524/pexels-photo-1954524.jpeg'),
(9, 'Rooftop Pool', 'https://images.pexels.com/photos/2747901/pexels-photo-2747901.jpeg'),
(10, 'Luxury Bathroom', 'https://images.pexels.com/photos/1571461/pexels-photo-1571461.jpeg'),
(11, 'Conference Hall', 'https://images.pexels.com/photos/1181396/pexels-photo-1181396.jpeg'),
(12, 'Breakfast Buffet', 'https://images.pexels.com/photos/1058277/pexels-photo-1058277.jpeg'),
(13, 'Luxury Corridor', 'https://images.pexels.com/photos/271639/pexels-photo-271639.jpeg'),
(14, 'Hotel Exterior Night View', 'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg'),
(15, 'Lobby Lounge', 'https://images.pexels.com/photos/271743/pexels-photo-271743.jpeg'),
(16, 'Penthouse Suite', 'https://images.pexels.com/photos/271639/pexels-photo-271639.jpeg'),
(17, 'Jacuzzi Area', 'https://images.pexels.com/photos/358636/pexels-photo-358636.jpeg'),
(19, 'Outdoor Dining', 'https://images.pexels.com/photos/2002638/pexels-photo-2002638.jpeg'),
(20, 'Cozy Fireplace Lounge', 'https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg'),
(21, 'Luxury Lobby', 'https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg'),
(22, 'Business Center', 'https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg'),
(23, 'Banquet Hall', 'https://images.pexels.com/photos/2656137/pexels-photo-2656137.jpeg'),
(24, 'Garden View Room', 'https://images.pexels.com/photos/261395/pexels-photo-261395.jpeg'),
(25, 'Sunset View Balcony', 'https://images.pexels.com/photos/271643/pexels-photo-271643.jpeg'),
(26, 'Hotel Bar', 'https://images.pexels.com/photos/6267/menu-restaurant-vintage-table.jpg'),
(27, 'Relaxation Lounge', 'https://images.pexels.com/photos/1571458/pexels-photo-1571458.jpeg'),
(28, 'Couple Suite', 'https://images.pexels.com/photos/210604/pexels-photo-210604.jpeg'),
(29, 'Kids Play Area', 'https://images.pexels.com/photos/681452/pexels-photo-681452.jpeg'),
(31, 'Luxury Dining Area', 'https://images.pexels.com/photos/323772/pexels-photo-323772.jpeg'),
(33, 'Outdoor Lounge', 'https://images.pexels.com/photos/1866149/pexels-photo-1866149.jpeg'),
(34, 'Indoor Pool', 'https://images.pexels.com/photos/358636/pexels-photo-358636.jpeg'),
(35, 'Sun Deck', 'https://images.pexels.com/photos/2079234/pexels-photo-2079234.jpeg'),
(36, 'Evening Lobby View', 'https://images.pexels.com/photos/271639/pexels-photo-271639.jpeg'),
(37, 'Skyline View Room', 'https://images.pexels.com/photos/2631746/pexels-photo-2631746.jpeg'),
(38, 'Modern Bath Area', 'https://images.pexels.com/photos/271618/pexels-photo-271618.jpeg'),
(39, 'Rooftop Restaurant', 'https://images.pexels.com/photos/261392/pexels-photo-261392.jpeg'),
(40, 'Garden Pathway', 'https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `max_guests` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `price`, `image`, `max_guests`) VALUES
(1, 'Deluxe Room', 4000.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSVDRiajFgRSxe7B54xwJLB_pTN5jh4oWlwQ&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSVDRiajFgRSxe7B54xwJLB_pTN5jh4oWlwQ&s', 2),
(2, 'Suite Room', 7500.00, 'https://www.maurya.com/wp-content/uploads/2017/09/Mithila-Suite-1.jpg', 2),
(3, 'Executive Room', 6000.00, 'https://diamondhotel.com/wp-content/uploads/2024/02/premier-executive3.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_status`
--

CREATE TABLE `rooms_status` (
  `room_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms_status`
--

INSERT INTO `rooms_status` (`room_id`, `status`, `updated_at`) VALUES
(1, 'CLEAN', '2025-05-17 16:58:36'),
(2, 'DIRTY', '2025-05-17 17:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `room_inventory`
--

CREATE TABLE `room_inventory` (
  `id` int(11) NOT NULL,
  `room_number` varchar(20) NOT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_inventory`
--

INSERT INTO `room_inventory` (`id`, `room_number`, `room_type_id`, `status`) VALUES
(1, '1', 2, 'booked'),
(2, '101', 2, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `department` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `shift_type` varchar(50) NOT NULL,
  `bio` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `email`, `phone`, `department`, `designation`, `shift_type`, `bio`, `photo`, `password`, `created_at`) VALUES
(3, 'Sameer Sagvekar', 'Sameer@gmail.com', '7894563210', 'Front Office / Reception', 'Guest Relations Executive', 'Morning Shift', 'Hard Working ', 'staff_photos\\133862800203387954.jpg', '$2a$10$UL4I5HUVscW5m3aqc5.8POpbrI5Wzkw9bxJte8O4zWZGMLg1oaPlK', '2025-05-17 17:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `id_card_type` varchar(50) DEFAULT NULL,
  `id_card_number` varchar(50) DEFAULT NULL,
  `id_image_front` varchar(255) DEFAULT NULL,
  `id_image_back` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone_number`, `address`, `city`, `id_card_type`, `id_card_number`, `id_image_front`, `id_image_back`) VALUES
(1, 'Raju Kumar', 'raju.pandit1174@gmail.com', '$2a$10$aIBmBzKhdCPTQFdZuui4gupWTuxRiFxFYoIjhZU0aep4tY2swKOiq', '7061445610', 'India', 'Kolkata', 'Aadhar Card', '761268042269', 'fb advertisement hotel promo - Made with PosterMyWall.jpg', 'fb advertisement hotel promo - Made with PosterMyWall.jpg'),
(2, 'fuddi', 'fuddi@gmail.com', '$2a$10$za87/ixp3N4jtjzggP6IYOT5aksaXml9nCULv2ZLUoCDeEM4SEo7y', '7903141781', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'hello', 'hello@gmail.com', '$2a$10$dYyO44qyOQeo18pRzr43w.y8PU3zCcEKO37nrXaYWmgjsXrWX1.IO', '7903141781', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Sameer', 'sameer@gmail.com', '$2a$10$pNZPc5Ma8XvOkqYyMD2gXeTXek4rWKAnGot4Vp2k77DTvJlRl/U3i', '7896541230', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Fuddhi', 'fuddhi@gmail.com', '$2a$10$7WkO4nilN/8MX8M2TSFi1un8xJEOPRc8amHk/NNf1KH30fImAT9qO', '7903141781', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Demo', 'demo@gmail.com', '$2a$10$EArbqyO.lPEq3NkljS3cEekdRMYC50Op0r/uJ6tuLDRIa/5Kfemw.', '1234567890', 'Naidu Colony,Mumbai,Maharashtra', 'Mumbai', 'Aadhar Card', '761268042268', 'fb advertisement hotel promo - Made with PosterMyWall.jpg', 'fb advertisement hotel promo - Made with PosterMyWall.jpg'),
(7, 'Robin Raj', 'robin@gmail.com', '$2a$10$nCYmcbtTYiHz5xLHaJYgdOJmU/0wo4TmUYk2XOaYa5oI7NmSE71xi', '6201234569', 'Chandrapura, Bokaro,jharkhand', 'Bokaro', 'Aadhar Card', '761268042269', 'fb advertisement hotel promo - Made with PosterMyWall.jpg', 'fb advertisement hotel promo - Made with PosterMyWall.jpg'),
(8, 'Makshad', 'makshad@gmail.com', '$2a$10$oGiCgbUQHG4T4im0WLKqven87eDtJN2gsEPfPJ4VJcil0Ap6SeWEi', '7903141782', 'Pakistan', 'Lahore', 'Aadhar Card', '761268042299', 'Screenshot (1).png', 'Screenshot (2).png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms_status`
--
ALTER TABLE `rooms_status`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_inventory`
--
ALTER TABLE `room_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room_inventory`
--
ALTER TABLE `room_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rooms_status`
--
ALTER TABLE `rooms_status`
  ADD CONSTRAINT `rooms_status_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room_inventory` (`id`);

--
-- Constraints for table `room_inventory`
--
ALTER TABLE `room_inventory`
  ADD CONSTRAINT `room_inventory_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
