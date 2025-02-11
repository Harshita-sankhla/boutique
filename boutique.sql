-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2025 at 04:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boutique`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrival`
--

CREATE TABLE `arrival` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `shipping` varchar(100) NOT NULL,
  `image3` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arrival`
--

INSERT INTO `arrival` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(89, 'new11.jpg', 'new12.jpg', 'A long kurta with designer pan', 15000.00, ' long Anarkali kurta with golden pant and design with diamond platted', ' Standard delivery in 25-30 days ', 'new13.jpg'),
(90, 'new21.jpg', 'new22.jpg', 'Black & golden Anarkali', 14011.00, 'A beautiful black Ready To Wear cotton net anarkali with elaborate flo', ' Standard delivery in 25-30 days ', 'new23.jpg'),
(91, 'new31.jpg', 'new32.jpg', 'Embroidered Blouse with meroon Layered Skirt', 19000.00, ' flower design Embroidered backless Blouse with meroon Layered and fitted Skirt ', ' Standard delivery in 25-30 days', 'new33.jpg'),
(92, 'new41.jpg', 'new42.jpg', '   Embroidered Cocktail Dress design with diamond platted ', 29000.67, ' This stunning pink cocktail dress features a flattering silhouette that accentuates the waist, with delicate lace detailing making it perfect for any special occasion. With its elegant neckline and c', ' Standard delivery in 25-30 days', 'new43.jpg'),
(93, 'new51.jpg', 'new52.jpg', ' A meroom Patiala dress', 20000.00, ' A rich maroon color Patiala dress is designed with a beautiful A-line cut, providing a flattering fit for various body types.', ' Standard delivery in 25-30 days', 'new53.jpg'),
(94, 'new61.jpg', 'new62.jpg', 'Beautiful lehenga dress', 29999.00, ' This vibrant orange lehenga set is a stunning choice for festive occasions and celebrations. The dhoti-style bottom adds a contemporary flair. This orange lehenga set is a perfect blend of tradition ', 'Standard delivery in 25-30 days', 'new63.jpg'),
(95, 'new71.jpg', 'new72.jpg', 'A red floral lehenga', 15018.00, ' This enchanting red floral lehenga set  features a stunning floral print that adds a touch of vibrancy and elegance, making it ideal for festive occasions and celebrations.', ' Standard delivery in 25-30 days', 'new73.jpg'),
(96, 'new81.jpg', 'new82.jpg', ' A Casual overcoat & skirt ', 12000.00, 'Perfect for both casual outings and more formal occasions, this dress set can be easily accessorized to suit your style. ', ' Standard delivery in 25-30 days', 'new83.jpg'),
(97, 'new91.jpg', 'new92.jpg', 'Stunning red frock ', 12999.00, ' This stunning red floral print long frock is a perfect blend of elegance and femininity.', ' Standard delivery in 25-30 days', 'new93.jpg'),
(98, 'new101.jpg', 'new102.jpg', 'Royal blue jumpsuit', 3000.00, ' This royal blue short jumpsuit is a stylish and modern addition to your wardrobe, perfect for both casual outings and chic evening events.', ' Standard delivery in 25-30 days', 'new103.jpg'),
(99, 'new111.jpg', 'new112.jpg', 'Red saree', 26998.00, ' The vibrant red hue exudes confidence and warmth, making it a perfect statement piece.This red saree with a full sleeves blouse is a timeless addition to any wardrobe, ensuring you shine at every occ', ' Standard delivery in 25-30 days', 'new113.jpg'),
(100, 'new121.jpg', 'new122.jpg', 'Light pink Gown', 21000.00, ' This enchanting shimmer light pink gown is the epitome of elegance and glamour.', ' Standard delivery in 25-30 days', 'new123.jpg'),
(101, 'new131.jpg', 'new132.jpg', 'Royal blue kurta set ', 11999.00, ' The kurta features intricate detailing, such as delicate embroidery or embellishments, that adds a touch of sophistication to the vibrant royal blue hue.', ' Standard delivery in 25-30 days', 'new133.jpg'),
(102, 'new141.jpg', 'new142.jpg', 'Multicolor lehenga', 25000.00, 'The lehenga features a beautiful array of colors, intricately woven together to create a striking visual impact that is sure to turn heads.\r\n\r\n\r\n', ' Standard delivery in 25-30 days', 'new143.jpg'),
(103, 'new151.jpg', 'new152.jpg', 'Classic Black Saree', 19899.00, ' The rich black base serves as a stunning canvas for intricate golden motifs and embellishments.', ' Standard delivery in 25-30 days', 'new153.jpg'),
(104, 'new161.jpg', 'new162.jpg', 'Red shimmer kaftan', 20999.00, 'the kaftan features a beautiful shimmer finish that catches the light, adding a touch of glamour to your look. ', ' Standard delivery in 25-30 days', 'new163.jpg'),
(105, 'new171.jpg', 'new172.jpg', 'Lavender shrug dress', 14999.00, ' This enchanting lavender color shrug blouse and skirt set is a perfect blend of elegance and contemporary style, making it an ideal choice for various occasions, from casual outings to festive.', ' Standard delivery in 25-30 days', 'new173.jpg'),
(106, 'new181.jpg', 'new182.jpg', 'Sharara Dress set', 18999.00, 'This sharara blouse and shrug dress set can be accessorized with statement jewelry and stylish footwear to complete the look.', ' Standard delivery in 25-30 days', 'new183.jpg'),
(107, 'new191.jpg', 'new192.jpg', 'Floral Design Frock', 4648.00, ' The frock features a flattering silhouette that typically falls above the knee.', ' Standard delivery in 25-30 days', 'new193.jpg'),
(108, 'new201.jpg', 'new202.jpg', 'Gray color palazzo and kurta set', 17888.00, ' This elegant gray color short round kurta with palazzo set is a perfect blend of comfort and style, making it an ideal choice for casual outings, festive occasions.', ' Standard delivery in 25-30 days', 'new203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bag`
--

