-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 18, 2021 at 11:45 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
CREATE TABLE IF NOT EXISTS `customer_order` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `pro_ids` varchar(15) NOT NULL,
  `pro_qty` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  `address` text NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`cid`, `pro_ids`, `pro_qty`, `name`, `email`, `phone_number`, `address`, `updated_at`, `created_at`) VALUES
(1, '2', '1', 'Sonali Testing', 'test@gmail.com', '1234567890', 'zabki poland\r\nasdas', '2021-11-18 11:43:34', '2021-11-18 11:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `short_description` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `product_category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `short_description`, `description`, `images`, `price`, `status`, `product_category`) VALUES
(1, 'Fit Printed Casual Shirt', 'Blue printed casual shirt, has a mandarin collar collar, button placket, long sleeves, curved hem', '<div class=\"pdp-productDescriptorsContainer\"><div><h4 class=\"pdp-product-description-title\"><!-- react-text: 260 -->Product Details <!-- /react-text --><span class=\"myntraweb-sprite pdp-productDetailsIcon sprites-productDetailsIcon\"></span></h4><p class=\"pdp-product-description-content\">Blue printed casual shirt, has a mandarin collar collar, button placket, long sleeves, curved hem</p></div><div class=\"pdp-sizeFitDesc\"><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Size &amp; Fit</h4><p class=\"pdp-sizeFitDescContent pdp-product-description-content\">Regular fit <br>The model (height 6 and shoulders 18) is wearing a size 40</p></div><div class=\"pdp-sizeFitDesc\"><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Material &amp; Care</h4><p class=\"pdp-sizeFitDescContent pdp-product-description-content\">Cotton <br> Machine-wash</p></div><div class=\"index-sizeFitDesc\"><h4 class=\"index-sizeFitDescTitle index-product-description-title\" style=\"padding-bottom: 12px;\">Specifications</h4><div class=\"index-tableContainer\"><div class=\"index-row\"><div class=\"index-rowKey\">Sleeve Length</div><div class=\"index-rowValue\">Long Sleeves</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Collar</div><div class=\"index-rowValue\">Mandarin Collar</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Fit</div><div class=\"index-rowValue\">Regular Fit</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Occasion</div><div class=\"index-rowValue\">Casual</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Length</div><div class=\"index-rowValue\">Regular</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Hemline</div><div class=\"index-rowValue\">Curved</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Placket</div><div class=\"index-rowValue\">Button Placket</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Placket Length</div><div class=\"index-rowValue\">Full</div></div></div><div class=\"index-showMoreText\">See More</div></div></div>', '12,13,14', 550.15, 'active', '2'),
(2, 'Men Pink Slim Fit Solid Casual Shirt', 'Pink solid casual shirt, has a spread collar, long sleeves, curved hem, one patch pocket', '<div class=\"pdp-productDescriptorsContainer\"><div><h4 class=\"pdp-product-description-title\"><!-- react-text: 228 -->Product Details <!-- /react-text --><span class=\"myntraweb-sprite pdp-productDetailsIcon sprites-productDetailsIcon\"></span></h4><p class=\"pdp-product-description-content\">Pink solid casual shirt, has a spread collar, long sleeves, curved hem, one patch pocket</p></div><div class=\"pdp-sizeFitDesc\"><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Size &amp; Fit</h4><p class=\"pdp-sizeFitDescContent pdp-product-description-content\">Slim Fit<br>The model (height 6\') is wearing a size 40</p></div><div class=\"pdp-sizeFitDesc\"><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Material &amp; Care</h4><p class=\"pdp-sizeFitDescContent pdp-product-description-content\">100% cotton<br>Machine-wash</p></div><div class=\"index-sizeFitDesc\"><h4 class=\"index-sizeFitDescTitle index-product-description-title\" style=\"padding-bottom: 12px;\">Specifications</h4><div class=\"index-tableContainer\"><div class=\"index-row\"><div class=\"index-rowKey\">Sleeve Length</div><div class=\"index-rowValue\">Long Sleeves</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Collar</div><div class=\"index-rowValue\">Spread Collar</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Fit</div><div class=\"index-rowValue\">Slim Fit</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Print or Pattern Type</div><div class=\"index-rowValue\">Solid</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Occasion</div><div class=\"index-rowValue\">Casual</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Length</div><div class=\"index-rowValue\">Regular</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Hemline</div><div class=\"index-rowValue\">Curved</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Placket</div><div class=\"index-rowValue\">Button Placket</div></div></div><div class=\"index-showMoreText\">See More</div></div></div>', '13,14,15', 650, 'active', '2'),
(3, 'Men Black Slim Fit Solid Casual Shirt\r\n', 'Black solid casual shirt, has a spread collar, long sleeves, button placket, curved hem, and 1 patch pocket', '<div class=\"pdp-productDescriptorsContainer\"><div><h4 class=\"pdp-product-description-title\"><!-- react-text: 244 -->Product Details <!-- /react-text --><span class=\"myntraweb-sprite pdp-productDetailsIcon sprites-productDetailsIcon\"></span></h4><p class=\"pdp-product-description-content\">Black solid casual shirt, has a spread collar, long sleeves, button placket, curved hem, and 1 patch pocket</p></div><div class=\"pdp-sizeFitDesc\"><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Size &amp; Fit</h4><p class=\"pdp-sizeFitDescContent pdp-product-description-content\">Slim fit<br> The model (height 6\') is wearing a size 40</p></div><div class=\"pdp-sizeFitDesc\"><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Material &amp; Care</h4><p class=\"pdp-sizeFitDescContent pdp-product-description-content\">Material: 100% Cotton<br>Machine Wash</p></div><div class=\"index-sizeFitDesc\"><h4 class=\"index-sizeFitDescTitle index-product-description-title\" style=\"padding-bottom: 12px;\">Specifications</h4><div class=\"index-tableContainer\"><div class=\"index-row\"><div class=\"index-rowKey\">Sleeve Length</div><div class=\"index-rowValue\">Long Sleeves</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Collar</div><div class=\"index-rowValue\">Spread Collar</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Fit</div><div class=\"index-rowValue\">Slim Fit</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Print or Pattern Type</div><div class=\"index-rowValue\">Solid</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Occasion</div><div class=\"index-rowValue\">Casual</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Length</div><div class=\"index-rowValue\">Regular</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Hemline</div><div class=\"index-rowValue\">Curved</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Placket</div><div class=\"index-rowValue\">Button Placket</div></div></div><div class=\"index-showMoreText\">See More</div></div></div>', '11,13,15', 1000, 'active', '2'),
(4, 'Pink Woven Design Ballerinas', 'A pair of grey and pink round-toe ballerinas, has regular styling, slip-on detail', '<div class=\"pdp-productDescriptorsContainer\"><div><h4 class=\"pdp-product-description-title\"><!-- react-text: 246 -->Product Details <!-- /react-text --><span class=\"myntraweb-sprite pdp-productDetailsIcon sprites-productDetailsIcon\"></span></h4><p class=\"pdp-product-description-content\">A pair of grey and pink round-toe ballerinas, has regular styling, slip-on detail<br>Synthetic woven design upper<br>Cushioned footbed<br>Textured and patterned outsole<br>Warranty: limited warranty<br>Warranty provided by brand/manufacturer<br>Comes with free pair of cushioned self adhesive size adjuster</p></div><div class=\"pdp-sizeFitDesc\"><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Material &amp; Care</h4><p class=\"pdp-sizeFitDescContent pdp-product-description-content\">Synthetic<br>Wipe with a clean, dry cloth to remove dust</p></div><div class=\"index-sizeFitDesc\"><h4 class=\"index-sizeFitDescTitle index-product-description-title\" style=\"padding-bottom: 12px;\">Specifications</h4><div class=\"index-tableContainer\"><div class=\"index-row\"><div class=\"index-rowKey\">Type</div><div class=\"index-rowValue\">Ballerinas</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Toe Shape</div><div class=\"index-rowValue\">Round Toe</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Fastening and Back Detail</div><div class=\"index-rowValue\">Slip-On</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Pattern</div><div class=\"index-rowValue\">Woven Design</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Occasion</div><div class=\"index-rowValue\">Casual</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Ankle Height</div><div class=\"index-rowValue\">Regular</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Sole Material</div><div class=\"index-rowValue\">TPR</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Warranty</div><div class=\"index-rowValue\">Limited Warranty</div></div></div><div><div class=\"index-sizeFitDesc\" style=\"margin-top: 0px;\"><h4 class=\"index-sizeFitDescTitle index-product-description-title\">Complete The Look</h4><p class=\"index-sizeFitDescContent index-product-description-content\">Set the trend with these adorable flats from Marc Loire.  These grey flats can be styled with slim jeans and a beautiful top for a casual brunch outfit.</p></div></div></div></div>', '8,9,10', 1525.2, 'active', '3'),
(6, 'Printed Open Toe Flats with Bows', 'A pair of beige open toe flats\r\nUpper Material: synthetic\r\nCushioned footbed\r\nTextured and patterned outsole', '<div class=\"pdp-productDescriptorsContainer\"><div><h4 class=\"pdp-product-description-title\"><!-- react-text: 238 -->Product Details <!-- /react-text --><span class=\"myntraweb-sprite pdp-productDetailsIcon sprites-productDetailsIcon\"></span></h4><p class=\"pdp-product-description-content\">A pair of beige open toe flats <br> Upper Material: synthetic <br> Cushioned footbed <br> Textured and patterned outsole <br> Warranty: 7 days <br> Warranty provided by brand owner/manufacturer</p></div><div class=\"pdp-sizeFitDesc\"><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Material &amp; Care</h4><p class=\"pdp-sizeFitDescContent pdp-product-description-content\"><p>Wipe with a clean, dry cloth to remove dust</p></p></div><div class=\"index-sizeFitDesc\"><h4 class=\"index-sizeFitDescTitle index-product-description-title\" style=\"padding-bottom: 12px;\">Specifications</h4><div class=\"index-tableContainer\"><div class=\"index-row\"><div class=\"index-rowKey\">Type</div><div class=\"index-rowValue\">Open Toe Flats</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Toe Shape</div><div class=\"index-rowValue\">Pointed Toe</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Fastening and Back Detail</div><div class=\"index-rowValue\">Lace-Ups</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Pattern</div><div class=\"index-rowValue\">Printed</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Occasion</div><div class=\"index-rowValue\">Casual</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Ornamentation</div><div class=\"index-rowValue\">Bows</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Ankle Height</div><div class=\"index-rowValue\">Regular</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Sole Material</div><div class=\"index-rowValue\">TPR</div></div></div><div class=\"index-showMoreText\">See More</div></div></div>', '10,6', 4145, 'active', '3'),
(7, 'Men Black Semiformal Shoes\r\n', 'A pair of black semiformal shoes\r\nSynthetic upper, has elasticated gussets on either sides of the mouth\r\nSmooth outsole, has a stack heel', '<div class=\"pdp-productDescriptorsContainer\"><div><h4 class=\"pdp-product-description-title\"><!-- react-text: 236 -->Product Details <!-- /react-text --><span class=\"myntraweb-sprite pdp-productDetailsIcon sprites-productDetailsIcon\"></span></h4><p class=\"pdp-product-description-content\">A pair of black semiformal shoes<br>Synthetic&nbsp;upper,&nbsp;has elasticated gussets on either sides&nbsp;of the mouth<br>Smooth outsole, has a stack heel<br></p></div><div class=\"pdp-sizeFitDesc\"><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Material &amp; Care</h4><p class=\"pdp-sizeFitDescContent pdp-product-description-content\">Synthetic<br>Wipe with a clean, dry cloth when needed<br></p></div><div class=\"index-sizeFitDesc\"><h4 class=\"index-sizeFitDescTitle index-product-description-title\" style=\"padding-bottom: 12px;\">Specifications</h4><div class=\"index-tableContainer\"><div class=\"index-row\"><div class=\"index-rowKey\">Type</div><div class=\"index-rowValue\">Slip-On Shoes</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Fastening</div><div class=\"index-rowValue\">Slip-On</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Toe Shape</div><div class=\"index-rowValue\">Round Toe</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Pattern</div><div class=\"index-rowValue\">Solid</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Ankle Height</div><div class=\"index-rowValue\">Regular</div></div><div class=\"index-row\"><div class=\"index-rowKey\">Sole Material</div><div class=\"index-rowValue\">PU</div></div></div><div><div class=\"index-sizeFitDesc\" style=\"margin-top: 0px;\"><h4 class=\"index-sizeFitDescTitle index-product-description-title\">Complete The Look</h4><p class=\"index-sizeFitDescContent index-product-description-content\">Look smart in this pair of semiformal shoes from&nbsp;Sir Corbett. Team it with a solid shirt and&nbsp;a pair of slim fit trousers for the perfect look.</p></div></div></div></div>', '1,2,3,4,5', 1445, 'active', '1');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(150) NOT NULL,
  `category_status` enum('active','inactive') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`, `category_status`) VALUES
(1, 'Shoes', 'active'),
(2, 'Shirts', 'active'),
(3, 'Sandal', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
CREATE TABLE IF NOT EXISTS `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(100) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `image_name`, `status`) VALUES
(1, 's1.jpg', 'active'),
(2, 's2.jpg', 'active'),
(4, 's3.jpg', 'active'),
(5, 's4.jpg', 'active'),
(6, 's5.jpeg', 'active'),
(7, 'sa1.jpg', 'active'),
(8, 'sa2.jpg', 'active'),
(9, 'sa3.jpeg', 'active'),
(10, 'sa4.jpg', 'active'),
(11, 'sa5.jpg', 'active'),
(12, 'sh1.jpg', 'active'),
(13, 'sh2.jpg', 'active'),
(14, 'sh3.jpg', 'active'),
(15, 'sh4.jpg', 'active'),
(16, 'sh5.jpg', 'active');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