CREATE TABLE `bag` (
  `sno` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bag`
--

INSERT INTO `bag` (`sno`, `image`, `name`, `price`) VALUES
(3, 'accbag11.jpg', 'BA-1', 14019.00),
(4, 'accbag12.jpg', 'BA-2', 2999.00),
(5, 'accbag13.jpg', 'BE-3', 1200.00),
(6, 'accbag14.jpg', 'BE-4', 1999.00),
(7, 'accbag21.jpg', 'BE-5', 2499.00),
(8, 'accbag22.jpg', 'BE-6', 1450.00),
(9, 'accbag23.jpg', 'BE-7', 1990.00),
(10, 'accbag24.jpg', 'BE-8', 1599.00),
(11, 'accbag31.jpg', 'BE-9', 1989.00),
(12, 'accbag32.jpg', 'BE-9', 2090.00),
(13, 'accbag33.jpg', 'BE-10', 1899.00),
(14, 'accbag34.jpg', 'BE-12', 2599.00),
(15, 'accbag41.jpg', 'BE-13', 3015.00),
(16, 'accbag42.jpg', 'BE-14', 1599.00),
(17, 'accbag43.jpg', 'BE-15', 1200.00),
(18, 'accbag44.jpg', 'BE-16', 1399.00),
(19, 'accbag51.jpg', 'BE-17', 3099.00),
(20, 'accbag52.jpg', 'BE-18', 3999.00),
(21, 'accbag53.jpg', 'BE-19', 2045.00),
(22, 'accbag54.jpg', 'BE-20', 2999.00);

-- --------------------------------------------------------

--
-- Table structure for table `bottom`
--

CREATE TABLE `bottom` (
  `sno` int(11) NOT NULL,
  `image` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bottom`
--

INSERT INTO `bottom` (`sno`, `image`, `name`, `price`) VALUES
(1, 'coffee5.png', '  Cold Brew', 1401.00),
(2, 'coffee5.png', '  Cold Brew', 1401.00);

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sno`, `image1`, `image2`) VALUES
(12, 'slider1.png', 'slider11.png'),
(13, 'slider2.png', 'slider22.png'),
(14, 'slider3.png', 'slider33.png');

-- --------------------------------------------------------

--
-- Table structure for table `casualco_ord`
--

CREATE TABLE `casualco_ord` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualco_ord`
--

INSERT INTO `casualco_ord` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(7, 'casualco-ord11.jpg', 'casualco-ord12.jpg', 'NAL-1', 2999.00, ' The \"Floral Harmony Co-Ord Set\" is a chic and stylish ensemble that effortlessly combines comfort and elegance. Crafted from a lightweight, breathable fabric, this set features a pristine white base adorned with delicate floral prints in soft pastels, creating a fresh and vibrant look perfect for any occasion.', 'Standard Delivery in 25 - 30 days', 'casualco-ord13.jpg'),
(8, 'casualco-ord21.jpg', 'casualco-ord22.jpg', 'NAL-2', 4600.00, ' Crafted from a soft, breathable fabric in a crisp white hue, this set is designed for effortless style and comfort, making it a staple for any wardrobe.', ' Standard Delivery in 25 - 30 days', 'casualco-ord23.jpg'),
(9, 'casualco-ord31.jpg', 'casualco-ord32.jpg', 'NAL-3', 5900.00, ' The matching bottoms are tailored with a comfortable elasticized waistband and a straight-leg silhouette, offering a flattering fit that drapes beautifully. The simplicity of the design ensures that this co-ord set can be dressed up with heels and statement jewelry or kept casual with sneakers and a crossbody bag.\r\n\r\n', ' Standard Delivery in 25 - 30 days', 'casualco-ord33.jpg'),
(10, 'casualco-ord41.jpg', 'casualco-ord42.jpg', 'NAL-4', 5491.00, ' The \"Crimson Chic Co-Ord Set\" can be effortlessly styled with strappy sandals and statement earrings for a complete look that radiates fun and flair. This co-ord set is a must-have addition to your wardrobe, ensuring you stand out with confidence and style wherever you go.', ' Standard Delivery in 25 - 30 days', 'casualco-ord43.jpg'),
(11, 'casualco-ord51.jpg', 'casualco-ord52.jpg', 'NAL-4', 6799.00, ' Ideal for beach outings, picnics, or casual brunches, the \"Sunset Vibes Co-Ord Set\" can be paired with sandals and a wide-brimmed hat for a chic, summery look. This co-ord set is a vibrant addition to your wardrobe, ensuring you radiate joy and confidence wherever you go.', ' Standard Delivery in 25 - 30 days', 'casualco-ord53.jpg'),
(12, 'casualco-ord61.jpg', 'casualco-ord62.jpg', 'NAL-6', 2999.00, ' The top showcases a modern cropped design with a stylish off-shoulder neckline, allowing you to show off your shoulders while providing a chic and trendy vibe.', ' Standard Delivery in 25 - 30 days', 'casualco-ord63.jpg'),
(13, 'casualco-ord71.jpg', 'casualco-ord72.jpg', 'NAL-7', 3399.00, '  The \"Midnight Elegance Co-Ord Set\" is a sophisticated and timeless ensemble that embodies chic simplicity. Crafted from a soft, high-quality fabric in a classic black hue, this set is designed to offer both comfort and style, making it a versatile addition to any wardrobe.', ' Standard Delivery in 25 - 30 days', 'casualco-ord73.jpg'),
(14, 'casualco-ord81.jpg', 'casualco-ord82.jpg', 'NAL-8', 4550.00, 'This co-ord set is a must-have addition to your wardrobe, ensuring you exude confidence and style wherever you go', ' Standard Delivery in 25 - 30 days', 'casualco-ord83.jpg'),
(15, 'casualco-ord91.jpg', 'casualco-ord92.jpg', 'NAL-9', 4999.00, '  The \"Mint Breeze Co-Ord Set\" is a refreshing and playful ensemble that captures the essence of summer. Crafted from a soft, lightweight fabric in a delightful light green hue, this set is designed for comfort and style, making it a perfect choice for warm-weather outings.', ' Standard Delivery in 25 - 30 days', 'casualco-ord93.jpg'),
(16, 'casualco-ord101.jpg', 'casualco-ord102.jpg', 'NAL-10', 6499.00, ' The matching bottoms are designed with a high-waisted fit and a relaxed silhouette, providing both comfort and elegance. ', ' Standard Delivery in 25 - 30 days', 'casualco-ord103.jpg'),
(17, 'casualco-ord111.jpg', 'casualco-ord112.jpg', 'NAL-11', 11000.00, 'Perfect for evening events, cocktail parties, or special occasions, the \"Azure Glam Co-Ord Set\" can be styled with strappy heels and statement jewelry for a complete look that exudes confidence and sophistication. This co-ord set is a must-have for anyone looking to make a memorable impression.', ' Standard Delivery in 25 - 30 days', 'casualco-ord113.jpg'),
(18, 'casualco-ord121.jpg', 'casualco-ord122.jpg', 'NAL-12', 14999.00, '  Crafted from a high-quality fabric with a subtle shimmer, this set in a pristine white hue exudes professionalism while adding a hint of glamour.', ' Standard Delivery in 25 - 30 days', 'casualco-ord123.jpg'),
(19, 'casualco-ord131.jpg', 'casualco-ord132.jpg', 'NAL-13', 7999.00, ' The coordinating bottoms can be tailored trousers or a fitted skirt, designed with a high-waisted fit that elongates the legs and enhances your silhouette. The subtle shimmer continues throughout, ensuring you radiate elegance from head to toe.', ' Standard Delivery in 25 - 30 days', 'casualco-ord133.jpg'),
(20, 'casualco-ord141.jpg', 'casualco-ord142.jpg', 'NAL-14', 3999.00, ' Ideal for pairing with sneakers or sandals, the \"Sunny Citrus Co-Ord Set\" can be accessorized with a crossbody bag and sunglasses for a complete, effortless look. This co-ord set is a delightful addition to your daily wear collection, ensuring you feel confident and stylish wherever your day takes you.\r\n\r\n\r\n\r\n', ' Standard Delivery in 25 - 30 days', 'casualco-ord143.jpg'),
(21, 'casualco-ord151.jpg', 'casualco-ord152.jpg', 'NAL-15', 4899.00, '  The \"Blush Harmony Co-Ord Set\" is a charming and stylish ensemble that beautifully combines soft pink and crisp white for a fresh and feminine look.', ' Standard Delivery in 25 - 30 days', 'casualco-ord153.jpg'),
(22, 'casualco-ord161.jpg', 'casualco-ord162.jpg', 'NAL-16', 8499.00, ' The \"Ocean Breeze Co-Ord Set\" is a stylish and refreshing ensemble that captures the essence of coastal elegance. Crafted from a soft, lightweight fabric, this set features a beautiful combination of serene blue and crisp white', 'Standard Delivery in 25 - 30 days ', 'casualco-ord163.jpg'),
(23, 'casualco-ord171.jpg', 'casualco-ord172.jpg', 'NAL-17', 7500.00, ' The matching bottoms are designed with a high-waisted fit and a flowing silhouette, whether in the form of shorts or a skirt. The white base is complemented by blue accents or detailing, creating a harmonious look that ties the entire outfit together.\r\n\r\nThe matching bottoms are designed with a high-waisted fit and a flowing silhouette, whether in the form of shorts or a skirt. The white base is ', ' Standard Delivery in 25 - 30 days', 'casualco-ord173.jpg'),
(24, 'casualco-ord181.jpg', 'casualco-ord182.jpg', 'NAL-18', 9599.00, '  Crafted from a soft, lightweight fabric in a stunning hot pink hue, this set is designed to turn heads and add a pop of color to your wardrobe.\r\n\r\n', ' Standard Delivery in 25 - 30 days', 'casualco-ord183.jpg'),
(25, 'casualco-ord191.jpg', 'casualco-ord192.jpg', 'NAL-19', 8299.00, ' This co-ord set is a must-have addition to your wardrobe, ensuring you exude confidence and elegance wherever you go.', ' Standard Delivery in 25 - 30 days', 'casualco-ord193.jpg'),
(26, 'casualco-ord201.jpg', 'casualco-ord202.jpg', 'NAL-20', 9799.00, ' The \"Skyline Serenity Co-Ord Set\" is a refreshing and stylish ensemble that embodies the tranquility of a clear blue sky. Crafted from a soft, lightweight fabric in a soothing light blue hue, this set is designed for comfort and versatility, making it perfect for casual outings, brunches, or relaxed days at home.', ' Standard Delivery in 25 - 30 days', 'casualco-ord203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `casualfrock`
--

CREATE TABLE `casualfrock` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualfrock`
--

INSERT INTO `casualfrock` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(4, 'casualfrock11.jpg', 'casualfrock12.jpg', '  Crimson Charm Frock', 14000.00, ' This delightful Crimson Charm frock features a rich mehroom hue that exudes elegance and sophistication. The frock is designed with a fitted bodice and a flared skirt, creating a flattering silhouette. ', ' Standard Delivery in 25 - 30 days', 'casualfrock13.jpg'),
(5, 'casualfrock21.jpg', 'casualfrock22.jpg', 'Blush Petal Frock', 12999.00, ' This charming Blush Petal frock features a soft pink hue adorned with delicate floral prints that evoke a sense of springtime freshness. The sleeveless design is perfect for warm weather, while the fitted bodice flows into a flared skirt, creating a playful and feminine silhouette. ', ' Standard Delivery in 25 - 30 days', 'casualfrock23.jpg'),
(6, 'casualfrock31.jpg', 'casualfrock32.jpg', 'Sunshine Serenade Frock', 10999.00, ' This vibrant Sunshine Serenade frock is designed to make a statement with its bold bright yellow hue. The off-shoulder neckline beautifully showcases the collarbone and adds a touch of elegance to the playful design.', ' Standard Delivery in 25 - 30 days', 'casualfrock33.jpg'),
(7, 'casualfrock41.jpg', 'casualfrock42.jpg', 'Ruby Radiance Frock', 13000.00, ' This exquisite Ruby Radiance frock features a deep red color that is both bold and beautiful. The long frock is designed with a high neckline and elegant cap sleeves, creating a sophisticated look.', ' Standard Delivery in 25 - 30 days', 'casualfrock43.jpg'),
(8, 'casualfrock51.jpg', 'casualfrock52.jpg', 'Glimmering Petal Frock', 12999.00, ' This enchanting Glimmering Petal frock features a soft light pink hue that radiates elegance and charm. The frock is crafted from a shimmering fabric that catches the light beautifully, creating a stunning effect with every movement. T', ' Standard Delivery in 25 - 30 days', 'casualfrock53.jpg'),
(9, 'casualfrock61.jpg', 'casualfrock62.jpg', 'Dewdrop Dream Frock', 9999.00, ' This enchanting Dewdrop Dream frock showcases a lovely lavender hue with subtle yellow accents that add a whimsical touch. The frock features a sleeveless design with a stylish off-shoulder neckline, creating an elegant and modern look. ', ' Standard Delivery in 25 - 30 days', 'casualfrock63.jpg'),
(10, 'casualfrock71.jpg', 'casualfrock72.jpg', 'Royal Radiance Frock', 13499.00, ' This exquisite Royal Radiance frock showcases a vibrant royal blue color that captures the essence of luxury. The sleeveless design features a stylish sweetheart neckline, enhancing the feminine silhouette.', ' Standard Delivery in 25 - 30 days', 'casualfrock73.jpg'),
(11, 'casualfrock81.jpg', 'casualfrock82.jpg', 'Blossom Breeze Frock', 12500.00, ' This charming Blossom Breeze frock features a soft pink base adorned with vibrant floral prints that evoke a sense of springtime freshness.', ' Standard Delivery in 25 - 30 days', 'casualfrock83.jpg'),
(12, 'casualfrock91.jpg', 'casualfrock92.jpg', 'Floral Dreamscape Frock', 6999.00, ' This stunning Floral Dreamscape frock features a captivating design with a harmonious blend of pink and blue floral patterns that create a dreamy and romantic vibe.', ' Standard Delivery in 25 - 30 days', 'casualfrock93.jpg'),
(13, 'casualfrock101.jpg', 'casualfrock102.jpg', 'Floral Serenity Frock', 9800.00, ' This lovely Floral Serenity frock showcases a pristine white background beautifully adorned with soft lavender flowers, creating a fresh and inviting aesthetic. The frock features a classic A-line silhouette with a fitted waist that flares into a playful skirt, perfect for summer outings.', ' Standard Delivery in 25 - 30 days', 'casualfrock103.jpg'),
(14, 'casualfrock111.jpg', 'casualfrock112.jpg', 'Creamy Bliss Frock', 14500.00, '  The sleeveless design and subtle pleating add a modern touch, making it perfect for warm weather. This frock is ideal for casual outings, summer weddings, or garden parties, ensuring you look effortlessly stylish. Pair it with strappy sandals and a statement necklace for a complete look that is both comfortable and fashionable.', ' Standard Delivery in 25 - 30 days', 'casualfrock113.jpg'),
(15, 'casualfrock121.jpg', 'casualfrock122.jpg', 'Pure Bliss Frock', 7899.00, ' This charming Pure Bliss frock features a classic white hue that radiates freshness and elegance. The short frock is designed with a fitted bodice and a flared skirt, creating a playful and feminine silhouette.', ' Standard Delivery in 25 - 30 days', 'casualfrock123.jpg'),
(16, 'casualfrock131.jpg', 'casualfrock132.jpg', 'Blush Blossom Frock', 9500.00, ' This enchanting Blush Blossom frock features a soft light pink hue adorned with delicate floral prints that evoke a sense of springtime charm. ', ' Standard Delivery in 25 - 30 days', 'casualfrock133.jpg'),
(17, 'casualfrock141.jpg', 'casualfrock142.jpg', 'Floral Fiesta Frock', 11999.00, ' This delightful Floral Fiesta frock showcases a bright yellow background beautifully adorned with vibrant green floral patterns that create a fun and lively aesthetic. ', ' Standard Delivery in 25 - 30 days', 'casualfrock143.jpg'),
(18, 'casualfrock151.jpg', 'casualfrock152.jpg', 'Tropical Breeze Frock', 12899.00, ' This vibrant Tropical Breeze frock features a stunning combination of blue and green floral prints that evoke the essence of a lush paradise. ', ' Standard Delivery in 25 - 30 days', 'casualfrock153.jpg'),
(19, 'casualfrock161.jpg', 'casualfrock162.jpg', 'Peachy Dream Frock', 10000.00, ' This enchanting Peachy Dream frock showcases a lovely light orange color with subtle prints that create a whimsical and feminine aesthetic. The frock features a stylish A-line silhouette with a fitted waist that flares into a playful skirt, perfect for summer outings. ', ' Standard Delivery in 25 - 30 days', 'casualfrock163.jpg'),
(20, 'casualfrock171.jpg', 'casualfrock172.jpg', 'Lemonade Dream Frock', 10999.00, ' This charming Lemonade Dream frock showcases a delightful lemon-yellow color that is both refreshing and playful. The frock features a classic A-line silhouette with a fitted waist that flares into a playful skirt, allowing for easy movement.', ' Standard Delivery in 25 - 30 days', 'casualfrock173.jpg'),
(21, 'casualfrock181.jpg', 'casualfrock182.jpg', 'Citrus Charm Frock', 13900.00, ' This delightful Citrus Charm frock features a cheerful orange shade that is both refreshing and playful. The short frock is designed with a fitted bodice and a flared skirt that allows for easy movement and comfort.', 'Standard Delivery in 25 - 30 days', 'casualfrock183.jpg'),
(22, 'casualfrock191.jpg', 'casualfrock192.jpg', 'Cocoa Elegance Frock', 14500.00, ' This stunning Cocoa Elegance frock features a rich brown hue that exudes warmth and sophistication. The long frock is designed with a flattering V-neckline that beautifully frames the collarbone, adding a touch of allure. The fitted bodice flows into a gracefully draped skirt, creating a timeless silhouette that is perfect for any occasion. ', ' Standard Delivery in 25 - 30 days', 'casualfrock193.jpg'),
(23, 'casualfrock201.jpg', 'casualfrock202.jpg', 'Stunning Orange Frock', 11999.00, ' This vibrant Tropical Breeze frock features a stunning combination of orange and glow orange that evoke the essence of a lush paradise. ', ' Standard Delivery in 25 - 30 days', 'casualfrock203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `casualgown`
--

CREATE TABLE `casualgown` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualgown`
--

INSERT INTO `casualgown` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(3, 'casualgown11.jpg', 'casualgown12.jpg', 'Hot Pink Dream Gown', 22900.00, ' This enchanting Hot Pink Dream gown showcases a vibrant hot pink color that is both playful and sophisticated. The gown features a fitted bodice with a plunging V-neckline, adding a touch of allure.', ' Standard Delivery in 25 - 30 days', 'casualgown13.jpg'),
(4, 'casualgown21.jpg', 'casualgown22.jpg', 'Ethereal Elegance Gown', 25500.00, ' This breathtaking Ethereal Elegance gown features a pristine white hue that embodies purity and sophistication. The gown is designed with a fitted bodice that gracefully flows into a full, floor-length skirt, creating a timeless silhouette. ', ' Standard Delivery in 25 - 30 days', 'casualgown23.jpg'),
(5, 'casualgown31.jpg', 'casualgown32.jpg', 'Petal Dream Gown', 39900.00, ' This stunning Petal Dream gown showcases a lovely light pink color that captures the essence of springtime elegance. The gown features a fitted bodice with a sweetheart neckline, adorned with delicate floral appliqués that add a whimsical touch. ', ' Standard Delivery in 25 - 30 days', 'casualgown33.jpg'),
(6, 'casualgown41.jpg', 'casualgown42.jpg', 'Monochrome Majesty Gown', 28799.00, ' This stunning Monochrome Majesty gown features a striking contrast of pure white and deep black that exudes sophistication and elegance. ', ' Standard Delivery in 25 - 30 days', 'casualgown43.jpg'),
(7, 'casualgown51.jpg', 'casualgown52.jpg', 'Nautical Night Gown', 22499.00, ' This enchanting Nautical Night gown showcases a beautiful dark blue color that captures the essence of a starry night. The gown features a fitted bodice with a plunging V-neckline, adding a hint of allure. ', ' Standard Delivery in 25 - 30 days', 'casualgown53.jpg'),
(8, 'casualgown61.jpg', 'casualgown62.jpg', 'Celestial Shimmer Gown', 32900.00, ' This breathtaking Celestial Shimmer gown features a stunning deep blue base adorned with shimmering silver accents that catch the light beautifully. ', ' Standard Delivery in 25 - 30 days', 'casualgown63.jpg'),
(9, 'casualgown71.jpg', 'casualgown72.jpg', 'Midnight Siren Gown', 29999.00, ' This captivating Midnight Siren gown features a deep, rich dark blue hue that exudes sophistication and allure. The gown is expertly tailored to hug the curves, creating a stunning silhouette that flatters the figure. ', ' Standard Delivery in 25 - 30 days', 'casualgown73.jpg'),
(10, 'casualgown81.jpg', 'casualgown82.jpg', 'Celestial Blue Gown', 27500.00, '  This enchanting Celestial Blue gown showcases a rich royal blue color that radiates sophistication. The gown is designed with a fitted bodice that features exquisite diamond embellishments, adding a touch of opulence and sparkle. ', ' Standard Delivery in 25 - 30 days', 'casualgown83.jpg'),
(11, 'casualgown91.jpg', 'casualgown92.jpg', 'Petal Glow Gown', 30999.00, ' This stunning Petal Glow gown showcases a lovely light pink color that exudes femininity and grace. The fitted bodice is embellished with shimmering accents that catch the light beautifully, creating a radiant effect.', ' Standard Delivery in 25 - 30 days', 'casualgown93.jpg'),
(12, 'casualgown101.jpg', 'casualgown102.jpg', 'Frosted Elegance Gown', 32699.00, ' This stunning Frosted Elegance gown features a luxurious white fabric adorned with soft, fluffy accents that create a whimsical and ethereal look. ', ' Standard Delivery in 25 - 30 days', 'casualgown103.jpg'),
(13, 'casualgown111.jpg', 'casualgown112.jpg', 'Gilded Glow Gown', 34900.00, ' This stunning Gilded Glow gown features a beautiful skin-tone hue that shimmers with a radiant finish, creating an ethereal and glamorous look. The fitted bodice is designed with a sweetheart neckline, elegantly framing the décolletage, while the shimmering fabric catches the light with every movement. ', ' Standard Delivery in 25 - 30 days', 'casualgown113.jpg'),
(14, 'casualgown121.jpg', 'casualgown122.jpg', 'Mint Meadow Gown', 26500.00, ' This enchanting Mint Meadow gown features a soft light green fabric adorned with delicate floral prints that evoke the beauty of a serene garden in spring. ', ' Standard Delivery in 25 - 30 days', 'casualgown123.jpg'),
(15, 'casualgown131.jpg', 'casualgown132.jpg', 'Tropical Sunset Gown', 25000.00, ' This vibrant Tropical Sunset gown features a striking combination of orange and pink that captures the essence of a tropical paradise. The gown is designed with a fitted bodice that flows into a full, floor-length skirt, creating a dramatic and playful silhouette.', ' Standard Delivery in 25 - 30 days', 'casualgown133.jpg'),
(16, 'casualgown141.jpg', 'casualgown142.jpg', 'Ruby Dream Gown', 33599.00, ' This exquisite Ruby Dream gown features a deep red shade that shimmers with a luxurious glow, reminiscent of a precious gemstone.', ' Standard Delivery in 25 - 30 days', 'casualgown143.jpg'),
(17, 'casualgown151.jpg', 'casualgown152.jpg', 'Furry Flame Gown', 32299.00, ' This captivating Furry Flame gown features a bold red shade that embodies passion and confidence. The fitted design accentuates the figure, while the luxurious faux fur trim along the neckline and hem adds a playful yet sophisticated touch. ', ' Standard Delivery in 25 - 30 days', 'casualgown153.jpg'),
(18, 'casualgown161.jpg', 'casualgown162.jpg', 'Crimson Allure Gown', 29699.00, ' This enchanting Crimson Allure gown showcases a rich red silk that shimmers with every step, exuding confidence and sophistication. The fitted bodice features a plunging V-neckline and intricate beadwork that adds a touch of sparkle.', ' Standard Delivery in 25 - 30 days', 'casualgown163.jpg'),
(19, 'casualgown171.jpg', 'casualgown172.jpg', 'Ebon Enchantment Gown', 31500.00, ' This exquisite Ebon Enchantment gown features a deep black shade that radiates elegance and charm. The fitted bodice is adorned with intricate beadwork and sequins that catch the light beautifully, adding a touch of glamour. ', ' Standard Delivery in 25 - 30 days', 'casualgown173.jpg'),
(20, 'casualgown181.jpg', 'casualgown182.jpg', 'Gold Evening Gown', 12500.00, ' These gowns often feature intricate designs, shimmering fabrics, and elegant silhouettes, perfect for formal events or special occasions.', ' Standard Delivery in 25 - 30 days', 'casualgown183.jpg'),
(21, 'casualgown191.jpg', 'casualgown192.jpg', 'Midnight Elegance Gown', 22499.00, ' The \"Midnight Elegance\" gown is a stunning black evening dress that exudes sophistication and allure. Crafted from luxurious satin, the gown features a fitted bodice with delicate lace detailing that adds a touch of romance.', ' Standard Delivery in 25 - 30 days', 'casualgown193.jpg'),
(22, 'casualgown201.jpg', 'casualgown202.jpg', 'Sunset Serenade Gown', 31900.00, ' This enchanting gown features a fitted bodice adorned with intricate embroidery that glimmers subtly in the light, creating a stunning visual effect. The sweetheart neckline adds a touch of romance, while delicate cap sleeves provide an elegant frame for the shoulders.', ' Standard Delivery in 25 - 30 days', 'casualgown203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `casualjacket`
--

CREATE TABLE `casualjacket` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualjacket`
--

INSERT INTO `casualjacket` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(3, 'casualjacket11.jpg', 'casualjacket12.jpg', 'Tanishka ', 12.00, ' hlgdkjbsiorfkjgd;trgk', ' jslhddjtrkgldtrkfjgoidrk', 'casualjacket13.jpg'),
(4, '3D41.png', '3D32.png', 'Monochrome Elegance Coat', 22010.00, ' ', ' ', '3D41-removebg-preview.png');

-- --------------------------------------------------------

--
-- Table structure for table `casualkaftan`
--

CREATE TABLE `casualkaftan` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualkaftan`
--

INSERT INTO `casualkaftan` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(4, 'casualkaftan11.jpg', 'casualkaftan12.jpg', 'Mystic Noir Kaftan', 15999.00, ' The \"Mystic Noir Kaftan\" is an exquisite piece that embodies elegance', ' Standard Delivery in 25 - 30 days', 'casualkaftan13.jpg'),
(5, 'casualkaftan21.jpg', 'casualkaftan22.jpg', 'Blush Oasis Kaftan', 22900.00, ' The \"Blush Oasis Kaftan\" is a stunning embodiment of grace and femini', ' Standard Delivery in 25 - 30 days', 'casualkaftan23.jpg'),
(6, 'casualkaftan31.jpg', 'casualkaftan32.jpg', 'Lavender Dreamscape Kaftan', 22900.00, ' The design showcases a flattering round neckline adorned with intrica', ' Standard Delivery in 25 - 30 days', 'casualkaftan33.jpg'),
(7, 'casualkaftan41.jpg', 'casualkaftan42.jpg', 'Crimson Radiance Kaftan', 18699.00, '  Crafted from a luxurious, flowing fabric in a rich red hue, this kaf', ' Standard Delivery in 25 - 30 days', 'casualkaftan43.jpg'),
(8, 'casualkaftan51.jpg', 'casualkaftan52.jpg', 'Celestial Harmony Kaftan', 34900.00, ' The \"Celestial Harmony Kaftan\" is a stunning fusion of elegance and modern design, featuring a captivating blend of silver and lavender hues. Crafted from a luxurious, lightweight fabric, this kaftan drapes beautifully, creating a flattering silhouette that flows effortlessly with every movement.', ' Standard Delivery in 25 - 30 days', 'casualkaftan53.jpg'),
(9, 'casualkaftan61.jpg', 'casualkaftan62.jpg', 'Golden Sunrise Kaftan', 31899.00, ' The design features a flattering scoop neckline that enhances the neckline while providing comfort. Flowing, wide sleeves add an element of elegance and ease, allowing for effortless movement. ', ' Standard Delivery in 25 - 30 days', 'casualkaftan63.jpg'),
(10, 'casualkaftan71.jpg', 'casualkaftan72.jpg', 'Scarlet Reverie Kaftan', 27600.00, ' The \"Scarlet Reverie Kaftan\" is a stunning embodiment of elegance and allure, designed in a rich, dark red hue that evokes passion and sophistication. Crafted from a luxurious, flowing fabric, this kaftan drapes beautifully, creating a flattering silhouette that enhances the figure while providing ultimate comfort.', ' Standard Delivery in 25 - 30 days', 'casualkaftan73.jpg'),
(11, 'casualkaftan81.jpg', 'casualkaftan82.jpg', 'Sunlit Bliss Kaftan', 33888.00, '  The \"Sunlit Bliss Kaftan\" is a vibrant and cheerful piece that captures the essence of sunny days and carefree moments. ', ' ', 'casualkaftan83.jpg'),
(12, 'casualkaftan91.jpg', 'casualkaftan92.jpg', 'Golden Meadow Kaftan', 28599.00, ' The design showcases a flattering scoop neckline that enhances the décolletage, while the flowing, wide sleeves provide a sense of ease and elegance. The kaftan drapes gracefully to the ankles, creating a relaxed silhouette that flatters all body types.', ' Standard Delivery in 25 - 30 days', 'casualkaftan93.jpg'),
(13, 'casualkaftan101.jpg', 'casualkaftan102.jpg', 'Emerald Oasis Kaftan', 25400.00, ' The \"Emerald Oasis Kaftan\" is a captivating piece that embodies the essence of tranquility and natural beauty. Crafted from a soft, breathable fabric in a rich mustard green hue, this kaftan is designed to evoke the lushness of a serene oasis, making it a perfect choice for warm-weather outings.', ' Standard Delivery in 25 - 30 days', 'casualkaftan103.jpg'),
(14, 'casualkaftan111.jpg', 'casualkaftan112.jpg', 'Twilight Enchantment Kaftan', 27500.00, '  Crafted from a luxurious, flowing fabric, this kaftan drapes beautifully, creating a flattering silhouette that enhances the figure while providing ultimate comfort.', ' Standard Delivery in 25 - 30 days', 'casualkaftan113.jpg'),
(15, 'casualkaftan121.jpg', 'casualkaftan122.jpg', 'Lavender Whisper Kaftan', 22900.00, '  The \"Lavender Whisper Kaftan\" is a dreamy and ethereal piece that embodies tranquility and grace. Crafted from a soft, lightweight fabric in a delicate lavender hue, this kaftan is designed to evoke the calming essence of a serene garden in full bloom.', ' Standard Delivery in 25 - 30 days', 'casualkaftan123.jpg'),
(16, 'casualkaftan131.jpg', 'casualkaftan132.jpg', 'Verdant Mosaic Kaftan', 25600.00, ' The design features a flattering V-neckline that elegantly frames the face, while the flowing, wide sleeves add a touch of grace and sophistication. ', ' Standard Delivery in 25 - 30 days', 'casualkaftan133.jpg'),
(17, 'casualkaftan141.jpg', 'casualkaftan142.jpg', 'Azure Serenity Kaftan', 33000.00, 'The \"Azure Serenity Kaftan\" is a breathtaking piece that embodies the tranquility and beauty of a clear blue sky. Crafted from a soft, flowing fabric in a stunning shade of blue, this kaftan is designed to evoke a sense of calm and elegance, making it a perfect choice for any occasion. ', ' Standard Delivery in 25 - 30 days', 'casualkaftan143.jpg'),
(18, 'casualkaftan151.jpg', 'casualkaftan152.jpg', 'Ocean Breeze Kaftan', 24999.00, 'The \"Ocean Breeze Kaftan\" is a captivating piece that beautifully captures the essence of coastal elegance. Designed in a harmonious blend of deep blue and crisp white, this kaftan evokes the refreshing feel of ocean waves and sunny skies. ', ' Standard Delivery in 25 - 30 days', 'casualkaftan153.jpg'),
(19, 'casualkaftan161.jpg', 'casualkaftan162.jpg', 'Sunset Harmony Kaftan', 34900.00, ' The design features a flattering scoop neckline that elegantly frames the face, while the wide, flowing sleeves add a touch of grace and movement. The kaftan falls gracefully to the ankles, creating a relaxed silhouette that flatters all body types.', ' Standard Delivery in 25 - 30 days', 'casualkaftan163.jpg'),
(20, 'casualkaftan171.jpg', 'casualkaftan172.jpg', 'Crimson Blossom Kaftan', 35899.00, ' The \"Crimson Blossom Kaftan\" is a stunning fusion of boldness and elegance, designed in a vibrant mustard red hue that exudes warmth and confidence. Accented with delicate white floral patterns, this kaftan captures the essence of blooming gardens, making it a perfect choice for both casual and festive occasions.', ' Standard Delivery in 25 - 30 days', 'casualkaftan173.jpg'),
(21, 'casualkaftan181.jpg', 'casualkaftan182.jpg', 'Minted Dream Kaftan', 23900.00, ' he \"Minted Dream Kaftan\" is a refreshing and ethereal piece that embodies the essence of tranquility and renewal.', ' Standard Delivery in 25 - 30 days', 'casualkaftan183.jpg'),
(22, 'casualkaftan191.jpg', 'casualkaftan192.jpg', 'Peach Blossom Kaftan', 33899.00, ' The \"Peach Blossom Kaftan\" is a delightful and feminine piece that captures the essence of springtime blooms. Crafted from a soft, lightweight fabric in a warm peach hue, this kaftan exudes a sense of warmth and charm, making it a perfect choice for sunny days and special occasions.', ' Standard Delivery in 25 - 30 days', 'casualkaftan193.jpg'),
(23, 'casualkaftan201.jpg', 'casualkaftan202.jpg', 'Mehndi Mirage Kaftan', 32000.00, ' The \"Mehndi Mirage Kaftan\" is a captivating piece that embodies the rich cultural heritage and earthy elegance of traditional designs.', ' Standard Delivery in 25 - 30 days', 'casualkaftan203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `casualkurta`
--

CREATE TABLE `casualkurta` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualkurta`
--

INSERT INTO `casualkurta` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(3, 'casualkurta11.jpg', 'casualkurta12.jpg', 'Radiant Red Kurta Set', 5500.00, ' Paired with matching straight-cut pants, this set offers a flattering silhouette that complements all body types. The vibrant red hue symbolizes joy and celebration, making it an ideal choice for festive gatherings, weddings, or casual outings.', 'Standard Delivery in 25 - 30 days ', 'casualkurta13.jpg'),
(4, 'casualkurta21.jpg', 'casualkurta22.jpg', 'Serene Sky Blue Kurta with Sha', 8500.00, ' Step into elegance with our Serene Sky Blue Kurta with Sharara Set, a stunning ensemble that embodies grace and sophistication. This exquisite outfit features a beautifully tailored kurta made from lightweight, breathable fabric, perfect for warm weather and festive occasions.', ' Standard Delivery in 25 - 30 days', 'casualkurta23.jpg'),
(5, 'casualkurta31.jpg', 'casualkurta32.jpg', ' Lavender Dream Kurta Patiala ', 7999.00, '  Embrace elegance and comfort with our Lavender Dream Kurta Patiala Set, a stunning fusion of traditional charm and contemporary style. This enchanting ensemble features a beautifully designed kurta in a soft lavender hue, crafted from lightweight, breathable fabric that drapes gracefully.', ' Standard Delivery in 25 - 30 days	', 'casualkurta33.jpg'),
(6, 'casualkurta41.jpg', 'casualkurta42.jpg', 'Blush Blossom Kurta Pant and D', 4999.00, '  Step into a world of elegance with our Blush Blossom Kurta Pant and Dupatta Set, a delightful ensemble that radiates charm and femininity. ', ' Standard Delivery in 25 - 30 days	', 'casualkurta43.jpg'),
(7, 'casualkurta51.jpg', 'casualkurta52.jpg', 'Golden Glow Orange Kurta Set', 8999.00, '  Illuminate your ethnic wardrobe with our Golden Glow Orange Kurta Set, a stunning ensemble that exudes warmth and elegance. This vibrant orange kurta is crafted from high-quality, breathable fabric, ensuring comfort and style for any occasion. ', ' Standard Delivery in 25 - 30 days	', 'casualkurta53.jpg'),
(8, 'casualkurta61.jpg', 'casualkurta62.jpg', 'Elegance Light Pink and White Anarkali Kurta Set', 9000.00, ' Embrace timeless beauty with our Ethereal Elegance Light Pink and White Anarkali Kurta Set, a stunning ensemble that captures the essence of grace and sophistication. ', ' Standard Delivery in 25 - 30 days	', 'casualkurta63.jpg'),
(9, 'casualkurta71.jpg', 'casualkurta72.jpg', 'Black Kohra Silk Embroidered Eid Patiala Suit', 1090.00, '  A beautiful black silk suit with intricate embroidery, perfect for festive occasions.', ' Standard Delivery in 25 - 30 days', 'casualkurta73.jpg'),
(10, 'casualkurta81.jpg', 'casualkurta82.jpg', 'Golden Orange Gotapatti Anarkali Kurta Set', 12999.00, ' This set features a long flowy orange anarkali kurti in cotton with gota work and tassels at the back, paired with an orange organza dupatta adorned with gota borders.\r\n', ' Standard Delivery in 25 - 30 days', 'casualkurta83.jpg'),
(11, 'casualkurta91.jpg', 'casualkurta92.jpg', 'Hot Pink Anarkali Kurta Set', 13000.00, ' This stunning hot pink Anarkali kurta features intricate embroidery and embellishments, giving it a regal look. The kurta is paired with matching churidar pants and a lightweight dupatta, making it perfect for festive occasions or weddings. The flowy silhouette adds elegance, while the vibrant color ensures you stand out.', ' Standard Delivery in 25 - 30 days', 'casualkurta93.jpg'),
(12, 'casualkurta101.jpg', 'casualkurta102.jpg', 'Yellow and Off-White Embroidered Kurta Sharara Set', 1599.00, ' This beautiful kurta sharara set features a vibrant yellow kurta adorned with intricate embroidery and embellishments. The kurta is paired with elegant off-white sharara pants that have delicate lace detailing at the hem. The set is completed with a matching off-white dupatta, making it perfect for festive occasions, weddings, or family gatherings. ', ' Standard Delivery in 25 - 30 days', 'casualkurta103.jpg'),
(13, 'casualkurta111.jpg', 'casualkurta112.jpg', 'Midnight Blue V-Neck Kurta Set', 14500.00, ' This chic dark blue straight cut kurta features a modern V-neck design and is adorned with subtle prints or embroidery. The kurta is paired with matching palazzo pants, creating a stylish and comfortable ensemble. ', ' Standard Delivery in 25 - 30 days', 'casualkurta113.jpg'),
(14, 'casualkurta121.jpg', 'casualkurta122.jpg', 'Turquoise Blue Kurta Set', 12700.00, 'This vibrant turquoise blue kurta set features a stylish V-neckline and elegant detailing. The kurta is paired with straight-cut pants and is complemented by a dark red dupatta that adds a touch of sophistication. ', ' Standard Delivery in 25 - 30 days', 'casualkurta123.jpg'),
(15, 'casualkurta131.jpg', 'casualkurta132.jpg', 'Light Green Straight Cut Kurta Set', 16900.00, '  This stylish light green straight cut kurta is designed with a modern touch, featuring a round neckline and 3/4th sleeves. The kurta is adorned with subtle prints or delicate embroidery, paired with matching palazzo pants for a chic look.', 'Standard Delivery in 25 - 30 days', 'casualkurta133.jpg'),
(16, 'casualkurta141.jpg', 'casualkurta142.jpg', 'Midnight Blue Embroidered  Kurta Set', 14499.00, ' The rich dark blue color exudes luxury and style, ensuring you stand out at any event.', ' Standard Delivery in 25 - 30 days', 'casualkurta143.jpg'),
(17, 'casualkurta151.jpg', 'casualkurta152.jpg', 'Light Blue Straight Cut Kurta Set ', 13899.00, ' The breathable fabric ensures comfort, making it a versatile addition to your wardrobe.', ' Standard Delivery in 25 - 30 days', 'casualkurta153.jpg'),
(18, 'casualkurta161.jpg', 'casualkurta162.jpg', 'Burgundy Bliss Kurta Set', 16599.00, ' The deep red color is perfect for evening events and celebrations, making it a versatile addition to your wardrobe. The combination of elegance and comfort ensures you look and feel your best.', ' Standard Delivery in 25 - 30 days', 'casualkurta163.jpg'),
(19, 'casualkurta171.jpg', 'casualkurta172.jpg', 'Petal Pink Dream Anarkali Kurta  Set', 16000.00, ' This stunning Petal Pink Dream Anarkali set features a flowy design with intricate lace detailing along the neckline and hem. The soft blush pink color is complemented by subtle gold accents, giving it a luxurious feel. The kurta is paired with matching palazzo pants and a coordinating dupatta that drapes beautifully. ', ' Standard Delivery in 25 - 30 days', 'casualkurta173.jpg'),
(20, 'casualkurta181.jpg', 'casualkurta182.jpg', 'Blossom & Sunshine Kurta Set', 15500.00, ' This delightful Blossom & Sunshine kurta set features a soft pink kurta with delicate floral prints and subtle embellishments. The kurta is complemented by matching palazzo pants, creating a chic and comfortable ensemble. ', ' Standard Delivery in 25 - 30 days', 'casualkurta183.jpg'),
(21, 'casualkurta191.jpg', 'casualkurta192.jpg', 'Rose Petal Elegance Sharara Set', 17900.00, ' This exquisite Rose Petal Elegance sharara set features a rich pink kurta with intricate thread work and embellishments that add a touch of glamour.', ' Standard Delivery in 25 - 30 days', 'casualkurta193.jpg'),
(22, 'casualkurta201.jpg', 'casualkurta202.jpg', 'Azure Blossom Koti Set', 18500.00, ' This stunning Azure Blossom kurta set features a vibrant blue kurta adorned with intricate floral prints that evoke a sense of freshness and elegance.', ' Standard Delivery in 25 - 30 days', 'casualkurta203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `casualpallazo`
--

CREATE TABLE `casualpallazo` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casualpallazo`
--

INSERT INTO `casualpallazo` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(3, 'casualpallazos11.jpg', 'casualpallazos12.jpg', 'Tanishka ', 56.00, ' ', ' ', 'casualpallazos13.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `celebrity`
--

CREATE TABLE `celebrity` (
  `sno` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `celebrity`
--

INSERT INTO `celebrity` (`sno`, `image`, `name`) VALUES
(3, 'section41.png', 'Ishna Batra'),
(4, 'section42.png', 'Elnaaz Norouzi'),
(5, 'section43.png', 'Nina Shah'),
(6, 'section44.png', 'Alisha Pekha'),
(7, 'section45.png', 'Hanna S Khan');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `sno` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `link` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`sno`, `image`, `link`) VALUES
(2, 'coffee3.png', 'boutique'),
(3, 'coffee11.png', 'as'),
(4, 'coffee11.png', 'as'),
(5, 'coffee11.png', 'as'),
(6, 'coffee11.png', 'as');

-- --------------------------------------------------------

--
-- Table structure for table `dupatta`
--

CREATE TABLE `dupatta` (
  `sno` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dupatta`
--

INSERT INTO `dupatta` (`sno`, `image`, `name`, `price`) VALUES
(1, 'accdupatta11.jpg', ' Pink Floral Dupatta', 1200.00),
(2, 'accdupatta12.jpg', 'Green Dupatta', 999.00),
(3, 'accdupatta13.jpg', 'Cream Color Dupatta', 446.00),
(4, 'accdupatta14.jpg', 'Cotton Dupatta', 899.00),
(5, 'accdupatta21.jpg', 'Pure Net lavender Dupatta', 1200.00),
(6, 'accdupatta22.jpg', 'Laal Chunari Dupatta', 2000.00),
(7, 'accdupatta23.jpg', 'Purple Dupatta with Silver Design', 54.00),
(8, 'accdupatta24.jpg', 'Light Green Color Heavy Dupatta', 2500.00),
(9, 'accdupatta31.jpg', 'Red Dupatta', 1999.00),
(10, 'accdupatta32.jpg', 'Blue Dupatta for Kurta Sets', 1400.00),
(11, 'accdupatta33.jpg', 'Multicolor Dupatta', 2999.00),
(12, 'accdupatta34.jpg', 'Classic Black Dupatta with golden Color Design', 1900.00),
(13, 'accdupatta41.jpg', 'Floral Design Dupatta', 1600.00),
(14, 'accdupatta42.jpg', 'Dark Purple Dupatta', 1500.00),
(15, 'accdupatta43.jpg', 'Simple Lavender Dupatta', 600.00),
(16, 'accdupatta44.jpg', 'Simple With Elegance Light Green Dupatta', 797.00),
(17, 'accdupatta51.jpg', 'White Dupatta', 900.00),
(18, 'accdupatta52.jpg', 'Brown Dupatta', 999.00),
(19, 'accdupatta53.jpg', 'Pink Dupatta With Shimmer ', 1050.00),
(20, 'accdupatta54.jpg', 'White Dupatta', 1200.00);

-- --------------------------------------------------------

--
-- Table structure for table `earing`
--

CREATE TABLE `earing` (
  `sno` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `earing`
--

INSERT INTO `earing` (`sno`, `image`, `name`, `price`) VALUES
(1, 'accearing11.jpg', 'EA-1', 2000.00),
(2, 'accearing12.jpg', 'EA-2', 1599.00),
(3, 'accearing13.jpg', 'EA-3', 1199.00),
(4, 'accearing14.jpg', 'EA-4', 999.00),
(5, 'accearing21.jpg', 'EA-5', 1209.00),
(6, 'accearing22.jpg', 'EA-6', 1599.00),
(7, 'accearing23.jpg', 'EA-7', 1495.00),
(8, 'accearing24.jpg', 'EA-8', 2999.00),
(9, 'accearing31.jpg', 'EA-9', 1600.00),
(10, 'accearing32.jpg', 'EA-10', 1550.00),
(11, 'accearing33.jpg', 'EA-11', 1789.00),
(12, 'accearing34.jpg', 'EA-12', 1189.00),
(13, 'accearing41.jpg', 'EA-13', 1156.00),
(14, 'accearing42.jpg', 'EA-14', 2099.00),
(15, 'accearing43.jpg', 'EA-15', 1465.00),
(16, 'accearing44.jpg', 'EA-16', 1895.00),
(17, 'accearing51.jpg', 'EA-17', 2089.00),
(18, 'accearing52.jpg', 'EA-18', 1495.00),
(19, 'accearing53.jpg', 'EA-19', 2115.00),
(20, 'accearing54.jpg', 'EA-20', 999.00);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image_type` varchar(50) NOT NULL,
  `image_size` int(11) NOT NULL,
  `image_data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_name`, `image_type`, `image_size`, `image_data`) VALUES
(1, 'sangam.jpg', 'image/png', 26900, 0x0000001c667479706176696600000000617669666d6966316d696166000000ea6d657461000000000000002168646c72000000000000000070696374000000000000000000000000000000000e7069746d00000000000100000022696c6f630000000044400001000100000000010e000100000000000068060000002369696e6600000000000100000015696e6665020000000001000061763031000000006a697072700000004b6970636f00000013636f6c726e636c780001000d0006800000000c6176314381010c0000000014697370650000000000000272000001a1000000107069786900000000030808080000001769706d610000000000000001000104018203040000680e6d64617412000a0a1866271d030404341a1032f4cf0111400104104140b473eea8d850f1e3e445f8fe11cf0880b4de69f8f5cfce05b34a3f829297255e8f2b3d973f4117e04a783efaa4ae9ed3a060c644abced3c5b1d6ad2aa869fa1cef5420c5f85727c8516686b7efe362954fedab45ff8a7995c4b25ab2bdc4c0490b6a2c05ed555b13df4ffcf8c2d6bb3e16861eb39201bdb4d5518e7ffbcf61f126a2a170ffca59d35cb4c759a209574e0a1e31e7e1a786cbfc164d93c56b22efd52b3f738917a2182b8a27428423e198266831c1065c12e896397303070fa9cffa849966abab0ff57f29dea59ae56ddeefa8f5d0df234b4342298fe17836a5385a6ad99e739b8517bfe6490b86d2aef1be6e9e10a4b5a511dde234a5cf7e657c87030e5aa4e02c587d98e895f9c2213310211dda2ab4b2813bced508a237dfe3b651b6f6bff909753ffca259534ebcd930057f3107c50bc01f4f185809f2e53bc5c7088c08ddc099b314e171d383128ddb8e6b454a87112f8e623df8af8a1d7cc9505ac095342b9beda669192029cdcc33f16363f97a3385f1d508dde302cdbdaa13239904d03271e933de98055b2c2f2f401d28194c630f2520ca72716be7067d2ea6504dd29d8017603fb3fe44815a89dd2bfb7dc54a1094efa416b1c03707d7700754aade4ef2d36a34804ec03c604660bd5b3801741ba1e20ff45549cf3f7b0186573147f7274736951ea0c942bf1c58024b9a46896d370824f64a814a39c2c117734864e7cacca9a7cb69c58358622de250f1f0dbe97e494f04d1e0f688d75f8780cb60e242933ece0b71a06e35e7c2746711ae3bb851cffbd3449f1f2b0cef390489564d5ecf37f19b3692dc70aaae51bd3da59060554b27f0c169d1940849d9e76dbd17d0e4a8b5d8800c9f21f53bc351f6ba8707397539f4e329031268ca22ba9471c67a3029d3813225f49ac0906d17984644d0651e0b237362e442081ee38db38199e75d5f52242bf41530fe641f7dc5ff9525d23b35cfc1efc303577d5a4f928412c97d34838f056fb31d034315fed0a107423451a710ffc089fc0cd02537387fc2e21936ab6735df51e7f579b5156437a8879c8b4d05c519e562f6d4c3a6f45eed204dc663fea3490c6291adbb791966e4ce593b3a46e056195205210e55c7a098359e54d22b026bcae583ffc2e4ad4f0874edaddb3024cfba8ae1b7e9ce5a1d6864f8b8c0c6fb5d770d6f461860c7e61283f4bbf3de662e81cd7dd647c9f6bf106780b08cdf194417cfafcc60c8fdb0cbf418e91e87ea9d4ff7f65b4d80260d68056bded964bf65752df478bd3fc08df2f38b3acac068831ca6f5c06cfe1f3dc9fd3fec6bb01ad9faad650e49abed8e67bfb5d41446c841394fc107f870b8934037cca26219841b9071ef94a98f0c5e22e8c5c274b3addb443e195e1c88e287346e7ed6e6d5e0c4a988fd8db4e313963ee23ef42d01c772b78c8c9566b9263f1d28942752148c20cdadb1a32740b5ac975542cdcada80e3907d60fa4ce2918aee6f750176152726cbe761d417e00e35773909e69e444527033f8d2a35ce04c1fa4a11207d300bb80d497ceca7be78181e2668ebcf945a9dbc5de6abf3f40e3a815224b462d50cbdc3418a140401a3ad6891a389d06b6a0137c73103d1874c05cef89cc381f8c5364f8bd88a370ebe167c6858419cc82437b05d3e6761338e4498693157ccec1ee76ac8fbb9c19d73f1e8442ac0baed4acb781f1672d1ee4693c86ada3ad6c92097936b78d626fd9451a4fd0712db041f642c36ca5f43af23299b44c391cd7c40d012c8e45d909068ea9301be474ea689711710ce6509b63fcf030afcf6869e62c5db4805d4b377d8ecb51a0ac5ca8ab10a427480e223a1a0585e3ee1f0cae5f9726d987572d8ab8d1f41d6443a80aef0a98448d8ea2b04231241df94eb23a231998bd84291b7f1175b2f9210bff736fd8342c23472889221b3529ebd6ccd9f2c035f99a5ac09ba508f1b829c85b56f110654de14bb08151ef6cab5159e01c1ccc0aec4554e4e0ab1e23185da89b91e68aa32cf63dcc0a31451488f7e98e213538c8f73e57b65e8b84822ea0c28661beb7cdb7feff7cdce0c5690dd486a52ff8e5ebbabdbfc567cbe885dba479a293c395ce13530c9cac1cb664f32c31534c55d8c4adadf1a58ee4976fa9613f2d4787ed65f20aa63029f5d2147adecef497eaaee269c840f237a43f919b4c7dc1c419ef4eefc7e47b1e4528485b3ce591146291a21cdadd0a114149b18248993ac206b262906eb360a16c6a392b7b9293ad4ace72d1fc714e3908c53fbd688f748cacd4c64c610568475a0bc271affea6e1893a0b7ef8b91465eabd6de0a6c9be09f1a96d472efc745b8feef9821e9166451f330bc759de86fcea41305dab0619655b7df85be1ab53aebc486db2c839f7a79fbbd861149b4a9fe1abab46f19421b41260cc300fb4258549a18a9622df6b402fe5ae2fa1b213929d55d6190a2939779889d675bbe10cca9bd461ddc12b305d852b171416010e2f387e05e0ce2c2520de30b8b3e941f4c43fed0ac96358d54b3ab2621e1923e8037b7b316dde2fc045d1c022eccad655fd877865379a1b646e0021fa46f1894e94774fbf65476461245197709618956a6a3b8d8fd125f4a071aa5d146f832bdcaa935acee291bf261a50b0b63fe64d81e9aa0bcf9451e673d6aee7b5abb50a3646764e8de8f3f5e3a8fcade5d4ab0d4490963d5bda7001aa7b6fc738b0ad2edd89aa6297df14ee3bad96988a9316808b0befc0b64f3399458f093ad07acec775907d0d756037c2b16f4b8bb34c3946ca486f662624cf4451173e7fdb126839d775a27f7b846e06b8bf153490e5eccd13e1c6622a0308fa496490950e3d69660a7e06f596f58c776eb2d72a24ce35b86cbc81fbd846699317d22d41e1d79ed82d5a142aa7c496d2510b7c210460b87de09769e47b0edfbd50251a1ecb25a2d8732ffe6fabeda8a209772ce6f9f0c50ad8280ec2571d339c3f054caab08745153a2049bf440f1dae16401b80758c4999d4e6f4dbff01f6714b6728625f1ce537270ada25a755ca851dc319b15fb952cc40e99b27af66a3b39e90c8e9d4f24ab995e5239011a25546f78ee7425672bfe398e6c538ed48925e360923c1295ed35ae98cd351225dedf374f5100f5b152cde3bbe6bcd384e82d0bce19612f6c502aad48c10c6717d97ae33399c0d6ef3e4d009deb77a52d34014deaf0fb7a61d0e5a4c4a516cf095f3ea2aba3e50de5ee1383c60696cf95e6f2b7fdf68b9a16db9a86d62a96e8d4e11085ee44f56a6ab9b8396e0e10731c23e0abe8b22999e52e089adf4b4bede6bd09ac27c41dc547db76e55379980a6613691e4db745cb10414a3597e2803a10bd5fc4c6de80c77953199c83a4d5f7689727d8d54d13c5f14d2cc48d3650f4056b5fc90a09b9ef88f5b88c4a1b535e7ce68e182b1382d607207cbaa26fbf9ef269d45d66ed2123a6bc59394226619685615c53ecfd0710d62f58728f7220a43f606a9ff03221bb5b80d65ae6e145240ec80a01b6906f77e3f31c13a1fd9f0247d233d959dd3c36c7a64b2c28f2b0571330d8f2d2b7469811d5c9a022782366a80ac32018aa763c78bd566708f88035f6bff4b64cb2fb731f3891cf3f6e2526e6521355539a3a3b0452ab5acfe91904d024b4d72c1f1b621e5b6f7d31242fd464b0f34f71c30d98c11e0e4a23272a035b407f4276df912161c7700cbf97f33bacbdb06fa41f77cc82a00f3afea5fe03771f4846011c78781cd5f4867989337ead7c32d9cfbb6fafc764306ce53c7c94071866bfeb3199db02c8b48fa7d5ca5737faaf1f4b9a22f409df65986261f893d33483ca8a4ef32e26d16db2fb2e75bc130cf9b8c936379e396a7935197e25eba32fa53e571757463485be5fd302ab474cbefd9b2070f724557e1864d868bd771ebd3171b30dc60d5e5c1eb75fbc78abcf5d57cd0f214f88a2718d468370028b5b4a87ed4b7c2b3135219c5a80a8f8c9077aadb34181784818e4f11131c3d575afca8357b657992f3d53c9ad148db3b1f4476fbc5e72049df8cd18312e954b8fb0ece3b92ce34fddd1d61045f8fc7831ce44d46ff4bf17bfa4378678cee7120734081b8ed4f105316290e7f122f84e4857e69662b57f873589413a0e2e2818924630d633659f3cc0437b258f0db6c9bb35f0440cf2b4f954943883a9014bf178e93fdc98245a3e3388b215379c830bd47515c1d9245087266caaa8e392b1f298de87b3a35f8186812de07b382b0a52ae68c4f22ec260680d981fda7cdf1b904ea4527b86c3f8ce08e95e3cb5ff9dbaed819ea418dd9cb909dfad86073635c5b1642c41ee32de11ed716204ed24eb503372ca8ab0a12da8b9b6ab302073ae2d8988f684907e8e2cdb0a8028f6388aa37d0abae76a893d65009eda6370f681490786891f9856bc940ee01977bef3c0914b30839e2e0ba0deaa08ae47e2cbb096f712fb68c9b2efd0d73868101f56c8626358728efc23c7e7117c0234e344092c58e95e1cbd13fe0ec46fb2355025cbddb17d65db4c943db121128a5b83c8f1a28bcc510f3adbc7bd6f696883ff53968bc65d3e85b5eeb9d762e9bcb337e68cb5efde3e460a604f5d12889bc980de1d54a072cf6ea84b9bb9a312358896f76d06256cb3c6729221ad955a5a2d41069827527e37e9d93736c5859a507cafb429ccdd6af2d7490531ef14fc1cadae9f98fd8a52965da75e51d2ffa82bded403a2531d8aae28d08e78b1e3776949e1c221540cc429df35f0b527a86ca0ff34cfe28b972d6c2ca9c6d9de1276083c0233cdae2193b6e324357e2b3638c6e37254aa45b8dda8bb559c96c28eddf502e29accd08128e357dcc174c398f916c182394d8c435dce8669a88bf0d6475d010bb25983bc4ef947d117b973351776231ec200a9722603f08e9af3869a9022691a516956459eb8b4e0cdaf127463d26a9ca66e58409508d225f7ffc7ad73af48d25551329d6af4887211fd9429f36bc4d00f20614b6631a9abd5aed49fd2f28276b681be28ec305f6f1b18b36eece190d8174d47cb6ed515f963fb2b181ac799867ee8336dfa09c38f96f5c51581deab21e1e8c4016f5f49dc79128f229c116a5d5d21becd0538e73945a11fd6a5063cf6aea00fa23a8d717aaf5ccd2e5638f1077ac3c184dd79a5937c5a7f9833292c71f01c7d65554cc1fcf8f7617632b7b96f4264661685702686ccb4ff49d6de61a693536dcdba76276c39a0dc7f57717052039d292d758e201e6bde7ec821c91da20ddd535fde105fe3b585fa33bba0f23b0db1208e15d8e797cd158be3de3f41f86ea836589a0283db1ec1cae24df14529279f936b6971df6c209c28df1ddab234a0327ee8b436e6000c4a75aff00bce4e2370de3cbbbbff9d4d1df44b0782e133cb694efe065c1ac7da41e3df934a07d66700b675ae5f60eabc760b0e6bae9ecbc102de4e526ceecda5b92f4b20099a01ef7f140d7d5a616a212c5e9c4236d4f8ebc2db9248fbfedf0651e3f164fb715b368dfd1fb5ae85b2941ee4d48462d39b5afb2f03b7d8a44850680fed358a8c2891412beb694f2d6ed5e76d97532ffbcc9fad57a8451b7cc96538d5ce12bf368dd3cd55d8347dfba3f2985f2eb13b99ac89ad9ae351fad3e1f318c5296ab4c499de701a380a043c890435bde212551550f9ff8b6111cdca9a151cbfbe9ebb6735c0dc0c2ddc6542377cb63421be05db841e7b405a0fd6425b7b5d951d248426d4cecbd20aba5aeb62a2338360f43db9ca1def9070e16dcf641d7814bf9bbfda5c4476e50d2b11a9e2b4efdd26924b8c2f966f155d63e8c769243a096ad4aff8d38946b3885333a4ff4692c02f921626609bff59852fccdc1098128e8c469829e76bb76b05509955cbd4704c6fe756adeaed870f78ff8fa08bde7316ce7e5e61081329d98ee4bf02b7814e59702719c7fcabdd92679b56b134aa56c34cb2c4a6a5627d1299c99c324dde3ebcbe1852cf929fe3e95866c3d9b38f16488d768d92cbf9ea4b93df75451828ba4f977f72a5e620a8cd669ed0f51b0612eee8900373b0da7efff9c7aac9a289b62d960e71d271e13aa1ff19d6015516cdcbb4252e79a50a69a0389e42a0bf62bcac49b12ae59492c16ac0ab94197400b93f59daef90cfc36292e2f74e7767a87721c2adb8f24f67704b504774f2038462305c5e4c4449ce17af1a4baf0c19b6de23a7d7ff50bd6d03d1fc0edd22e779451d67df3b794df78faa2ed62c6480f058fae9ca2acc74888eec9f5a73d6b7dd1d9798a550b74e9a6651cc9c498057ed33986e74d3b38a43cbb6791d422a795b0914f5295f585ee274c7be58ab5aa6f1391e0d36cc698e130141a7d417611349c4c1251405a6c726ac987ea9fef24b65d09a7b90bba7414a0af86bbfdab38fcd6bab5dab5f0e1f0c3a514478d9ca8dd72842fb2834a35e42ebb8a29399b73d37111b68147d723dc9ecdefae8df9a916487766dd5b35f33d4b8836021e82966f9e31bab2b4908e224a593ee4d398c7e104b61280cad40b5868dd5aab527a7d5f88b46f022b8a24573577c61498260b266dbecb326b48404cd376686c27d1f0ea1ec171f14b064c591b23d24b80db11746aaa7bd69a99707fd5f4f3aa43674189e720e402cd7519eb7a5155386fffa13e3679da458c574b87a3c349773d892b9bee2e30f63de39f63446d5779fcb4677a53c00ef59a95f26d2ab479d5eb5ca6e1147303e768c6dfaecfcd4940bd0b5b24a35b7fd22bc3765c16666c7f84edefaed846638f0f919bedc1bba1b7415ccf4cb82976ba0ab710fa65744cd2f8a995263119919c8c3b2abb925b6df418047a946452557bc7f3f6e384f7a51a4758236cd605dcd1f6dafe4f7f39c7cee917e7632ce35accfbc818160b909eb81d2eab880e2c830fe36621033191ee0ff045aef5509a5c630b0f50c26c636643dc32b43c5718194df0f3c9a68581b86ec0ab42230d6ae270d4c7e58005846b9252b25bc36ee19d2008fb6b52a75cc5f49d5a01843e2b5856fc2accb09ea3931d867ddc6d023c841be2d6fd0427ebc23c5c00b08a2e0c22214ed73effb02e6c85549e7eeb35eabb471b0a0a6bbf4afe626c142aec087161f9e322679538a85c745cbece1c4df609cac2bfe02786841b376e4ba5ca3f5598a57a4a3e33fae8b3c3b8ae8f301a094a2a9b8ed320d99916b1de53216aad1c6ee6f7ca6122fd5f3db935fe02ebca34244b0b6ab5e671f542c232f17a0478e29a0c3494125e15e038b5453694dffdaaf1a00e4c854179a01d8a5ad81e59dcdb78478090b33d716398ca75466d3c2390904f7e097229c03bb94101c02fcbd33d92d7710c4f7948e77f95c5ac5b499ed1ed4e348b8d98ca93629886b8ab962469439c2961979b17cb8cddc89d8e59751fd6dfb77b7f45733c656c31b565e3dafc9fbccc136a1f468d9571b9e93baf687889cc7e32c722dba850d760b62880b4dd7072601cff986b6f6103d7bc8519cf82ab0dc4d308a3a927204167e8cedd6f86578903cd868b1a0ccb275a6d9547eaf3156a8fe12650fabe86c12d5e661e09f63f5ef8345f7ebad3e77a4b45d27d8ac68f2c913e54118bf61490fa388477eda3995d47632f4783aa76cdae6b0fbc7485173cce0c9ce21f83516d28b5965e20640838242d37ff7da181c7962eb3a2ea126997d57cac066a4103852e139f52f1bb0f3e427438abba7491df12bd07e27829e4389c26b7a744f365d4a707dc31f25f54d0e05fa747dc0044f46114afb4a91537b0cfb1a48bf5da41099ce01923efe0b75fd9ba8d0452a443b87dcb278a2540875b93a9525ed9b8f9183405fc0b8283d9774f26078dcc1a0573d7125e3058153fcca2d077b34a17c480262afd8dd4a0ca5eb4e6f0e465684428f02346b4f82e224bfdbd2ea0c7d098c56d4aa023da6addf2aadb6ccae6c2c98d3cc638e32f8653508ebcadfc4e2c23603d2c50f88939df12d5644d42c674668b29df5bcb795b92befacfbeb0edd1592bdc26462d224429c41d127806cbe11c80c3dd2dbe94c7ad5443e861c2501d37f5a7c5a929473c34338662ab4d409b09d84d4f1afd9be280a5dd2a2e4e2c5a1afe6b533d1d26d584016e013a2c844c513e0e9ad9e2eb6b41cc503259958d7d6eb7b1981fcb051e98004ebac262deddc61db9a389185152c0d0ea2762f489e62a80bc5cc151a6e7051d30d06a5f5c13f9aaefef239e923cd939abd519e44191f3d59de0916e0a9b08c58c53ec307e021cb05b7f06fc2843ec44e39cfbef1f99671476cd3afc5bdf85bffb182fa0c45b5b78ffb3f1c05831934e1b787fb0c51cfc38d7b20ba6a37aa1085282aa02afdd49526cde94d59bf1b4c99940f915bd33761af44dc704c088e9a19d5c4e2d243c30e209f5287670845cea4d55a8510c3e75785078a49c00cd81b520a1dd9fac0ca9b069884ef31c088a620a30d6b546240c5bf94c9a831eca4b7483c0e008089c9bbc93a56c9891716ceac78bcda1f1b90fb3229a080b3beca1c745559b91b8cdd069a65362b3babd1665cc20237fbbfeb073d455bd7058049cedd7493cbc87bd748211e69a4ba2e69c1afcb1143fa8d489d99e2bc5dfc785781d1fea0a867f4942d6f847a363b8012ba2c0fea0b9cd9998302969dd8ef3987fda62dc48fc28866b8095a3430c43fa9246986420b31927fa82375bec82583ec972abb3d7d7f27e7158f31d1be530bcd73fdf1bb8d71f22768fcf1b300eb7c89df7501b8109d00434b9540813bcf66be7c2fa362f04849339e6ca12e398ba4324db47588604d99eeb3e945475b169ca2fe0d53bd816006d219ec34e97bb797fbd431429923c8c58ffdf9601c64ac53c08c67091f4deb7426691de91116563fe5bb579adf0e3c8e98a8340bedf802e98bc3ba65c9e7a82ae615dc5acc816bc36e7db70a9d1b0f8d1eb3c3205700c494f3f69d4bc0b78b37f355c04d1def963c2934c786fd3b3a3dcf25f7290c386f3b20cc20d4648073db34d966c6ad406f549b8455836d686a4452d6d0bf7f1a46f97626c2c9f3c0756f3232f7dfe61b7460e7b7f1e8582bcc01194e9c75b63bca09a47ae7979f892a01518f8e3ebeb58375751b6079f611316ca70c749bdf151a63615b10d4574e815b5d7e21f68cfa7cac6197e3c3c20909791d2fa32d9d6063d83a61f7f8959e634929c10b6202430fc774ee53fd7852515eb7021c379c8b7c918685c5f9eba2d55c4ea027d4d4d9577a042faf93ec503eb9b27c481aa8df09480fde4ab92035fa0e33f335eca900d7e7511ba9c79831109fa0068e5b2791e6f9568ceca62d87b6578a6589ced8e8290df4aa1f021b6a898b21b884e9e31d5579aaf33e5ac3b76e3fe25ae92272952a9bd50a96b3e9c09add90c4ae8d5d8fe36810941117c466f4ddfaffecb9f86ee64c9864309539085c19817e0fa3b0b0668cfc533b007f78445282b727c14423b9cba7a8520ba78b5c3d847c47318bafaf6188bce28d284a543131b95d574514d54dd4c3eb223a4213c8d87320c27b4113eed1fb97a7b764f2b77a2fc2855e76637d554f1e88e94e77746e695bd9cabbaff18a988685eebc276aeaf561f4671c7568ad5d58dd3e63fcea26956d36ba0ae8833268e5fb4a5ed2717a3afed41c3fe7b9f2faff216af812d2d81704ac8b1af3a573f4a6d366027fd200404226c2711d594693341bf5e33c79fc8048d571123156d53e86f8dfff3db45df2095d68406df54a9409af3a1de1bb372eea80956bafc2be7e5214979f3b30ba294bf6596c042b2a44c5768245f538be798a6e3b2cc3364db22f81065c654090fd9e33bbe4504ca963dae0b28e87b8738dd27808b084464aa29e4dbf0ef4139bcb7ce64da8685ead86b54c856b8b4a54cff0e838f25cd89b73b77a5fdc73ef29468151305d74e16a1231c480c3ef794599023a9ce41f97442a86cac613c8374109c9fdc0cf0e01419b4ebd160d54445a7653242582981f21cecc9aa1a0fdfac2ec6442b09c2dedbc7b415e01fed9e6fda9956afad36ac3e2008d2425e1118390b6d3000f3f2e75df28cad75d7c42675d3bf4271570b4b0739b9bc2b55be3216fbaf93faa19881d0d666133eec158efc42520d6f0d24f40d9991f8faa0a296e5e7e7d6342e26602fcfbec0305d90a17dafd8f1e1efed13e4165bb25e18a096206669590ac128d949c09572dc9d5e276a95417f0519003fa839d5bb9d2c712ec1aab0243aac4086f4a266e72dce0de82305803f95baaada7e3d2a3a2fe71da977b457c8f86410d8e8534bb8ab988d75d0d29f6742a6f5f30263c341be6452d5ff215f7e74328246d84742208d49ac6ce8ab2529795d0d1565ef791806c88ce669b813d5fc236341f9bf98d6ab21ee380d8cce05beb233d46c81556684b18da9d5375d93948eb6c6ae34a4b3e99cd3279323f4218299d7fb47f0a8ae925b9b1da591e9f88e203bd3dc2a8c6ab88845ffe8fdabeb3b052dbaae460af4353bb3ca832c9d7041684ff2abdb6e055debbe27973b71bc9225b57fee15573b610e1fa4e012a7f633a56ad77d38acbbb35e22fdb1c389f8e5e42e710bbd5b37c34599c5182d5a1ac82aa9070536d2de621004e9a3af4bada9e23e4b5a550970f4b731445197185fd7005dea146bf83aeeaf64a321b5b98827931e0a5eb9547367b1212d216dcb05916a9b41027b7c2bc8bde10d8b0b1e2ef4aa77a0fdb90a221f74631f0a5c2c18ecd05fb55107db8a09d50e367f9ea2dec7cddf2102eee41acee2660dcb0c5b245a41848ecb684878466aa9ffef35ad364d62c511b58623c5493965050314a69a211447bc36b9c97d79db7488832db592516b3b8d12982cee1d8242761de188e8b0f2fdaf3ff1d9247e7ac5812321253dec88a1487a6e608dd434e3f9dacab577707f43ebf7819f3bb773c499cefe941234a34fa9180f7a3ee504f9c28f7a5fa278f869c2dd547d43765932f358ef0cfca90a838184cb5ea7d600ee971145bc4fe7f3e8104b8447e5e7f994aa2f3b47258311ad2beb7ce38723691233e8996a189c59544dda4776d48b2ed1d2ba864f639c30c2758d7a6b84c135f7759f7ea83004be8a2822bf37d0c8cbba0ab8f92864b5f8479d693d77a821db9b8c583f768593432a0967f77d1464011aa51d9b92d29abea3e73408c915d461a81238c7d2584be3dcdb51d5dac55abad018f2c702560d862576c4ff48c5afa477499b69a6d4f64978b99176fbf6435828bdfea8384010750ebae98f24db7cc00d35259b34306b0109e0ea9004bc61249a927fcc54e08219ecfbe41cbca2f7fa375fb05f63693aaaaf914bf04fae63a75ab74260b9d2ecad296672a0476564da7cba868bf9296625fe88969caa5f5bbaa72c5de86ae363fb719708ce6a8064e701aae040c15279eb274d1dd26001818361d0dcfbaafe50379d9e8d2509f51b70e2766e9648c05fc060407a578ffd0daccad9c00bf92df50d47cbb43aa8450832a111920780940bae6cd7c1ce342176d4d1cb04651e8e89b589d2deb422beb333eb72ac41e0369ffb05fa6e3802be260da229a65804ae5cbade38c4ff4cb8128a21696a9748e11255cd34cbed1e43d9c8546496719ed920a8979b75b8c607e15bd9b3fd790a1504ac8e53871457d3b2b11df1d5933d9a056f432d30e9a7746ddf31a1160ff23062288376bf5f4c9dd0dc10fa158680d01f2f8fba30f998ece20cb4dee491f7f47a61660ca70161ea0d0716a862e2f323e75a68bbe78a61fa98de578c62581e7c4087b47a297f57079a69b86aa5b4610a6c10ed1beb4f9e70c8d2950318ef9adcb2fbe2c17d5a46144c5509b0e199c2d92c9d96f52de42a2b29f459d6432ac65f80be579832e00ebb41389042bf28bea9c074077e6980e94baed0c280315ff118ec1a614ee408ef9c94d011464609a0eeac3ce374c4605db9e4483a277f4009a10fbe34ad8653b17077a90b98f768e593c157ae3b78cd1cd9359cac96ff4ff264c9024475695c56f9a9f56d82c3f6ebaae65484e640a20ce022fcdb6787b58498c7ead3292a3a6a95df1d1f095ccc3e3721dd6946419a7349339fc1d86fa6e4d6f5bfe84fcb1e31603ffd8e3a97419bca6e31ff8fa15146f370bf295f01c528d094e4f36b2a661a69541db4ab7a4794251cd8fc30dbd61bc697b381bd32bc18bfd6f9f9dfb06f74854b9473aad822ddda130aae4a7c68cd0bfeaa13ca62974a9f15a52aff1b4c7c4cdf1dd65dc11cb809a07a4d60bc0d5e6e8e32dd620655f133ce66a7dca56b31206b804da46bd7479eadd077f4c09b41f49d30260dead374f898257eb2fa3ed34e1c9b6200558444880a2252edcf44776cac94d2324c3780f39e080ac25e4c0e5d2d9e16ca9f142fa17e63b85930b7d39f9c9ebf923818602f490e9d11d9c8f6170b6e0f0a38d8f09322391bcdb7c65645b0a98a3d997557705946ee593dccd40ad4e25b05a111a18e2167f63d1b07fcc31678f788275e023ff73c607a3996c4b41179c44469608ef4edf174a8f38c477077848fabb8441edb98afa0400e9c2824814a2fa0eea47a182f884bb6231b65f35c71b7834dc327780d7b831f12b67381a1b7b22960e141095276b5225197ca32b683a1b708cccca0d445969c49d378bb57ceb72d900d022f57fe7056c6177f5ceef2aa293a3848280c93d340ce8b9b4b3dca9fa9fb4911837ea9b6c4257e39edf2760160746b7a41f108226a4b675402c617393714354013514dcc9c8ee4ccfa34b3c2f0ba4d5b73553693e0767336aead0c1ec0a3ee37030be4ef164edf65b0451cf7c81206f8eb874224cc8516b0be6a484da97455dc9d26e960ffcfcbd6fd755235a591102a8fbb33184cdeb83fb05130916f83a7db39f50e50d646c978483d6c1c19f2db2b7306ae735e21e9425cdd191958d9295e07f4301cc6aa1d08e1c815580d04466a94fd49f462e08429e0f648d8b94cb19751014a279e61e8d947badfb53d75ca3b94ad2f314b431cce8f927052c070eb720389353f35c3ef5bf6b6189f8d17659a0d1e67cc51a876cce30796d1ac256d3134db44ab8ccae4e4dbaac7e304fa1836206e61dd1b55d315ee6816e6311a78603755a253635feb44325d50f6a3670334ecdc9a99f6fee2200ab5e6a0b431c2f6a994a7d05e9059eaff8f59dc38d065ead5d52f6e6755674d9292d38a82999077fe263e933aa58cd386cf596eedbb7e6574ce48b7136e213ba424a4580c2e3402e6d6acb7e2f6bed2a118a4930f926f1d187f572551fb5164a0b82dc8462b100a45e4b342bb1fbdbb5468f2dd3ce7bd6a1b380cdc6378b8f91151aba4f1b275c9bd68e0e528622fa8b3ad61431b3341b06220d7d373682db14c99e03116273ac8a737c95fa3c9cd1081599b747415eab11089247505dd4c8bdc9e5f11a98fb4462dac699198be01ab59327c6638517a9275bf0121a081ad57b071878dd5baf95da4b7be61f3f72777429fb10da66c0129831602ca3b3de26e349c0afd7e9e06510fbab33cff4674333e77aa20ac3bd604608ce2b40ecd8fe731b84d36158aa622c018bd46a7f4eef6c0ad69067a69ff5ac9cb046836ea4378203a08d61574640fc9d9f16f47025c99daa83190f2ba44a8bb8246963bd6b95b457ec31e6f416b09c8084524adea4b5da99e6d77aac237d1b5058613288282bfc21176c924bde27dff489f0470a9e0b1ad80dd34e252f0e231e50003c8bb90e98f69c64200c2859dcc17008a9e55a8097b865236224222cc96f272b0d105c34ebf74dacbf16bc62937f221904ae2d671cba4aca3f38a03baf36f0c12cd7de5fdbf8d17c985816cd56b26e866536ed4d860150f2df9b5bdb7396d36cc06af3994bca7dbb79df0cb51feccb80c6767345b946ca88c64ec4b491d8c2b952363f3951273c514b9712f8cec3572da7c5ba94f96c988d78abe685ec21b1905c770b22cf5f40dd34ad9ce2e76795a1aa1a16f2e991370b70860cd7f514d86130d8490e1728e8407dcbb448916a3f111a540088e55b2e9270f1a242a904dcef42c4b3770d4abe9f507feb37623dbbe10e70a66fc46864b774a043c05139875899355ea3bf19f7ceaa9422d49624baa2f617f9ad89a9d4e2fc390c6471e25f72504172b5b1f638569d9bd09e0aa559e68d7c8919f3516862daac524056d36e314b420f630cadd9426f3dbe5755a797eec663a489351b33bea8e96b76948eef2e21bf24f16ce960c59cde9b1efa3788c7a7aa64a3437454837f56327a25e9bdb73ef923fb240c52b11eb7dedbfa9138221acfc88bedc64eef046524fae2e7a29893b184d78612b9795898579c3424521a8566daccc0dcbd7be3dce27df69175ccafc120e44b8781eb3e661535d908c392ba06c634d25dac1b2fac85aef359962c784a5444eb7276bec22ed68dae331f2af83cf75f6ccd6678e5bc0fde8079e0f387c61eca5f8c3d30ef04b6def21150b000f6e8316a72d32f889825731c0aeeade8c06e78de0dc267e694bc87d6fcfc70d05e1d3ca91f76b2534ae565afaa6effe825c2f9869a84573dddb13c322f2c6d1238b7bb56ed3fd04cea5b93194589840021cfe1ef65c97e360b2ceeeb89198d3a4c87970915d723ccc48a05ba9eb947f5d8621c25a2f0ca59e4647913cd0fc81ba33ad5bdcee343cae555bb0287fd6a4d6f032646486a1312c49da350aa0c851e8cd60325cf61027644907b742f0d33ca1e1eb7505bc40b1a748b3a3874f9c365bfcdf37cc0fb6e1d24ff8bd3279af9aed6add5e563e69dc81366cc612edb2fdad30babad4e36695f4db1681df3a6c3af4f4a246953400ec5eaec2bf61109e84a577735658c33abc0e450fa1eaf1b47e869edf48f4623adb1fddf8ad0f0a5d0ddc447434cf170b778f71358994c075d3cc30ddc3d83f818cc9432a37dd21e4f7be412d45b6a9c9a639282c514d7d16ff7f35ab6dee76a499306b5a1aa2f524379623879382aceaa6e664601189ab1feed05cc6783cae01aeb82183d915765ece0cc1899e63e0bf66f598e1288a5fc9fcc21650ab70d219ef9980b4383d2db5de5a19c2806555eb60bea0b6ff3bcae1b84e1988986852a49993227d35e0a64a842f0de692f8c24c0b22a349153cdac33cd9c609983cd1e0009499ba476fb4dda328e3255c699fb6efa6a76ece6da6de9ce4e2742cc4272bb4610b9aef5841954a1b311060065d5f002381237626e5b9bb0ad51ce4d36aca961e56b034657f825395f04c0968500010f0ebc7710e5de6efaf9cd3d8d75191c538f14847c6daf34493ac0de03facad0108f559533ea5080dc3369e6550a1df6b41db42ef8949a37f36c7f880c324d2fd26d450f9f4a4fb922ece437e9b5f72d14dbd9841faafef04d32f25eef02d5a7915cb72307e61cc9ca7ce35310d3e9def9534d0d2ff02d02df6a0a5e99d891f9ec4b14f1866e8dee38559f696eac76020a73a53893ab2b53064e50978f97f0721c39b1ba793b5d6c3fdafc0c375d222a2558e656183b72ae48bdd781b1cb94ac33d8a53f75b07ed7b8e1870b51c40b164f930c30a759bf2257d5923400c4a196abae70a721024a98c94e100cad49fd92a5c8e0d9d8d8928642bb48189509fa70a73a75f48d75d96874fd2735aac5f4e3c68bd266755b3213398a76c8fb901539395ef0af850a88adfd87daaea2bb656d59fb8916d8a819f2149deb070cdeb14b48f6cc947b8083dc7add37b0900df30bc5a0c82a35160c76618ce494297bb0f006bed712c71aa5bc8e97bfc8cfbd15c95244a79bd69556557318f11aaa5d224ef4e469d6157bdca7c5d12683b85bd868aa155392c57567120e16332fd7108204ab2591b36409b4a78e0592d1aa0af5160e3df1a738f261cfd37fd9faf09d7719a742849b40559f6aa0421b229aa3b40dd9c9da69ab78c7b947afe3d38496cead8bda657e600d97ed4ee322a0db21bc403058d0b68f1c1a9bbd9219aa72dcc07e08ba412cca26fdebc27d46962cd1a707747be97bdba1ac8f50a437f092e46ff3454e4eaa8101b63a2388c441a135ddaa4cb95162caa53e93b38b7dee88a291f3a1e29d879666677f481f7adf2d1342aad8386a3599cfe2e9f31e00f11c59477fd3944cc7deb57d1d60bfafae835b6037b63acd83286198b2fecbdfdd77e5b7b7b8e8ab41e4ae8712549f52ff1d5648a775c95b689743ce3d21a4d591bde81a5773274b21408198722adfa8474d1feaf249a57487c5d19c2f56967755e55d8d6279b17d0d5287e76c0545322c15ae12eb6f211b897fd73b42826d6d525115dcbf573332128f0d69e4081ddc9637e5dc19a0e69eb932d8a1a49a9e600a400cd0793d6612e7d216c4a83bd6fadfa57711701ae378bf07ced75dc699b973d1c11b9dcfd9f251f1f8120183d1171505f93502357418c73829d2b5a5f123e0c7e172ad68359ee5b5e9df1aa72f02fd5306877411965e66fef146c61603aafb0bfc5b5210acb0f08ae1f18efbb4d5b51347892285cacbc3ad62b7e6298a73f18c46ac5027c5ee637fbde003a8e17fe6ab37dfb05013e7841f8473e5b19575e128b8fe95fdd206276ffffdfcd94c5b22d83780e89a72ba4157f7f3b8d56004c72518e2a84199cb9ce8f12683726109aae343d40d5e42d04516ec761b974607e0ebea3cf565a731aeabf36d9790981ae4d2c0488fc8e55971ae99464953fbc0c335bc601e41b6f137fb94c608c9b914840df89fd85c044d81a68406539c56351c9e9b918ebaeb72345e6a91c668e87285bde5195d305cdeefabd0e76f5cde535bca5b686c9110f2bb27136c34cdb0a67e641ba4e612f912ea0972fe91cb1c946a9e24d18a37fc3aadbda4828ad20bb7963ecd277cf9e3fddd22bdaa967d11753202501d75934a639f0e134887df306639f43a87ae7f07090996e8d8df76a6e815c736d071ca6fc332fd1d6e09c2f8ee73adaae34e1c4c95b8e12669ae95defc2e8cca8db1efbda692414fa8f2da602750c85fdfa3bba15b2fb6140d2292c7f1d3fec8344148d0c0db5ccb649edc55fe0d79c1359505e75943b6cbae5425f6a8bb8bd2b7bac82e14da2aade1443286f7e79d32587e816c9013646566640ca793f8d3651550e5426be85dd7f5fb00913e3a97855e867e8ec7a0812551f04e37d5ba6382d6ea82570d5ccc73f9e2c6c04cd38c01c23d8b0142f37ab2987a96dfde1fc2696d83e7b993f702debe5e2d22f7c08deb4cdd3d7a7dc69b00bfed304b5240fabcd744cde24db567aac17fe62a5ac87b19e6234bf50279ed8d9d9d7a802f1478fc859c3c58236706480fc4f71929a5ca0d0ae94462cde29bb5f7b7c0524e4007b6850adf1050fe6497fbbc6877b4dccd4185d093e5cdc9cca583b74100bd008efedcaa88f642b98c1a283a21d9b9feac0374fba3584d74ae9072274d6d9f3e83a9f177041b2ff586e90ef60ddd0d8a9d94893b5a67ee893d2b8ecca466e9266c151ef826a3eb3b825425294a61b6f810746997af1b6f1609085ebe4cb5d1e3005d6aa98ec02df74e506ff29997f242b2a511e3f1c451aadcc7bbc3733e2602d7e12c51ce7dd469d0954224417a6c2619a92308b9fe432aa6ab8b3444dfbb4b468fefbe2492e694496427406fda43b9dea6d4894f1fb8c8e768f9560c90fbf0bbdbcc5519c7aaaf23f9b854ae1b54dbb89c14132a30ac0f0d1aea3d4d1b8ee99df7bd9329ebadf0c70a74cfe937e2f8fed9e675fa86a71940e917dbe41b3a4ae908039ace16a5f001a09a405dd547c023fc696a0e5ca043ade405fbaa70490ed4e3cdd756d279f7355b5374f7f91c6853ffe710afa58490652091870aebd2b334f0269561f1cb4c1021dedd3a8a7bd92e4b237a56a9ceca69a09c34cd3eb9a7ef366ed25d3b2bea52c0de3e1b7e247da750778b06c0de8aa64ed3858810b8a7f0d8d6da759e0a64a8a8732883236025d8ca466ecad642735c4c3c7e54b24b241f10d4f7dcaa12f795e4d203d920e7e47db5d5683d9a82fb12677bb0eee731f351010814ceeced2291e6c661613675e55979ad54e4f8698c9f442cd3c697cb9f61853e95a82b59f37b734b304e53de2f56e5d15172230fc25c681520a5c3ad95c4a6a65b6a3de52ebc664529b5ec956e75d001d3b99e9676cfe097e20b01e84b0abf44df0303daeb73b619db0e310cf6744606518152634fabc88f3a12fbb59716409d1a7901773613ac73bb04ce95d20050dd8a52ad0204742c117b5cb8488b1a786345645a88294548b4ba0502462d90c6f606f6f9accd49cbdab4e0676904a888618112e61399ba2fb10854794029bf0ef2cb02e3a99faa293b34b4f8ad46c7113155dc0d9bda170e3300005e94fcad4b69195821d974477e11447d5dd5461e91a56bccc820ab71f4e61d45bec62b343e9fdc005fc8d2322ef0b322ce34a5e1ffc9eac65998a2625091b37b5fb80a0f0e6ae1a3b6daf98bb6c8c426cb9f42ff894f152a9ec0e20d0e3d2daf3f5c2170bc43636c2a6740c31670d073ed35556eba4cee28e6b733816b9a6ae8217ae15b8635e71e4cb720e8f8d9100fd809a6906714215f7912e022f2e4a04394c074d850f5e0efd8919e1e17db353832a6b9c074b26336cfa97ae9c50ce35f95da5667397302db75687ebf4efd9949b0a8847338f90b53bba2534198986724a2ffae74f1fc3d42b5e1e1674eb0072d3bee76002c8b735d7c0e698f1bdb812790faacdde9a9223061a4bf0dda77bbda4c7656b3135430efaec86c1ead834f6ebc9b5635add34bad3d421ab36b3a27eec8471771e70bf7e9f0e739192e8ad2a9124a255d71412904ad15bdb11d9c8a2b3828d40867991bcfd49b4b53d5aa4e5b934ce8c5ede70604c43fe30c1974db8960f57177cb5273e35519c3f55c099e40a287298bd3f49f36062937e56995d30bd204837ab76bb4570215a9a109a973072f801417984cc8dc89d4e0521afd4fb38858183812f52456cc600ece11d0cedaa1a201b09df4e44e63479dadda9ce11abc07c4c1b669443a72c092108e683278822f0ed495b33078d2385f2a4d93a27e661df4527c01af54f26e665d3dd10ab84f50ab18938c5e9cf8fd84a47cf9a8cabee6028579c342ec88469e56426f2ef91a43cf7bf4a749bb8041efd4346cfb3f598dd1687a17b0ddbefd34394aa4d7fdb927d4b5736a58230e35df5f09ebd37033d810ddf46ff9142e343deab620a0ad4aed2f06bc76996013f0450cdd8272bd3e9f9eaaedf7892e59ddad89560a9dd9cbd33ff59a27c510f648abf64666242a717339c3d4d82502091deca0d8c82b0adfef52fada863b9094674e7d35fd1cef90f9cdfa00b0949f082916f7d3c0e46e925339886933e397332cb56589025fb75fa406accea0b04eae5b57dbcf65486931f46f9ba1233a286df345e79815627a80b255fd63befdf60077f18180f6421b6f4e9d3031c77879a5bbb48d6c7ef209fb1254c55fac515ff4d8930f67f1213ac8e8de7c63f7e5f7516c6ed4fffc7e32f957b50c20f50688e919330ef3fc5a316acbe8edfc8c151505787a4a610361be4435b115216bf96c81a246aaf72a8cab831eec9516c653a7c7d017b54842885127fc39e1b9b2480b08181d9aec6dc602c76de70a5bf0e69faa7772189475b3baa71812796201222fc151df82ee5df0f8431f86e30b7be0eda63b72da9397220bc86628f9eefad7f0cfb564b5e38fc2c4a4166c41e66feb9e9cd887ecee9c4503bd5bc9b4abf20297dba82429ed59d3b8a00ae162588cc2ca664e7af33868ba355cdcf801b5bd9d43ed1a2189b5016a873ee8275b58c22ee256e0caed6a95d5f951b8fd5d5edef2168ae11d4e845477b3abdc7847b5580f0227b5efc9720a461650b4bc4779fb9ddd224f40b8cd396f6aa37888f13d8ef452dfd40d78599eecbdfc61221c45fbb6923338cfaef42c69adb2dece69d158318871ba5a13e1a6e93f470982e0edf9ed596c21e7d82c51d0366552961d3041a86b8e86d30e268039018d0084657da7754b5e5c11f10d29d666334a4fba52e9f17bf66b36f7f285375862303eb9018c7716f78b7ac8adbe1b93afdd4dfab0f605d93a4c8d980a9874367882bbbb1326e4307baab7faf21ba49f5d049ea0e70c3a390bb608a6a7645fd7f5f1046c1f15a858e715d09ce2e3f02a28f2f0de0d84fe808b883e0df107b6fccd70ad382324c7bb164219accb348ff8925095c98e21a811a722910c45a1c2e3c6462a9bf88988ac216279d257e7cf6fb9f4c90e23d36c55365702abb256622d8111b1a17bcdd029f7b36bdb8260ea241db6b4512371f43e39593f3cff24d585c789a151d2a0cdb2eb00dd571bd64879a41b9fd08be17b97bc3fc96c4c746bcdd643ddee9cfd8d222a6585d177281330af82fb32fca92bdb96768add9b8648a288cf5d5659378913ece623c4a2514c8fccca221f55ad7287acc0156232e68d77718e7108d02371f738d6f40d15703be7997739b88d0b4f2389a71581c0c6885d9e8b3972599ec1bdfe2bd808be934233e9b8ea1fddb0f3c01d04fc694188da0ff5841b341054774218cb5f8481bec683b9a64aa66b7777ed671bdc8d23ca637b179423c6bdb6daedc06619a8ca3a7087fafd97b98b17a3be39e2a36f808b7cedde6e38b2baefc8b66498feac9db3de296d6e4b3a9ac833a1f0f517ee52b42b0552d48ab6599a91dd6b90b176e781b22ecbb9af8f3ead77e3c12b3db9a1a5f34a524bd795a417e9b59563cd7532cb1cca74d09a865aca3dd4beb8c9eb8db13cc719ff296e36959fa2a3a6c0350f3bd538a31a6e9b6a695e705bed53a31fa74c7f3c8d1acc1f147247a4f77eee7468ecb2b887a6aae7239abffe1f11daedc6bedb0d29b02ce0f159b6cb6bff35caebb3b8ccbf34da51340b52158c6f3201aca041844f8ef4ad1a7c98bf030dead079d7788887f3dcdc54cb541d8ee0c003548a80496b1f0ac490a67bc77167e33b3520d72522ec8e4ffe52ac10dd5e032325b001a9eec751aac81ee6a0e049ac563c4f506d51a576d7be1e74f6cf68952a38111ae72a68b4c4c0f9f1560adc7b7baf758ee88c8279f243075f5ceb9297ea922561a6beb0e52ab9a9ce8e9b7a57f16dab91b322f64d85e0a8acf765cacd88c30678cf18084ca197dc1387fbec6babea18913b2231ffe7aa21a4a34397e119188787a30ebd297e14277513204e33e90b269e7eba85ba966b18238c75d52097c1d48af4c8e1743c6e6b081f5f447f53558dcdd680f75518052394085477d60bbcb594bd070bb71c9386940326a169c28700aa4f5c542fb94dbed7bc61f7aedff181a2e1ab023ff12fb336e8c58ef4d56772f27ffbc55742dc75468957a231ec985200f7a60d761d6da47d839879726c614f158aafed497adef3d7a1222b1b824b727c6e54cf8e1fbe46fcdd77064fd658e52e9cf443fbd14b2986bce009e24d237e014cfb6a5761a1e0080aa72002ae131603a0135cb1effe48c8a10295466427fab7486ba534c028685ac8b7b48b4a50d94c7860835bf032f945cf404916d0cd37b5cc9c6f884ffb172d3ace5e14b4b8a2f96b8e388ecb7146dc0df9d1302309cdb80852d2eecba200907c0349946e65e96a0d891b45c258c3764ad128d782e24efcaa17e0965e498ff4934250656687c480fb3781410f413d887af110558bf3b259b5df37ce4a461c1e39adaf6274df6b1bdd4ee9fa648685a651141c2183af1072eb07321c1f42ed0543516cb6de59cd2e0596ddc38b4e3564dd1374ad524e55b8aace9d2492059956c8dc368fbf1793f9ee151bf2faea8d1c5f28ef3e10a6344a94dc984487af81888f13b60a837021525cb43a01d8f829d8df5b0e5fac99ec6eb96ba8e570888a1425151d161ad5928181f5e09a6f7f42fbfb9f6546f5d9bca80e878eeafd2036182d7168a2f8dbe51795e5bfb31949a918c5bd1d3590c7d60f47460b885cda55453674758acea4b0e995c415813dde967607344fa34fbb4643c2ecb5d6ff57dc351b6fbddb7b407e7c7d514238aee6ac850530ad777ba128e85990b48d3c05f23108f7c52510a8ebc3e9ce571156718073b48b243eb31197d9269a376ae8a589489762e458c8aa18d8cda2b46c751bad683342a9de61b652082c90e55808b4deecd8af57812dfd3b6d5161df9b1b1528f85917aa94870b9ef240c2bd8e754b13dec4a459213e73cc8e8d2da5391317f9cc5bdc36ebc6103be70776db4d5d0fab7782e8c93dbcb49c7b0168d41f7086b52e2108025cb65268159a6148118e1fd8ba3682bc7869721e3ee5684853b7302c7251f96624b61eedbc0fd883f5f56174ba89feeaf939287e3948b673053ef1b18eb80f08f07acc39a016fa18be82df08a6873d0ecdde0d3071f56caf6d4df1fd7c5315f0e649e43d8fa00dcec65f8d92aa79f635a457e4d64a5f66e1d28447b3011a6b4d501a2f9684c4c907163fffd0d1878fcffd2d6cf2996a7848452974bb5f683b6727265f0dd35cb89f79f5c2c432e6f9b9057cdb4e99ab0e6261e13bdaa4ecbdbf0fed01a09f730f7ddb08003c9138caae82c7823933054a23c4c8a10e81305319b21f81e638b65ff7ae0d7003227cb37fd38f41fe9fc59ae377917cde9e7b9d7fefb1ba56747a0472af16cc68d645d8cdfbaa92e2326a94490367c6eae9a87c07884b732fe4561d62efed2882dd8b8cc499731f6ee848aadf1ad26930f713fc3ff8514748e2186d44da17f2735212b55b5bc332401b47d41218079514ca6920dddd3f76e42ba776dd4f54cdaffed66fa519ab9974bd06f9bd7e925c8b3098f7038a85858a91d69bade136d2dbfea8635e06d28f615636336b7db04834ddef66508e0ab0ba9ff9876dc1df0d0f95f4b8feb02ad283725e20d537be7951cd1abd99c4d9d220fca6864a4a8a0325afaa6cbbee40e517b957f497eb6d60cc0d7577f622f8cb87bb662ade5c1b1430f9ed9c12099417a3ce9f4948457790b64a606510a5acb3e02c41442f361827ceb2bd9831dba4851a4b4b945470435a469fc133f2ddac5fc77108a7419691a5191b6eb875ddc8b7c8f749d402f39fda8e4fe6ff21d2d98e1c2fec50acbed9bef8a4f53ad1ac9ea250fd15768b72844f38de9ace20fabde888f7859af7466ecd1cbf3bd6915e58cfb164aeec260e679f39fedeb42446341830b2ad49f218d68e33aa0900834e1e33024c3e4174b84ed2dc67406706d29a6c7a507f6bf387b0edbe24cbae078ee70a19f9e181ae185e5663b7a66f989177fe7c6c3bb717886c0ce12a7e686bea58d2866d73c618497c6fcf1164500d3fff10f6f8dac5fdc022ed65a0abe5938a43e2fc6a0475417b9cd2486c137bf8b1067d4411de25af0acf65654d9dc04e49f4681449b000e660702231139fd39284cb4eb07bb90fde332d5ae5722388053dcda9ff0c1b801e771fc7fdb10b07408fdf35b5fa3e9d42bc5493310028093a509eeab9aa7f499ce343f48f3c6e673f355dd43eeaae2dfd42502fd721fb5e7ae10d0fa27b049c78ab47a33fb31261e72bf79f099085880fd79dcbb6589a84602c3b572139d9347ed3a50e978721ac527a82e00d760af117432cf49142094075b955f51ab166e7fb6001f9ff053fe0eb11f69cdc06a490991397ed8ae72e760e6cd9cb5cab50fa9cb2a1f3fbac996261a51384857fb9876cc5e0f5ae8ccb16f68b0dcba875163076fac6c830f70368331df663fe4d229552863b471b0c08385bed10a4ee0fd2a97cc395ad76fc49e42c8a3fa67fe7911434b5508380fb9c3870c4aabd1ab0f032d98cc621b903172f2cb051875f195a28fc02e65ac8ee6e091a37c748ad6308a92d559200ecb99717ad72dcb8f3675645202a0c8fea257ea452935613838f97708b45804f80ab8e6df1d6cc99f14a0c313b24c166642d70faca69b72e06f888d7db3180f201ac6298bbda82eb68afa24d80eac12a364f93a8b0237af6703121a77bf69f23e5d245a0b6d9649c3d10a4deea734e78ecf4fa4e362bde43a70e704919b7f0e060697e531c4532000bf731e421b19a8e0045526093093a3bacc70c5ae9078c720e4fe400e8f92e8fcdf487e3f16da383ea7e0add49d924daf8a5ac87b1bd11f6f6da7a89320265218a5bddf86d8c70f6378c55b955fa71f95c359617267075a7f4802fa5f188671b5de4fe53673f96bca46d6b5b5ba0cb4afd109b4fb796daf0da97c112c3b1d9578ba72357435b28e1324841047187700d639839c1bb441a582552a869aa38b5f013fb56d6d81dbf3e4261d75582185a92eeda6d755e739371baa79f16d70571c81eed1a76bb46e1f5bd534fe0a8f7f718ee6841b97832ee4d96c3b581b29b0e4fbcc398936df22b92b6306cace0030c8d81f2e2424674e093fad9f37c782b4857234524a8ad7b074047c42db8c1927ccb414a4fed77e5d69bbf12075b33b3f2befc1953461552c250435461fa0ce8a3d1f14ed8e9824c825d89e28b6ae691fcdbdd06bb4eaaae8d1582f97cf2002af73ddfb9d3320a6137b4cbc17097395976e3af0ed6c8f2a0e1ee2d1d4d3eb63dfe6416ec308ca7f83a10c2e1e87ac3e1251ce1d8e15a2d9f20758d7c049c8172a14d45736156c9afbc14aaf84290ebcf7cf913b007beeb55c1421ff934d6eca2998a158824ed326fbfa42eceba2dab9bc8ee3383d5c5dbdf9322ad53086fb98a8f19b2f197cb1175166f16c0ae683e5b21f09eb0cd885586e45088f30c52188c24bbf2bb463d64e7644f1c2f86c1def2b5ecad07b9911000cf645e959517c3789da76ab1d4029a1edec120d9a35618949b6a745e7e94a91b82a30577108bd88127d7cad6d2da02ba5ba5eb19fa0afd8eeee50c8fa6c71df2a200dcab7dbb95019e984b5ad018a317b3bc9e89cd158d3860966d7a58b63c72978b0596d240b18378561e84675f457f0137facdac23f61c84ac05cecde5ab661351c5c1c67e61ac82a14d8695c8d28738ba0b13c2c9921f7cfd645f3c92e15a25ac22f7e13b202dc8fdff40acff005c5cc5aa6ac21492994295ec7803a1766e9569648e87b6708fef2b36539e96d79d771013d82e65d99f1b6de102a287de3446e9b1975646a952d3155023071accdb9fe233f383284ef8f0de884ccbefb523e173530d21e8aed4999234187e1169122a3e3a0505437696f7d344517e00b1bd3f0339596fedfdfd5ac7a14c3cafb1c2019f4827ef1b8c6240a8bc7c301c64b86975b6205eccad37751b24bc4ccf4ff8c2631cac50341f4f8c3202c7edb612235aa2b0867c3d464bfec89f815ed8c31db5a81bf9b2b9a56c1a43bf5445f80da6f75c7bd9fdec8e961d1dbbedd81b3d136c85bed08b4dc39113e1d31d54a21ddad5e50b912321f2d0ab4fcbf4cf98ebf8e56f194d445a8e31be2a3bdd8cc08d33c22b8bd3682f25205cddcb65f6849117cf6875a38ee578304dc4373cf3a4991bc6532a4899ef8d4b13ff5a2d2f5f1e1bf9810052f9603651be9dc47c24cda0d8e984205c55e85eeb6f93e11c0cc6d703b8534649cb01479846288d928bcbee639fd31475e87f2fc7ca8472f75b85f93afce77f207b1edeab82b388ac932385918c35f59587a23f36a8e4bc078558852fd49d3dfbae3964bb09b4e0f13e77db6d05071bcb37db6d09cfd5c9edfb334a811cc2e8a03653aaf7470f5b160c94bb75d4a685328046d911ef2c19a5604ed4a03ac2c5bff99de3d47ea968d2e8fe06167fb00f2686efeb207034c03211f5861b20a11a5bab1886f1edaeb1725cd3c93b461a72cdc123a74890c859617a637fa777cafcb111b43261e420649aa5092c3e5cb434855737980b61fa563f787b121f72e02df3adc408a25885b5aae36c19a8c398f482e2e9636cf31b42265722871a7ce0fa90b476fb38426e488734acbd43c192cc7204b126630b8717396aa606abd5e7e20dcd459e553e880fabc44407d64e3da48a1c870d28152615f90edcbad69cf8ef26f1bbff9171522d8c3ffe7ca091815d38d2b0300f80815f7ce2d4898bb818cd48c923eda8a014156adfcb6edd8762819e1c45a2e922ddba5f65924f2566b4cee405b7f027ba4a0c3306bf1bab6697d38684faa1e93e84052de79976ce0f81067c4fb2725b57fbb4a37ff54bd4c80bd6d7101bb4d9f2ea32af07fabbbefd5c3a49a5929ebcd472470900b265e5c2b95206e09a584139932ff23f5e0493c17cf7f2eb8fcdd98f4b71c3ccf654c9f68186d476aea8aa1eea5d1861ab39c1d87271341f3b462350ee7500d18e6f3b9ece5e3fafaa7fd738a4d964566855bad3e384ecf02af77c68cf1893d5d76e9106ed13943b043e5349b3abc4f343eb10b836a2117159c000e5393ade6aaf943812ae30c843981ee7eda69445daa1349ca291f0df8e288761f0ca5fad8ad858b414ea9568945611d63bc9a859aa20f4eb272c029df5861a1aa49657d2e96f552cc5bc19b7e54217bd6264217df9845da190bfbb4c4a6f0fda173c771796968313dad55bc952b928aeeb64ce9581b338cd9297885803c189db60d9acabb0084a641e9809e1613dec91dff30a25741576cc0cc0abb710adab387564707b04d6d02ffffc1b4ed1a354e78c89b5d40f000058752e706f615bb0bb2a6c675ad892f68b8a8974dce9f598ef5ba3fc7bec520a169be8a2dd2438181cf6025a34ba0146ea5ada320539f212f9136557c6c5aa2a54faf1dd925e0b0b63d8394329e06c6c34b075b565124c4db65d363b3b27e03a148ea48f95ecfdcba26a72dded9dbd134d2cbb091a633a43b9566a91e4a4c536fe3bba66ae34886b001cf128fea3163de4cd258a3eed73e910741f4d7edb796377b64c004cc5d22b3e1d2b1a479c59599259a616712eb2d377d16ba7cac9687298956f62c6c7c26b92e0d247440fb31e39e018094a61616d83cf23918586a879862cda3eec4c90b5d7dded4900d869b88a8dc850fc82e6c32e52f05bd6c06f4541d7d8448cf2802c8bcc023bcd81d2ae16b6572ffb39e2187b48c9e3ac6caf8f3bbb27c39b77aa309296f3ecd3bbe1398df8aa205ce73ae896e2ae7eb2990348cbedcf4cc9765e28c2d4f7ee78f7c946173f1a233b9caa3c0bd1da8c39d90a2103da1f56c98d17dc539775c809f0271ea1b6da6e40a367a2f8ad85a59e52a85729bd1d39cec35e013e17f1b39bf62c5ba7fd2f761aed603bc1f229adc9409fe5f2e1235b82d3241d4a7063dc38a56fadc10d6d5d3a3f2e3b879befbfd463d0cd56f880a4328114e0f735b79ef766211f940884725d0b33961b644c2ad5f460c640f77878464355d9d136ede81caf0c438799104c57745ed62523a157eac7de4d0ec942f9ec6b157243c54c6f52417bf8ca59d29d3922563f8159be364550445a9d789d7f0e3e28a2ed040ba345022182db9f81a2cb5eb953489bf5a5f3e7b07791fc97fd0d606f1278a089058579ec7ddd76f5052eb63412ba3eda58e4c46001db8feddb99debb4341c8807cd7a730acc57fc6078d0e0d5d028a934981d2004a437c3886ce7b3320f59a5ef9a54e9d402cf8e1318fa8329239b638d3a89fbbb78b58785435132ee57f76e27af1429932e696938539ad338e1539cca63a9d4228bfcb809a748eaa1154288337fff7f61a4aad5141eabdbd40674d398ca009f7f5aa31b0396b5ec02bc52d6d0bd8a3ca09c3399aeafe1fc130cadbf33fd52965b807db788017787b7c90a18d6fa838011f6711b714836730b4f26d28b773837fea05d704184af4e3ddd4237afb1d0009972adc3adb1a41aa2c461eadd5173267c1f00fa61fde7ea7a7407e46a7db6748018dac703f5552e6fa621077e8bcefd0c192fa9d5f7ae3d661e0f17862dadecf066ce55ae4f2f0eb6768907e2fcb765c1b2b10004ae4f4ba47e6d4ce12c278ed447fcbbd1e6b5c20c4a3176e5b0b2dfe2babc0409e66d945e7771668e5867b22b83560615b6fd75e70a275bc19bf585a6aff0d17db463e4293e5dfcdb92ae17e7d71dc168fb83a53981e6f4da6bfd611fd44734d5605885ffb9f9b4fd07d386f9de81bf935885f6a6e8013e9713fcd29bb61109387070e460a37360edc628a6992721d9df1ed2b8c3ebf7dd827a9a7ef4b28cddd1904be48db0539d73bed8f7464a45e8412d89360519ce36c5ebf4174da26dd3064ec5f2d50870a86fc40053c8c92492f6915ccbb34697c69bda0f4153161784708c981b2e0aeb939fc8e67483d4b0bf497bafbbc9d1ac2a9b468a9cfb42d9f920a3150ef4213b7d734a935274fa1b97501e0a5a84142a2d6ad8d09439f3133184971686053fb916c516fc60429cb40e9f765e2cc6eaced6c4306196f16174c7a24bd5c34a415b86ee7caff5acd895edbf1a0e3205b30adbda573d31e525747a6c903c3c68332791020d4694df539b62e531ddfc5471e08bd60aadbe9c82ff831cf07e5343f36734cb39438b6c3606aa40b4fa694ca4a0e7c34dbb2486cc32ce5e91b3e8d8da3e2ec10604b707a12f7488980558d03f014963a608a193f05a89103d8b2940327c1d59e9a080bfe1cb98a4a33a2d57ea10a17d4844110571f6f2888ee1539e8fcdf7d82de7e3ee06e8ea0706c327ecd376cd99b8863fa5a018e2ceae52eb29320c6b7e4f5f03147f7aa5ff7586ebae0d6ae7bca04540c899e1e34e13429afb25749c05d7a1254e2b34bd61e27c3e1ed084696318cc97b97487e67aed99c957bc5936b3679fd296b010e4cb5b232e44c56f5f44895d2d38fec6704eaa7dfaed44fa99838b1552cca76bb99d2fa4e7042a2fe08a03e9057ad54082aea31c1607d087f28e4ae0511477f606f6a30298438c9da78da61645baeeab4467cc25bbfd6ee1290b99036bd42f74a39414a7bcb1425bc28d5c5bfac5d1c2d5a748cc17328f58d96b043e499848dfec3f8599891091ab7f1000b973cd8a416a2d4b99af1c5bea75f1859a3d641514770d623371ee03d969dc64e8b11dcd51b113efc8e03fd9b354e236ef93a376680975537e5030dfc2393494133beb82a1f9a39738057a46dbdd76929db873dd43a029e14c5593ba40f1c8f2f34505a5fb72991a7468c3ac3c5b7f7e1a86ac88fb41bed85adfaaa79032ca51681ac1adc7e39d297d57146606707d9818687d52ad8ce3328703734d71d156171692b3313384a55cbf6fd37673c87bc217cde8ca1ccdb6ae17ad41904c48624f6e79a01f15fed28f931a02fbc13581c1536bb20a83dfd5d9e13952f038efd6bc1f0a2eb18600184e2034eb22e6163f11f1fa49ede21b798bbcb79b3853f8732923407e42dd0da6ba4f54cd6a9a8f2ac37f3e38148092f71685e17d80bf0b4399da63d770aff16fddc2d6bcd3a504b651a8d9e89d89ff8a3ecbfa85caa5e7bfaca58884049ea6c4a19c78f0a4d3838030673f192ee6e5a596cba8de8516bd2ade006fee134987987fc62d789a5509e8d9dcb32795dc8a89dde094ca582d03e4e0b5ff6e4638a1044bbf1e96de8de74eb9108b93bec28b3544ae05e920d24a7f4e513e155093a6be3aa9679aa0e66fa14500ff21afea38d9f45889b9db3d9284e1ed3020a1bd44a8bc2e9c4ef2e8fa39acceeb3a930a745f2205077fb6d4243c0002f501c49ab0668dbe20f269d1d2bcff22837b5266ac6ea474a29ea370e2265ec4af07aa64e4d1260420109b5f0444aa7a20fff23f5246ca3258000252d20f356660ba7f8004c5b144584d917ece67c790ae398eddfa029bf5c6c441385334cf0c28823b1359d84038afc031b78b3a77edcaa822ed086ba9b932371bfadf4e1c5ab8fd767a7f341421bf499bb4226432c7f44a2c84fdbf5fcbbdfa4d2a93b021e50184e4b1c18e29ad5f8157c0b97ef0ce4b41799963c8c0a89e701c00b002a4afba380526891024cb62cd7bb51a28df71d9d8bc6c6bc46e69dc1c3b900f8f8535b931b4f5a04077cdad1da64ee1e28f92f71eb8c5cfd9efcac8f14e0db01ceb9cae5434dab631138890d49e102927a04e9852fe7701949adbc3ac3ceb34bcc9f0ae8d8af8d673913accb33e892fde17afbc5de01ed6ef3c99d0549a92ac8237046c0a9fb62a124668bd4eacf651d292a7fcb56b3567c5a0fc8848984b74f0b606d269df49ce945249e88a08b91c9d41138a273c913148cfa671ffba9449325767395e067c798778505ec0178c0f6aaccb148ac6c777c50f820a55b87b5457d04cfbf983ab1438c240270d626279372607613298c2ef7dc6fb29b116d9f78141e1f3754dd13b0f3efb974911dfb6099a2a184164f9768a42c30c15f2853de682aa5b9d943b0512525eaadf0da3542baa5c150152f2cde9db17513fa87d312c17d7b26e5d82e1579a59676b5cb740ddf75757adcc02002b826539d03d2ba501dbd0f84e21fae47ff8cb2f47c23fd017d73d22bcbcb696e998f7322135a0ae94aa694ffdd93a35f0f8fc91405db95aeee4d582d6f470791542a01666f0cdf1c8862073fde934079e5586d28d734a4c5b240c14b943637ee4b776e03b12e70663f9b7d7fe308c6b82c973d2a594bb8f2d5c22ec190676d11d1a5c7d48ed48b14b03161e9edff23a32de9c47cc50bc94f90d6f36267a3238b7c919426b532f71e83519885b33e84c0d4f763187a27e3f6937cf3c2816488a08d2286dbf73849ff8d765f089ac79d642394e27b48a4b4bfb692c9dc1f0dac545df2ec0d17ff93243791866b597499ff98a1ca69ea838229486a392b09a48422e1c85f5fbfbbb477939045fd0191ca9249874ce52773d251a1f594f66fea54fb4433112e2b7300a1842107436fd08b0d6ab1dee3141b9c55b9ec8ff47bff8e3978b0bea63ed02c49a2c039ee209a0fa6dcdf1af91752411d2f33ed1605bedfab29023d6882418969fe840888e2549f454d8081d0d1e0abcf0011f1d62ad1b604d9cb979817e5c1c722b237ee85edca1c3718d520d59a3e55ff0462589a33b1b9ccff53bf5b76b14c6314a50d0555cbd476e5d13314d96905627b9a9ae19f354ac5630d182a68be1e5d354e4f09b1bf4b847b5dfe13a71c9db080ae296aefca67f208f739d2370c2d105b7ad2c9d7947753885cc06f06f96297f4c2ec1807069db0df4bf432e28dbd740a53fa0c1b0c46cd4b1c7f0e201ab2ddc1860b682ed8883ac4bfdc8e08e174defa80e590fc48530229abfbf52838344a1465a5affa8283656ec97aad77ff20bad7cc81ab665cac85cd8c34736d799935c7e90477b764576755f6b733db929f832c3e5e3cfcfb2d0a374925474b64468c1817a6008d67b7beb0e61c4e122ddc025bd403214727ffd47781b5485896ad623de7b4ad3841863df50d59541874f2907d5c35b24aeafcbd8bb3e8f7cde1f2632472e8c75677cc3ef612ed1446f2aeff21fa376506f3879575546eab248928e69b552a98b749b70f7b44ee3cd3a9687dee533a3822e9195737598e66a89ea1119361b3b8583a1a462425b89ba46c6da6cf6b9f9fdaaa8e78822ac82d9df6b84ae434eb2f2eae4a7db42e15afa32b75c8a6d381de413e988c0faa53f798f242571e543626671589c91aa55b29fe695c3105b15a2e130f71e8dfdce0a0b2f9cd2030b8139778e00b5aaa35157c81f778e8e6f2f639db973818bbb43b01fa42c0bb917ac613012a670c9163c079e1d36b721fd6af97f3921b939d5a22ec065e4394b92ed3a311d43bb68aec89dd03d3a6f85a0a5f074ad354160075386a1d05b8198a67c0b4ffb032648e639ba80be99f481be9bf6ebcbee6cc773bfb3b49a0a79ce1956a7219054d8eb14fc3a20bf7fbf4f3ba4bf0e15499ebf4c6b3e7b5d01f4bd29627f6ca7724d85a789c8b99209bdded0b07623d07018c8af148688655d4e97967bdfd1da527074215065227bf18cbc227ae1c7b2c61c739fb580aa8a9c5e9bc85665fe536871c7c11b3c1c200b547dd53ef66c6a42c975a9ae8a06e78c3512f1b37106b98231f622f1e552a3e0c9f63cd1ef5cb25c6bcbe03643d8df3591e19357227747ee918492e6e7801832b64078d3ff843b7d7eff4d3cd3d1f1083e242345ef85298b83f65415615dd5e9383f1b956cf2c9cb4bfff01bc695dbc21509ca3ad1a824c9d04a9a3f9c0e0df572f3573a029817c163cbc5692af10ca0219598097a73e3255188d9627fd90cd397a4e097fb30f9377567d4faf2821f75d91be307e0d6a39646939cb6805eff608c4b240f42c8b070e906087975fe3e3ea7887f504dbfb8663345d956f04388b5d873a09971a43766d928220363d16f519b5bb4ba20600897a3af7d33723fb17cd725a4ea343962c682be445eb986c26c49fd6673c0e08ca4f38a4fa28b35150b3f83b74b1b3f148be45d4db214e78ff79de0d774933f34cdf6595a46abb423fc65c94f1743d9f0638cfc18d34b93fd45cd75f75cb9a8e2f7dd77d3d92a264bab18cf2c131e66e22b1d25a6cdbf6018473f704cc316625ed5f1d6cd58b00c778ba06fe058dca18dee0b6db88bfcf8d78f52149df7b0cd7fe9e4455df42dcd7b8dbf9b6bb4ee19632745630968f3a2f356fa801ff657c268a98588ff66500bfdc16bf8fde84ebe9134e16871598c3935fe5f02335813cde5183cc2f9a417fbb24d14bc76bf9a7d5ac20d95978a3316ca8294986d596be68ae7ba657d83bd7d062ee2b19a0f5c594c9300f09a615ae8d2c59f5a1d6b563f72515881b4f9e239ade17e4a8c66584b9e2429789054db572a4c4d6589c6c5833cfcdb51c13baa20757824e4b5ec51927b47e73a7bbf99f8f75887ef6a5af42ec4c4826a1c92db6d87eb47935763dc5cdbb5bcfb3bfe7795fa01f6e18adcc4a76b3e490b4daa31089e910dbcf5136707a36ca4356d27ec80a98c3d6c8c4954985f74a920afcb2e5c7e8e9d687eff17b435947f78ef267357ccd1c6b6824e159d0b4c50b30065706a497b86cba528ab0d4e2a272eca1a28be2402d923adb38ad1aa96492ba43ca77ac26b585ec593cd359946aa0211016500d3ff117bf84f9d3e2ddb312926fbc7e7d7cb93829ac7899cb814ff1673a94318949cf13f6e861aece56a4c05b58fb799af53cc4d0b8451925c8def919583233e3b95593323a47a02548847105aa1818b6feae02963e673c1d0380127cc662718586d1286bfad2f01178ce4577b985e94a8111ff282703a739c92880b708df4af761b1f188cdac027d691d9660e9ee2fa096486090877223d26a9fedf31017641a936491f28a18dc5139e06cf0af70e931eeba2998dbe8279f18ec7e24fd0ccd1be316cded80cfb22f91d48b3d3e25ea99c8d6e3e1d86c420f1ec33c90e568f6908ef6a7a2c9e19b87df1a5abc419c1c545128a335e83aa78d74890638baf7f71112281b2919748d06d6221d5505a019ec08d827e4da47dd312739e961e16de86a4c0cc97a9550962fa26f868c784a5300e7023a55f21aa2c93d58e9c024b40fdfd7887878468f957677bf40460af6ba1be937eb9aefa06c19ce97aec0908466d8df50e6e38ba30d9b288e3c60bc94076afbf39ad98dd9d9630f6a2ec44d02f8eb7d4f5efbb67d22e780c2af946dcbaed0f4ac2c583915a8a2fa9edffb300f2628abe6dd2c1c295b0efbf246babde3a514269ceafaf4154d9bd7135b59a32876e98d3e4a3e5d90169a672de07e723429170aed1d0ccc72d4bdeba6265160d8f66d973b86fd77934d0e50e2c92240e7c96808753089bf952eed170753211b43eaaf31b17d6264b29a2ac30a03a5f9c28f0c383aa0a403b72e21dc4a8f71de3beccc01bdd77ec78c8006d8727a74a8be55d05dbc62673df287b8349611dc3606af113880ee81592b7a4397a8f7c710fab908cd5dcdfd62bca7516d7cde1061bef5f8f371ede3d3d6eaffda2a6903c2aaaaf5896fbe96876f6f916eacc98bc7d8290d84281183a559655ed562543e0b3a48ed0957c22d821bcd682035cc7f04c5f4f64a86c0e7dad4fba484ae059e15f59adad3b8b873495674b6a0d6c31c5f425e419725813493409779a22e2d104cb764fee9e5d6ad8449181f390c25237dc7177489049c4aa694285c7a204e86d32e352740840aa5f088a79d804d569658c5e6d3099cb2149d60368f2b0a91a61c397c9196638619a80b3a0d838bd853817b42521dbbef402a5e15730bae313ac1891f5e323fb6b7fd994b18c57152dcff0a5889b094d30c2afeeb38b82fcb8df2c80ea57161ae160ced7fb65ce8197602f3224233568770b43e56d503a98594f2bb804b74a4995ef65d238e894615723c5963577ee53a4842fa45cc40a2ab9a6e5fcbd45bfe7d51fcfe97ae4340d5e2734ff66256d132fb8d61130f2da8fe8160b13915fbb868992cd99383dd5a0070821ca6bb477a21415738f5e3c911fb250d8f003b7c0100759a6c989de99e830ae336d5c1c4f8a0ef384b59bcd94e3cfbcaabc2ef45f0198c4c1a2e7aa473b79ee20b49e580c93ea02e3fd7cac30c300e930ce64b0ea2f0c8591343036d1cf631d028a596be6b220e39949a0f0cc06f8d6f251fce6a765a4816b7e6e7ba4e3d3c21595d9cf3b80c92fd3a448b593502e648d79bf947fe6a5e0cab022bfe54b6c5cbabc97104f440f5f2d78a11bd3c48bea059c4aa20db30ca421e66cc56f9b4a5cfa02f9dd6f6cce091afd27495239d0d88cb82128733fb65a0cc40808c2fce1533e67b3fb0d16fa3d9022acaa4e799c83afeadd6b9a75b861a3c34a322106a6cc54fa81d0f71f261df9e4f88286a509775ebba7d76332bfceba1d2f2d043f858e8782f3aad790662eab4f28f377f2e2f41d31487b67704590556abf0abe2d7f5f39cea03c9ae3b8d56cedbe4aca5474f00e8c9ec03a7b15b977679dbe5a2296e0a73ab7f6fee26de36957afd39cbce8508f1b231175d25463eb255672d0d54059a72c620e6f5b71f83e7c056c84a49fad6ebc3fbaf5d1bc1f283b2edbf0a528c9a0b5f6c4c15d433129accad80040f9e101f8ad91e59a7c65e99f1be55578806912f632563c775b9c38004580c49ed66ed44e95409e5b568ddb5dc0642423199acf29794e88aa7100afe6681baff53240c878107ed6f3a900f21ac57cc2004d7e1edb049b172877c479586c39313228b3ebfb214e579663652f3cbf3a9ded955328c9973853995c242ffba3a16f1037af79d35fa5fa2e4d87bdd7c3ce79113bbe10a668e437d9261c478e8e4727b113de686c12d597e8135d8cdd8ca990fb704b46bdf09e42c82308161bc8a83ae0d3d1db437f8ad50626ae3da9b8e92b334cd9223eea58ca1c4326299c4ec4b91ffd65e658e46b934834ffaef715759f6a7f25414ba013fff882cfb76fc8885b9cb81f6af047a0e42b7a3a58653a03fdd020d1e407952b2137e376c5aaa6387991dc684c0e0e3a12285383e1615b58ed789a4a716d111e117b5f17d96daa2bfbbc2863e73e3899b06352b55cd210601383290525822659d4ebb4b70579f3741274c820a0a4155512cb6f987af2b6849e5bf44ea41d2be1e7b04e5e426bd23ceb6f041bdcb5995a2a65e4682cc48e694e3b76d3c2048a090e86018ebbe4e82ab987019db6c45dee4d96ad6681bcc28832e5ba562a9d2395d0db047586a95dd8d3e50a1e7a6d48d7ee935baf2be602490d301e142205c0f5b7920bb931f16bd1da65d590e1255338631f98d13c3602da9e14d50c6d052399dfaf4247993fe3e60d42009a7ba4282b27ffa91f6e313bc4f8b80601b098ae18a71387458c88f56ae1a32f029bb3fbf4089b22802a1662555df33902d83ef4d051f340ea41b87ff4c08b91f9b8cb3637c415fe59f1eb11b001b08b4972e108076e556078bf19ae4e74c19fec581e74f9bd78d689863761df6401b70ab80ef208c2d1da82f1b215031cc12e9b19bff35a8fc702efbe03bd77a28be12d52f97b7bcc59632ea20ddf1284414de1d214520ccbf5fd4f1ce860238efb2990f708da26f6aff4ee9d98fe9209121339a30bac3dd42249efb327320760603e713b502d2dab3c0bc5da74ce624ba00cae170783f174f2bcb719699a2a23fd617a942970b0129bdb5b5325f790e2849b63e8124ee450adf7d826d700ab96bd5bffdf9169d55f691c5c060b15ab84af27f74cd054a93ae6f3db3f7b956096fa66e0e2cb1004670e71fee82da107fe39ab334b8a2b13f7254abc0ee9814bbd501255e4c589381e3186eb6319351f965ec4237d8d4b343b6d465e47fc7013ff930ca891ee7fba822a318502231cc0bd6609ef2278d2f5733616e385d69ed364a5527ba140690e1fc948d575418e744fa8e638b0c2a081cd583b8cbd0f27141e99453be649b1f103643d0837eb9a52d999ca0e64f5545c8ae93bd39f69a10aa18311b1a73c90fd5ae28a207f9dc6ee5f090d8deb177c77e708f2b1f7e7037529a303fe45377ad308da1049e2357ee316efc1847ab8dfdf75432adbc1224ca452d54d0919dd2e09d0ac5bc77fe46124d928399ceca9c20d7a252eb6a81dffe8fb785596a74b7afe7119afb953394f9115cc3459086f7a64cbe31331173aff3a152e15b6889c28f2bac2d7a016c77a879b7e171e635c92eefd645ddc1669dd1e04aeb3c25cbcfac40ef55a61d585f9316bb5485e55cc47454f9b072019744cb5b6fee4f92a7f34c780b2c85feef1a3dc956d382f9f3276d9bdd5964ff89e307cf3bca9e8d36c661e400d7444e43b3b950366b548f9bb3f4441131175beeeb2f2402980acf542f5e04b53d3b581ab7946eceaf949f9cc64a84d6a61d2ca3eeb48d1276b7e808405ad9d161977d3f44e088fe8725a501f2c63f92687f792211b4eb596821336903f26f8fc8d706367e9e41eefaad206a73d71194c7e4fae731ebcf0c69b803fdf251fa97da93c6fcbce8c70b2879410a42397aee80ed9bd519dce5022ef377893b5318ee7067ef21959cee7747911c29df5c4d2df078da4033fb93449694d3c5a387f904aba0dbb40bd98868ae002fb5b8d1242dbe33553087a7b4fa1d8324436b4a0f38f0a834d02ef5233bbc17753675eb4464f0d5b7020226f21d61239e5cf4cdb738c6b3246a742b3e84f8a4bc327c1059dd242e1f91f9551f4966d18ba429e33252fcb24f98ed7fffac534f4b9fadab67f89a2230abb1771154dae87faead1cc6a43bf9470b1244404f4859c0d9dbc6e922b4ff129dee7558b20414d305d4f29603964b5e01aaaaf163c73baa4b03c65bfc1c300fd83bf1c1383085f80d1bd7215bf007d487e8d7f2886c07d07e5b929fc5cdcff78653184d576a82792c3467948135668aca4c24cd5aaee7961c82cea4fd3d6c5a271af986f3a9816cea952f24da215db229870c4fe40a988a68f6505517b26822d8f88d6c8562c90751df3b098accaf21a7992625de76d463bb16eac5c70ac400be68c37fd7ab8b76124109c8d21f6fa8cf3705d243bdaecd40376896b05fdd2c90e8bf95475c4ffd0894a41e2d3bb5e645ad9abc91ab07b3eb81e05bfd6e8b1c9a74d8c674b843d04605f81aad0b0561cce4717dddf8a7bf2a7059220300e9ca1ead42292e677c47eb4be12582b8893d03d7651a1b633efc2f23955240466fd021f9755a5ccfcf2c6c11020473c349589e2aa3700bfa890324e75bcecc0918d52e657824dd9e5f77aa5c89310d03ed97843eba8416c910c41090eeba8180c03343dbc6259d0e81f28c32a1d02bb5d1acd0);
INSERT INTO `images` (`id`, `image_name`, `image_type`, `image_size`, `image_data`) VALUES
(9, 'test.jpg', 'image/png', 13914, 0x5249464652360000574542505650382046360000f00a029d012a5203b3023f3994c35c322b2926a1b1ab42402709696eceb9481c3ec34d7fb5d7c199298eec7c3cf5bfa02f3ad189f415db71373d386b30bea34b4983c3ffefdfd23011277f709d5b7ef3b98674332d760305b6108750e0cd3cfc1f152278fbe144cf26585ad63b66eb59b6f93da867fbcaf17a06772ef7c2f536d76f750b9bc8bf2e3bda2171610aacdd3f0ee45fe5e05295db2b28bc414c87d882f9238c9378c06681f3ee85d8509728cd0fbab8537f2ea3387c901148c80e82cd8b5cd1463fbe516b247ee29e2f25f256bdece4645b35fae4c767345407dfe3eff1f7f8f4bf672ac3aa8f45f2d7f10ac3eefa31fef9d76425f263944fdd6f78037f826b1cb4192d3b5d95214010200dceee707b6448e4d603153cc01bf8fbfc7dfc40a6675a1b0c6b7a9a4b082af753b69ad799646ce695d22ee226247fb03380c83f07c3990174a8b1c96de78b80aa04e385ee88e18bc6600dfc7dfe3efe20532c4016b53a51438e18c83c5949655832641f8532fae1f3676628a25a81b37cc0415ad85399b256269ceab30261849bc7d555acfcc2a8825f3006fe3eec3b302fefb8f09bdcb99e1a1a5e1d38c8208f77c6d38a3b8a2581925a075df5adf7b1da20959946084403ab351ab2e99b0e3ea0f94a9296810c288e09a6862f3dc1764fee6416059be185be31904ae009199e68bde87bda15d013254f04533c7820e887481c049f06763fbcea806fe43ac72df1f8133d4ff90fbf9ee782a16f53690362e97f45f46a2a35a41ed42e6e52093e2d5dc2877205cb8450f77c603273fa02bb51c45b5b07dae2bf166bee0f576d93d981ab2192f4a31d1ee7818c83c86e621cec240d58be52087a2f0e28c5bb8eb21b2f5ba4658483ec450450ee15a05c80c279924bd34a34d7e22ed91f10762a104077340fdbeb64198c9078ee7864611071cd7b83b5afb3e3281195b108f6bd7dd3e5fe20d8df1c78e3ba091e9e856bd09f19effd87f592bdb0f05db91ed5801823d90e617657acf5ee07ecb51cf64da26e67e3cb5e340f609466a48c82f02ae6171d5577d0d3b5c61d3bddf77c3975232e7900cd6f9cddd4bd6ae680826de20b564bd5da6af2651fa587f68a373db75025dc610be1041d902a0673d2b145ce5dfd6fc44697041d1ce277b319a32e3488226e0fab7affa382ed195199c7c85b6179e30195ace5e505f0154488a4bc87e622e412f9ea5f1ef07ba5ad6ffd918084b6627abb1bb78ab83db2566d730c072d383932d81b9b1434bcfb756ad6a4e1397b881f015ff55efc3df4b82a5ed90ab870468a0de2edfca055f628a25777dcf09287067a289d0aa2142900955f9e53645ae16b38b7a79fba198037d8fd420267037c417742658b4dc38ae5a16ae7e2fe623757d95253d1102b7d4317b69997762f6e74226ecf4fc3127ce1addeef8d9b1178a4a256370a3d99c8f02d10d30890be11b2b297cc01bedca08de18d215c4110e4a02cc1aa10e630589d91d43b6944a318f0260830ceaf29a99b0675d4129eddf7d8477756d69b181dac56e2203b1996ed86cdf300818b803374f8409e5ea10fbbc6a1bd5cd2643ec5036e6e48761f0522c1f69e12b1bb73fe85b8f239c64ab264960c5bb231da31176125a4061b60256cb86c074c0730e51c734ad080a820c170dcea8eeef554bb8efcd9cdafb80380f581bf8fb92ac8ed3d346e244dc61ee6481b9c3be23511c08bd20a643ec511dc38fa538b3def18e52072c3909333651f8ba80f91aba418722a7580d55cb69f5e77cc1117ea29608010460763d49811f49731f7e837b1a6a17091e53ea8bc3a543284d3697e21d4ecd1eae7bbd0751fed8d0ed472fb11457640c0dd9047f8fd93036387db2abf3c3fdc3b11935ef0482282747259b1ff1ea119712c33ca10488b615489c30a8964f304588b72957fd27d9e6a050fa164198082aee39ebd6014711ea03eef8c641b8a5f1ca3498f44f63d1fff223a17f7c35ab90b8ff1021757f95945ddf7e54e53c2e54e7600de21e51210bcc319c902535a318876e596948f801f941e9e5f8d918aade997ed5d799fc469dd2aa9ab4738d3a14d73aa3fe27050503223c8f5fffec7bbe319038519dba89d0d1777584b69decf3f9ce30e69e08f873381be996e31904afdf7c627badcb561634a2f8f0d31c72406e18bf2a24dbcfd30a2cd4641e46799265df476c31f3f71eeff1f7f860e2bf147903e765a7c7b03b786415459fd192412049ea8bb96031109c2e22997cf3a9bfbd5512299e8452cbc5406ed4008b581bf8fb977485afcdbfffa8ea622a14010f17d1bc6c05ec85c825ec47291c5d22889afa1cb51a74fde44a494736c97bbe8f1e52e3bfff21940748b904be60053b2fc5d69323ecd8691f4acb24bbd28b6b3e499f772bd17272b28bbabc9adbc99e375b2c97aeec03c566ff9580865ef23e2f1813007c98416163aaa0068c8864823fc7dfe3d93a7dd2f8d1a49aad5f761c445648519b9b6ddb9517b0dc11577e64fd32e78ae1c97047ce9593f1e9dac4e07ec5670da24616baf53c5df57af900f47c94a31d1daf164b4cdf3006fe141d7c8e2a9f761853962b9b4d946fe87ed99efa4fead7532e2e9b0c8ff821d63031bf06b520d2e505ab34c680b2f7d035a83da3236d7d8756d6f04e8a9e77a391e802a0ddc717fc70e7e9792d05597e33afca505ec8f70dc1144a2f742230c5c9da8174f7bd9dbd6c0c0e72c39888ae845e88c496c21ae68e04b5fa3031840c347148246feb76341ebf42709504aed3ec103fa11b12c7e855909b2b373da91c3f5a0fa14a81499fde2064965dacddeb72579fad3487d8a25077486bcc44448fb558a2b45e70a365d3e1d0a63c86024f21c7fe07f2e1fc90c19f3c18fd6420a4442c7800e58836c6a809fd1b27fb342f1a3725e30d4aec18b6316d98eff1df4cf146aa7b6dbee9f1bfd2fd39f16e3dbbee0502e989c81e89a16edfcd3feb23fc7dfe3edeebb6ae358f54aefdc597d97b85f76d27247025447e424c22e898b6be918a9c178b744362c0ea0fe0a452f8d79fdfe147055adfc7dc49ea096fab8da758c8bead7202d3e64f77c632070f39ced5f99210f08e2dca7bdc30fb37604831f77545b25d0687e426540dd6a4b1f117f67c8298ed1d0ba66b7dd3d75bedfcf10233e590d18845febfc240ba213bebf817dd1eed5703a40dd1895b5f793a24a75961b938c9fbe3eff1f73c16afcbf0e6562899dd0db0d6c7ce5a7bca673211bf27687caaff13e75e8fc84b3bb3849e658471e3e3a62f6eb433621049d9b8b90e747fbb0f32b1904e370659185e834d190482da884f29afb5718c8256351c9ca0cee899ca15572f50bece01476c508d3cb97018301f3d3f6aeb13b60d3d4051bfa19db67290b6ca049c6c681d1be7a226f6257a51006a04eba440b9ba8d8d12c9fa8645eef8c73fba29d0eb193d64f0794caeffc7b4b02d1054918dfd533f1dfa72b28bbc2b78576564f003541fd4d29a44575eedc27877e222d0e8f16aabbe33a06733aab3a754b6844379b801efeb8bd51dfa138fb17d4fdfb083c2845031aa88186b5475e082745ec3b1f705ae663cdebe56a92410edd19a0b639b25bc20609150219c7487ffe412f5ca5fe10fc5e7e8f1db4be08c2266adfc4c883daffd5b035092901dc7a0ae31d1e04c19eb15e9c8196ffd19bf83ec02cbb300cea3d70216367acd7ef50db071d5b4c74cbaf7bbc0fa8557e58e295e7b3e7ee11293e62cb0f6d35945639633b0843d59657048fd71175d13b0fc457bc4ee7145d5adbe0138bccda1623ccbadfe182c77f94f6ee5b6cd0a70f7f21ec01f77ad4397293c7a06de9b919898ad4ad98643fcba632e46374876ccb3fc56358a275e067fe6f343a4271e9e40a80ef49fd130755e89028b1a43c84fdb39b00ccd555ee01c826a08672a25d2905a10605209a69af85fa1611cb7bfbf2c2cfa22cd2861ee90e6b53ff22e7f9e84df8b819802b77b2bda7bcbba8c81d474e1aeb9be20a873ec3346f607fe28ce9ea8fdd07ce729e916f197c20353a1bfc2d6d01a3de746fa5aa130df24b3292b2e9a3c06144932f5d40d8bf0688a71a34f55c2530c07ef9a2a2c78294a40d0085d2116a6fb32cef36b7c337beba24cfd4adf7c8b7ec7e40fe9a12f2b27f23b756c79446ed5c6a5e6cceb36a101bb72d955353247d379311315cb765f50ba0f66e2393b9b55fb66c1251988e23359385a5f9b804158fbba62e411202dc8156e27b0b1626f2e531c39aa73faf814cf73d1a9f0b216da60d193ff0c3c0edfffbd5cab6b9a10225c26e5f6bbeb862afd0fc13fa33f9caa5b6cd0f1229b02869c19447ca618a1571c38ff3b11d713f1051f2d4d54e47026dd00c3c0f72a4314f7bfaf0efb05f71c215301c4ae5cf9cb37cce5a6c1040bb419f305434930358b787d3764137a5dbe5f388cf15c04d363547f83e55f527e2384640d89ad188010a258e43282edcc04d23d71cb806fdc3806de1f309ae64ea843e03d28a5754055e0171bf76e75326633e4a3354d5b30ee4c09c51ade6a8e496d93d7e0bda5fbef7cc3d62cabb52b44b86bada36dbf36e497d742722d71def79c0f33f67489801a86c254048b3aa44bc8ad168e1580e69c44f8036145d758ca88bac91c215a2013969976162ba6b767781c8aa70f6c20bd7de1e1f1dd467caff9e3a73388d907f44c74735f35d738f6a5fb850640bf37b6dcac64b88a4cab14db76575ba25c07bae8490c0242a3956101eb67c6bda900114dbcdcfbe55f10f2c51b4e90e58583a12f1f8e15d12fcb521563aa09f94b0af85d3ac660e9472ac2b43e90c4e981ffd187b321938bc4f0551033fa9d8c1b0e9ec3aa09f879d26990fb10704e592916b3b4598d524ea68c6eedc9c9468dae66e7a7df1f9815edf09a32bdf3b8200c329dea93192d88ec7f0b0f3ace17bbe5032b9a7b8c7401dc1e03fc1c516ba968ac772cf976bd953134220e10d5ab735320efa2c7888a2d6501cdbc6d1a82213a873a5102fbcf53bd722ff8cfbbdcd4aaef82a3a0471150909bba8c4cd7cf99fc7dfe3eff1f7f88f5387a4ddd6855bd61088d469c5803a35f8a8965228d12643d961a14fa490ea70bd36298876688d8ed7dee4aaaeb5ffb07826a26d1cbcc66f5db6bd6d56afd629dbce749481f62616da29339932ce94b2db48bab7f2339d42bbc80b820f526dd40731c5bf6dd94be9be58791d180162770b4c87d8a2518c82572dec3cf346e40c79df10186877b586759291f965ce569b2afbf7a1fe822e820a965dc9ba6a41267c3057224da14c7fc50ec9c429b60f41d518ffb1c278f9f5892f4ecd842e7e1eb00ddf6eed580a0bc414c87d8a25049a8c4b56e70312a77116e62b866cff759a6502205f5e1e2d9d26b02470b1befd7a1169499130b82c0ee7005ab920dddec0c3319a092ccdc2634f5ad34774b50148c85e2cdeb0346bbde3717b7486b01d7e5da273f50b826356e82d6877fa20b94972fc054183f287d4ac2d617e0924bd44e769598303d575a7f0fc5baaca5fb880f1d83a535c7ed5718083de085a2e4861da8bc414c87d8a2518bf148a65a374ef07cd0b8c305c0522aa7e11fb5973d74944e91168d1fd1d5a7894a36e1b9b848963eec21652f22a303148cb66ab44a2c9772c7333a545b04e314447f4135c819e00c7b3373caef5a177e1f4ff8a69e7bb3bfbd0425ce65dea8bc414c87d8a2518c845e252215fdb809f5de31deb2507a30e413ee5f4876cba2330820a365ab6d9042dedca3ffb4239655416667ee783de4fa4efc0e8309347a073eefce1f73c8451cd1b5e056594fdf50708bc336ed6433f8a8460ed4483febe220600dfc7dfe3eff1f7f8fbfc7dfe3eff83dab038471b6a64022f105321f62894632097cc01bf8fb78000feeb3b3f917cecb71b245069ef682b0a25020422720094842e2e96b20fc42ac43418ffdf91bd8a5ac4d13674cc12367db26b069b53cec127262b4a5ff849d004e616aa725e4b091ad978444cc00cb5cdb175246deb42500aa245d009cd521071044cb9cf2551ac0816f1f97c0d6c483676b3d041c7c69d551345039891721fb644540970b35d49a19f9bb4bbaa8acbd6616d88fb6d2a4482640546bcc7f073e2ac7961414604d5a0900ea3d3c53cb6b52d4049ea517ac9fb8663f8e5757307ee413a4b4abe3b04acfb0521d2163856ab95705f840cbdc1e964c2cec8f63928650ec1853bff4e8f70fa367287695cccb1627f1eca4830cc8decc4f9d8e987d6600721ff09df0ea6a20b1a7c9726eadc0e04ce655d43b7a8a7f19c89aa12ed168c9e41a2f55e221b7ae1c0b867f90508b27c23f2a9bb68a715a2c909d483f6c0aea307f1d971ae51db0edd6331dd01f82cd4abbc911a5680db7562ce682163782b4efe510de59637e736f297eaed48b47bf39dbcace339837c246e1cc283bea1ebca939c81ef884010ff345a473112b54b52237b45d6a6c870a0cf4770aed037803420eb8f125152561197f2959c7360a30ff836376cbd68c91547ef8747951493a82461db259e600f71f5f29156109af2b21bf6f6d48cc31f7dcd6932f3af342b3f72e1cbf6ba5f926febbce019e518309bad15323789c64ad9353ad1443c3726757bd2949aebd52dcd161f401e657b62b650e6b28e69b520fa0227150d75769a5ab191fcdc2738784710b5a93b4c68bb91b58a1e2d081932c111dde2520b178f4415691c840cf1862d2d9ef1e4281c59afc73371624c6d8b84b58a15d2d5caa149bc4c3eb265c20e12ca3c88d464f455160385b96afa1e9939011535aa7f0f18d71943d6d9db562d77a4375040bcdc400c95033e6b383cd67b375da736d67620834a214086e76aa1a33ff1a62438a902c2cf6dc2e8a5d6f4b9980d4b6ad53a71263363500b55d1938f24fe7ef76c83738d2da9d42d6aa197583fe8a27bec767c32f1e0bb944ce25f7bef37cd85a2cc616954c35216680ba0c6c3ca9994251daa56c824092044a7853744a68383692963a1218538600c152dbd4f65303ead130349dcae450ae7c8c2c80fa3664789894d621ec668f518d99946bf3fcce6821eb20f2c4e47c6da7d138235fdb942725bdbf28bf89672e32b012d0c0ed208eb9b780554819a8c13c6dca5541f076b521b0f173b24e12f63f0c60428d5cb55d3a47d0178cf42c85b78d3726b4c1934fd5860ca5204ef0b3273cddcf0b71287d167cfe1bf095a873b88dd22b13efbe460292874c51b04e5970591c4dc08ee3deb04eb06bff5a49362b0c812e043d6974d05c4022bb32d778c4d9198c1f137ce70be9572f92674ad4bc63d16c458590d52e0d1ed856e2dd1bf09db1a2f3fecaf1947f782966438708d1f2d8cf6e09c6eb03602208ff407cf13a9ab498c2e3c4eadf35e38aa85677a5bb812483c90c684154279482a8c8a83699dbf396ddeca54a24837aff3de9a69054e9e929e6e51d319ed3ba07296a7473663866de0fce066b86018911165a1ce53f496b74ed5badac477f9aa2efcbfb36d2affcd114bf8f90b61105ecfb327c40e123a3fac741fb0c1359bfc8cf1c9e4c92897fb25d56ff1eebb24e79cf11384abd45a75153078dde7d074301d66ef677be9eaf55f4f2748843b10ab591bf0127157af4ea7f8fdc87280d484ee738a4f67905d8fd083a9e677ae633f4f782c721e43753e05ef9fd329ca743cbc4098c740e831372773ed3337d3cb713c9a45e223fd82c038e3e02f68dcd822138591d19c8259b9aa1720622b16429dc5d6326550efdebe4e87e6ea123bfe6bb49c8e95c2ad0fc123cc4fcb355cc31b3f7b09f911b71862ba1b29ede9b7818e3bf34818fb3c00160754730fa2c72e251f39f7dcede4220c20eed6ccffe3c5abc9d39e433a2a0acf7b93cfd0b9225ec2df216a2a6dc3e6588f25ec51549f07af95dd48413a83f2cc1302fd8ec4f224e3906138c5ca850f77f71e7da6b0a9c3457b7ca35d6b59a12de0affd31d52359340e71e13293aee7f7c70a24a5fa98a1d6f3fce2747f3ecbb067b4ff3dde30f8c93792f765b7ab6d2c61902982ed169e835683ca115275434b6dd478d28c8f67f5dd1ad03481296c3de9c6704dca64fe44ddeef8c91feb80bdeb908267a2e0d4d98319ab7d3b5bb68b962d12fe90f05fa88ddefc50cf615e10f92f0a8501facba1ecc38eb631512321cef27ea3a70ccb17e46b5d97c782c2932a7f95b8f3334b9cd16d8d239b3fd3eeff518f0002e88d8ce250d54a18ff230d91716261947725f752c14c0eddefa934ab9ffec4d29544286d056789d943f6243a7863af19071b4c5d8097dfbaf328be3b800b74c127f3e65339af5d85b5011942dfa6609bb1abc9100f8844da61e2fcf114aebc7003216d9734a802af58f1513a916ac7b16516efa827499d7523cd28ab5682956edbfe6b7e15e6f59a8ef3c2b517f2b2d0201272d8a3505d234ea267a10c00b6328e06fffc83d2b52d73d471f219aaffeccde69cc161014e9f95f9805ac90f3b77d9fd53984358807851b0bb1d5975f4814701154e2e652312960d1b313c267368815ca4478f6e1f964bfb58bfac4682eafa6d210d2c759aeb87c91d7ebf4d893dd71a759057e9e9cdba465ba93ae1fd057c6d737a61176efd4e7f3cddd952af9b715850fc4813f280426bb8a55c7c1ee8e2981daf9b38f2081fb14cd62235d30c7e6e62fbcd9d8e019127fa6d8350cf4339d517cb371a39d5bd41b640618ccde6bc5e0af5cc296560de8103c1655806cbcb99d5bf807cb9301c0f3440448e2b2e96f4bf5b9725dd17e3bc170b7c0ef408257296ad25b45925ea8096b1834f20929ca2b5c3b6492d11879d7dba37dd751c7beff2ef66ed3e8a824a4e793b7f0b42807bc36aed3ac187a37ace429cbe69fe41434c8189cf6652049409f1130aa199efa73c3def1e39f29c9e92f15dadb13ce438abe74dd34585c7ac53ccefe5eb6763131ab2e588c35ee370118ef13dd6db505a20cf2c72dbabe7a553f3bf88993d84e4a2a97e37864994f00d16dbe298e6ceb0b68df0f5c6ad4b5e76b22cbade9d707bf288df964fdc6506b9d35bb2bcdc41e6f65f37319f01ba37bc295692ed96dce1e2e50576aac3d6bb7d363c51736758ca68f8572595d0d89fb9986301e7135dd378b92c1071edc200769e14da397064459fbf89671cfec79c6b98b610a459870c4dc3c9241a03cc38fa927c0c76d511d44128f6484fea7a629434e1394ad003da6011eacdaaa0347c3220f6676ce07d787348ceeb4fdca6761de202c97992d5981dec4b0776e6dc0c0a2e1f5d9b04dcb051620430edb6e19a48013fb95cf4e169d74d50a200c8ddef23e3e881c1e148993c256ec2ceb8a10d7bcf9025091df5a83932bbd37608c85b2c4d2cbfee2a4511b1fa1ff28848b7a820d7f6f7712078f696779166df26e28aa6386dd5575e97706b5169adbf328b88bde84475ca2bb4ded2bd968448fed68bfe83dcc02b679148a4fbbe26a72b31d1cd7e2420c93a4f7a2c30b492333e0feae8c9b0417ff31261c490f4811076124aa74c3a0a406ae0aeb06b75538d2de65bcf183859b618d8f10f64dd367176246d073d5426dff48e513b3dd370ac29ac9e59de911508423a8caaa476ce378cf1486f1fa08664a5803e0f0e2f6c5de25bbe75c6c24514d7bd3ead2219356f14f83a33cb75a33ed360327494e87ada5c36657c9c69a8d507aeb7455d098a8cd8c6323419ecf92ec5b74a3149cc9ed1e234813625d73229d49513597fd340a9b32a2b9d43c209221507804cbb63245f7c9b7bfcc6783c5ff5ee534ba12fb5f8863684e8e5de2bbb4f4f19c03990695650afd54afd7a5d1146a7a574268be73c5713b39da0ae655838bad1d9923a01f2aff99eaaafbd0509a66a44725adfbc757cd8370f1551e0a858643c49c690d7f129cde43d3d9d6456798568a4ad8524839f2d2b9bb03755ab24181e72aefedef2f2e8e09a9eb194df1e576dc10afb7a40c5fcf5d1a77c609b3e37325bdb618809c7dc303d0f80578bcf825221f30fb0773771f6e416ba1d02fe2261c0c6c22590ebf11400d478b4ff9a281e0c3e80fd85c38792290d288a16aec757d981f035d461af05687eec2eac3bc7848ef2c0a01b812a9896364b596b6e26da5c32b29d955ae05887623861cbd0f4357df8c6beba6733b30ae57b06e1b396d1570e7886c980180a48007f51f07f450666287d09d6f61d71566bef43cda6db2f4e1dc6354cfc82d8b0f19ec117317f6d36a8331450866747f8379cf1f66b674b5db76e32007c8cb522a24174672de373ca5803a5a9ec5bc0c3939ae139ce9269001bbd84c5a58a77fd5657a7aaaa8d8c6ac7262b02c2080e6bcecc392eef2c95a9c4025af75743e1378af6a81206a72064f4ff85b9f276f275e3d25d43191b38caf5a2891cf550c339d0a5bc1c2c4cb7ec7387f27a8148b0f9f68c74f3b63e709723ca2b29f5bb72073d48d90c58a81cc90558042fb6a500c1f001ceda4b3af4ef131c48277cce2a9e02d56bedfe0487415676f743b7dd3978fba73c4b45f28b4e6cb33458097b0b6ee22344a0c85e06044851d2b72304bd453fa5e2984516a9d589919cec7ffa275a7902b2f7b0930cff2e432713c90c41c97ce17174b704bb6520dff0e43fa8ed6810cf43126c14a947869715c789385f00ef6719cf6052b3299a749b03bad482eb1dec06ca3c358370c62077a181d7c967a7a84282a7fb516238465c590fe4f71ac698a6ccc8c84658b8b0170f48efd045f163315c51bf1665c4f081e78e070a014334fc00a3bf7b98fac73ce3f028ba972d7bc43e213ec3471d6666e96d21e98bd393bc49160373c521f7028bc5ffd419dec2233df847f383f2bfb10f620ef127c98e3d9db650c48343c91ce21f0fcd7ef9f1a75650bfeacc6bbaca14e885391b083369a35e7f81919972b8295e73d0813b6111b55d7be08f079c3080209c89d46e1d164d319a5b2b8bc7ab00fbf87f6b4bb2675302fa78691322bd7b861284158b106cdef8aeb6b38cc861e98eeab9632f37d12e6a895dc43241f1b45dffa2a364d8502b3ce0b467de8d8eda631b3e2e6ce21bd424981814630eea314c055bcdcfb2686cf9a64cce263d4ed0dc7ebf677c0ce27a31fcd75a846203c86b255580799006b679e6ac1221d718b65b4274c62e68386a2d23396d12a7f5732e4d0b62e6612b0459cf7f99b3a3e3cbf983e4180ea1b9175a6b9362b863f69b4ab7cb0fdb385e2fbeda311ef10cd3de8bb272491753f41a4e2089f5e47c5003c10f30662f0a3bc3db8cf87d005e4232e759bc0b8d5432a9eaaa9bcbc25d639e0acf73a9e3198fecf083c2a500e2002b3e0295493709a4aa85176a25fe0a268feaf88117579d5d03d41fac097af6cf7f5bf4f73f9a3100ce20755dc0c22c3f0ad4bc51947495da4020667d9c7e36d433b16fe396a8fbb29371546b9e41522f0eec822414888e043379942e8d553e16b25f7644dd50ccea2a43a26ac6f15eb38b1ec2e948358408266087adf0bd2f28f2485ee2cd00aa6af2a3010f96d9229cfae12eb1aab0f1c08eac6da4398b6546e274b17825df44b9c4acd3f6c5659052362f4559927e1a4d2a57bea80a1efbaa9561a1b5a0c7ebc99617c3286174ac15877291325c65f1e6c3844489945634f27683e7d26cb17d66085219befc3fa7c548520e3e164edd0b7f1be41de5f67e7bbe5d50b77ae239206cbc749ed0585219a72f5f9a959c830fe85108fa8fb310f5166ced733e232e9d77c982a9ebf5daedd5f777dbe3f25d4926f5bbc486e722e6f1c5c233f5d414d4853109133556602a0b7f8d17f72791cc02666b8000f79397e8265d5bdd6605c6df9ac11e784afece581054b0bf1fd56a43c6988d00cf184a8f27e8b9b2b05686b53782b80b2586b18f665ae520bebefbb00c57586c8b1175aee43b77f929517459eddcc0a44c8492079fce1955a671d0c1ed8d9d44f4081aef1a683ed289446690732812b863dc30ecd7dab0deb27c7bc1d5b24fa5eac64f6ea8741291f9ac0f00d2572abbc4ba18c64ef03a18bd563c1f2dc0b5f7d7774fc25b28f197808f6443498ac4b87af065d46692705e2c60af38d5f57f2ce424dc4e71e19dcf3eed856cfec24770c69c75ede7ba20f252c6aec9973ed7042faa1b54e3f79e4ae834cd477f629e86686e28c10a3da2d253ce069645710b7ab83d037236abf105a614f81d2152727b26b1f4861a60da2ce8cd315b1ec413ddb0f527750ea14cab3ce9e2b4ce4349ca7245c27626ba8a842d3b50c4b05d5d740291444f573358daa34365157331e0b9ff231bfe1809d340191cf58bda23052e34cea00e4105714cfecdcbc286dafbe69fabf016d03045a282b24b747060190e6a8aca8447007da80564359aaf5a6060e273619457cefcdb880d30043d9693d77824bc2190441b4e1bdca8c0dd104b428475c969d3c251e7821ed6df19f75939b9f74c7a119b62c5ef855b5f6974ec74c40af55bf37886d00f0c084f749abdce922524bbdeeac69f43c61587fcceee395f7a3b42db72b4249077257b79fc3ade4e98914f6ac9f894e8a568276c03fc69ba88b93b6121cf21d16870d7e216e5a04e9e27e0080417e0d64eaaa5d12a68481591db0098416d5f9cb81f3aadb4c93f9a9c6778968d8c544f83f11cd7f4f7db0e681a41dbd161549fc6c9d8cf844b400dd61838833ff5d8a4919055a6dcc2c10638be56fcc8251c8040b8100f7bf36486e4e24be7ee8e9421bf63e7998ae07dfadbc527a1f79cc7c3c09786a3853c1c265f0bf0e3c0d1bd847a4035ac27160c334abad30808ed0526fbcdacaf95fba3cff6cb646d4a960e1027872ac54a3a214195bf8e8dd68e1add988076ffa659e8bd60202ee3a02c34d785a5c7570e4a7f8609242d1d293a9925c0425c80ea0d844a436ac8bbb4dde0190c91d3fca65bfd603a38b936e4ce17da2f5f2f8f34cf69a49244914128ef87cdf5a934bd7df2684886bd5bd39c939583663c653de16b9af7f20e5aa6342ec176dc5f8cec1e07397a40d8babfabcaac5dde2e47ca0f1c240407f98df328b8997c2309abc56af16f2d16cfb0d5f62e3aab704fa3c7b6763c98ac376184f4f54e329dda05f4ef7ae26c580dd6e4fe214a62e53e59173c8e0ab35e7f07ae8c66e0a66b63597bf812ccddc8a8978d70392ead679b783db4b43dd71465f95883fe5f5340ab9baeebce2ce48072aface721c4e0db779b52eff0ba2d1e835ad125bf20dd61d1a8061b0fe4e7e4ee04d99eda5afbcada948a7f9843e746fbb27d492618aff32fc4d6c750e29bb11a69a493ba32c85c4b89e27001d8c8677afdfd92aeee2b46740bd7c9c37509226c277a206e936f2c0df320e9d1862742951b4f16bff346d757b07f2c3223fd7854af06589b1c2a43388529f564cb59f464b82081822dbcc99e043ac1174b32636f714513e4500f56bb74f4840032ce1a14e371a00115b37af0fba70335606574ff9674a07e005bf544e1cee3a204eb4752a3a535bf43c7476c924413f1f04de5b5d42f22ba9ffacf32860c74b6314d91f42e9f29d7cfdd7f48faaab7f3ab4e8c2f9c440a3a74934cfa663fda261d0916496fb15d242c0bd78bdbca1515ee0e9e6ab990aaf7f0b6d066e40ade6b1e9338c6d3774478084dba750c4701949e72a77305742d93e5dd885ba400c8b46518f2ef37e7b6d6c60fe29d89a658d1e5394b95076a033137e0af6246d368f5e691ba86f08c2d7d7fe1d3dddb106feada549b6d1663f77f1c7a5a0a1f14fcfcb0e08d606efbf7d651838e4e52a75ca2235caa3d46f451615c69fa9dc8f13a3af8b8656f808c63759f6dada4dc774cd600478e0443c0b4cbeb31d25c9578dc3241fbaa99b84b1ad268562f42600949b7f17bbf1ab34c34666715faec20efc812dee850bd6db4a32481cdc8cda3974cdd1f0051ce4483857194c956bcb19b4316b553526aa6fd9649642af4705d38f45aff8dec34bdea2b7987ef8e5bb490555919c7549f14fb4fae71361c3769a686c7e042fcfea7a338aa960da4f0e73ce92722ce7ba59d7766fe7ec5e93f1aaafa6b2051fb2afacc8ab22fd1c361d4228efbd203f8388cde1f64d62cfc28894d68ae061db14ee757d867d8c5ed9e01cb368ea8c5aa69da799772915ee61a51bbd68c09c01b6f8f9c5d97e7a2eaa888dbc0b6e9aaed19bb1ffcc03bf705552f0b740f2e7dc2b254db49e41d5a1edfd5c6f4b56196af389b3f29562853d21e70362d90800354999ba0fba01c79be935cccbce3079d540a7842be6b1380f48f3acf7eaedb81a49dfd80791e32f97140b5e12dd43c7251f22458ed00462033b3a51f67284a3e9a8cc3bcc49c865217e5bdc0cf6cf7909c21e6bededc3c7ad9a6cc6c86883be8f87b99b209bab83a1d34c3184fc0e7bccb5843d0420119af9bca6c77e7d746cf6d203003d99e6c5a58aa3bc21e05987a436dfcbf4850e855d5102d088ce7adcfa434a31bc1fcce2b03200e21877f661b6d15e2cd412e8975943bdc73bc488eed4c94b1531cb5036bbcc16f8efd496030f750cbf78d91d5cb661f2f60ecdc7ae6118e723f8721243510c55216e4c5bcef98c47ee0c6ef83576e5d056af748b1bd9c3a02835d18af820733ab8d39f853327d4aac8dcfd8e9972a083ad56ee8b72976bbf42dc6ff39ea0d1ead243bf5f509a2e9903bf7d6ac7ed0837b237dd28c554419d83c741ffc4c9f0b2fe6b76da25b8a672869b78f592d6a6958e8b21ab727e49346e700ac8b3254e3699db2cb9831570f19b1ec76afbdfa318ec366b08d0439021a086c98974ff4b513fd5f6713faee22a2494032bbf5bdbb970881b06e9bb348c6bb81a88c8db154779b53bdc2397b293cf37157458fc69fb42bb6f6120d8cd307f9331094e864820a77781bc034072fa3ef8d755bfc5f4c76a3d3ecd2fe09086f5e531e3c7a22b8ef5cd33f483c894d472a4bf7ac542542a4648bf05a560747270cf4eabac35b42fe0fec43f70c05c784d4fca055ee92cd0cc932f4b9e2cfa4135807552488c1d7d52a80fed2b8880c3c6ac4551ed5fd2888d97d6c2490279cd86da79b699c6d46701f4e144ac270718e898c29165ab000289a090b19b4a7bc867fe9e6cfb41535107461ee1b93a810e0e53be65de720001c224650e64f074d8716d4e52edc36483a81838bb5f65cf537c17db2c1340e2403c6cc2d7676a7cb443716e4e3ffa221226903a47c35731083db29868b670895a14ba5753b693f813682f58610addab7f0195dbd4c09e8ab1ab67aa7ce1f258f1359b4b7c73f7fd21058fb9af84f20856b67f5c2c4f5a90a71713faaf1a7ac149edd50482da44db5ed5d9038e27c0b2a58c59dd3d82cc1db6685888b5bf22801c4cc2a39b2c92e1c45e1ca7d4b2efb54c45772de321b3f14d79e03eab2c9a93ce5d90891e819427b94e9e7fc8383deee5fcc4f2a41969389a7224f5e1835c22c3ae9e793294c5c43d4c4f6e079103a3e22bb56046b644e4a700a84a8f09d59b5105c0b00f046524f18ee84ec533fd4725f252fbd492428c01ff120d4fb8ae72f7a5751d39cb7a1c312786bc14f565b75d924cbb59980fa95a8f5ca4f4f84e13507bb0dd0dccc1df248116f427472eaf434f8c6a7540bd633ebdb2f0f9e1fd05af71fad5be5da1e6e9ff74050bf8e4b2b0064260612e9ab9ae9aad97529a267dc103464ca73971f0e67e62c6a97c4b2af5fad767d091630d2287d43f7079d206ad7dce72d8dc68643be0ad1ed88dedabb27b633d20a0449f8f8657abf9dbf8814b2bd59a1f453683f14aeb44eac1d5cc2add76e82c7db59178b0b0babf0d1d2807820fd7bed7b2cc9165852cf722b1759ecc319047490b70c58d021286c472c02e87394b9af98d4d17b994b36e47252ea6695d5a459d6e2797bffe28a0730c55819e225606a7465cea572ab9c2e639c25a744a2cb957f8ea8c8898f3746485cc852f2c2d3b8cbfe968bba630c676b1c64420940d8876d1c05425f052da3128fc3f5b84d16feccb729c96f11a6a7f96fe382138ae192ace974e7cd35b74a25a599919e7ea6512c1082ae0bcc664d92e34738c166be2d993fb24d4d9b86917baf05e08274d820c16f40711ad34d7b10864562d96394d3e8936844e1933bd4788ab45ed646e12feaf7e083b10224cf5a36db24c2cb858b6875540b57afdacac1f26a8d0fb1237d75b7272b4bc8f280a05668d1acbb440ab42b0924d8b55a6d39e19ea1404301728d7cf5da3c06bf3947960cabda8038cdd4653e4ac75fb372e321e89fa6f5af5522245481b81ba439f1cdd66b083a304e5cd83d121eaba2a0734b867423c8e8363afb86048f2ea07f28d37abe842b408e9b1797b19f227ea9f270a7a91cf5491ca18fcacc89f5466ba7ab837ecb600d7563ed439eff71d75dcdcafcfc65a969a798fecc668b615fd66afd079d71b61d6820be3cca6ad483a800018a47c338558fd1e79baf3e50d7fb54580a5e45ac92b336ea3c29c3a7971ec7f3cb6d76b4decc63863691015b9cdac64d8f95f64d52546eaa224d28b97cd766abbac1a670efdb8dfe1cc1082828499d9b6017270db17a8bd1822a16d756704931e33cb16bda707103d696c85e4d7e8fb6d42892dd4de4019dbd043f0087ea77cb435f0802cd32e4a72b3ab3adb0384f14f179014fe696eba2de04bc9876e1cf0d03e1b6945cb132b58fc09a09dc38a558d94b5b07e38f8cf1992dca05d90253cbeb21b65156c189f20b68b964a17e54a7c24210fb86d430d809aadaaea787f4fbc80844c1702b375f7e21f418cb4832fa9a56d10352d483a4592e6e6cef1e38829ed80340b91668264e65ef5fca2351aa815a89b2c01bf6cf125c7dc72e74d3cdff119db06e409ed61645737df55451483ca9b32ee5042ee17e9f553198c7effb054d338c19a44d844951833b3dcb0e76fee5572feb90256a51b6a84ab2d803cb9f72e529e6a6c4a3488fd40d14023bd192bcbcaaf815f1238a6d890ca58ba436ea8352fd6963911fc2a1444802921253a747d1bff86a4dd769ef7d5a73effe16a3a41c6c08a0017fec1a1c70f9a8bdf9251b27c0ccaedf63784e80475f05239bbc04e129c56f02edd0d9e1340b214ec4916d0403b5dd436e9475975d26e4779b020e277f32e96fc553e3ef235e3b5903d4431a32bbcc7add6175b479c4fcabdafaa28fa48f0ffc10fea78369ed30b06fc8a03ed1bfc0aca3602aaa7814173c7ab8d5ba739bc033b807515a34d182520251b38409a8fe96c0118345bcd8c54b3f5b4298499be4e559f2bb354833899e793b325766834f694e432e4aee10f2ba97288e8416f5ba380b857a5a5a8db1d15bbeea638f663c0a088d3c2860dcf650d1eb8ecc3458fd9c26fdd4b3d82ae3f02801a7e463e996dd059629e9efb50eb94ed11c3c9a41e81f7da2f13897be29075d033f8c1f0905470a4ff446d3c0feb29b4f3d94c01466b7f0126fb74c53834b4439a53558e677b09484a3b43e51252b16e500de69ac69f5c1c63e18c0ba94a25fee3a7b7953d67217d651abe3111e4873807151ff541722dae089f15fd87c028d146e2eabb0a795311b82ab7934d7549c82d78af42edb3e9de87b30d1abaebd56abdab568a3a3aeb6563034f00800249f8b1d0d2cc78e243188f0249dc8a5029934624854b2a51c119a326771d56d2d55f7b17a581184dc293654324999e95754dbc4a4a9edce5aff902def810020fb6cc3975eacf2aa59712dd5cd7785ed283bdd1de7e9ea0cc871fba026263053129b43cc0e9ad728db108337baf234749bd91601eb7bad812ab44937bb4e3b60ecbd6d0df295ade5bc3a0a0864e12fa7a5512a901716ac4bb0c31926dd841239eb95bfbdbefee12f7a40f707decf61d0574b95b5251fcf898298d22944094b1ac8e6b1164b35471acb9c964ba14681ed59f29a968ddd28b4818e172db5941fe824f67201023b9a1b9802539946c344bc41f126e9bf6a110706034d3bd2a3b28009b34098b70d7948fdedea86720cfcdc6d13edf078595adba23a6cc60b10cdcb7d0cf0593e0bd8f1c73b83bb8b8d37ecbc8ff0ac3e6118b065320db9a8db561809bbadc85195094dd02faca37727236d404b20dfd8bbf91abf15c319c48cba7ecfcef3069066f5007e35ae31718a39f86f3f263b5893cc6c2a10c8b44a7259bdb4925b7c99f5fcd6700af572e3bd5a9df40da31d88cc1639d174f1ac35f42bff396bb7950f91cc03979359ae61ef2060679bfd294e4e0480313f62f9f10ed8007386e836e15705663d93a818b33124e0a190419f4c0391fedd7688819f03797df7ccee8df26ae5b44f4ec28349695128955094c883b48cf9f1530579fa0f77ed75499dd984e649474b84dcdc2b8aa9584e0d746107afe9d5676770a8c5d554ddb41d7921d35b1188f4f2f40eb0544187ad277f2d99de16710a7118af1675660aae3c1f437e7f4aeb84790d1de1323d7858c2f6bdf6e11c789cf7a855b00f44d429a33f1df222561f9b7521095cf8c7e3d3551347b82c17aee6fa8b21ba5f2d659a3695f5a8ecea3c52825002f4a266ac477a6b04666c9ac2aa34bc4b95c9cc0e7562a69ebfd052c951ac2ae5592e5384c1512466e55f90a0c8058da5907bbfe84b7f865b5044473b572637fc70508cc42c4ce6fe0aba2f0785e1567ee8789a48b9892a747b0e5b5f8912fb898861d85dbabca824107a84f9a854fa894c497ed8781c8ccc49abdeffcd642118997c6075bd704ebd5854cdd39ad608f63aac052f0945be26c47a8c369d8814e5461700fbb44de55300d283bfe9f82799c782508e53dc1bb6dee4a55e5c5a5cfb122ae25a06d809e20cf387b995d08ea5a7421470811003f1023ebb34cc4d18f5619dd2ca49413a9fd9d7d47c705190d6c84acd3d0bf9730f7a67688b9c7284fce4c11f6675539dddd68d3fa600372942c2680594a6a8e31ba58130fc6a7efe0b49f9d684957cbbe08b17b40ab8174550ee3b775dd81b578c7c0f03c1419d68b21bba855c4e0afa8ca463dfea5ae9cf9bec5d708d7f584214e302f982e80f5dbf730baf60fe19ff426db3706f2dad337012ba1a33c351d9a3495e4e46a60c1ec42efe2b09cfb49bd37e587a04ade19b99b4f66304a7a267e9983495ceea388c2212c37f14e1df625b497223b1396fe4cc46544364cff9ed3f0382bb372140df85ffb8ffdc41c8e20ff1a1dc432758433367255b09d15c5e30fe1833c804de9eda1778ce22822eda8c36eafe4b1a99500357509163004f659a75d81d06d5215dc9005d6bf995cd755bb848b7006a50000050cf60479d423633b112ec8ce976dfd128a3a4515a1fa9f13c23ebe18b8bf21b4665bc580f382d176932e0a86434de2de2f96774c5fad9cf08f70382ae16ed986cd58f628938a97a80b573a9670cb5aa4f5f2cf19fa4ef14e79387fccf53e84af8e78b972060bf8dd7f221e37262581690728bf99c69afa993c0fcbd35ea01f98323fed2a33c0c298e16d5da04232ba6083685049885fb6973511c34ce40b15865037c29a9a39aa71651edc04336ae04297b53f286e60bbb3f322e5915cfd561c8fb10db4f4490318b796d208f1f5b9b72c064c00000028a0450000000000000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `sno` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`sno`, `username`, `password`, `image`) VALUES
(1, 'Harshita', 'harshu2003', 'harshita.jpg'),
(3, 'admin', 'admin', 'find_user.png');

-- --------------------------------------------------------

--
-- Table structure for table `necklace`
--

CREATE TABLE `necklace` (
  `sno` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `necklace`
--

INSERT INTO `necklace` (`sno`, `image`, `name`, `price`) VALUES
(1, 'accnecklace11.jpg', 'NE-1', 5550.00),
(2, 'accnecklace12.jpg', 'NE-2', 3390.00),
(3, 'accnecklace13.jpg', 'NE-3', 2999.00),
(4, 'accnecklace14.jpg', 'NE-4', 3999.00),
(5, 'accnecklace21.jpg', 'NE-5', 4999.00),
(6, 'accnecklace22.jpg', 'NE-6', 1999.00),
(7, 'accnecklace23.jpg', 'NE-7', 1899.00),
(8, 'accnecklace24.jpg', 'NE-8', 1599.00),
(9, 'accnecklace31.jpg', 'NE-9', 1789.00),
(10, 'accnecklace32.jpg', 'NE-10', 1999.00),
(11, 'accnecklace33.jpg', 'Ne-11', 2550.00),
(12, 'accnecklace34.jpg', 'NE-12', 5099.00),
(13, 'accnecklace41.jpg', 'NE-13', 6199.00),
(14, 'accnecklace42.jpg', 'NE-14', 4060.00),
(15, 'accnecklace43.jpg', 'NE-15', 2080.00),
(16, 'accnecklace44.jpg', 'NE-16', 3999.00),
(17, 'accnecklace51.jpg', 'NE-17', 7999.00),
(18, 'accnecklace52.jpg', 'NE-18', 3450.00),
(19, 'accnecklace53.jpg', 'NE-19', 2990.00),
(20, 'accnecklace54.jpg', 'NE-20', 7690.00);

-- --------------------------------------------------------

--
-- Table structure for table `partyanarkali`
--

CREATE TABLE `partyanarkali` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partyanarkali`
--

INSERT INTO `partyanarkali` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(4, 'partyanarkali11.jpg', 'partyanarkali12.jpg', 'A gold Anarkali ', 24500.67, ' Indulge in the epitome of luxury fashion in our gold anarkali. This exquisite ensemble is meticulously crafted from lightweight gold tissue fabric, it is adorned with intricate thread and zari embroidery.The captivating shoulder cut on the sleeves exudes a sense of allure, while the backless string', ' Standard Delivery in 25 - 30 days', 'partyanarkali13.jpg'),
(5, 'partyanarkali21.jpg', 'partyanarkali22.jpg', 'Emerald Elegance Anarkali', 22200.00, ' The Emerald Elegance Anarkali is a stunning dark green ensemble that beautifully blends traditional charm with contemporary style. ', ' Standard Delivery in 25 - 30 days', 'partyanarkali23.jpg'),
(6, 'partyanarkali31.jpg', 'partyanarkali32.jpg', 'Crimson Radiance Anarkali', 29999.00, ' The Crimson Radiance Anarkali is a breathtaking dark red sleeveless ensemble that embodies elegance and sophistication. ', ' Standard Delivery in 25 - 30 days', 'partyanarkali33.jpg'),
(7, 'partyanarkali41.jpg', 'partyanarkali42.jpg', 'Angrakha and skirt', 51200.00, ' A light blue colored chiffon anghagra, it is embellished with Resham embroidery. It is paired with a plain georgette skirt.', ' Standard Delivery in 25 - 30 days', 'partyanarkali43.jpg'),
(8, 'partyanarkali51.jpg', 'partyanarkali52.jpg', 'Blush Blossom Anarkali', 22000.00, ' The Blush Blossom Anarkali is a stunning pink ensemble that beautifully combines traditional elegance with modern flair.', ' Standard Delivery in 25 - 30 days', 'partyanarkali53.jpg'),
(9, 'partyanarkali61.jpg', 'partyanarkali62.jpg', 'Pink fully embroidered Anarkal', 38000.00, 'A pale pink fully embroidered Anarkali with Resham and mirror work. It is teamed with a beautiful pair of pallazo pants with pearl detailing and a delicate net dupatta with pearl edging.\r\n', ' Standard Delivery in 25 - 30 days', 'partyanarkali63.jpg'),
(10, 'partyanarkali71.jpg', 'partyanarkali72.jpg', ' Ethereal Grace Anarkali', 25999.00, ' The Ethereal Grace Anarkali is a breathtaking white ensemble that embodies purity and elegance, perfect for special occasions, weddings, or festive celebrations. This stunning piece features a captivating backless design that adds a modern twist to the traditional anarkali silhouette, making it a s', ' Standard Delivery in 25 - 30 days', 'partyanarkali73.jpg'),
(11, 'partyanarkali81.jpg', 'partyanarkali82.jpg', 'Majestic Amethyst Anarkali', 24500.00, ' The Majestic Amethyst Anarkali is a stunning dark purple ensemble that exudes elegance and sophistication.', ' Standard Delivery in 25 - 30 days', 'partyanarkali83.jpg'),
(12, 'partyanarkali91.jpg', 'partyanarkali92.jpg', 'An Anarkali with a Koti ', 22000.00, ' A beige silk anarkali with black botas, it is teamed with a black, mirror embroidered koti. The Anarkali is embellished with black embroidered borders at the hem and sleeves.', ' Standard Delivery in 25 - 30 days', 'partyanarkali93.jpg'),
(13, 'partyanarkali101.jpg', 'partyanarkali102.jpg', 'Floral Whispers Anarkali', 15600.00, ' The Floral Whispers Anarkali is a delightful white ensemble that beautifully combines elegance with a vibrant touch of nature.', ' Standard Delivery in 25 - 30 days', 'partyanarkali103.jpg'),
(14, 'partyanarkali111.jpg', 'partyanarkali112.jpg', 'Lilac Anarkali with Floral Bel', 42000.00, ' The Lilac Blossom Anarkali is a stunning ensemble that beautifully captures the essence of elegance and femininity. ', ' Standard Delivery in 25 - 30 days', 'partyanarkali113.jpg'),
(15, 'partyanarkali121.jpg', 'partyanarkali122.jpg', 'Black Midnight Elegance Anarka', 19999.00, ' The Midnight Elegance Anarkali is a breathtaking black ensemble that embodies sophistication and timeless beauty. This stunning piece is perfect for formal occasions, weddings, or evening events, making it a standout choice for those who wish to make a bold statement.', ' Standard Delivery in 25 - 30 days', 'partyanarkali123.jpg'),
(16, 'partyanarkali131.jpg', 'partyanarkali132.jpg', 'Blushing Pearl Anarkali', 41300.00, ' The Blushing Pearl Anarkali is a stunning white ensemble that beautifully combines purity with vibrant accents, making it a perfect choice for weddings, festive occasions, or special celebrations. ', ' Standard Delivery in 25 - 30 days', 'partyanarkali133.jpg'),
(17, 'partyanarkali141.jpg', 'partyanarkali142.jpg', 'Verdant Radiance Anarkali', 28900.00, ' The Verdant Radiance Anarkali is a captivating light green ensemble that beautifully merges elegance with vibrant accents. This stunning piece is perfect for festive occasions, weddings, or special celebrations, making it a delightful addition to any wardrobe.', ' Standard Delivery in 25 - 30 days', 'partyanarkali143.jpg'),
(18, 'partyanarkali151.jpg', 'partyanarkali152.jpg', ' Sunlit Harmony Anarkali', 25800.00, ' The Sunlit Harmony Anarkali is a vibrant and cheerful ensemble that beautifully blends shades of yellow and orange, making it a perfect choice for festive occasions, celebrations, or summer events. ', ' Standard Delivery in 25 - 30 days', 'partyanarkali153.jpg'),
(19, 'partyanarkali161.jpg', 'partyanarkali162.jpg', 'Golden Glow Anarkali', 33000.00, ' The Golden Glow Anarkali is a stunning yellow ensemble that radiates warmth and elegance, making it an ideal choice for festive occasions, weddings, or special celebrations.', ' Standard Delivery in 25 - 30 days', 'partyanarkali163.jpg'),
(20, 'partyanarkali171.jpg', 'partyanarkali172.jpg', 'Black Anarkali with Koti', 34400.00, ' A beige mal tasseled anarkali with a thick gold woven border teamed with a skin  floral printed jacket with heavy badla and zardosi embroidery.', ' Standard Delivery in 25 - 30 days', 'partyanarkali173.jpg'),
(21, 'partyanarkali181.jpg', 'partyanarkali182.jpg', 'Enchanted Forest Anarkali', 27500.00, ' The Enchanted Forest Anarkali is a captivating dark green ensemble that beautifully combines elegance with a touch of nature. This stunning piece is perfect for festive occasions, garden parties, or special celebrations, making it a delightful addition to any wardrobe.', ' Standard Delivery in 25 - 30 days', 'partyanarkali183.jpg'),
(22, 'partyanarkali191.jpg', 'partyanarkali192.jpg', 'Ivory Elegance Anarkali', 44200.00, ' The Ivory Elegance Anarkali is a stunning white ensemble that beautifully blends traditional charm with contemporary style.', ' Standard Delivery in 25 - 30 days', 'partyanarkali193.jpg'),
(23, 'partyanarkali201.jpg', 'partyanarkali202.jpg', 'Radiant Ember Anarkali', 45600.00, ' The Radiant Ember Anarkali is a stunning orange ensemble that embodies vibrancy and elegance, making it a perfect choice for festive occasions, weddings, or special celebrations. ', ' Standard Delivery in 25 - 30 days', 'partyanarkali203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `partyco_ord`
--

CREATE TABLE `partyco_ord` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partyco_ord`
--

INSERT INTO `partyco_ord` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(5, 'partyco-ord11.jpg', 'partyco-ord12.jpg', 'SET-1', 4500.00, ' Lavender co-ord sets are stylish and versatile outfits that typically include matching tops and bottoms in a soft lavender hue.', ' Standard Delivery in 25 - 30 days', 'partyco-ord13.jpg'),
(6, 'partyco-ord21.jpg', 'partyco-ord22.jpg', 'SET-2', 3900.00, ' White co-ord sets are elegant and timeless outfits that consist of matching tops and bottoms in a crisp white shade. ', ' Standard Delivery in 25 - 30 days', 'partyco-ord23.jpg'),
(7, 'partyco-ord31.jpg', 'partyco-ord32.jpg', 'SET-3', 4500.00, '  They can feature various designs, such as tunics, trousers, or dresses, often made from comfortable fabrics like cotton or linen, making them perfect for both casual and semi-formal occasions.', ' Standard Delivery in 25 - 30 days', 'partyco-ord33.jpg'),
(8, 'partyco-ord41.jpg', 'partyco-ord42.jpg', 'SET-4', 5400.00, ' Elevate your wardrobe with this chic off-white co-ord set, designed for effortless style and versatility. This set typically features a matching top and bottom, crafted from soft, breathable fabrics that drape beautifully on the body.', ' Standard Delivery in 25 - 30 days', 'partyco-ord43.jpg'),
(9, 'partyco-ord51.jpg', 'partyco-ord52.jpg', 'SET-5', 4900.00, ' This white and red shirt-pant co-ord set combines a fresh, vibrant color palette with stylish design elements. The shirt typically features intricate red prints or patterns, while the pants offer a relaxed fit, ensuring comfort and versatility for various occasions. ', ' Standard Delivery in 25 - 30 days', 'partyco-ord53.jpg'),
(10, 'partyco-ord61.jpg', 'partyco-ord62.jpg', 'SET-6', 5200.00, ' The Meroom velvet kurta pant co-ord set showcases a rich maroon hue, crafted from luxurious velvet for a sophisticated look. ', ' Standard Delivery in 25 - 30 days', 'partyco-ord63.jpg'),
(11, 'partyco-ord71.jpg', 'partyco-ord72.jpg', 'SET-7', 5800.00, ' The bright red party wear co-ord set is designed to make a bold statement with its vibrant hue and stylish silhouette. Crafted from luxurious fabric, it features intricate details and a comfortable fit, making it perfect for festive occasions or glamorous events.', ' Standard Delivery in 25 - 30 days', 'partyco-ord73.jpg'),
(12, 'partyco-ord81.jpg', 'partyco-ord82.jpg', 'SET-8', 4999.00, ' Step into sophistication with this Elegant Brown Kurta and Off-White Pant Co-Ord Set, designed for the modern individual who appreciates style and comfort.', ' Standard Delivery in 25 - 30 days', 'partyco-ord83.jpg'),
(16, 'partyco-ord91.jpg', 'partyco-ord92.jpg', 'SET-9', 5400.00, ' Make a statement with this stunning Midnight Blue Co-Ord Set, designed to elevate your wardrobe with its sophisticated hue and stylish design.', ' Standard Delivery in 25 - 30 days', 'partyco-ord93.jpg'),
(17, 'partyco-ord101.jpg', 'partyco-ord102.jpg', 'SET-10', 3600.00, ' Embrace effortless elegance with the Blush Pink Co-Ord Set, a perfect blend of style and comfort. This light pink ensemble is designed to flatter and enhance your natural beauty, making it an ideal choice for a variety of occasions, from brunch dates to evening gatherings.', ' Standard Delivery in 25 - 30 days', 'partyco-ord103.jpg'),
(18, 'partyco-ord111.jpg', 'partyco-ord112.jpg', 'SET-11', 9899.00, ' Elevate your professional wardrobe with the Navy Blue Formal Co-Ord Set, designed for the modern individual who values sophistication and style. This dark blue ensemble exudes confidence and elegance, making it perfect for business meetings, formal events, or upscale gatherings.', ' Standard Delivery in 25 - 30 days', 'partyco-ord113.jpg'),
(19, 'partyco-ord121.jpg', 'partyco-ord122.jpg', 'SET-12', 5500.00, ' Step into elegance with the Fuchsia Long Kurta and Palazzo Co-Ord Set, a stunning ensemble that beautifully combines traditional charm with contemporary style. ', ' Standard Delivery in 25 - 30 days', 'partyco-ord123.jpg'),
(20, 'partyco-ord131.jpg', 'partyco-ord132.jpg', 'SET-13', 6500.00, ' Embrace timeless elegance with the Classic Black Kurta and Pant Co-Ord Set, a versatile ensemble that effortlessly combines style and comfort. The rich black color exudes sophistication, making it an ideal choice for a variety of occasions, from casual outings to festive celebrations.\r\n\r\n', ' Standard Delivery in 25 - 30 days', 'partyco-ord133.jpg'),
(21, 'partyco-ord141.jpg', 'partyco-ord142.jpg', 'SET-14', 5450.00, ' Brighten up your wardrobe with the Sunny Yellow Kurta and Pant Co-Ord Set, a delightful ensemble that radiates warmth and positivity.', ' Standard Delivery in 25 - 30 days', 'partyco-ord143.jpg'),
(22, 'partyco-ord151.jpg', 'partyco-ord152.jpg', 'SET-15', 2.00, ' The rich dark blue hue, paired with the sumptuous texture of velvet, makes this set perfect for special occasions, festive celebrations, or evening gatherings.', ' Standard Delivery in 25 - 30 days', 'partyco-ord153.jpg'),
(23, 'partyco-ord161.jpg', 'partyco-ord162.jpg', 'SET-16', 4600.00, ' Elevate your professional wardrobe with the Classic White Formal Co-Ord Set, a timeless ensemble that embodies sophistication and elegance.', 'Standard Delivery in 25 - 30 days ', 'partyco-ord163.jpg'),
(24, 'partyco-ord171.jpg', 'partyco-ord172.jpg', 'SET-17', 7800.00, ' Step into luxury with the Emerald Green Velvet Co-Ord Set, a stunning ensemble that combines opulence and style. The rich dark green hue, reminiscent of lush emeralds, makes this set perfect for special occasions, festive celebrations, or elegant evening events.', ' Standard Delivery in 25 - 30 days', 'partyco-ord173.jpg'),
(25, 'partyco-ord181.jpg', 'partyco-ord182.jpg', 'SET-18', 6540.00, 'Make a bold statement with the Shimmering Black Co-Ord Set, a stunning ensemble that combines elegance with a touch of glamour. ', ' Standard Delivery in 25 - 30 days', 'partyco-ord183.jpg'),
(26, 'partyco-ord191.jpg', 'partyco-ord192.jpg', 'SET-19', 6500.00, ' Brighten your wardrobe with the Vibrant Orange Kurta Co-Ord Set, a lively ensemble that exudes warmth and energy. This stunning orange outfit is perfect for festive occasions, casual outings, or any event where you want to make a cheerful statement.', ' Standard Delivery in 25 - 30 days', 'partyco-ord193.jpg'),
(27, 'partyco-ord201.jpg', 'partyco-ord202.jpg', 'SET-20', 3900.00, ' Embrace effortless elegance with the Black Floral Print Co-Ord Set, a chic ensemble that beautifully combines a classic color with vibrant floral patterns.', 'Standard Delivery in 25 - 30 days ', 'partyco-ord203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `partygown`
--

CREATE TABLE `partygown` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partygown`
--

INSERT INTO `partygown` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(3, 'partygown11.jpg', 'partygown12.jpg', 'White and Silver Shimmer Gown', 9000.00, ' A white and silver shimmer gown with net detailing is a stunning and elegant choice for formal occasions. ', ' Standard Delivery in 25 - 30 days', 'partygown13.jpg'),
(4, 'partygown21.jpg', 'partygown22.jpg', 'Lavender Gown', 10999.00, ' \"Lavender Serendipity Formal Dress,\" adorned with a shimmering silver sequin floral pattern, perfect for formal occasions.\r\n\r\n\r\n\r\n\r\n', ' Standard Delivery in 25 - 30 days', 'partygown23.jpg'),
(5, 'partygown31.jpg', 'partygown32.jpg', 'Pink Shimmer Gown', 7898.00, ' A Pink shimmer gown with net detailing is a stunning and elegant choice for formal occasions.', ' Standard Delivery in 25 - 30 days', 'partygown33.jpg'),
(6, 'partygown41.jpg', 'partygown42.jpg', 'Royal Blue Midnight Elegance', 11899.00, ' A dark blue silk gown adorned with diamond work is a luxurious and sophisticated choice for formal events. ', ' Standard Delivery in 25 - 30 days', 'partygown43.jpg'),
(7, 'partygown51.jpg', 'partygown52.jpg', 'Ethereal Grace in White', 8999.00, '  white gherdaar gown is a stunning and traditional attire that combines elegance with cultural richness. ', ' Standard Delivery in 25 - 30 days', 'partygown53.jpg'),
(8, 'partygown61.jpg', 'partygown62.jpg', 'Blush Pink Organza Gown ', 13090.00, ' Pink gowns are often associated with elegance and femininity, featuring soft, romantic designs that can range from modern to classic styles. ', ' Standard Delivery in 25 - 30 days', 'partygown63.jpg'),
(9, 'partygown71.jpg', 'partygown72.jpg', 'Light pink Gown', 14000.00, ' The pink tulle dress worn by Jodie Comer in Killing Eve exemplifies the modern twist on this classic color, blending femininity with boldness.', ' Standard Delivery in 25 - 30 days', 'partygown73.jpg'),
(10, 'partygown81.jpg', 'partygown82.jpg', '\"Elysian Elegance Gown\"', 18999.00, ' This exquisite long full-sleeve white gown is a stunning blend of elegance and sophistication.', ' Standard Delivery in 25 - 30 days', 'partygown83.jpg'),
(11, 'partygown91.jpg', 'partygown92.jpg', 'Midnight Elegance Gown', 13444.00, 'The deep blue hue evokes the tranquility of a starry night, making it perfect for formal events or evening galas.  ', ' Standard Delivery in 25 - 30 days', 'partygown93.jpg'),
(12, 'partygown101.jpg', 'partygown102.jpg', 'Blushing Peach Gown', 16399.00, ' The Blushing Peach Gown is a delightful peach pink dress that captures the essence of grace and charm. This gown showcases elegant shrug sleeves that provide a soft, romantic touch while allowing for', ' Standard Delivery in 25 - 30 days', 'partygown103.jpg'),
(13, 'partygown111.jpg', 'partygown112.jpg', 'Sunlit Harmony Gown', 17999.00, ' The gown is adorned with intricate white designs, which may include delicate embroidery, floral patterns, or lace detailing, adding a touch of sophistication and contrast to the bright yellow base. ', ' Standard Delivery in 25 - 30 days', 'partygown113.jpg'),
(14, 'partygown121.jpg', 'partygown122.jpg', 'Serene Blossom Gown', 15000.00, 'The Serene Blossom Gown is a beautifully crafted long gown that combines simplicity with elegance. This stunning piece features full sleeves that provide a modest yet stylish look', ' Standard Delivery in 25 - 30 days', 'partygown123.jpg'),
(15, 'partygown131.jpg', 'partygown132.jpg', 'Noir Allure Gown', 14999.00, ' The Noir Allure Gown is a stunning black gown that epitomizes sophistication and timeless elegance. ', ' Standard Delivery in 25 - 30 days', 'partygown133.jpg'),
(16, 'partygown141.jpg', 'partygown142.jpg', 'Silver Lining Gown', 19899.00, ' The gown is crafted from a luxurious white fabric that drapes gracefully, creating a soft and ethereal look. Intricate silver embellishments adorn the bodice and skirt, adding a touch of sparkle and ', ' Standard Delivery in 25 - 30 days', 'partygown143.jpg'),
(17, 'partygown151.jpg', 'partygown152.jpg', 'Royal Amethyst Gown', 20099.00, ' The Royal Amethyst Gown is a striking dark purple creation that exudes luxury and sophistication. This stunning gown features a flattering silhouette that gracefully hugs the body, accentuating curve', ' Standard Delivery in 25 - 30 days', 'partygown153.jpg'),
(18, 'partygown161.jpg', 'partygown162.jpg', 'Enchanted Meadow Gown', 14546.00, ' The Enchanted Meadow Gown is a captivating light green gown that embodies the essence of freshness and elegance. ', ' Standard Delivery in 25 - 30 days', 'partygown163.jpg'),
(19, 'partygown171.jpg', 'partygown172.jpg', 'Pink Shaded Gown', 21299.00, ' A beautiful pink shaded gown in satin, it is teamed with a beautiful embroidered cape. The cape is finished with tassels giving it a chic look!', ' Standard Delivery in 25 - 30 days', 'partygown173.jpg'),
(20, 'partygown181.jpg', 'partygown182.jpg', 'Embroidered Shimmer Lycra Gown', 22000.00, ' A beautiful shimmer lycra gown with a frosted hand embroidered neckline.', ' Standard Delivery in 25 - 30 days', 'partygown183.jpg'),
(21, 'partygown191.jpg', 'partygown192.jpg', 'Off White Gown', 17000.00, ' A beige and off white gown. The body of the gown has intricate embroidery and tassels. The cut of the gown is very feminine it is made on a beautiful off white shimmer fabric.', ' Standard Delivery in 25 - 30 days', 'partygown193.jpg'),
(22, 'partygown201.jpg', 'partygown202.jpg', 'white Floaral Design Gown', 21999.00, 'An off white long Kalidar jacket, the body of the jacket is fully hand embroidered. The kalis of the jacket has cord detailing. It is teamed with an off white and gold chanderi gown and an off white a', ' Standard Delivery in 25 - 30 days', 'partygown203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `partykaftan`
--

CREATE TABLE `partykaftan` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partykaftan`
--

INSERT INTO `partykaftan` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(3, 'partykaftan11.jpg', 'partykaftan12.jpg', 'Emerald Elegance Kaftan', 22000.00, ' Step into a world of effortless style with our Emerald Elegance Kaftan. This stunning piece features a rich green hue that evokes the tranquility of nature, making it perfect for both casual outings and elegant gatherings.', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan13.jpg'),
(4, 'partykaftan21.jpg', 'partykaftan22.jpg', 'Verdant Whisper Kaftan', 34000.00, ' Embrace the essence of serene elegance with our Verdant Whisper Kaftan. This exquisite piece features a crisp white base adorned with intricate green designs that evoke the beauty of lush foliage.', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan23.jpg'),
(5, 'partykaftan31.jpg', 'partykaftan32.jpg', 'Sunset Glow Kaftan', 33900.00, ' Designed with a relaxed fit, the Sunset Glow Kaftan drapes elegantly over the body, providing both comfort and style.', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan33.jpg'),
(6, 'partykaftan41.jpg', 'partykaftan42.jpg', 'Azure Dream Silk Kaftan', 34700.00, ' The Azure Dream Kaftan is adorned with intricate designer details, including delicate embroidery and subtle embellishments that add a touch of glamour without overwhelming the serene color palette. ', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan43.jpg'),
(7, 'partykaftan51.jpg', 'partykaftan52.jpg', 'Ocean Breeze Off-Shoulder Kaft', 34600.00, ' Embrace the carefree spirit of summer with our Ocean Breeze Off-Shoulder Kaftan. This stunning piece features a vibrant blue hue that mirrors the depths of the ocean, making it a perfect choice for beach days, poolside lounging, or casual outings. ', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan53.jpg'),
(8, 'partykaftan61.jpg', 'partykaftan62.jpg', 'Coral Sunset Kaftan', 22900.00, ' Step into a world of vibrant elegance with our Coral Sunset Kaftan. This stunning piece features a beautiful blend of soft pink and shimmering orange hues, reminiscent of a breathtaking sunset over the ocean. The interplay of colors creates a warm and inviting look, perfect for those who love to make a statement.', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan63.jpg'),
(9, 'partykaftan71.jpg', 'partykaftan72.jpg', 'Blossom Harmony Kaftan', 29900.00, ' Embrace the essence of vibrant elegance with our Blossom Harmony Kaftan. This enchanting piece features a soft pink base that radiates warmth and femininity, beautifully complemented by a stunning multicolor shrug that adds a playful touch. ', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan73.jpg'),
(10, 'partykaftan81.jpg', 'partykaftan82.jpg', 'Champagne Dreams Kaftan', 44500.00, ' Elevate your style with our Champagne Dreams Kaftan, a stunning piece that exudes luxury and sophistication. This exquisite kaftan features a rich maroon shimmer that catches the light beautifully, creating an alluring effect that is perfect for evening events or special occasions.', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan83.jpg'),
(11, 'partykaftan91.jpg', 'partykaftan92.jpg', 'Twilight Elegance Kaftan Set', 39599.00, ' Step into a realm of refined sophistication with our Twilight Elegance Kaftan Set. This stunning ensemble features a beautiful blend of lavender and gray shimmer, creating a soft yet striking look that is perfect for both day and evening wear. ', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan93.jpg'),
(12, 'partykaftan101.jpg', 'partykaftan102.jpg', 'Golden Aura Kaftan', 41999.00, ' Radiate elegance and sophistication with our Golden Aura Kaftan. This stunning piece features a luxurious golden shimmer that captures the light beautifully, making it the perfect choice for special occasions, evening events, or festive celebrations. The rich, warm hue exudes a sense of opulence, ensuring you stand out in any crowd.', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan103.jpg'),
(13, 'partykaftan111.jpg', 'partykaftan112.jpg', 'Crimson Radiance Kaftan', 34900.00, ' Make a bold statement with our Crimson Radiance Kaftan, a stunning piece designed for those who love to stand out. ', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan113.jpg'),
(14, 'partykaftan121.jpg', 'partykaftan122.jpg', 'Blush Serenity Kaftan', 25600.00, ' Embrace effortless elegance with our Blush Serenity Kaftan. This beautifully simple piece features a soft light pink hue that radiates warmth and femininity, making it a perfect choice for casual outings, lounging at home, or even a day at the beach.', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan123.jpg'),
(15, 'partykaftan131.jpg', 'partykaftan132.jpg', 'Midnight Elegance Kaftan', 28999.00, ' Step into sophistication with our Midnight Elegance Kaftan. This striking piece features a classic black base that exudes timeless charm, beautifully accented by a crisp white border design that adds a touch of modern flair. ', ' Standard Delivery in 25 - 30 days\r\n', 'partykaftan133.jpg'),
(16, 'partykaftan141.jpg', 'partykaftan142.jpg', 'Royal Blue Kaftan', 28900.00, ' Elevate your wardrobe with our Azure Majesty Kaftan, a stunning piece that embodies elegance and sophistication.', ' Standard Delivery in 25 - 30 days', 'partykaftan143.jpg'),
(17, 'partykaftan151.jpg', 'partykaftan152.jpg', 'Azure Majesty Kaftan', 31399.00, ' Elevate your wardrobe with our Azure Majesty Kaftan, a stunning piece that embodies elegance and sophistication.', ' Standard Delivery in 25 - 30 days', 'partykaftan153.jpg'),
(18, 'partykaftan161.jpg', 'partykaftan162.jpg', 'Henna Bloom Kaftan', 22000.00, ' Embody the beauty of traditional elegance with our Henna Bloom Kaftan. This stunning piece features a rich, earthy mehandi color that exudes warmth and sophistication, making it a perfect choice for special occasions, cultural events, or simply when you want to connect with your heritage.', ' Standard Delivery in 25 - 30 days', 'partykaftan163.jpg'),
(19, 'partykaftan171.jpg', 'partykaftan172.jpg', 'Rosé Radiance Kaftan', 42799.00, ' Illuminate your wardrobe with our Rosé Radiance Kaftan, a stunning piece that beautifully combines elegance and charm.', ' Standard Delivery in 25 - 30 days', 'partykaftan173.jpg'),
(20, 'partykaftan181.jpg', 'partykaftan182.jpg', 'Verdant Blossom Kaftan', 29800.00, ' Embrace the beauty of nature with our Verdant Blossom Kaftan. This charming piece features a fresh green base adorned with delicate floral prints that evoke a sense of tranquility and renewal.', ' Standard Delivery in 25 - 30 days', 'partykaftan183.jpg'),
(21, 'partykaftan191.jpg', 'partykaftan192.jpg', 'Royal Blossom Kaftan', 25999.00, ' Step into a world of vibrant elegance with our Royal Blossom Kaftan. This stunning piece features a rich royal blue base that exudes confidence and sophistication, beautifully complemented by intricate pink embroidery that adds a touch of femininity and charm.', ' Standard Delivery in 25 - 30 days', 'partykaftan193.jpg'),
(22, 'partykaftan201.jpg', 'partykaftan202.jpg', 'Sunset Glow Kaftan', 49500.00, ' Crafted from lightweight, breathable fabric, the Sunset Glow Kaftan drapes effortlessly over the body, providing a flattering silhouette for all shapes and sizes. The flowing sleeves and relaxed fit ensure comfort while exuding an air of refined elegance.', ' Standard Delivery in 25 - 30 days', 'partykaftan203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `partylehenga`
--

CREATE TABLE `partylehenga` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partylehenga`
--

INSERT INTO `partylehenga` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(3, 'partylehenga11.jpg', 'partylehenga12.jpg', 'Silver Glow lehenga', 44000.00, 'silver lehengas are stunning traditional outfits often adorned with intricate embroidery, sequins, and embellishments.', ' Standard Delivery in 25 - 30 days', 'partylehenga13.jpg'),
(4, 'partylehenga21.jpg', 'partylehenga22.jpg', ' Scarlet Elegance Bridal Lehen', 56000.00, ' The lehenga boasts a flared silhouette, allowing for graceful movement, while the intricate zardozi work and delicate sequins add a touch of opulence. The matching choli is designed with a sweetheart neckline and embellished sleeves, enhancing the overall elegance of the outfit.', ' Standard Delivery in 25 - 30 days', 'partylehenga23.jpg'),
(5, 'partylehenga31.jpg', 'partylehenga32.jpg', 'Aziza Brown Lehenga', 22000.00, ' The Aziza Brown Lehenga is a stunning piece crafted from luxurious silk, featuring delicate floral motifs that exude elegance. Paired with a shimmering silver blouse, this ensemble is perfect for special occasions, combining rich brown tones with intricate detailing to create a captivating look. ', ' Standard Delivery in 25 - 30 days', 'partylehenga33.jpg'),
(6, 'partylehenga41.jpg', 'partylehenga42.jpg', 'Amara Jamun Lehenga', 26999.00, '  Introducing the Amara Jamun Lehenga, a breathtaking ensemble that captures the essence of regal elegance. This stunning lehenga is crafted from luxurious fabric in a rich jamun (deep purple) hue, reminiscent of the luscious fruit it’s named after. ', ' Standard Delivery in 25 - 30 days', 'partylehenga43.jpg'),
(7, 'partylehenga51.jpg', 'partylehenga52.jpg', 'Radiant Blossom Multicolor Pin', 45350.00, ' Embrace the vibrancy of celebration with the Radiant Blossom Multicolor Pink Lehenga, a stunning ensemble that captures the essence of joy and festivity. ', ' Standard Delivery in 25 - 30 days', 'partylehenga53.jpg'),
(8, 'partylehenga61.jpg', 'partylehenga62.jpg', 'Enchanted Forest Dark Green Le', 34899.00, ' Step into a realm of elegance and sophistication with the Enchanted Forest Dark Green Lehenga, a stunning ensemble that embodies the beauty of nature.', ' Standard Delivery in 25 - 30 days', 'partylehenga63.jpg'),
(9, 'partylehenga71.jpg', 'partylehenga72.jpg', 'Verdant Bloom Dark Green Lehen', 65600.00, ' Introducing the Verdant Bloom Dark Green Lehenga, a captivating ensemble that beautifully blends traditional elegance with contemporary charm. This stunning lehenga features a rich dark green fabric adorned with vibrant floral prints in shades of ivory, blush, and gold, creating a fresh and lively ', ' Standard Delivery in 25 - 30 days', 'partylehenga73.jpg'),
(10, 'partylehenga81.jpg', 'partylehenga82.jpg', 'Sunlit Elegance Off Yellow Leh', 33900.00, '  Introducing the Sunlit Elegance Off Yellow Lehenga, a radiant ensemble that captures the essence of warmth and joy. ', ' Standard Delivery in 25 - 30 days', 'partylehenga83.jpg'),
(11, 'partylehenga91.jpg', 'partylehenga92.jpg', 'Crimson Dream Dark Red Lehenga', 54600.00, 'Step into a world of elegance and allure with the Crimson Dream Dark Red Lehenga, a stunning ensemble that embodies the essence of traditional bridal wear with a modern twist.  ', ' Standard Delivery in 25 - 30 days', 'partylehenga93.jpg'),
(12, 'partylehenga101.jpg', 'partylehenga102.jpg', ' Midnight Glam Black Shimmer L', 39000.00, '  Unleash your inner diva with the Midnight Glam Black Shimmer Lehenga, a breathtaking ensemble that exudes sophistication and allure. This stunning lehenga is crafted from luxurious black fabric with a subtle shimmer, creating a captivating effect that catches the light beautifully. ', ' Standard Delivery in 25 - 30 days', 'partylehenga103.jpg'),
(13, 'partylehenga111.jpg', 'partylehenga112.jpg', 'Charcoal Elegance Gray Lehenga', 54000.00, ' Introducing the Charcoal Elegance Gray Lehenga, a stunning ensemble that beautifully combines sophistication and vibrancy. This exquisite lehenga features a rich gray base, elegantly complemented by striking black and red accents that create a captivating visual appeal. Perfect for weddings, recept', ' Standard Delivery in 25 - 30 days', 'partylehenga113.jpg'),
(14, 'partylehenga121.jpg', 'partylehenga122.jpg', 'Royal Amethyst Dark Purple Leh', 45900.00, '  Step into a realm of elegance and sophistication with the Royal Amethyst Dark Purple Lehenga, a stunning ensemble that embodies the richness of tradition and modernity. ', ' Standard Delivery in 25 - 30 days', 'partylehenga123.jpg'),
(15, 'partylehenga131.jpg', 'partylehenga132.jpg', 'Midnight Allure Black Lehenga', 28000.00, '  Embrace the essence of elegance and glamour with the Midnight Allure Black Lehenga, a stunning ensemble that is perfect for making a bold statement at any special occasion. This exquisite lehenga is crafted from luxurious black fabric that features a subtle shimmer, creating a captivating effect t', ' Standard Delivery in 25 - 30 days', 'partylehenga133.jpg'),
(16, 'partylehenga141.jpg', 'partylehenga142.jpg', ' Lavender Dream Dark Purple Le', 25700.00, ' Introducing the Lavender Dream Dark Purple Lehenga, a beautifully understated yet elegant ensemble that perfectly balances simplicity and charm.', ' Standard Delivery in 25 - 30 days', 'partylehenga143.jpg'),
(17, 'partylehenga151.jpg', 'partylehenga152.jpg', 'Serene Blossom Light Blue and ', 34500.00, '  Introducing the Serene Blossom Light Blue and Red Lehenga, a stunning ensemble that beautifully combines soft elegance with vibrant floral motifs. This exquisite lehenga features a delicate light blue base, reminiscent of a clear sky, adorned with intricate red floral patterns that add a touch of freshness and charm.', ' Standard Delivery in 25 - 30 days', 'partylehenga153.jpg'),
(18, 'partylehenga161.jpg', 'partylehenga162.jpg', 'Amethyst Radiance Purple Lehen', 19999.00, ' Introducing the Amethyst Radiance Purple Lehenga, a stunning ensemble that exudes elegance and sophistication. ', ' Standard Delivery in 25 - 30 days', 'partylehenga163.jpg'),
(19, 'partylehenga171.jpg', 'partylehenga172.jpg', ' Sunset Glow Orange Lehenga', 45500.00, '  Introducing the Sunset Glow Orange Lehenga, a vibrant and enchanting ensemble that captures the essence of warmth and celebration. This stunning lehenga is crafted from rich, flowing fabric in a radiant orange hue, reminiscent of a beautiful sunset. Perfect for weddings, festive occasions, or special celebrations, this lehenga is designed to make a bold statement.', ' Standard Delivery in 25 - 30 days', 'partylehenga173.jpg'),
(20, 'partylehenga181.jpg', 'partylehenga182.jpg', 'Enchanted Twilight Dark Purple', 54650.00, '  This exquisite lehenga is crafted from luxurious fabric in a deep, regal purple hue, making it a perfect choice for weddings, receptions, and festive celebrations.', ' Standard Delivery in 25 - 30 days', 'partylehenga183.jpg'),
(21, 'partylehenga191.jpg', 'partylehenga192.jpg', 'Emerald Elegance Dark Green Le', 47899.00, '  This exquisite lehenga is crafted from luxurious fabric in a deep, regal purple hue, making it a perfect choice for weddings, receptions, and festive celebrations.', ' Standard Delivery in 25 - 30 days', 'partylehenga193.jpg'),
(22, 'partylehenga201.jpg', 'partylehenga202.jpg', 'Baby Blue Georgette Lehenga ', 42900.00, ' This lehenga includes a dainty blouse made from premium soft net, embellished with flower motifs, cut danna, and sequins.', ' Standard Delivery in 25 - 30 days', 'partylehenga203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `partysaree`
--

CREATE TABLE `partysaree` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partysaree`
--

INSERT INTO `partysaree` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(3, 'partysaree11.jpg', 'partysaree12.jpg', 'Hot Pink Organza Saree', 34000.00, ' This saree features a viscose organza top with satin inner and febric .', ' Standard Delivery in 25 - 30 days', 'partysaree13.jpg'),
(4, 'partysaree21.jpg', 'partysaree22.jpg', 'Royal Blue Saree', 34000.00, ' The Royal Blue Net Saree with Embellishments is a luxurious addition Accessorize with statement jewelry, such as chandelier earrings or a bold cuff bracelet, to elevate your look. The Royal Blue Allure Full Work Saree is not just an outfit; it’s a celebration of artistry and style, perfect for making a memorable impression at any event.', ' Standard Delivery in 25 - 30 days', 'partysaree23.jpg'),
(5, 'partysaree31.jpg', 'partysaree32.JPG', 'Serene Light Blue Chiffon Sare', 22000.00, ' Embrace elegance and grace with the Serene Light Blue Chiffon Saree, ', ' Standard Delivery in 25 - 30 days', 'partysaree93.jpg'),
(6, 'partysaree41.jpg', 'partysaree42.jpg', 'Radiant Red and Golden Silk Sa', 44900.00, ' Make a stunning statement with the Radiant Red and Golden Silk Saree,', ' Standard Delivery in 25 - 30 days', 'partysaree43.jpg'),
(7, 'partysaree51.jpg', 'partysaree52.jpg', ' Charming Off-White and Yellow', 33200.00, ' Embrace a fresh and vibrant look with the Charming Off-White and Yellow color.', ' Standard Delivery in 25 - 30 days', 'partysaree53.jpg'),
(8, 'partysaree61.jpg', 'partysaree62.jpg', 'Elegant Dark Green Saree', 45000.00, 'Step into sophistication with the Elegant Dark Green Saree paired with golden blouse . ', ' Standard Delivery in 25 - 30 days', 'partysaree63.jpg'),
(9, 'partysaree71.jpg', 'partysaree72.jpg', 'Majestic Dark Mehroon Saree ', 37900.00, ' Elevate your ethnic wardrobe with the Majestic Dark Mehroon Saree, The saree is versatile and can be paired with a variety of blouses, from traditional to contemporary styles. Accessorize with statement jewelry to elevate your look, and let the elegance of this saree shine through. Ideal for brides, bridesmaids, or anyone looking to make a chic statement, this Elegant White Banarasi Touch Saree i', ' Standard Delivery in 25 - 30 days', 'partysaree73.jpg'),
(10, 'partysaree81.jpg', 'partysaree82.jpg', 'Classic Red Saree', 19800.00, ' Embrace the essence of simplicity and elegance with the Classic Red Saree.', ' Standard Delivery in 25 - 30 days', 'partysaree83.jpg'),
(11, 'partysaree91.jpg', 'partysaree92.jpg', 'Ethereal Light Lavender and Si', 20500.00, ' Step into a world of elegance with the Ethereal Light Lavender and Silver color saree.', ' Standard Delivery in 25 - 30 days', 'partysaree93.jpg'),
(12, 'partysaree101.jpg', 'partysaree102.jpg', 'Elegant Skin Saree ', 22900.00, ' Embrace understated elegance with the Elegant Skin Saree, ', ' Standard Delivery in 25 - 30 days', 'partysaree103.jpg'),
(13, 'partysaree111.jpg', 'partysaree112.jpg', 'Soft Pink Saree', 33900.00, '  sarees in pastel shades like soft pink, mint green, and lavender are ideal. Additionally, colors such as royal blue, olive, and light yellow can enhance your complexion beautifully. A popular choice is the Pakistani Wedding Bridal Saree, which features elegant embroidery and complements lighter skin tones.', '  Standard Delivery in 25 - 30 days', 'partysaree113.jpg'),
(14, 'partysaree121.jpg', 'partysaree122.jpg', 'Elegant White Banarasi Touch S', 29500.00, ' The saree is versatile and can be paired with a variety of blouses, from traditional to contemporary styles. Accessorize with statement jewelry to elevate your look, and let the elegance of this saree shine through. Ideal for brides, bridesmaids, or anyone looking to make a chic statement, this Elegant White Banarasi Touch Saree is a must-have in your wardrobe.', ' Standard Delivery in 25 - 30 days', 'partysaree123.jpg'),
(15, 'partysaree131.jpg', 'partysaree132.jpg', 'Midnight Elegance Black Shimme', 31600.00, ' Designed with a sleeveless blouse, this saree allows for a chic and contemporary look, perfect for evening events, parties, or festive celebrations.', ' Standard Delivery in 25 - 30 days', 'partysaree133.jpg'),
(16, 'partysaree141.jpg', 'partysaree142.jpg', 'Pure Elegance White Lining Sar', 22500.00, '  Introducing the Pure Elegance White Lining Saree, a stunning embodiment of simplicity and sophistication. This saree features a pristine white base that exudes a sense of purity and grace, making it a versatile choice for various occasions. ', ' Standard Delivery in 25 - 30 days', 'partysaree143.jpg'),
(17, 'partysaree151.jpg', 'partysaree152.jpg', 'Lavender Dream with Dark Purpl', 44700.00, ' Complementing the saree is a striking dark purple blouse that enhances the overall look. The rich, deep hue of the blouse creates a beautiful contrast against the light purple saree, adding depth and dimension to your ensemble.', ' Standard Delivery in 25 - 30 days', 'partysaree153.jpg'),
(18, 'partysaree161.jpg', 'partysaree162.jpg', 'Radiant Sunset Orange-Golden S', 34999.00, ' This stunning saree features a vibrant orange base that radiates energy and joy, beautifully complemented by intricate golden accents that add a touch of luxury and sophistication.', ' Standard Delivery in 25 - 30 days', 'partysaree163.jpg'),
(19, 'partysaree171.jpg', 'partysaree172.jpg', 'Blush Elegance Pink Saree', 44500.00, ' This exquisite saree features a delicate blush pink base that radiates femininity, beautifully complemented by off-gray accents that add depth and contrast.', ' Standard Delivery in 25 - 30 days', 'partysaree173.jpg'),
(20, 'partysaree181.jpg', 'partysaree182.jpg', 'Opulent Blush Diamond Work Sar', 44900.00, ' This exquisite saree features a soft blush pink base that exudes femininity and grace, making it a perfect choice for special occasions and celebrations.', ' Standard Delivery in 25 - 30 days', 'partysaree183.jpg'),
(21, 'partysaree191.jpg', 'partysaree192.jpg', 'Enchanted Mehndi Green Full Wo', 45000.00, ' The saree is adorned with intricate full work, showcasing a blend of traditional embroidery techniques and modern design elements. The detailed craftsmanship includes elaborate zari, sequins, and thread work that create mesmerizing patterns and motifs throughout the fabric. ', ' Standard Delivery in 25 - 30 days', 'partysaree193.jpg'),
(22, 'partysaree201.jpg', 'partysaree202.jpg', 'Royal Blue Allure Full Work Sa', 51000.00, ' Accessorize with statement jewelry, such as chandelier earrings or a bold cuff bracelet, to elevate your look. The Royal Blue Allure Full Work Saree is not just an outfit; it’s a celebration of artistry and style, perfect for making a memorable impression at any event.', ' Standard Delivery in 25 - 30 days', 'partysaree203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `partywestern`
--

CREATE TABLE `partywestern` (
  `sno` int(11) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `image3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partywestern`
--

INSERT INTO `partywestern` (`sno`, `image1`, `image2`, `name`, `price`, `desc`, `shipping`, `image3`) VALUES
(5, 'partywestern11.jpg', 'partywestern12.jpg', 'NAL-1', 15999.00, 'Step into elegance with the Lavender Indo-Western Dress with Shrug, a ', 'Standard Delivery in 25 - 30 days ', 'partywestern13.jpg'),
(6, 'partywestern21.jpg', 'partywestern22.jpg', 'NAL-2', 22000.00, ' Elevate your style with the Elegant White Indo-Western Dress with Koti, a stunning ensemble that beautifully blends traditional aesthetics with contemporary flair. This outfit is perfect for festive occasions, weddings, or any event where you want to make a sophisticated statement.', ' Standard Delivery in 25 - 30 days', 'partywestern23.jpg'),
(7, 'partywestern31.jpg', 'partywestern32.jpg', 'NAL-3', 15999.00, ' Embrace the perfect blend of tradition and modernity with the Chic Indo-Western Dress featuring a Palazzo, Blouse, and Dupatta. This stunning ensemble is designed for those who appreciate elegance and comfort, making it ideal for festive occasions, family gatherings, or casual outings.', ' Standard Delivery in 25 - 30 days', 'partywestern33.jpg'),
(11, 'partywestern41.jpg', 'partywestern42.jpg', 'NAL-4', 14500.00, ' Embrace the perfect blend of tradition and modernity with the Chic Indo-Western Dress featuring a Palazzo, Blouse, and Dupatta. This stunning ensemble is designed for those who appreciate elegance and comfort, making it ideal for festive occasions, family gatherings, or casual outings.', ' Standard Delivery in 25 - 30 days', 'partywestern43.jpg'),
(12, 'partywestern51.jpg', 'partywestern52.jpg', 'NAL-5', 15500.00, ' Make a bold statement with the Radiant Red Indo-Western Ensemble, a stunning outfit that beautifully fuses traditional charm with contemporary style. ', ' Standard Delivery in 25 - 30 days', 'partywestern53.jpg'),
(13, 'partywestern61.jpg', 'partywestern62.jpg', 'NAL-6', 9999.00, ' Step into sophistication with the Elegant White Indo-Western Dhoti Set featuring a stylish shrug. This stunning ensemble beautifully merges traditional elements with contemporary flair, making it perfect for festive occasions, weddings, or any event where you want to make a memorable impression.', 'Standard Delivery in 25 - 30 days ', 'partywestern63.jpg'),
(14, 'partywestern71.jpg', 'partywestern72.jpg', 'NAL-7', 16000.00, ' Elevate your style with the Chic Black Indo-Western Pant Set, a sophisticated ensemble that seamlessly blends traditional aesthetics with modern flair. ', ' Standard Delivery in 25 - 30 days', 'partywestern73.jpg'),
(15, 'partywestern81.jpg', 'partywestern82.jpg', 'NAL-8', 13900.00, ' Embrace the perfect blend of tradition and modernity with the Stylish Sharara Kurti Set, an exquisite Indo-Western ensemble that exudes elegance and charm. This stunning outfit is ideal for festive occasions, weddings, or any event where you want to make a fashionable statement.\r\n\r\n\r\n', ' Standard Delivery in 25 - 30 days', 'partywestern83.jpg'),
(16, 'partywestern91.jpg', 'partywestern92.jpg', 'NAL-9', 17800.00, ' Step into a realm of sophistication and glamour with the Blue and Golden Lehenga Set, a stunning Indo-Western ensemble that beautifully combines traditional craftsmanship with contemporary design. ', 'Standard Delivery in 25 - 30 days ', 'partywestern93.jpg'),
(17, 'partywestern101.jpg', 'partywestern102.jpg', 'NAL-10', 16000.00, ' Make a striking statement with the Black Indo-Western Ensemble featuring a Shimmer Koti, a perfect blend of traditional elegance and contemporary style.', ' Standard Delivery in 25 - 30 days', 'partywestern103.jpg'),
(21, 'partywestern111.jpg', 'partywestern112.jpg', 'NAL-11', 15900.00, ' Elevate your fashion game with the Chic Skirt and Blouse Indo-Western Set, a stunning ensemble that beautifully merges traditional elements with contemporary style.', 'Standard Delivery in 25 - 30 days ', 'partywestern113.jpg'),
(22, 'partywestern121.jpg', 'partywestern122.jpg', 'NAL-12', 18900.00, 'Embrace a fresh and vibrant look with the Light Green Blouse, Skirt, and Shrug Set, a stunning Indo-Western ensemble that beautifully combines elegance and comfort. This outfit is perfect for casual outings, festive occasions, or any event where you want to make a stylish impression.', ' Standard Delivery in 25 - 30 days', 'partywestern123.jpg'),
(23, 'partywestern131.jpg', 'partywestern132.jpg', 'NAL-13', 22000.00, ' Step into a world of vibrant elegance with the Floral Print Indo-Western Shrug Dress, a stunning ensemble that beautifully combines traditional charm with contemporary flair.', ' Standard Delivery in 25 - 30 days', 'partywestern133.jpg'),
(24, 'partywestern141.jpg', 'partywestern142.jpg', 'NAL-14 ', 21000.00, ' Embrace a unique blend of tradition and modernity with the Blue Dhoti Set featuring a stylish Blouse and Dupatta. This stunning Indo-Western ensemble is perfect for festive occasions, weddings, or any event where you want to make a fashionable statement.', 'Standard Delivery in 25 - 30 days ', 'partywestern143.jpg'),
(25, 'partywestern151.jpg', 'partywestern152.jpg', 'NAL-15', 19900.00, ' Step into elegance with the Pink Dhoti Set featuring a stylish Blouse and Dupatta, a stunning Indo-Western ensemble that beautifully combines traditional aesthetics with contemporary flair.', ' Standard Delivery in 25 - 30 days', 'partywestern153.jpg'),
(26, 'partywestern161.jpg', 'partywestern162.jpg', 'NAL-16', 20000.00, ' Make a bold and sophisticated statement with the Elegant Black Lehenga Set featuring a stylish Blouse and Shrug.', ' Standard Delivery in 25 - 30 days', 'partywestern163.jpg'),
(27, 'partywestern171.jpg', 'partywestern172.jpg', 'NAL-17', 25000.00, ' Illuminate your wardrobe with the Yellow and Golden Palazzo Set featuring a stylish Blouse and Shrug, a stunning Indo-Western ensemble that beautifully combines vibrant colors with contemporary design. ', ' Standard Delivery in 25 - 30 days', 'partywestern173.jpg'),
(28, 'partywestern181.jpg', 'partywestern182.jpg', 'NAL-18', 23600.00, ' Brighten up your wardrobe with the Stylish Yellow Kurta and Palazzo Set, a stunning Indo-Western ensemble that beautifully combines traditional charm with contemporary flair.', ' Standard Delivery in 25 - 30 days', 'partywestern183.jpg'),
(29, 'partywestern191.jpg', 'partywestern192.jpg', 'NAL-19', 18500.00, ' Elevate your style with the Pink Shimmer Kurta and Palazzo Set, a stunning Indo-Western ensemble that beautifully combines traditional elegance with contemporary flair', ' Standard Delivery in 25 - 30 days', 'partywestern193.jpg'),
(32, 'partywestern201.jpg', 'partywestern202.jpg', 'NAL-20', 20500.00, ' Step into the spotlight with the Vibrant Yellow Sharara and Coat Set, a stunning Indo-Western ensemble that beautifully blends traditional charm with contemporary sophistication. ', ' Standard Delivery in 25 - 30 days', 'partywestern203.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrival`
--
ALTER TABLE `arrival`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `bag`
--
ALTER TABLE `bag`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `bottom`
--
ALTER TABLE `bottom`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualco_ord`
--
ALTER TABLE `casualco_ord`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualfrock`
--
ALTER TABLE `casualfrock`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualgown`
--
ALTER TABLE `casualgown`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualjacket`
--
ALTER TABLE `casualjacket`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualkaftan`
--
ALTER TABLE `casualkaftan`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualkurta`
--
ALTER TABLE `casualkurta`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `casualpallazo`
--
ALTER TABLE `casualpallazo`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `celebrity`
--
ALTER TABLE `celebrity`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `dupatta`
--
ALTER TABLE `dupatta`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `earing`
--
ALTER TABLE `earing`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `necklace`
--
ALTER TABLE `necklace`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partyanarkali`
--
ALTER TABLE `partyanarkali`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partyco_ord`
--
ALTER TABLE `partyco_ord`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partygown`
--
ALTER TABLE `partygown`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partykaftan`
--
ALTER TABLE `partykaftan`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partylehenga`
--
ALTER TABLE `partylehenga`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partysaree`
--
ALTER TABLE `partysaree`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `partywestern`
--
ALTER TABLE `partywestern`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrival`
--
ALTER TABLE `arrival`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `bag`
--
ALTER TABLE `bag`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bottom`
--
ALTER TABLE `bottom`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `casualco_ord`
--
ALTER TABLE `casualco_ord`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `casualfrock`
--
ALTER TABLE `casualfrock`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `casualgown`
--
ALTER TABLE `casualgown`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `casualjacket`
--
ALTER TABLE `casualjacket`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `casualkaftan`
--
ALTER TABLE `casualkaftan`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `casualkurta`
--
ALTER TABLE `casualkurta`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `casualpallazo`
--
ALTER TABLE `casualpallazo`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `celebrity`
--
ALTER TABLE `celebrity`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dupatta`
--
ALTER TABLE `dupatta`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `earing`
--
ALTER TABLE `earing`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `necklace`
--
ALTER TABLE `necklace`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `partyanarkali`
--
ALTER TABLE `partyanarkali`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `partyco_ord`
--
ALTER TABLE `partyco_ord`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `partygown`
--
ALTER TABLE `partygown`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `partykaftan`
--
ALTER TABLE `partykaftan`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `partylehenga`
--
ALTER TABLE `partylehenga`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `partysaree`
--
ALTER TABLE `partysaree`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `partywestern`
--
ALTER TABLE `partywestern`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
