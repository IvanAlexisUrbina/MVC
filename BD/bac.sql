-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2023 a las 01:24:39
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bac2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `action_permissions`
--

CREATE TABLE `action_permissions` (
  `id` int(11) NOT NULL,
  `m_id` int(11) DEFAULT NULL,
  `action_name` varchar(50) DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `allowed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_status`
--

CREATE TABLE `activity_status` (
  `act_status_id` int(11) NOT NULL,
  `act_status__name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `activity_status`
--

INSERT INTO `activity_status` (`act_status_id`, `act_status__name`) VALUES
(1, 'Pendiente'),
(2, 'En Progreso'),
(3, 'Completada'),
(4, 'Cancelada'),
(5, 'Reprogramada'),
(6, 'Pospuesta'),
(7, 'En Espera'),
(8, 'Rechazada'),
(9, 'Vencida'),
(10, 'En Revisión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `ar_id` int(11) NOT NULL,
  `ar_name` varchar(60) NOT NULL,
  `ar_desc` varchar(300) NOT NULL,
  `ar_code` varchar(300) DEFAULT NULL,
  `ar_characteristics` text NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `ar_measurement_value` double DEFAULT NULL,
  `ar_img_url` varchar(300) NOT NULL,
  `ar_data_url` varchar(300) DEFAULT NULL,
  `mt_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sbcat_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`ar_id`, `ar_name`, `ar_desc`, `ar_code`, `ar_characteristics`, `color_id`, `ar_measurement_value`, `ar_img_url`, `ar_data_url`, `mt_id`, `cat_id`, `sbcat_id`, `status_id`) VALUES
(1, 'Clavos', 'desc', 'code', 'gris;metal', 1, 12, 'uploads/articles/img/1/clavo.jpeg', 'uploads/articles/dataSheet/1/Oferta de ventas_20230414_123200.pdf', 3, 1, NULL, 1),
(2, 'Pala', 'desc', 'code', 'mango largo;amarilla', 2, 12, 'uploads/articles/img/2/pala.jpeg', 'uploads/articles/dataSheet/2/Oferta de ventas_20230414_123200.pdf', 2, 2, NULL, 1),
(3, 'Martillo ', 'desc martillo', 'code', 'pequeño;importado', 3, 0, 'uploads/articles/img/3/R.jpeg', 'uploads/articles/dataSheet/3/Oferta de ventas_20230414_123200.pdf', 8, 2, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(60) NOT NULL,
  `cat_desc` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_desc`) VALUES
(1, 'Ferreteria', 'aquí van los artículos utilizados para construcción.'),
(2, 'Electrodomesticos', 'desc electro'),
(3, 'CARPINTERIA', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors`
--

CREATE TABLE `colors` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(50) NOT NULL,
  `color_code` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colors`
--

INSERT INTO `colors` (`color_id`, `color_name`, `color_code`) VALUES
(1, 'Blanco', '#f8f8f8'),
(2, 'Negro', '#444444'),
(3, 'Rojo', '#ff9999'),
(4, 'Azul', '#99ccff'),
(5, 'Verde', '#99ff99'),
(6, 'Amarillo', '#ffff99'),
(7, 'Rosado', '#ffb3d9'),
(8, 'Naranja', '#ffcc99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company`
--

CREATE TABLE `company` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(60) DEFAULT NULL,
  `c_desc` varchar(100) DEFAULT NULL,
  `c_num_nit` varchar(255) DEFAULT NULL,
  `c_route_rut` varchar(255) DEFAULT NULL,
  `c_route_cc_representant` varchar(255) DEFAULT NULL,
  `c_chamber_commerce` varchar(255) DEFAULT NULL,
  `c_form_inscription` varchar(255) DEFAULT NULL,
  `c_certificate_bank` varchar(255) DEFAULT NULL,
  `c_street` varchar(60) DEFAULT NULL,
  `c_apartament` varchar(30) DEFAULT NULL,
  `c_country` varchar(30) DEFAULT NULL,
  `c_city` varchar(60) DEFAULT NULL,
  `c_state` varchar(60) DEFAULT NULL,
  `c_postal_code` int(30) DEFAULT NULL,
  `c_shippingStreet` varchar(60) DEFAULT NULL,
  `c_shippingApartament` varchar(60) DEFAULT NULL,
  `c_shippingCountry` varchar(60) DEFAULT NULL,
  `c_shippingCity` varchar(60) DEFAULT NULL,
  `c_shippingState` varchar(60) DEFAULT NULL,
  `c_shippingPostalcode` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_subs` int(11) DEFAULT NULL,
  `tpi_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `company`
--

INSERT INTO `company` (`c_id`, `c_name`, `c_desc`, `c_num_nit`, `c_route_rut`, `c_route_cc_representant`, `c_chamber_commerce`, `c_form_inscription`, `c_certificate_bank`, `c_street`, `c_apartament`, `c_country`, `c_city`, `c_state`, `c_postal_code`, `c_shippingStreet`, `c_shippingApartament`, `c_shippingCountry`, `c_shippingCity`, `c_shippingState`, `c_shippingPostalcode`, `created_at`, `id_subs`, `tpi_id`, `status_id`, `u_id`) VALUES
(1, 'Business And Connection', 'solutions technology', '3423421-323', NULL, NULL, NULL, NULL, NULL, 'CALLE 1 C #76 A 25', 'APARTAMENTO E 202', 'Colombia', 'CALI', 'Valle del Cauca', 760035, 'CALLE 1 C #76 A 25', 'APARTAMENTO E 202', 'Colombia', 'CALI', 'Valle del Cauca', 760035, '2023-06-20 19:30:42', NULL, 2, 1, NULL),
(54, 'Comercializadora Valencia', 'descripcion empresa', '81293819283-9', 'uploads/companies/company_54/rut/Capturas de pantalla Portal de Clientes.pdf', 'uploads/companies/company_54/chamber_of_commerce/Capturas de pantalla Portal de Clientes.pdf', 'uploads/companies/company_54/representative_cedula/Capturas de pantalla Portal de Clientes.pdf', 'uploads/companies/company_54/form_inscription/Capturas de pantalla Portal de Clientes.pdf', 'uploads/companies/company_54/certificate_bank/Capturas de pantalla Portal de Clientes.pdf', NULL, NULL, 'Colombia', 'RIOSUCIO', 'CHOCO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-02 17:35:07', 13, 3, 1, NULL),
(67, 'LA MUELA', 'descfsafsdf', '3423421-3', 'uploads/companies/company_67/rut/Diseño sin título.pdf', 'uploads/companies/company_67/chamber_of_commerce/Diseño sin título.pdf', 'uploads/companies/company_67/representative_cedula/Diseño sin título.pdf', 'uploads/companies/company_67/form_inscription/Diseño sin título.pdf', 'uploads/companies/company_67/certificate_bank/Diseño sin título.pdf', NULL, NULL, 'Colombia', 'PROVIDENCIA Y SANTA CATALINA', 'ARCHIPIELAGO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-18 17:21:40', 13, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditlimits`
--

CREATE TABLE `creditlimits` (
  `limit_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `credit_limit` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credittransactions`
--

CREATE TABLE `credittransactions` (
  `transaction_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm`
--

CREATE TABLE `crm` (
  `crm_id` int(11) NOT NULL,
  `crm_activity` varchar(60) NOT NULL,
  `crm_area` varchar(60) NOT NULL,
  `crm_date_time_init` datetime NOT NULL,
  `crm_date_time_end` datetime NOT NULL,
  `crm_desc` text NOT NULL,
  `crm_reminder` datetime DEFAULT NULL,
  `crm_status` int(11) DEFAULT NULL,
  `assignor_id` int(11) NOT NULL,
  `id_prst` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `crm`
--

INSERT INTO `crm` (`crm_id`, `crm_activity`, `crm_area`, `crm_date_time_init`, `crm_date_time_end`, `crm_desc`, `crm_reminder`, `crm_status`, `assignor_id`, `id_prst`) VALUES
(5, 'reunion', 'soporte', '2023-09-22 13:59:27', '2023-09-15 13:59:00', 'desc', '2023-09-22 13:59:00', 1, 86, 1),
(6, 'llamada', 'ventas', '2023-09-22 15:33:16', '2023-09-07 15:33:00', 'desc 2', '2023-09-29 15:33:00', 4, 86, 1),
(7, 'llamada', 'ventas', '2023-09-26 17:25:53', '2023-09-26 17:35:00', 'desc', '2023-09-26 20:33:00', 1, 86, 3),
(8, 'llamada', 'ventas', '2023-09-27 11:04:04', '2023-09-21 11:04:00', 'desc', '2023-09-15 11:04:00', 3, 86, 2),
(9, 'llamada', 'ventas', '2023-09-27 11:21:18', '2023-09-27 11:21:00', 'desc', '2023-09-27 11:21:00', 1, 86, 4),
(10, 'tarea', 'Cotizacion', '2023-09-27 12:11:54', '2023-09-22 12:12:00', 'desc', '2023-09-27 12:13:00', 1, 86, 1),
(11, 'reunion', 'ventas', '2023-10-02 10:00:01', '2023-10-02 11:00:00', 'Descripción Reunión de cierre', '2023-09-30 10:49:00', 1, 86, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_meeting`
--

CREATE TABLE `crm_meeting` (
  `crm_meet_id` int(11) NOT NULL,
  `crm_id` int(11) NOT NULL,
  `meeting_type` varchar(255) DEFAULT NULL,
  `meeting_link` varchar(255) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `crm_meeting`
--

INSERT INTO `crm_meeting` (`crm_meet_id`, `crm_id`, `meeting_type`, `meeting_link`, `comments`, `u_id`, `c_id`) VALUES
(4, 5, 'ASUNTO PRUEBA', 'fasdfasd', 'asdfasd', 98, 67),
(5, 6, NULL, NULL, NULL, 87, 67),
(6, 7, NULL, NULL, NULL, 87, 67),
(7, 8, NULL, NULL, NULL, 9, 67),
(8, 9, NULL, NULL, NULL, 86, 67),
(9, 10, NULL, NULL, NULL, 86, 67),
(10, 11, 'Cierre de negocio', 'link de la reunion', 'Ese día nos reuniremos con el gerente para intentar cerrar el negocio.', 87, 67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_discounts`
--

CREATE TABLE `customer_discounts` (
  `cd_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `sbcat_id` int(11) DEFAULT NULL,
  `ar_id` int(11) DEFAULT NULL,
  `gp_id` int(11) DEFAULT NULL,
  `price_discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `customer_discounts`
--

INSERT INTO `customer_discounts` (`cd_id`, `c_id`, `cat_id`, `sbcat_id`, `ar_id`, `gp_id`, `price_discount`) VALUES
(18, 67, 1, 1, 1, 46, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_payment_method`
--

CREATE TABLE `customer_payment_method` (
  `customer_payment_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `customer_payment_method`
--

INSERT INTO `customer_payment_method` (`customer_payment_id`, `c_id`, `payment_method_id`) VALUES
(38, 67, 1),
(39, 67, 2),
(40, 67, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra_attributes_articles`
--

CREATE TABLE `extra_attributes_articles` (
  `art_attrs_id` int(11) NOT NULL,
  `art_attrs_name` varchar(60) NOT NULL,
  `art_attrs_desc` varchar(60) NOT NULL,
  `art_attrs_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra_attributes_order`
--

CREATE TABLE `extra_attributes_order` (
  `order_attrs_id` int(11) NOT NULL,
  `order_attrs_name` varchar(60) NOT NULL,
  `order_attrs_desc` varchar(60) NOT NULL,
  `order_attrs_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra_attributes_quotes`
--

CREATE TABLE `extra_attributes_quotes` (
  `quote_attrs_id` int(11) NOT NULL,
  `quote_attrs_name` varchar(60) NOT NULL,
  `quote_attrs_desc` varchar(60) NOT NULL,
  `quote_attrs_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `quo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_discounts`
--

CREATE TABLE `group_discounts` (
  `gp_id` int(11) NOT NULL,
  `gp_name` varchar(50) NOT NULL,
  `gp_discount_percentage` float DEFAULT NULL,
  `gp_coupon` varchar(200) DEFAULT NULL,
  `gp_date_end_discount` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `group_discounts`
--

INSERT INTO `group_discounts` (`gp_id`, `gp_name`, `gp_discount_percentage`, `gp_coupon`, `gp_date_end_discount`) VALUES
(46, 'GRUPO PRUEBA', 12, 'cupon', '2023-09-14 15:14:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `measurement_type`
--

CREATE TABLE `measurement_type` (
  `mt_id` int(11) NOT NULL,
  `mt_name` varchar(50) NOT NULL,
  `mt_meas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `measurement_type`
--

INSERT INTO `measurement_type` (`mt_id`, `mt_name`, `mt_meas`) VALUES
(1, 'metros cuadrados', 'm²'),
(2, 'kilogramos', 'kg'),
(3, 'metros cúbicos', 'm³'),
(4, 'litros', 'L'),
(5, 'pies', 'ft'),
(6, 'pulgadas', 'in'),
(7, 'yardas', 'yd'),
(8, 'Unidad', 'Unit');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `recipients` text NOT NULL,
  `send_date` datetime NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `m_id` int(11) NOT NULL,
  `m_name` varchar(60) NOT NULL,
  `m_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`m_id`, `m_name`, `m_desc`) VALUES
(1, 'dashboard', 'dashboarddd\r\n'),
(2, 'quotes', 'module of quotes articles'),
(3, 'order', 'module of order of articles'),
(4, 'list_prices', 'module of list_orices customers and companies'),
(5, 'warehouse', 'module of warehouse create,edit,delete'),
(6, 'stock', 'module stock articles '),
(7, 'reports', 'module reports of system ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `order_name` varchar(60) NOT NULL,
  `order_desc` varchar(60) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_payment_method` varchar(30) NOT NULL,
  `order_company` varchar(60) NOT NULL,
  `order_shipping_address` varchar(60) NOT NULL,
  `order_email` varchar(30) NOT NULL,
  `order_phone` varchar(30) NOT NULL,
  `order_comments` varchar(60) NOT NULL,
  `order_cedula_nit` varchar(30) DEFAULT NULL,
  `order_subtotal` decimal(10,2) NOT NULL,
  `order_iva` decimal(10,2) NOT NULL,
  `order_total` decimal(10,2) NOT NULL,
  `order_url_document` varchar(255) DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `order_state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `order`
--

INSERT INTO `order` (`order_id`, `order_name`, `order_desc`, `order_date`, `order_payment_method`, `order_company`, `order_shipping_address`, `order_email`, `order_phone`, `order_comments`, `order_cedula_nit`, `order_subtotal`, `order_iva`, `order_total`, `order_url_document`, `u_id`, `order_state_id`) VALUES
(18, 'IVAN ALEXIS URBINA MELO', 'a', '2023-08-31 21:11:36', '3', '67', 'calle 1 c', 'iaurbina04@misena.edu.co', '2147483647', 'aa', '1144108606', '5200.00', '988.00', '6188.00', 'uploads/orders/18/Document_orders_18_20230831231136.pdf', 87, 1),
(19, 'IVAN ALEXIS URBINA MELO', 'a', '2023-09-05 16:36:21', '2', '67', 'No hay dirección de envío registrada - Ingresa una direccion', 'iaurbina04@misena.edu.coa', '2147483647', 'asdf', '2147483647', '2400.00', '456.00', '2856.00', 'uploads/orders/19/Document_orders_19_20230905183621.pdf', 86, 1),
(20, 'IVAN ALEXIS URBINA MELO', 'a', '2023-10-18 16:07:04', '1', '67', 'No hay dirección de envío registrada - Ingresa una direccion', 'iaurbina04@misena.edu.coa', '2147483647', 'comments', '2147483647', '2112.00', '401.28', '2513.28', 'uploads/orders/20/Document_orders_20_20231018110704.pdf', 87, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_articles`
--

CREATE TABLE `order_articles` (
  `orderart_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `ar_id` int(11) NOT NULL,
  `orderart_quantity` int(11) NOT NULL,
  `orderart_pricenormal` float NOT NULL,
  `orderart_discountPercentajeOrPrice` varchar(255) NOT NULL,
  `orderart_discountPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `order_articles`
--

INSERT INTO `order_articles` (`orderart_id`, `order_id`, `ar_id`, `orderart_quantity`, `orderart_pricenormal`, `orderart_discountPercentajeOrPrice`, `orderart_discountPrice`) VALUES
(17, 18, 1, 2, 1200, 'No', 1200),
(18, 18, 2, 2, 1400, 'No', 1400),
(19, 19, 1, 2, 1200, 'No', 1200),
(20, 20, 1, 2, 1200, '12%', 1056);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_states`
--

CREATE TABLE `order_states` (
  `order_state_id` int(11) NOT NULL,
  `state_name_en` varchar(50) DEFAULT NULL,
  `state_name_es` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `order_states`
--

INSERT INTO `order_states` (`order_state_id`, `state_name_en`, `state_name_es`) VALUES
(1, 'Pending', 'Pendiente'),
(2, 'In Process', 'En proceso'),
(3, 'Approved', 'Aprobada'),
(4, 'Shipped', 'Enviada'),
(5, 'Delivered', 'Entregada'),
(6, 'Cancelled', 'Cancelada'),
(7, 'Refunded', 'Reembolsada'),
(8, 'Returned', 'Devuelta'),
(9, 'Completed', 'Completada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partners`
--

CREATE TABLE `partners` (
  `id_partner` int(11) NOT NULL,
  `partner_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jwt_token` varchar(500) NOT NULL,
  `token_expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_method_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `payment_methods`
--

INSERT INTO `payment_methods` (`payment_method_id`, `name`) VALUES
(1, 'Tarjeta de crédito'),
(2, 'Efectivo'),
(3, 'PayPal'),
(4, 'Transferencia bancaria'),
(5, 'Criptomoneda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `m_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prices`
--

CREATE TABLE `prices` (
  `p_id` int(11) NOT NULL,
  `ar_id` int(11) NOT NULL,
  `wh_id` int(11) NOT NULL,
  `p_value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prices`
--

INSERT INTO `prices` (`p_id`, `ar_id`, `wh_id`, `p_value`) VALUES
(33, 1, 21, 1200),
(34, 2, 21, 1400),
(35, 3, 22, 3800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priority_states`
--

CREATE TABLE `priority_states` (
  `id_prst` int(11) NOT NULL,
  `prst_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `priority_states`
--

INSERT INTO `priority_states` (`id_prst`, `prst_name`) VALUES
(1, 'Alta Prioridad'),
(2, 'Prioridad Media'),
(3, 'Baja Prioridad'),
(4, 'Sin Prioridad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_requests`
--

CREATE TABLE `purchase_requests` (
  `pr_id` int(11) NOT NULL,
  `pr_desc` text NOT NULL,
  `pr_quantity` decimal(10,2) NOT NULL,
  `pr_date_request` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pr_url_document` varchar(255) DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `purchase_requests`
--

INSERT INTO `purchase_requests` (`pr_id`, `pr_desc`, `pr_quantity`, `pr_date_request`, `pr_url_document`, `u_id`, `state_id`, `type_id`, `c_id`) VALUES
(1, 'desc', '20000.00', '2023-10-11 17:19:05', NULL, 86, 1, 1, NULL),
(2, 'desc', '2212312.00', '2023-10-11 17:19:14', NULL, 86, 1, 1, NULL),
(4, 'comments', '2856.00', '2023-10-11 17:14:23', 'uploads/requestdocs/4/Document_requestdocs_4_20231010235854.pdf', 86, 1, 2, 67),
(5, '11/10/2023', '5845.28', '2023-10-11 17:14:25', 'uploads/requestdocs/5/Document_requestdocs_5_20231011165629.pdf', 86, 1, 2, 67),
(6, 'aasdas', '1256.64', '2023-10-18 11:28:04', 'uploads/requestdocs/6/Document_requestdocs_6_20231018112804.pdf', 87, 1, 2, 67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_request_articles`
--

CREATE TABLE `purchase_request_articles` (
  `reqart_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL,
  `ar_id` int(11) NOT NULL,
  `reqart_quantity` int(11) NOT NULL,
  `reqart_pricenormal` float NOT NULL,
  `reqart_discountPercentajeOrPrice` varchar(255) NOT NULL,
  `reqart_discountPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `purchase_request_articles`
--

INSERT INTO `purchase_request_articles` (`reqart_id`, `pr_id`, `ar_id`, `reqart_quantity`, `reqart_pricenormal`, `reqart_discountPercentajeOrPrice`, `reqart_discountPrice`) VALUES
(1, 4, 1, 2, 1200, 'No', 1200),
(2, 5, 1, 2, 1200, '12%', 1056),
(3, 5, 2, 2, 1400, '12%', 1400),
(4, 6, 1, 1, 1200, '12%', 1056);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_request_states`
--

CREATE TABLE `purchase_request_states` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `purchase_request_states`
--

INSERT INTO `purchase_request_states` (`state_id`, `state_name`) VALUES
(1, 'Pendiente de Aprobación'),
(2, 'Aprobada'),
(3, 'Rechazada'),
(4, 'En Proceso'),
(5, 'Completada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_request_types`
--

CREATE TABLE `purchase_request_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `purchase_request_types`
--

INSERT INTO `purchase_request_types` (`type_id`, `type_name`) VALUES
(1, 'Viáticos'),
(2, 'Productos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quotes`
--

CREATE TABLE `quotes` (
  `quo_id` int(11) NOT NULL,
  `quo_name` varchar(60) NOT NULL,
  `quo_desc` varchar(60) NOT NULL,
  `quo_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `quo_payment_method` varchar(30) NOT NULL,
  `quo_company` varchar(60) NOT NULL,
  `quo_shipping_address` varchar(60) NOT NULL,
  `quo_email` varchar(30) NOT NULL,
  `quo_phone` int(11) NOT NULL,
  `quo_comments` varchar(60) DEFAULT NULL,
  `quo_cedula_nit` varchar(30) DEFAULT NULL,
  `quo_subtotal` decimal(10,2) NOT NULL,
  `quo_iva` decimal(10,2) NOT NULL,
  `quo_total` decimal(10,2) NOT NULL,
  `quo_url_document` varchar(255) DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `quote_state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `quotes`
--

INSERT INTO `quotes` (`quo_id`, `quo_name`, `quo_desc`, `quo_date`, `quo_payment_method`, `quo_company`, `quo_shipping_address`, `quo_email`, `quo_phone`, `quo_comments`, `quo_cedula_nit`, `quo_subtotal`, `quo_iva`, `quo_total`, `quo_url_document`, `u_id`, `quote_state_id`) VALUES
(79, 'IVAN ALEXIS URBINA MELO', 'a', '2023-08-31 20:41:46', '2', '67', 'CALLE 1 C #76 A 25\r\nAPARTAMENTO E 202', 'iaurbina04@misena.edu.co', 2147483647, 'comments', '1144108606', '6600.00', '1254.00', '7854.00', 'uploads/quotes/79/Document_quotes_79_20230831224146.pdf', 87, 1),
(80, 'IVAN ALEXIS URBINA MELO', 'a', '2023-09-05 17:13:09', '2', '67', 'No hay dirección de envío registrada - Ingresa una direccion', 'iaurbina04@misena.edu.coa', 2147483647, 'asdfasdf', '2147483647', '2400.00', '456.00', '2856.00', 'uploads/quotes/80/Document_quotes_80_20230905191309.pdf', 86, 1),
(81, 'IVAN ALEXIS URBINA MELO', 'a', '2023-09-05 23:17:41', '2', '67', 'No hay dirección de envío registrada - Ingresa una direccion', 'iaurbina04@misena.edu.coa', 2147483647, '', '2147483647', '2800.00', '532.00', '3332.00', 'uploads/quotes/81/Document_quotes_81_20230906011741.pdf', 86, 1),
(82, 'IVAN ALEXIS URBINA MELO', 'a', '2023-10-18 15:48:39', '1', '67', 'No hay dirección de envío registrada - Ingresa una direccion', 'iaurbina04@misena.edu.coa', 2147483647, 'aaa', '2147483647', '1056.00', '200.64', '1256.64', 'uploads/quotes/82/Document_quotes_82_20231018104839.pdf', 87, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quotes_states`
--

CREATE TABLE `quotes_states` (
  `quote_state_id` int(11) NOT NULL,
  `quote_state_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `quotes_states`
--

INSERT INTO `quotes_states` (`quote_state_id`, `quote_state_name`) VALUES
(1, 'Valida'),
(2, 'Invalida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quote_articles`
--

CREATE TABLE `quote_articles` (
  `quoart_id` int(11) NOT NULL,
  `quo_id` int(11) NOT NULL,
  `ar_id` int(11) NOT NULL,
  `quoart_quantity` int(11) NOT NULL,
  `quoart_pricenormal` float NOT NULL,
  `quoart_discountPercentajeOrPrice` varchar(255) NOT NULL,
  `quoart_discountPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `quote_articles`
--

INSERT INTO `quote_articles` (`quoart_id`, `quo_id`, `ar_id`, `quoart_quantity`, `quoart_pricenormal`, `quoart_discountPercentajeOrPrice`, `quoart_discountPrice`) VALUES
(85, 79, 1, 2, 1200, 'No', 1200),
(86, 79, 2, 3, 1400, 'No', 1400),
(87, 80, 1, 2, 1200, 'No', 1200),
(88, 81, 2, 2, 1400, 'No', 1400),
(89, 82, 1, 1, 1200, '12%', 1056);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(11) NOT NULL,
  `rol_name` varchar(30) NOT NULL,
  `rol_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rol_id`, `rol_name`, `rol_desc`) VALUES
(1, 'Programmer', 'Administer modules, common users and Admins'),
(2, 'Commercial Director', 'Commercial Director'),
(3, 'Sellers', 'Sellers of application'),
(4, 'User', 'User Common client');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sellers_customers`
--

CREATE TABLE `sellers_customers` (
  `sc_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sellers_customers`
--

INSERT INTO `sellers_customers` (`sc_id`, `u_id`, `c_id`) VALUES
(3, 86, 67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `st_id` int(11) NOT NULL,
  `st_name` varchar(60) NOT NULL,
  `st_desc` varchar(100) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Activo'),
(2, 'Inactivo'),
(3, 'Pendiente'),
(4, 'Documentos registrados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `stock_name` varchar(60) NOT NULL,
  `stock_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `stock_Quantity` int(11) NOT NULL,
  `stock_lote` varchar(60) NOT NULL,
  `stock_date_entry` date DEFAULT NULL,
  `stock_expiration_date` date DEFAULT NULL,
  `ar_id` int(11) NOT NULL,
  `wh_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`stock_id`, `stock_name`, `stock_date`, `stock_Quantity`, `stock_lote`, `stock_date_entry`, `stock_expiration_date`, `ar_id`, `wh_id`) VALUES
(39, 'Stock 2023-08-31', '0000-00-00 00:00:00', 12, '231231234123', '2023-08-25', NULL, 1, 21),
(40, 'Stock 2023-08-31', '0000-00-00 00:00:00', 12, '231231234123', '2023-08-09', '2023-08-28', 2, 21),
(41, 'Stock 2023-08-31', '0000-00-00 00:00:00', 1500, '231231234123', '2023-08-16', '2023-08-07', 3, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `sbcat_id` int(11) NOT NULL,
  `sbcat_name` varchar(60) NOT NULL,
  `sbcat_desc` varchar(60) DEFAULT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`sbcat_id`, `sbcat_name`, `sbcat_desc`, `cat_id`) VALUES
(1, 'Construccion', 'descripcion de descripcion', 1),
(2, 'Reparaciones', 'descripcion de descripcion', 1),
(4, 'ARTPINTERIA', NULL, 3),
(5, 'AMOR', NULL, 3),
(6, 'Prueba', 'Pequeña', 2),
(7, 'dfsdf', 'fdf', 3),
(8, 'Prueba3', 'sdafasd', 2),
(9, 'Prueba4', '41234', 1),
(10, 'Prueba4', '41234', 1),
(11, 'Prueba3', 'KJSDFASD', 1),
(12, 'Prueba3', 'KJSDFASD', 1),
(13, 'Prueba3', 'FASDF', 2),
(14, 'Prueba4', 'sdfasd', 1),
(15, 'Prueba4', 'sdfasd', 1),
(16, 'EO', 'EO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscription`
--

CREATE TABLE `subscription` (
  `id_subs` int(11) NOT NULL,
  `subs_date_init` date NOT NULL,
  `subs_date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subscription`
--

INSERT INTO `subscription` (`id_subs`, `subs_date_init`, `subs_date_end`) VALUES
(13, '2023-07-17', '2024-07-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_municipios`
--

CREATE TABLE `tabla_municipios` (
  `NOMBRE_DEPTO` varchar(60) DEFAULT NULL,
  `PROVINCIA` varchar(60) DEFAULT NULL,
  `CODIGO_MUNICIPIO` varchar(60) DEFAULT NULL,
  `NOMBRE_MPIO` varchar(60) DEFAULT NULL,
  `Nombre` varchar(60) DEFAULT NULL,
  `Column_6` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla_municipios`
--

INSERT INTO `tabla_municipios` (`NOMBRE_DEPTO`, `PROVINCIA`, `CODIGO_MUNICIPIO`, `NOMBRE_MPIO`, `Nombre`, `Column_6`) VALUES
('AMAZONAS', 'AMAZONAS', '91263', 'EL ENCANTO', 'El Encanto', ''),
('AMAZONAS', 'AMAZONAS', '91405', 'LA CHORRERA', 'La Chorrera', ''),
('AMAZONAS', 'AMAZONAS', '91407', 'LA PEDRERA', 'La Pedrera', ''),
('AMAZONAS', 'AMAZONAS', '91430', 'LA VICTORIA', 'La Victoria', ''),
('AMAZONAS', 'AMAZONAS', '91001', 'LETICIA', 'Leticia', ''),
('AMAZONAS', 'AMAZONAS', '91460', 'MIRITI - PARANÁ', 'Miriti - Paraná', ''),
('AMAZONAS', 'AMAZONAS', '91530', 'PUERTO ALEGRIA', 'Puerto Alegria', ''),
('AMAZONAS', 'AMAZONAS', '91536', 'PUERTO ARICA', 'Puerto Arica', ''),
('AMAZONAS', 'AMAZONAS', '91540', 'PUERTO NARIÑO', 'Puerto Nariño', ''),
('AMAZONAS', 'AMAZONAS', '91669', 'PUERTO SANTANDER', 'Puerto Santander', ''),
('AMAZONAS', 'AMAZONAS', '91798', 'TARAPACÁ', 'Tarapacá', ''),
('ANTIOQUIA', 'BAJO CAUCA', '05120', 'CÁCERES', 'Cáceres', ''),
('ANTIOQUIA', 'BAJO CAUCA', '05154', 'CAUCASIA', 'Caucasia', ''),
('ANTIOQUIA', 'BAJO CAUCA', '05250', 'EL BAGRE', 'El Bagre', ''),
('ANTIOQUIA', 'BAJO CAUCA', '05495', 'NECHÍ', 'Nechí', ''),
('ANTIOQUIA', 'BAJO CAUCA', '05790', 'TARAZÁ', 'Tarazá', ''),
('ANTIOQUIA', 'BAJO CAUCA', '05895', 'ZARAGOZA', 'Zaragoza', ''),
('ANTIOQUIA', 'MAGDALENA MEDIO', '05142', 'CARACOLÍ', 'Caracolí', ''),
('ANTIOQUIA', 'MAGDALENA MEDIO', '05425', 'MACEO', 'Maceo', ''),
('ANTIOQUIA', 'MAGDALENA MEDIO', '05579', 'PUERTO BERRiO', 'Puerto Berrio', ''),
('ANTIOQUIA', 'MAGDALENA MEDIO', '05585', 'PUERTO NARE', 'Puerto Nare', ''),
('ANTIOQUIA', 'MAGDALENA MEDIO', '05591', 'PUERTO TRIUNFO', 'Puerto Triunfo', ''),
('ANTIOQUIA', 'MAGDALENA MEDIO', '05893', 'YONDÓ', 'Yondó', ''),
('ANTIOQUIA', 'NORDESTE', '05031', 'AMALFI', 'Amalfi', ''),
('ANTIOQUIA', 'NORDESTE', '05040', 'ANORÍ', 'Anorí', ''),
('ANTIOQUIA', 'NORDESTE', '05190', 'CISNEROS', 'Cisneros', ''),
('ANTIOQUIA', 'NORDESTE', '05604', 'REMEDIOS', 'Remedios', ''),
('ANTIOQUIA', 'NORDESTE', '05670', 'SAN ROQUE', 'San Roque', ''),
('ANTIOQUIA', 'NORDESTE', '05690', 'SANTO DOMINGO', 'Santo Domingo', ''),
('ANTIOQUIA', 'NORDESTE', '05736', 'SEGOVIA', 'Segovia', ''),
('ANTIOQUIA', 'NORDESTE', '05858', 'VEGACHÍ', 'Vegachí', ''),
('ANTIOQUIA', 'NORDESTE', '05885', 'YALÍ', 'Yalí', ''),
('ANTIOQUIA', 'NORDESTE', '05890', 'YOLOMBÓ', 'Yolombó', ''),
('ANTIOQUIA', 'NORTE', '05038', 'ANGOSTURA', 'Angostura', ''),
('ANTIOQUIA', 'NORTE', '05086', 'BELMIRA', 'Belmira', ''),
('ANTIOQUIA', 'NORTE', '05107', 'BRICEÑO', 'Briceño', ''),
('ANTIOQUIA', 'NORTE', '05134', 'CAMPAMENTO', 'Campamento', ''),
('ANTIOQUIA', 'NORTE', '05150', 'CAROLINA', 'Carolina', ''),
('ANTIOQUIA', 'NORTE', '05237', 'DON MATiAS', 'Don Matias', ''),
('ANTIOQUIA', 'NORTE', '05264', 'ENTRERRIOS', 'Entrerrios', ''),
('ANTIOQUIA', 'NORTE', '05310', 'GÓMEZ PLATA', 'Gómez Plata', ''),
('ANTIOQUIA', 'NORTE', '05315', 'GUADALUPE', 'Guadalupe', ''),
('ANTIOQUIA', 'NORTE', '05361', 'ITUANGO', 'Ituango', ''),
('ANTIOQUIA', 'NORTE', '05647', 'SAN ANDRÉS', 'San Andrés', ''),
('ANTIOQUIA', 'NORTE', '05658', 'SAN JOSÉ DE LA MONTAÑA', 'San José De La Montaña', ''),
('ANTIOQUIA', 'NORTE', '05664', 'SAN PEDRO', 'San Pedro', ''),
('ANTIOQUIA', 'NORTE', '05686', 'SANTA ROSA de osos', 'Santa Rosa De Osos', ''),
('ANTIOQUIA', 'NORTE', '05819', 'TOLEDO', 'Toledo', ''),
('ANTIOQUIA', 'NORTE', '05854', 'VALDIVIA', 'Valdivia', ''),
('ANTIOQUIA', 'NORTE', '05887', 'YARUMAL', 'Yarumal', ''),
('ANTIOQUIA', 'OCCIDENTE', '05004', 'ABRIAQUÍ', 'Abriaquí', ''),
('ANTIOQUIA', 'OCCIDENTE', '05044', 'ANZA', 'Anza', ''),
('ANTIOQUIA', 'OCCIDENTE', '05059', 'ARMENIA', 'Armenia', ''),
('ANTIOQUIA', 'OCCIDENTE', '05113', 'BURITICÁ', 'Buriticá', ''),
('ANTIOQUIA', 'OCCIDENTE', '05138', 'CAÑASGORDAS', 'Cañasgordas', ''),
('ANTIOQUIA', 'OCCIDENTE', '05234', 'DABEIBA', 'Dabeiba', ''),
('ANTIOQUIA', 'OCCIDENTE', '05240', 'EBÉJICO', 'Ebéjico', ''),
('ANTIOQUIA', 'OCCIDENTE', '05284', 'FRONTINO', 'Frontino', ''),
('ANTIOQUIA', 'OCCIDENTE', '05306', 'GIRALDO', 'Giraldo', ''),
('ANTIOQUIA', 'OCCIDENTE', '05347', 'HELICONIA', 'Heliconia', ''),
('ANTIOQUIA', 'OCCIDENTE', '05411', 'LIBORINA', 'Liborina', ''),
('ANTIOQUIA', 'OCCIDENTE', '05501', 'OLAYA', 'Olaya', ''),
('ANTIOQUIA', 'OCCIDENTE', '05543', 'PEQUE', 'Peque', ''),
('ANTIOQUIA', 'OCCIDENTE', '05628', 'SABANALARGA', 'Sabanalarga', ''),
('ANTIOQUIA', 'OCCIDENTE', '05656', 'SAN JERÓNIMO', 'San Jerónimo', ''),
('ANTIOQUIA', 'OCCIDENTE', '05042', 'SANTAFÉ DE ANTIOQUIA', 'Santafé De Antioquia', ''),
('ANTIOQUIA', 'OCCIDENTE', '05761', 'SOPETRaN', 'Sopetran', ''),
('ANTIOQUIA', 'OCCIDENTE', '05842', 'URAMITA', 'Uramita', ''),
('ANTIOQUIA', 'ORIENTE', '05002', 'ABEJORRAL', 'Abejorral', ''),
('ANTIOQUIA', 'ORIENTE', '05021', 'ALEJANDRÍA', 'Alejandría', ''),
('ANTIOQUIA', 'ORIENTE', '05055', 'ARGELIA', 'Argelia', ''),
('ANTIOQUIA', 'ORIENTE', '05148', 'CARMEN DE VIBORAL', 'Carmen De Viboral', ''),
('ANTIOQUIA', 'ORIENTE', '05197', 'COCORNÁ', 'Cocorná', ''),
('ANTIOQUIA', 'ORIENTE', '05206', 'CONCEPCIÓN', 'Concepción', ''),
('ANTIOQUIA', 'ORIENTE', '05313', 'GRANADA', 'Granada', ''),
('ANTIOQUIA', 'ORIENTE', '05318', 'GUARNE', 'Guarne', ''),
('ANTIOQUIA', 'ORIENTE', '05321', 'GUATAPE', 'Guatape', ''),
('ANTIOQUIA', 'ORIENTE', '05376', 'LA CEJA', 'La Ceja', ''),
('ANTIOQUIA', 'ORIENTE', '05400', 'LA UNIÓN', 'La Unión', ''),
('ANTIOQUIA', 'ORIENTE', '05440', 'MARINILLA', 'Marinilla', ''),
('ANTIOQUIA', 'ORIENTE', '05483', 'NARIÑO', 'Nariño', ''),
('ANTIOQUIA', 'ORIENTE', '05541', 'PEÑOL', 'Peñol', ''),
('ANTIOQUIA', 'ORIENTE', '05607', 'RETIRO', 'Retiro', ''),
('ANTIOQUIA', 'ORIENTE', '05615', 'RIONEGRO', 'Rionegro', ''),
('ANTIOQUIA', 'ORIENTE', '05649', 'SAN CARLOS', 'San Carlos', ''),
('ANTIOQUIA', 'ORIENTE', '05652', 'SAN FRANCISCO', 'San Francisco', ''),
('ANTIOQUIA', 'ORIENTE', '05660', 'SAN LUIS', 'San Luis', ''),
('ANTIOQUIA', 'ORIENTE', '05667', 'SAN RAFAEL', 'San Rafael', ''),
('ANTIOQUIA', 'ORIENTE', '05674', 'SAN VICENTE', 'San Vicente', ''),
('ANTIOQUIA', 'ORIENTE', '05697', 'SANTUARIO', 'Santuario', ''),
('ANTIOQUIA', 'ORIENTE', '05756', 'SONSON', 'Sonson', ''),
('ANTIOQUIA', 'SUROESTE', '05030', 'AMAGa', 'Amaga', ''),
('ANTIOQUIA', 'SUROESTE', '05034', 'ANDES', 'Andes', ''),
('ANTIOQUIA', 'SUROESTE', '05036', 'ANGELOPOLIS', 'Angelopolis', ''),
('ANTIOQUIA', 'SUROESTE', '05091', 'BETANIA', 'Betania', ''),
('ANTIOQUIA', 'SUROESTE', '05093', 'BETULIA', 'Betulia', ''),
('ANTIOQUIA', 'SUROESTE', '05125', 'CAICEDO', 'Caicedo', ''),
('ANTIOQUIA', 'SUROESTE', '05145', 'CARAMANTA', 'Caramanta', ''),
('ANTIOQUIA', 'SUROESTE', '05101', 'CIUDAD BOLÍVAR', 'Ciudad Bolívar', ''),
('ANTIOQUIA', 'SUROESTE', '05209', 'CONCORDIA', 'Concordia', ''),
('ANTIOQUIA', 'SUROESTE', '05282', 'FREDONIA', 'Fredonia', ''),
('ANTIOQUIA', 'SUROESTE', '05353', 'HISPANIA', 'Hispania', ''),
('ANTIOQUIA', 'SUROESTE', '05364', 'JARDÍN', 'Jardín', ''),
('ANTIOQUIA', 'SUROESTE', '05368', 'JERICÓ', 'Jericó', ''),
('ANTIOQUIA', 'SUROESTE', '05390', 'LA PINTADA', 'La Pintada', ''),
('ANTIOQUIA', 'SUROESTE', '05467', 'MONTEBELLO', 'Montebello', ''),
('ANTIOQUIA', 'SUROESTE', '05576', 'PUEBLORRICO', 'Pueblorrico', ''),
('ANTIOQUIA', 'SUROESTE', '05642', 'SALGAR', 'Salgar', ''),
('ANTIOQUIA', 'SUROESTE', '05679', 'SANTA BaRBARA', 'Santa Barbara', ''),
('ANTIOQUIA', 'SUROESTE', '05789', 'TÁMESIS', 'Támesis', ''),
('ANTIOQUIA', 'SUROESTE', '05792', 'TARSO', 'Tarso', ''),
('ANTIOQUIA', 'SUROESTE', '05809', 'TITIRIBÍ', 'Titiribí', ''),
('ANTIOQUIA', 'SUROESTE', '05847', 'URRAO', 'Urrao', ''),
('ANTIOQUIA', 'SUROESTE', '05856', 'VALPARAISO', 'Valparaiso', ''),
('ANTIOQUIA', 'SUROESTE', '05861', 'VENECIA', 'Venecia', ''),
('ANTIOQUIA', 'URABA', '05045', 'APARTADÓ', 'Apartadó', ''),
('ANTIOQUIA', 'URABA', '05051', 'ARBOLETES', 'Arboletes', ''),
('ANTIOQUIA', 'URABA', '05147', 'CAREPA', 'Carepa', ''),
('ANTIOQUIA', 'URABA', '05172', 'CHIGORODÓ', 'Chigorodó', ''),
('ANTIOQUIA', 'URABA', '05475', 'MURINDÓ', 'Murindó', ''),
('ANTIOQUIA', 'URABA', '05480', 'MUTATA', 'Mutata', ''),
('ANTIOQUIA', 'URABA', '05490', 'NECOCLÍ', 'Necoclí', ''),
('ANTIOQUIA', 'URABA', '05659', 'SAN JUAN DE URABA', 'San Juan De Uraba', ''),
('ANTIOQUIA', 'URABA', '05665', 'SAN PEDRO DE URABA', 'San Pedro De Uraba', ''),
('ANTIOQUIA', 'URABA', '05837', 'TURBO', 'Turbo', ''),
('ANTIOQUIA', 'URABA', '05873', 'VIGÍA DEL FUERTE', 'Vigía Del Fuerte', ''),
('ANTIOQUIA', 'VALLE DEL ABURRA', '05079', 'BARBOSA', 'Barbosa', ''),
('ANTIOQUIA', 'VALLE DEL ABURRA', '05088', 'BELLO', 'Bello', ''),
('ANTIOQUIA', 'VALLE DEL ABURRA', '05129', 'CALDAS', 'Caldas', ''),
('ANTIOQUIA', 'VALLE DEL ABURRA', '05212', 'COPACABANA', 'Copacabana', ''),
('ANTIOQUIA', 'VALLE DEL ABURRA', '05266', 'ENVIGADO', 'Envigado', ''),
('ANTIOQUIA', 'VALLE DEL ABURRA', '05308', 'GIRARDOTA', 'Girardota', ''),
('ANTIOQUIA', 'VALLE DEL ABURRA', '05360', 'ITAGUI', 'Itagui', ''),
('ANTIOQUIA', 'VALLE DEL ABURRA', '05380', 'LA ESTRELLA', 'La Estrella', ''),
('ANTIOQUIA', 'VALLE DEL ABURRA', '05001', 'MEDELLÍN', 'Medellín', ''),
('ANTIOQUIA', 'VALLE DEL ABURRA', '05631', 'SABANETA', 'Sabaneta', ''),
('ARAUCA', 'ARAUCA', '81001', 'ARAUCA', 'Arauca', ''),
('ARAUCA', 'ARAUCA', '81065', 'ARAUQUITA', 'Arauquita', ''),
('ARAUCA', 'ARAUCA', '81220', 'CRAVO NORTE', 'Cravo Norte', ''),
('ARAUCA', 'ARAUCA', '81300', 'FORTUL', 'Fortul', ''),
('ARAUCA', 'ARAUCA', '81591', 'PUERTO RONDÓN', 'Puerto Rondón', ''),
('ARAUCA', 'ARAUCA', '81736', 'SARAVENA', 'Saravena', ''),
('ARAUCA', 'ARAUCA', '81794', 'TAME', 'Tame', ''),
('ARCHIPIELAGO DE SAN ANDRES', 'ARCHIPIELAGO DE SAN ANDRES', '88564', 'PROVIDENCIA Y SANTA CATALINA', 'Providencia Y Santa Catalina', ''),
('ARCHIPIELAGO DE SAN ANDRES', 'ARCHIPIELAGO DE SAN ANDRES', '88001', 'SAN ANDReS', 'San Andres', ''),
('ATLÁNTICO', 'NORTE', '08001', 'BARRANQUILLA', 'Barranquilla', ''),
('ATLÁNTICO', 'NORTE', '08296', 'GALAPA', 'Galapa', ''),
('ATLÁNTICO', 'NORTE', '08433', 'MALAMBO', 'Malambo', ''),
('ATLÁNTICO', 'NORTE', '08573', 'PUERTO COLOMBIA', 'Puerto Colombia', ''),
('ATLÁNTICO', 'NORTE', '08758', 'SOLEDAD', 'Soledad', ''),
('ATLÁNTICO', 'SUR', '08137', 'CAMPO DE LA CRUZ', 'Campo De La Cruz', ''),
('ATLÁNTICO', 'SUR', '08141', 'CANDELARIA', 'Candelaria', ''),
('ATLÁNTICO', 'SUR', '08421', 'LURUACO', 'Luruaco', ''),
('ATLÁNTICO', 'SUR', '08436', 'MANATi', 'Manati', ''),
('ATLÁNTICO', 'SUR', '08606', 'REPELON', 'Repelon', ''),
('ATLÁNTICO', 'SUR', '08675', 'SANTA LUCiA', 'Santa Lucia', ''),
('ATLÁNTICO', 'SUR', '08770', 'SUAN', 'Suan', ''),
('ATLÁNTICO', 'CENTRO ORIENTE', '08078', 'BARANOA', 'Baranoa', ''),
('ATLÁNTICO', 'CENTRO ORIENTE', '08520', 'PALMAR DE VARELA', 'Palmar De Varela', ''),
('ATLÁNTICO', 'CENTRO ORIENTE', '08558', 'POLONUEVO', 'Polonuevo', ''),
('ATLÁNTICO', 'CENTRO ORIENTE', '08560', 'PONEDERA', 'Ponedera', ''),
('ATLÁNTICO', 'CENTRO ORIENTE', '08634', 'Sabanagrande', 'Sabanagrande', ''),
('ATLÁNTICO', 'CENTRO ORIENTE', '08638', 'SABANALARGA', 'Sabanalarga', ''),
('ATLÁNTICO', 'CENTRO ORIENTE', '08685', 'Santo Tomas', 'Santo Tomas', ''),
('ATLÁNTICO', 'OCCIDENTAL', '08372', 'JUAN DE ACOSTA', 'Juan De Acosta', ''),
('ATLÁNTICO', 'OCCIDENTAL', '08549', 'PIOJÓ', 'Piojó', ''),
('ATLÁNTICO', 'OCCIDENTAL', '08832', 'TUBARA', 'Tubara', ''),
('ATLÁNTICO', 'OCCIDENTAL', '08849', 'USIACURi', 'Usiacuri', ''),
('BOGOTÁ D.C.', 'BOGOTA', '11001', 'BOGOTA D.C.', 'Bogota D.C.', ''),
('BOLIVAR', 'DEPRESION MOMPOSINA', '13188', 'CICUCO', 'Cicuco', ''),
('BOLIVAR', 'DEPRESION MOMPOSINA', '13300', 'HATILLO DE LOBA', 'Hatillo De Loba', ''),
('BOLIVAR', 'DEPRESION MOMPOSINA', '13440', 'MARGARITA', 'Margarita', ''),
('BOLIVAR', 'DEPRESION MOMPOSINA', '13468', 'MOMPÓS', 'Mompós', ''),
('BOLIVAR', 'DEPRESION MOMPOSINA', '13650', 'SAN FERNANDO', 'San Fernando', ''),
('BOLIVAR', 'DEPRESION MOMPOSINA', '13780', 'TALAIGUA NUEVO', 'Talaigua Nuevo', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13052', 'ARJONA', 'Arjona', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13062', 'ARROYOHONDO', 'Arroyohondo', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13140', 'CALAMAR', 'Calamar', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13001', 'CARTAGENA', 'Cartagena', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13222', 'CLEMENCIA', 'Clemencia', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13433', 'MAHATES', 'Mahates', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13620', 'SAN CRISTOBAL', 'San Cristobal', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13647', 'SAN ESTANISLAO', 'San Estanislao', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13673', 'SANTA CATALINA', 'Santa Catalina', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13683', 'SANTA ROSA DE LIMA', 'Santa Rosa De Lima', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13760', 'SOPLAVIENTO', 'Soplaviento', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13836', 'TURBACO', 'Turbaco', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13838', 'TURBANA', 'Turbana', ''),
('BOLIVAR', 'DIQUE BOLIVARENSE', '13873', 'VILLANUEVA', 'Villanueva', ''),
('BOLIVAR', 'LOBA', '13030', 'ALTOS DEL ROSARIO', 'Altos Del Rosario', ''),
('BOLIVAR', 'LOBA', '13074', 'BARRANCO DE LOBA', 'Barranco De Loba', ''),
('BOLIVAR', 'LOBA', '13268', 'EL PEÑON', 'El Peñon', ''),
('BOLIVAR', 'LOBA', '13580', 'REGIDOR', 'Regidor', ''),
('BOLIVAR', 'LOBA', '13600', 'RÍO VIEJO', 'Río Viejo', ''),
('BOLIVAR', 'LOBA', '13667', 'SAN MARTIN DE LOBA', 'San Martin De Loba', ''),
('BOLIVAR', 'MAGDALENA MEDIO BOLIVARENSE', '13042', 'ARENAL', 'Arenal', ''),
('BOLIVAR', 'MAGDALENA MEDIO BOLIVARENSE', '13160', 'CANTAGALLO', 'Cantagallo', ''),
('BOLIVAR', 'MAGDALENA MEDIO BOLIVARENSE', '13473', 'MORALES', 'Morales', ''),
('BOLIVAR', 'MAGDALENA MEDIO BOLIVARENSE', '13670', 'SAN PABLO', 'San Pablo', ''),
('BOLIVAR', 'MAGDALENA MEDIO BOLIVARENSE', '13688', 'SANTA ROSA DEL SUR', 'Santa Rosa Del Sur', ''),
('BOLIVAR', 'MAGDALENA MEDIO BOLIVARENSE', '13744', 'SIMITÍ', 'Simití', ''),
('BOLIVAR', 'MOJANA BOLIVARENSE', '13006', 'ACHÍ', 'Achí', ''),
('BOLIVAR', 'MOJANA BOLIVARENSE', '13430', 'MAGANGUÉ', 'Magangué', ''),
('BOLIVAR', 'MOJANA BOLIVARENSE', '13458', 'MONTECRISTO', 'Montecristo', ''),
('BOLIVAR', 'MOJANA BOLIVARENSE', '13549', 'PINILLOS', 'Pinillos', ''),
('BOLIVAR', 'MOJANA BOLIVARENSE', '13655', 'SAN JACINTO DEL CAUCA', 'San Jacinto Del Cauca', ''),
('BOLIVAR', 'MOJANA BOLIVARENSE', '13810', 'TIQUISIO', 'Tiquisio', ''),
('BOLIVAR', 'MONTES DE MARIA', '13244', 'CARMEN DE BOLÍVAR', 'Carmen De Bolívar', ''),
('BOLIVAR', 'MONTES DE MARIA', '13212', 'CÓRDOBA', 'Córdoba', ''),
('BOLIVAR', 'MONTES DE MARIA', '13248', 'EL GUAMO', 'El Guamo', ''),
('BOLIVAR', 'MONTES DE MARIA', '13442', 'MARÍA LA BAJA', 'María La Baja', ''),
('BOLIVAR', 'MONTES DE MARIA', '13654', 'SAN JACINTO', 'San Jacinto', ''),
('BOLIVAR', 'MONTES DE MARIA', '13657', 'SAN JUAN NEPOMUCENO', 'San Juan Nepomuceno', ''),
('BOLIVAR', 'MONTES DE MARIA', '13894', 'ZAMBRANO', 'Zambrano', ''),
('BOYACÁ', 'CENTRO', '15232', 'CHÍQUIZA', 'Chíquiza', ''),
('BOYACÁ', 'CENTRO', '15187', 'CHIVATÁ', 'Chivatá', ''),
('BOYACÁ', 'CENTRO', '15204', 'CÓMBITA', 'Cómbita', ''),
('BOYACÁ', 'CENTRO', '15224', 'CUCAITA', 'Cucaita', ''),
('BOYACÁ', 'CENTRO', '15476', 'MOTAVITA', 'Motavita', ''),
('BOYACÁ', 'CENTRO', '15500', 'OICATÁ', 'Oicatá', ''),
('BOYACÁ', 'CENTRO', '15646', 'SAMACÁ', 'Samacá', ''),
('BOYACÁ', 'CENTRO', '15740', 'SIACHOQUE', 'Siachoque', ''),
('BOYACÁ', 'CENTRO', '15762', 'SORA', 'Sora', ''),
('BOYACÁ', 'CENTRO', '15764', 'SORACÁ', 'Soracá', ''),
('BOYACÁ', 'CENTRO', '15763', 'SOTAQUIRÁ', 'Sotaquirá', ''),
('BOYACÁ', 'CENTRO', '15814', 'TOCA', 'Toca', ''),
('BOYACÁ', 'CENTRO', '15001', 'TUNJA', 'Tunja', ''),
('BOYACÁ', 'CENTRO', '15837', 'TUTA', 'Tuta', ''),
('BOYACÁ', 'CENTRO', '15861', 'VENTAQUEMADA', 'Ventaquemada', ''),
('BOYACÁ', 'GUTIERREZ', '15180', 'CHISCAS', 'Chiscas', ''),
('BOYACÁ', 'GUTIERREZ', '15223', 'CUBARÁ', 'Cubará', ''),
('BOYACÁ', 'GUTIERREZ', '15244', 'EL COCUY', 'El Cocuy', ''),
('BOYACÁ', 'GUTIERREZ', '15248', 'EL ESPINO', 'El Espino', ''),
('BOYACÁ', 'GUTIERREZ', '15317', 'GUACAMAYAS', 'Guacamayas', ''),
('BOYACÁ', 'GUTIERREZ', '15332', 'GÜICÁN', 'Güicán', ''),
('BOYACÁ', 'GUTIERREZ', '15522', 'PANQUEBA', 'Panqueba', ''),
('BOYACÁ', 'LA LIBERTAD', '15377', 'LABRANZAGRANDE', 'Labranzagrande', ''),
('BOYACÁ', 'LA LIBERTAD', '15518', 'PAJARITO', 'Pajarito', ''),
('BOYACÁ', 'LA LIBERTAD', '15533', 'PAYA', 'Paya', ''),
('BOYACÁ', 'LA LIBERTAD', '15550', 'PISBA', 'Pisba', ''),
('BOYACÁ', 'LENGUPA', '15090', 'BERBEO', 'Berbeo', ''),
('BOYACÁ', 'LENGUPA', '15135', 'CAMPOHERMOSO', 'Campohermoso', ''),
('BOYACÁ', 'LENGUPA', '15455', 'MIRAFLORES', 'Miraflores', ''),
('BOYACÁ', 'LENGUPA', '15514', 'PÁEZ', 'Páez', ''),
('BOYACÁ', 'LENGUPA', '15660', 'SAN EDUARDO', 'San Eduardo', ''),
('BOYACÁ', 'LENGUPA', '15897', 'ZETAQUIRA', 'Zetaquira', ''),
('BOYACÁ', 'MARQUEZ', '15104', 'BOYACÁ', 'Boyacá', ''),
('BOYACÁ', 'MARQUEZ', '15189', 'CIÉNEGA', 'Ciénega', ''),
('BOYACÁ', 'MARQUEZ', '15367', 'JENESANO', 'Jenesano', ''),
('BOYACÁ', 'MARQUEZ', '15494', 'NUEVO COLÓN', 'Nuevo Colón', ''),
('BOYACÁ', 'MARQUEZ', '15599', 'RAMIRIQUÍ', 'Ramiriquí', ''),
('BOYACÁ', 'MARQUEZ', '15621', 'RONDÓN', 'Rondón', ''),
('BOYACÁ', 'MARQUEZ', '15804', 'TIBANÁ', 'Tibaná', ''),
('BOYACÁ', 'MARQUEZ', '15835', 'TURMEQUÉ', 'Turmequé', ''),
('BOYACÁ', 'MARQUEZ', '15842', 'UMBITA', 'Umbita', ''),
('BOYACÁ', 'MARQUEZ', '15879', 'VIRACACHÁ', 'Viracachá', ''),
('BOYACÁ', 'NEIRA', '15172', 'CHINAVITA', 'Chinavita', ''),
('BOYACÁ', 'NEIRA', '15299', 'GARAGOA', 'Garagoa', ''),
('BOYACÁ', 'NEIRA', '15425', 'MACANAL', 'Macanal', ''),
('BOYACÁ', 'NEIRA', '15511', 'PACHAVITA', 'Pachavita', ''),
('BOYACÁ', 'NEIRA', '15667', 'SAN LUIS DE GACENO', 'San Luis De Gaceno', ''),
('BOYACÁ', 'NEIRA', '15690', 'SANTA MARÍA', 'Santa María', ''),
('BOYACÁ', 'NORTE', '15097', 'BOAVITA', 'Boavita', ''),
('BOYACÁ', 'NORTE', '15218', 'COVARACHÍA', 'Covarachía', ''),
('BOYACÁ', 'NORTE', '15403', 'LA UVITA', 'La Uvita', ''),
('BOYACÁ', 'NORTE', '15673', 'SAN MATEO', 'San Mateo', ''),
('BOYACÁ', 'NORTE', '15720', 'SATIVANORTE', 'Sativanorte', ''),
('BOYACÁ', 'NORTE', '15723', 'SATIVASUR', 'Sativasur', ''),
('BOYACÁ', 'NORTE', '15753', 'SOATÁ', 'Soatá', ''),
('BOYACÁ', 'NORTE', '15774', 'SUSACÓN', 'Susacón', ''),
('BOYACÁ', 'NORTE', '15810', 'TIPACOQUE', 'Tipacoque', ''),
('BOYACÁ', 'OCCIDENTE', '15106', 'BRICEÑO', 'Briceño', ''),
('BOYACÁ', 'OCCIDENTE', '15109', 'BUENAVISTA', 'Buenavista', ''),
('BOYACÁ', 'OCCIDENTE', '15131', 'CALDAS', 'Caldas', ''),
('BOYACÁ', 'OCCIDENTE', '15176', 'CHIQUINQUIRÁ', 'Chiquinquirá', ''),
('BOYACÁ', 'OCCIDENTE', '15212', 'COPER', 'Coper', ''),
('BOYACÁ', 'OCCIDENTE', '15401', 'LA VICTORIA', 'La Victoria', ''),
('BOYACÁ', 'OCCIDENTE', '15442', 'MARIPÍ', 'Maripí', ''),
('BOYACÁ', 'OCCIDENTE', '15480', 'MUZO', 'Muzo', ''),
('BOYACÁ', 'OCCIDENTE', '15507', 'OTANCHE', 'Otanche', ''),
('BOYACÁ', 'OCCIDENTE', '15531', 'PAUNA', 'Pauna', ''),
('BOYACÁ', 'OCCIDENTE', '15572', 'PUERTO BOYACa', 'Puerto Boyaca', ''),
('BOYACÁ', 'OCCIDENTE', '15580', 'QUÍPAMA', 'Quípama', ''),
('BOYACÁ', 'OCCIDENTE', '15632', 'SABOYÁ', 'Saboyá', ''),
('BOYACÁ', 'OCCIDENTE', '15676', 'SAN MIGUEL DE SEMA', 'San Miguel De Sema', ''),
('BOYACÁ', 'OCCIDENTE', '15681', 'SAN PABLO BORBUR', 'San Pablo Borbur', ''),
('BOYACÁ', 'OCCIDENTE', '15832', 'TUNUNGUÁ', 'Tununguá', ''),
('BOYACÁ', 'ORIENTE', '15022', 'ALMEIDA', 'Almeida', ''),
('BOYACÁ', 'ORIENTE', '15236', 'CHIVOR', 'Chivor', ''),
('BOYACÁ', 'ORIENTE', '15322', 'GUATEQUE', 'Guateque', ''),
('BOYACÁ', 'ORIENTE', '15325', 'GUAYATÁ', 'Guayatá', ''),
('BOYACÁ', 'ORIENTE', '15380', 'LA CAPILLA', 'La Capilla', ''),
('BOYACÁ', 'ORIENTE', '15761', 'SOMONDOCO', 'Somondoco', ''),
('BOYACÁ', 'ORIENTE', '15778', 'SUTATENZA', 'Sutatenza', ''),
('BOYACÁ', 'ORIENTE', '15798', 'TENZA', 'Tenza', ''),
('BOYACÁ', 'RICAURTE', '15051', 'ARCABUCO', 'Arcabuco', ''),
('BOYACÁ', 'RICAURTE', '15185', 'CHITARAQUE', 'Chitaraque', ''),
('BOYACÁ', 'RICAURTE', '15293', 'GACHANTIVÁ', 'Gachantivá', ''),
('BOYACÁ', 'RICAURTE', '15469', 'MONIQUIRÁ', 'Moniquirá', ''),
('BOYACÁ', 'RICAURTE', '15600', 'RÁQUIRA', 'Ráquira', ''),
('BOYACÁ', 'RICAURTE', '15638', 'SÁCHICA', 'Sáchica', ''),
('BOYACÁ', 'RICAURTE', '15664', 'SAN JOSÉ DE PARE', 'San José De Pare', ''),
('BOYACÁ', 'RICAURTE', '15696', 'SANTA SOFÍA', 'Santa Sofía', ''),
('BOYACÁ', 'RICAURTE', '15686', 'SANTANA', 'Santana', ''),
('BOYACÁ', 'RICAURTE', '15776', 'SUTAMARCHÁN', 'Sutamarchán', ''),
('BOYACÁ', 'RICAURTE', '15808', 'TINJACÁ', 'Tinjacá', ''),
('BOYACÁ', 'RICAURTE', '15816', 'TOGÜÍ', 'Togüí', ''),
('BOYACÁ', 'RICAURTE', '15407', 'VILLA DE LEYVA', 'Villa De Leyva', ''),
('BOYACÁ', 'SUGAMUXI', '15047', 'AQUITANIA', 'Aquitania', ''),
('BOYACÁ', 'SUGAMUXI', '15226', 'CUÍTIVA', 'Cuítiva', ''),
('BOYACÁ', 'SUGAMUXI', '15272', 'FIRAVITOBA', 'Firavitoba', ''),
('BOYACÁ', 'SUGAMUXI', '15296', 'GAMEZA', 'Gameza', ''),
('BOYACÁ', 'SUGAMUXI', '15362', 'IZA', 'Iza', ''),
('BOYACÁ', 'SUGAMUXI', '15464', 'MONGUA', 'Mongua', ''),
('BOYACÁ', 'SUGAMUXI', '15466', 'MONGUÍ', 'Monguí', ''),
('BOYACÁ', 'SUGAMUXI', '15491', 'NOBSA', 'Nobsa', ''),
('BOYACÁ', 'SUGAMUXI', '15542', 'PESCA', 'Pesca', ''),
('BOYACÁ', 'SUGAMUXI', '15759', 'SOGAMOSO', 'Sogamoso', ''),
('BOYACÁ', 'SUGAMUXI', '15806', 'TIBASOSA', 'Tibasosa', ''),
('BOYACÁ', 'SUGAMUXI', '15820', 'TÓPAGA', 'Tópaga', ''),
('BOYACÁ', 'SUGAMUXI', '15822', 'TOTA', 'Tota', ''),
('BOYACÁ', 'TUNDAMA', '15087', 'BELÉN', 'Belén', ''),
('BOYACÁ', 'TUNDAMA', '15114', 'BUSBANZÁ', 'Busbanzá', ''),
('BOYACÁ', 'TUNDAMA', '15162', 'CERINZA', 'Cerinza', ''),
('BOYACÁ', 'TUNDAMA', '15215', 'CORRALES', 'Corrales', ''),
('BOYACÁ', 'TUNDAMA', '15238', 'DUITAMA', 'Duitama', ''),
('BOYACÁ', 'TUNDAMA', '15276', 'FLORESTA', 'Floresta', ''),
('BOYACÁ', 'TUNDAMA', '15516', 'PAIPA', 'Paipa', ''),
('BOYACÁ', 'TUNDAMA', '15693', 'SAN ROSA VITERBO', 'San Rosa Viterbo', ''),
('BOYACÁ', 'TUNDAMA', '15839', 'TUTAZÁ', 'Tutazá', ''),
('BOYACÁ', 'VALDERRAMA', '15092', 'BETÉITIVA', 'Betéitiva', ''),
('BOYACÁ', 'VALDERRAMA', '15183', 'CHITA', 'Chita', ''),
('BOYACÁ', 'VALDERRAMA', '15368', 'JERICÓ', 'Jericó', ''),
('BOYACÁ', 'VALDERRAMA', '15537', 'PAZ DE RÍO', 'Paz De Río', ''),
('BOYACÁ', 'VALDERRAMA', '15757', 'SOCHA', 'Socha', ''),
('BOYACÁ', 'VALDERRAMA', '15755', 'SOCOTÁ', 'Socotá', ''),
('BOYACÁ', 'VALDERRAMA', '15790', 'TASCO', 'Tasco', ''),
('CALDAS', 'ALTO OCCIDENTE', '17272', 'FILADELFIA', 'Filadelfia', ''),
('CALDAS', 'ALTO OCCIDENTE', '17388', 'LA MERCED', 'La Merced', ''),
('CALDAS', 'ALTO OCCIDENTE', '17442', 'MARMATO', 'Marmato', ''),
('CALDAS', 'ALTO OCCIDENTE', '17614', 'RIOSUCIO', 'Riosucio', ''),
('CALDAS', 'ALTO OCCIDENTE', '17777', 'SUPÍA', 'Supía', ''),
('CALDAS', 'ALTO ORIENTE', '17433', 'MANZANARES', 'Manzanares', ''),
('CALDAS', 'ALTO ORIENTE', '17444', 'MARQUETALIA', 'Marquetalia', ''),
('CALDAS', 'ALTO ORIENTE', '17446', 'MARULANDA', 'Marulanda', ''),
('CALDAS', 'ALTO ORIENTE', '17541', 'PENSILVANIA', 'Pensilvania', ''),
('CALDAS', 'BAJO OCCIDENTE', '17042', 'ANSERMA', 'Anserma', ''),
('CALDAS', 'BAJO OCCIDENTE', '17088', 'BELALCÁZAR', 'Belalcázar', ''),
('CALDAS', 'BAJO OCCIDENTE', '17616', 'RISARALDA', 'Risaralda', ''),
('CALDAS', 'BAJO OCCIDENTE', '17665', 'SAN JOSÉ', 'San José', ''),
('CALDAS', 'BAJO OCCIDENTE', '17877', 'VITERBO', 'Viterbo', ''),
('CALDAS', 'CENTRO', '17174', 'CHINCHINa', 'Chinchina', ''),
('CALDAS', 'CENTRO', '17001', 'MANIZALES', 'Manizales', ''),
('CALDAS', 'CENTRO', '17486', 'NEIRA', 'Neira', ''),
('CALDAS', 'CENTRO', '17524', 'PALESTINA', 'Palestina', ''),
('CALDAS', 'CENTRO', '17873', 'VILLAMARiA', 'Villamaria', ''),
('CALDAS', 'NORTE', '17013', 'AGUADAS', 'Aguadas', ''),
('CALDAS', 'NORTE', '17050', 'ARANZAZU', 'Aranzazu', ''),
('CALDAS', 'NORTE', '17513', 'PÁCORA', 'Pácora', ''),
('CALDAS', 'NORTE', '17653', 'SALAMINA', 'Salamina', ''),
('CALDAS', 'ORIENTE', '17380', 'LA DORADA', 'La Dorada', ''),
('CALDAS', 'ORIENTE', '17495', 'NORCASIA', 'Norcasia', ''),
('CALDAS', 'ORIENTE', '17662', 'SAMANÁ', 'Samaná', ''),
('CALDAS', 'ORIENTE', '17867', 'VICTORIA', 'Victoria', ''),
('CAQUETA', 'CAQUETA', '18029', 'ALBANIA', 'Albania', ''),
('CAQUETA', 'CAQUETA', '18094', 'BELÉN DE LOS ANDAQUIES', 'Belén De Los Andaquies', ''),
('CAQUETA', 'CAQUETA', '18150', 'CARTAGENA DEL CHAIRÁ', 'Cartagena Del Chairá', ''),
('CAQUETA', 'CAQUETA', '18205', 'CURRILLO', 'Currillo', ''),
('CAQUETA', 'CAQUETA', '18247', 'EL DONCELLO', 'El Doncello', ''),
('CAQUETA', 'CAQUETA', '18256', 'EL PAUJIL', 'El Paujil', ''),
('CAQUETA', 'CAQUETA', '18001', 'FLORENCIA', 'Florencia', ''),
('CAQUETA', 'CAQUETA', '18410', 'LA MONTAÑITA', 'La Montañita', ''),
('CAQUETA', 'CAQUETA', '18460', 'MILaN', 'Milan', ''),
('CAQUETA', 'CAQUETA', '18479', 'MORELIA', 'Morelia', ''),
('CAQUETA', 'CAQUETA', '18592', 'PUERTO RICO', 'Puerto Rico', ''),
('CAQUETA', 'CAQUETA', '18610', 'SAN JOSE DEL FRAGUA', 'San Jose Del Fragua', ''),
('CAQUETA', 'CAQUETA', '18753', 'SAN VICENTE DEL CAGUÁN', 'San Vicente Del Caguán', ''),
('CAQUETA', 'CAQUETA', '18756', 'SOLANO', 'Solano', ''),
('CAQUETA', 'CAQUETA', '18785', 'SOLITA', 'Solita', ''),
('CAQUETA', 'CAQUETA', '18860', 'VALPARAISO', 'Valparaiso', ''),
('CASANARE', 'CASANARE', '85010', 'AGUAZUL', 'Aguazul', ''),
('CASANARE', 'CASANARE', '85015', 'CHAMEZA', 'Chameza', ''),
('CASANARE', 'CASANARE', '85125', 'HATO COROZAL', 'Hato Corozal', ''),
('CASANARE', 'CASANARE', '85136', 'LA SALINA', 'La Salina', ''),
('CASANARE', 'CASANARE', '85139', 'MANÍ', 'Maní', ''),
('CASANARE', 'CASANARE', '85162', 'MONTERREY', 'Monterrey', ''),
('CASANARE', 'CASANARE', '85225', 'NUNCHÍA', 'Nunchía', ''),
('CASANARE', 'CASANARE', '85230', 'OROCUÉ', 'Orocué', ''),
('CASANARE', 'CASANARE', '85250', 'PAZ DE ARIPORO', 'Paz De Ariporo', ''),
('CASANARE', 'CASANARE', '85263', 'PORE', 'Pore', ''),
('CASANARE', 'CASANARE', '85279', 'RECETOR', 'Recetor', ''),
('CASANARE', 'CASANARE', '85300', 'SABANALARGA', 'Sabanalarga', ''),
('CASANARE', 'CASANARE', '85315', 'SÁCAMA', 'Sácama', ''),
('CASANARE', 'CASANARE', '85325', 'SAN LUIS DE PALENQUE', 'San Luis De Palenque', ''),
('CASANARE', 'CASANARE', '85400', 'TÁMARA', 'Támara', ''),
('CASANARE', 'CASANARE', '85410', 'TAURAMENA', 'Tauramena', ''),
('CASANARE', 'CASANARE', '85430', 'TRINIDAD', 'Trinidad', ''),
('CASANARE', 'CASANARE', '85440', 'VILLANUEVA', 'Villanueva', ''),
('CASANARE', 'CASANARE', '85001', 'YOPAL', 'Yopal', ''),
('CAUCA', 'CENTRO', '19130', 'CAJIBÍO', 'Cajibío', ''),
('CAUCA', 'CENTRO', '19256', 'EL TAMBO', 'El Tambo', ''),
('CAUCA', 'CENTRO', '19392', 'LA SIERRA', 'La Sierra', ''),
('CAUCA', 'CENTRO', '19473', 'MORALES', 'Morales', ''),
('CAUCA', 'CENTRO', '19548', 'PIENDAMO', 'Piendamo', ''),
('CAUCA', 'CENTRO', '19001', 'POPAYÁN', 'Popayán', ''),
('CAUCA', 'CENTRO', '19622', 'ROSAS', 'Rosas', ''),
('CAUCA', 'CENTRO', '19760', 'SOTARA', 'Sotara', ''),
('CAUCA', 'CENTRO', '19807', 'TIMBIO', 'Timbio', ''),
('CAUCA', 'NORTE', '19110', 'BUENOS AIRES', 'Buenos Aires', ''),
('CAUCA', 'NORTE', '19142', 'CALOTO', 'Caloto', ''),
('CAUCA', 'NORTE', '19212', 'CORINTO', 'Corinto', ''),
('CAUCA', 'NORTE', '19455', 'MIRANDA', 'Miranda', ''),
('CAUCA', 'NORTE', '19513', 'PADILLA', 'Padilla', ''),
('CAUCA', 'NORTE', '19573', 'PUERTO TEJADA', 'Puerto Tejada', ''),
('CAUCA', 'NORTE', '19698', 'SANTANDER DE QUILICHAO', 'Santander De Quilichao', ''),
('CAUCA', 'NORTE', '19780', 'SUAREZ', 'Suarez', ''),
('CAUCA', 'NORTE', '19845', 'VILLA RICA', 'Villa Rica', ''),
('CAUCA', 'OCCIDENTE', '19318', 'GUAPI', 'Guapi', ''),
('CAUCA', 'OCCIDENTE', '19418', 'LOPEZ', 'Lopez', ''),
('CAUCA', 'OCCIDENTE', '19809', 'TIMBIQUI', 'Timbiqui', ''),
('CAUCA', 'ORIENTE', '19137', 'CALDONO', 'Caldono', ''),
('CAUCA', 'ORIENTE', '19355', 'INZÁ', 'Inzá', ''),
('CAUCA', 'ORIENTE', '19364', 'JAMBALO', 'Jambalo', ''),
('CAUCA', 'ORIENTE', '19517', 'PAEZ', 'Paez', ''),
('CAUCA', 'ORIENTE', '19585', 'PURACE', 'Purace', ''),
('CAUCA', 'ORIENTE', '19743', 'Silvia', 'Silvia', ''),
('CAUCA', 'ORIENTE', '19821', 'TORIBIO', 'Toribio', ''),
('CAUCA', 'ORIENTE', '19824', 'TOTORO', 'Totoro', ''),
('CAUCA', 'SUR ', '19022', 'ALMAGUER', 'Almaguer', ''),
('CAUCA', 'SUR ', '19050', 'ARGELIA', 'Argelia', ''),
('CAUCA', 'SUR ', '19075', 'BALBOA', 'Balboa', ''),
('CAUCA', 'SUR ', '19100', 'BOLÍVAR', 'Bolívar', ''),
('CAUCA', 'SUR ', '19290', 'FLORENCIA', 'Florencia', ''),
('CAUCA', 'SUR ', '19397', 'LA VEGA', 'La Vega', ''),
('CAUCA', 'SUR ', '19450', 'MERCADERES', 'Mercaderes', ''),
('CAUCA', 'SUR ', '19532', 'PATIA', 'Patia', ''),
('CAUCA', 'SUR ', '19533', 'PIAMONTE', 'Piamonte', ''),
('CAUCA', 'SUR ', '19693', 'SAN SEBASTIAN', 'San Sebastian', ''),
('CAUCA', 'SUR ', '19701', 'SANTA ROSA', 'Santa Rosa', ''),
('CAUCA', 'SUR ', '19785', 'SUCRE', 'Sucre', ''),
('CESAR', 'CENTRAL', '20045', 'BECERRIL', 'Becerril', ''),
('CESAR', 'CENTRAL', '20175', 'CHIMICHAGUA', 'Chimichagua', ''),
('CESAR', 'CENTRAL', '20178', 'CHIRIGUANA', 'Chiriguana', ''),
('CESAR', 'CENTRAL', '20228', 'CURUMANÍ', 'Curumaní', ''),
('CESAR', 'CENTRAL', '20400', 'LA JAGUA DE IBIRICO', 'La Jagua De Ibirico', ''),
('CESAR', 'CENTRAL', '20517', 'PAILITAS', 'Pailitas', ''),
('CESAR', 'CENTRAL', '20787', 'TAMALAMEQUE', 'Tamalameque', ''),
('CESAR', 'NOROCCIDENTAL', '20032', 'ASTREA', 'Astrea', ''),
('CESAR', 'NOROCCIDENTAL', '20060', 'BOSCONIA', 'Bosconia', ''),
('CESAR', 'NOROCCIDENTAL', '20238', 'EL COPEY', 'El Copey', ''),
('CESAR', 'NOROCCIDENTAL', '20250', 'EL PASO', 'El Paso', ''),
('CESAR', 'NORTE', '20013', 'AGUSTÍN CODAZZI', 'Agustín Codazzi', ''),
('CESAR', 'NORTE', '20621', 'LA PAZ', 'La Paz', ''),
('CESAR', 'NORTE', '20443', 'MANAURE', 'Manaure', ''),
('CESAR', 'NORTE', '20570', 'PUEBLO BELLO', 'Pueblo Bello', ''),
('CESAR', 'NORTE', '20750', 'SAN DIEGO', 'San Diego', ''),
('CESAR', 'NORTE', '20001', 'VALLEDUPAR', 'Valledupar', ''),
('CESAR', 'SUR ', '20011', 'AGUACHICA', 'Aguachica', ''),
('CESAR', 'SUR ', '20295', 'GAMARRA', 'Gamarra', ''),
('CESAR', 'SUR ', '20310', 'GONZÁLEZ', 'González', ''),
('CESAR', 'SUR ', '20383', 'LA GLORIA', 'La Gloria', ''),
('CESAR', 'SUR ', '20550', 'PELAYA', 'Pelaya', ''),
('CESAR', 'SUR ', '20614', 'RÍO DE ORO', 'Río De Oro', ''),
('CESAR', 'SUR ', '20710', 'SAN ALBERTO', 'San Alberto', ''),
('CESAR', 'SUR ', '20770', 'SAN MARTÍN', 'San Martín', ''),
('CHOCO', 'ATRATO', '27050', 'ATRATO', 'Atrato', ''),
('CHOCO', 'ATRATO', '27073', 'BAGADÓ', 'Bagadó', ''),
('CHOCO', 'ATRATO', '27099', 'BOJAYA', 'Bojaya', ''),
('CHOCO', 'ATRATO', '27245', 'EL CARMEN DE ATRATO', 'El Carmen De Atrato', ''),
('CHOCO', 'ATRATO', '27413', 'LLORÓ', 'Lloró', ''),
('CHOCO', 'ATRATO', '27425', 'MEDIO ATRATO', 'Medio Atrato', ''),
('CHOCO', 'ATRATO', '27001', 'QUIBDÓ', 'Quibdó', ''),
('CHOCO', 'ATRATO', '27600', 'RIO QUITO', 'Rio Quito', ''),
('CHOCO', 'DARIEN', '27006', 'ACANDÍ', 'Acandí', ''),
('CHOCO', 'DARIEN', '27086', 'BELÉN DE BAJIRA', 'Belén De Bajira', ''),
('CHOCO', 'DARIEN', '27150', 'CARMÉN DEL DARIÉN', 'Carmén Del Darién', ''),
('CHOCO', 'DARIEN', '27615', 'RIOSUCIO', 'Riosucio', ''),
('CHOCO', 'DARIEN', '27800', 'UNGUÍA', 'Unguía', ''),
('CHOCO', 'PACIFICO NORTE', '27075', 'BAHÍA SOLANO', 'Bahía Solano', ''),
('CHOCO', 'PACIFICO NORTE', '27372', 'JURADÓ', 'Juradó', ''),
('CHOCO', 'PACIFICO NORTE', '27495', 'NUQUÍ', 'Nuquí', ''),
('CHOCO', 'PACIFICO SUR', '27025', 'ALTO BAUDÓ', 'Alto Baudó', ''),
('CHOCO', 'PACIFICO SUR', '27077', 'BAJO BAUDÓ', 'Bajo Baudó', ''),
('CHOCO', 'PACIFICO SUR', '27250', 'El Litoral del San Juan', 'El Litoral Del San Juan', ''),
('CHOCO', 'PACIFICO SUR', '27430', 'MEDIO BAUDÓ', 'Medio Baudó', ''),
('CHOCO', 'SAN JUAN', '27135', 'CANTON DE SAN PABLO', 'Canton De San Pablo', ''),
('CHOCO', 'SAN JUAN', '27160', 'CERTEGUI', 'Certegui', ''),
('CHOCO', 'SAN JUAN', '27205', 'CONDOTO', 'Condoto', ''),
('CHOCO', 'SAN JUAN', '27361', 'ITSMINA', 'Itsmina', ''),
('CHOCO', 'SAN JUAN', '27450', 'MEDIO SAN JUAN', 'Medio San Juan', ''),
('CHOCO', 'SAN JUAN', '27491', 'NÓVITA', 'Nóvita', ''),
('CHOCO', 'SAN JUAN', '27580', 'RÍO FRÍO', 'Río Frío', ''),
('CHOCO', 'SAN JUAN', '27660', 'SAN JOSÉ DEL PALMAR', 'San José Del Palmar', ''),
('CHOCO', 'SAN JUAN', '27745', 'SIPÍ', 'Sipí', ''),
('CHOCO', 'SAN JUAN', '27787', 'TADÓ', 'Tadó', ''),
('CHOCO', 'SAN JUAN', '27810', 'UNION PANAMERICANA', 'Union Panamericana', ''),
('CORDOBA', 'ALTO SINU', '23807', 'TIERRALTA', 'Tierralta', ''),
('CORDOBA', 'ALTO SINU', '23855', 'VALENCIA', 'Valencia', ''),
('CORDOBA', 'BAJO SINU', '23168', 'CHIMÁ', 'Chimá', ''),
('CORDOBA', 'BAJO SINU', '23300', 'COTORRA', 'Cotorra', ''),
('CORDOBA', 'BAJO SINU', '23417', 'LORICA', 'Lorica', ''),
('CORDOBA', 'BAJO SINU', '23464', 'MOMIL', 'Momil', ''),
('CORDOBA', 'BAJO SINU', '23586', 'PURÍSIMA', 'Purísima', ''),
('CORDOBA', 'CENTRO', '23001', 'MONTERÍA', 'Montería', ''),
('CORDOBA', 'COSTANERA', '23090', 'CANALETE', 'Canalete', ''),
('CORDOBA', 'COSTANERA', '23419', 'LOS CÓRDOBAS', 'Los Córdobas', ''),
('CORDOBA', 'COSTANERA', '23500', 'MOÑITOS', 'Moñitos', ''),
('CORDOBA', 'COSTANERA', '23574', 'PUERTO ESCONDIDO', 'Puerto Escondido', ''),
('CORDOBA', 'COSTANERA', '23672', 'SAN ANTERO', 'San Antero', ''),
('CORDOBA', 'COSTANERA', '23675', 'SAN BERNARDO DEL VIENTO', 'San Bernardo Del Viento', ''),
('CORDOBA', 'SABANAS', '23182', 'CHINÚ', 'Chinú', ''),
('CORDOBA', 'SABANAS', '23660', 'SAHAGÚN', 'Sahagún', ''),
('CORDOBA', 'SABANAS', '23670', 'SAN ANDRÉS SOTAVENTO', 'San Andrés Sotavento', ''),
('CORDOBA', 'SAN JORGE', '23068', 'AYAPEL', 'Ayapel', ''),
('CORDOBA', 'SAN JORGE', '23079', 'BUENAVISTA', 'Buenavista', ''),
('CORDOBA', 'SAN JORGE', '23350', 'LA APARTADA', 'La Apartada', ''),
('CORDOBA', 'SAN JORGE', '23466', 'MONTELÍBANO', 'Montelíbano', ''),
('CORDOBA', 'SAN JORGE', '23555', 'PLANETA RICA', 'Planeta Rica', ''),
('CORDOBA', 'SAN JORGE', '23570', 'PUEBLO NUEVO', 'Pueblo Nuevo', ''),
('CORDOBA', 'SAN JORGE', '23580', 'PUERTO LIBERTADOR', 'Puerto Libertador', ''),
('CORDOBA', 'SINU MEDIO', '23162', 'CERETÉ', 'Cereté', ''),
('CORDOBA', 'SINU MEDIO', '23189', 'CIÉNAGA DE ORO', 'Ciénaga De Oro', ''),
('CORDOBA', 'SINU MEDIO', '23678', 'SAN CARLOS', 'San Carlos', ''),
('CORDOBA', 'SINU MEDIO', '23686', 'SAN PELAYO', 'San Pelayo', ''),
('CUNDINAMARCA', 'ALMEIDAS', '25183', 'CHOCONTÁ', 'Chocontá', ''),
('CUNDINAMARCA', 'ALMEIDAS', '25426', 'MACHETA', 'Macheta', ''),
('CUNDINAMARCA', 'ALMEIDAS', '25436', 'MANTA', 'Manta', ''),
('CUNDINAMARCA', 'ALMEIDAS', '25736', 'SESQUILÉ', 'Sesquilé', ''),
('CUNDINAMARCA', 'ALMEIDAS', '25772', 'SUESCA', 'Suesca', ''),
('CUNDINAMARCA', 'ALMEIDAS', '25807', 'TIBIRITA', 'Tibirita', ''),
('CUNDINAMARCA', 'ALMEIDAS', '25873', 'VILLAPINZÓN', 'Villapinzón', ''),
('CUNDINAMARCA', 'ALTO MAGDALENA', '25001', 'AGUA DE DIOS', 'Agua De Dios', ''),
('CUNDINAMARCA', 'ALTO MAGDALENA', '25307', 'GIRARDOT', 'Girardot', ''),
('CUNDINAMARCA', 'ALTO MAGDALENA', '25324', 'GUATAQUÍ', 'Guataquí', ''),
('CUNDINAMARCA', 'ALTO MAGDALENA', '25368', 'JERUSALÉN', 'Jerusalén', ''),
('CUNDINAMARCA', 'ALTO MAGDALENA', '25483', 'NARIÑO', 'Nariño', ''),
('CUNDINAMARCA', 'ALTO MAGDALENA', '25488', 'NILO', 'Nilo', ''),
('CUNDINAMARCA', 'ALTO MAGDALENA', '25612', 'RICAURTE', 'Ricaurte', ''),
('CUNDINAMARCA', 'ALTO MAGDALENA', '25815', 'TOCAIMA', 'Tocaima', ''),
('CUNDINAMARCA', 'BAJO MAGDALENA', '25148', 'CAPARRAPÍ', 'Caparrapí', ''),
('CUNDINAMARCA', 'BAJO MAGDALENA', '25320', 'GUADUAS', 'Guaduas', ''),
('CUNDINAMARCA', 'BAJO MAGDALENA', '25572', 'PUERTO SALGAR', 'Puerto Salgar', ''),
('CUNDINAMARCA', 'GUALIVA', '25019', 'ALBÁN', 'Albán', ''),
('CUNDINAMARCA', 'GUALIVA', '25398', 'LA PEÑA', 'La Peña', ''),
('CUNDINAMARCA', 'GUALIVA', '25402', 'LA VEGA', 'La Vega', ''),
('CUNDINAMARCA', 'GUALIVA', '25489', 'NIMAIMA', 'Nimaima', ''),
('CUNDINAMARCA', 'GUALIVA', '25491', 'NOCAIMA', 'Nocaima', ''),
('CUNDINAMARCA', 'GUALIVA', '25592', 'QUEBRADANEGRA', 'Quebradanegra', ''),
('CUNDINAMARCA', 'GUALIVA', '25658', 'SAN FRANCISCO', 'San Francisco', ''),
('CUNDINAMARCA', 'GUALIVA', '25718', 'SASAIMA', 'Sasaima', ''),
('CUNDINAMARCA', 'GUALIVA', '25777', 'SUPATÁ', 'Supatá', ''),
('CUNDINAMARCA', 'GUALIVA', '25851', 'ÚTICA', 'Útica', ''),
('CUNDINAMARCA', 'GUALIVA', '25862', 'VERGARA', 'Vergara', ''),
('CUNDINAMARCA', 'GUALIVA', '25875', 'VILLETA', 'Villeta', ''),
('CUNDINAMARCA', 'GUAVIO', '25293', 'GACHALA', 'Gachala', ''),
('CUNDINAMARCA', 'GUAVIO', '25297', 'GACHETA', 'Gacheta', ''),
('CUNDINAMARCA', 'GUAVIO', '25299', 'GAMA', 'Gama', ''),
('CUNDINAMARCA', 'GUAVIO', '25322', 'GUASCA', 'Guasca', ''),
('CUNDINAMARCA', 'GUAVIO', '25326', 'GUATAVITA', 'Guatavita', ''),
('CUNDINAMARCA', 'GUAVIO', '25372', 'JUNÍN', 'Junín', ''),
('CUNDINAMARCA', 'GUAVIO', '25377', 'LA CALERA', 'La Calera', ''),
('CUNDINAMARCA', 'GUAVIO', '25839', 'UBALÁ', 'Ubalá', ''),
('CUNDINAMARCA', 'MAGDALENA CENTRO', '25086', 'BELTRÁN', 'Beltrán', ''),
('CUNDINAMARCA', 'MAGDALENA CENTRO', '25095', 'BITUIMA', 'Bituima', ''),
('CUNDINAMARCA', 'MAGDALENA CENTRO', '25168', 'CHAGUANÍ', 'Chaguaní', ''),
('CUNDINAMARCA', 'MAGDALENA CENTRO', '25328', 'GUAYABAL DE SIQUIMA', 'Guayabal De Siquima', ''),
('CUNDINAMARCA', 'MAGDALENA CENTRO', '25580', 'PULI', 'Puli', ''),
('CUNDINAMARCA', 'MAGDALENA CENTRO', '25662', 'SAN JUAN DE RÍO SECO', 'San Juan De Río Seco', ''),
('CUNDINAMARCA', 'MAGDALENA CENTRO', '25867', 'VIANÍ', 'Vianí', ''),
('CUNDINAMARCA', 'MEDINA', '25438', 'MEDINA', 'Medina', ''),
('CUNDINAMARCA', 'MEDINA', '25530', 'PARATEBUENO', 'Paratebueno', ''),
('CUNDINAMARCA', 'ORIENTE', '25151', 'CAQUEZA', 'Caqueza', ''),
('CUNDINAMARCA', 'ORIENTE', '25178', 'CHIPAQUE', 'Chipaque', ''),
('CUNDINAMARCA', 'ORIENTE', '25181', 'CHOACHÍ', 'Choachí', ''),
('CUNDINAMARCA', 'ORIENTE', '25279', 'FOMEQUE', 'Fomeque', ''),
('CUNDINAMARCA', 'ORIENTE', '25281', 'FOSCA', 'Fosca', ''),
('CUNDINAMARCA', 'ORIENTE', '25335', 'GUAYABETAL', 'Guayabetal', ''),
('CUNDINAMARCA', 'ORIENTE', '25339', 'GUTIÉRREZ', 'Gutiérrez', ''),
('CUNDINAMARCA', 'ORIENTE', '25594', 'QUETAME', 'Quetame', ''),
('CUNDINAMARCA', 'ORIENTE', '25841', 'UBAQUE', 'Ubaque', ''),
('CUNDINAMARCA', 'ORIENTE', '25845', 'UNE', 'Une', ''),
('CUNDINAMARCA', 'RIO NEGRO', '25258', 'EL PEÑÓN', 'El Peñón', ''),
('CUNDINAMARCA', 'RIO NEGRO', '25394', 'LA PALMA', 'La Palma', ''),
('CUNDINAMARCA', 'RIO NEGRO', '25513', 'PACHO', 'Pacho', ''),
('CUNDINAMARCA', 'RIO NEGRO', '25518', 'PAIME', 'Paime', ''),
('CUNDINAMARCA', 'RIO NEGRO', '25653', 'SAN CAYETANO', 'San Cayetano', ''),
('CUNDINAMARCA', 'RIO NEGRO', '25823', 'TOPAIPI', 'Topaipi', ''),
('CUNDINAMARCA', 'RIO NEGRO', '25871', 'VILLAGOMEZ', 'Villagomez', ''),
('CUNDINAMARCA', 'RIO NEGRO', '25885', 'YACOPÍ', 'Yacopí', ''),
('CUNDINAMARCA', 'SABANA CENTRO', '25126', 'CAJICÁ', 'Cajicá', ''),
('CUNDINAMARCA', 'SABANA CENTRO', '25175', 'CHÍA', 'Chía', ''),
('CUNDINAMARCA', 'SABANA CENTRO', '25200', 'COGUA', 'Cogua', ''),
('CUNDINAMARCA', 'SABANA CENTRO', '25295', 'GACHANCIPÁ', 'Gachancipá', ''),
('CUNDINAMARCA', 'SABANA CENTRO', '25486', 'NEMOCoN', 'Nemocon', ''),
('CUNDINAMARCA', 'SABANA CENTRO', '25758', 'SOPÓ', 'Sopó', ''),
('CUNDINAMARCA', 'SABANA CENTRO', '25785', 'TABIO', 'Tabio', ''),
('CUNDINAMARCA', 'SABANA CENTRO', '25817', 'TOCANCIPÁ', 'Tocancipá', ''),
('CUNDINAMARCA', 'SABANA CENTRO', '25899', 'ZIPAQUIRÁ', 'Zipaquirá', ''),
('CUNDINAMARCA', 'SABANA OCCIDENTE', '25099', 'BOJACÁ', 'Bojacá', ''),
('CUNDINAMARCA', 'SABANA OCCIDENTE', '25214', 'COTA', 'Cota', ''),
('CUNDINAMARCA', 'SABANA OCCIDENTE', '25260', 'EL ROSAL', 'El Rosal', ''),
('CUNDINAMARCA', 'SABANA OCCIDENTE', '25269', 'FACATATIVÁ', 'Facatativá', ''),
('CUNDINAMARCA', 'SABANA OCCIDENTE', '25286', 'FUNZA', 'Funza', ''),
('CUNDINAMARCA', 'SABANA OCCIDENTE', '25430', 'MADRID', 'Madrid', ''),
('CUNDINAMARCA', 'SABANA OCCIDENTE', '25473', 'MOSQUERA', 'Mosquera', ''),
('CUNDINAMARCA', 'SABANA OCCIDENTE', '25769', 'SUBACHOQUE', 'Subachoque', ''),
('CUNDINAMARCA', 'SABANA OCCIDENTE', '25799', 'TENJO', 'Tenjo', ''),
('CUNDINAMARCA', 'SABANA OCCIDENTE', '25898', 'ZIPACoN', 'Zipacon', ''),
('CUNDINAMARCA', 'SOACHA', '25740', 'SIBATÉ', 'Sibaté', ''),
('CUNDINAMARCA', 'SOACHA', '25754', 'SOACHA', 'Soacha', ''),
('CUNDINAMARCA', 'SUMAPAZ', '25053', 'ARBELÁEZ', 'Arbeláez', ''),
('CUNDINAMARCA', 'SUMAPAZ', '25120', 'CABRERA', 'Cabrera', ''),
('CUNDINAMARCA', 'SUMAPAZ', '25290', 'FUSAGASUGÁ', 'Fusagasugá', ''),
('CUNDINAMARCA', 'SUMAPAZ', '25312', 'GRANADA', 'Granada', ''),
('CUNDINAMARCA', 'SUMAPAZ', '25524', 'PANDI', 'Pandi', ''),
('CUNDINAMARCA', 'SUMAPAZ', '25535', 'PASCA', 'Pasca', ''),
('CUNDINAMARCA', 'SUMAPAZ', '25649', 'SAN BERNARDO', 'San Bernardo', ''),
('CUNDINAMARCA', 'SUMAPAZ', '25743', 'SILVANIA', 'Silvania', ''),
('CUNDINAMARCA', 'SUMAPAZ', '25805', 'TIBACUY', 'Tibacuy', ''),
('CUNDINAMARCA', 'SUMAPAZ', '25506', 'VENECIA', 'Venecia', ''),
('CUNDINAMARCA', 'TEQUENDAMA', '25035', 'ANAPOIMA', 'Anapoima', ''),
('CUNDINAMARCA', 'TEQUENDAMA', '25040', 'ANOLAIMA', 'Anolaima', ''),
('CUNDINAMARCA', 'TEQUENDAMA', '25599', 'APULO', 'Apulo', ''),
('CUNDINAMARCA', 'TEQUENDAMA', '25123', 'CACHIPAY', 'Cachipay', ''),
('CUNDINAMARCA', 'TEQUENDAMA', '25245', 'EL COLEGIO', 'El Colegio', ''),
('CUNDINAMARCA', 'TEQUENDAMA', '25386', 'LA MESA', 'La Mesa', ''),
('CUNDINAMARCA', 'TEQUENDAMA', '25596', 'QUIPILE', 'Quipile', ''),
('CUNDINAMARCA', 'TEQUENDAMA', '25645', 'SAN ANTONIO DE TEQUENDAMA', 'San Antonio De Tequendama', ''),
('CUNDINAMARCA', 'TEQUENDAMA', '25797', 'TENA', 'Tena', ''),
('CUNDINAMARCA', 'TEQUENDAMA', '25878', 'VIOTÁ', 'Viotá', ''),
('CUNDINAMARCA', 'UBATE', '25154', 'CARMEN DE CARUPA', 'Carmen De Carupa', ''),
('CUNDINAMARCA', 'UBATE', '25224', 'CUCUNUBÁ', 'Cucunubá', ''),
('CUNDINAMARCA', 'UBATE', '25288', 'FÚQUENE', 'Fúquene', ''),
('CUNDINAMARCA', 'UBATE', '25317', 'GUACHETÁ', 'Guachetá', ''),
('CUNDINAMARCA', 'UBATE', '25407', 'LENGUAZAQUE', 'Lenguazaque', ''),
('CUNDINAMARCA', 'UBATE', '25745', 'SIMIJACA', 'Simijaca', ''),
('CUNDINAMARCA', 'UBATE', '25779', 'SUSA', 'Susa', ''),
('CUNDINAMARCA', 'UBATE', '25781', 'SUTATAUSA', 'Sutatausa', ''),
('CUNDINAMARCA', 'UBATE', '25793', 'TAUSA', 'Tausa', ''),
('CUNDINAMARCA', 'UBATE', '25843', 'UBATE', 'Ubate', ''),
('GUAINIA', 'GUAINIA', '94343', 'BARRANCO MINA', 'Barranco Mina', ''),
('GUAINIA', 'GUAINIA', '94886', 'CACAHUAL', 'Cacahual', ''),
('GUAINIA', 'GUAINIA', '94001', 'INÍRIDA', 'Inírida', ''),
('GUAINIA', 'GUAINIA', '94885', 'LA GUADALUPE', 'La Guadalupe', ''),
('GUAINIA', 'GUAINIA', '94663', 'MAPIRIPaN', 'Mapiripan', ''),
('GUAINIA', 'GUAINIA', '94888', 'MORICHAL', 'Morichal', ''),
('GUAINIA', 'GUAINIA', '94887', 'PANA PANA', 'Pana Pana', ''),
('GUAINIA', 'GUAINIA', '94884', 'PUERTO COLOMBIA', 'Puerto Colombia', ''),
('GUAINIA', 'GUAINIA', '94883', 'SAN FELIPE', 'San Felipe', ''),
('GUAVIARE', 'GUAVIARE', '95015', 'CALAMAR', 'Calamar', ''),
('GUAVIARE', 'GUAVIARE', '95025', 'EL RETORNO', 'El Retorno', ''),
('GUAVIARE', 'GUAVIARE', '95200', 'MIRAFLORES', 'Miraflores', ''),
('GUAVIARE', 'GUAVIARE', '95001', 'SAN JOSÉ DEL GUAVIARE', 'San José Del Guaviare', ''),
('HUILA', 'CENTRO', '41013', 'AGRADO', 'Agrado', ''),
('HUILA', 'CENTRO', '41026', 'ALTAMIRA', 'Altamira', ''),
('HUILA', 'CENTRO', '41298', 'GARZÓN', 'Garzón', ''),
('HUILA', 'CENTRO', '41306', 'GIGANTE', 'Gigante', ''),
('HUILA', 'CENTRO', '41319', 'GUADALUPE', 'Guadalupe', ''),
('HUILA', 'CENTRO', '41548', 'PITAL', 'Pital', ''),
('HUILA', 'CENTRO', '41770', 'SUAZA', 'Suaza', ''),
('HUILA', 'CENTRO', '41791', 'TARQUI', 'Tarqui', ''),
('HUILA', 'NORTE', '41016', 'AIPE', 'Aipe', ''),
('HUILA', 'NORTE', '41020', 'ALGECIRAS', 'Algeciras', ''),
('HUILA', 'NORTE', '41078', 'BARAYA', 'Baraya', ''),
('HUILA', 'NORTE', '41132', 'CAMPOALEGRE', 'Campoalegre', ''),
('HUILA', 'NORTE', '41206', 'COLOMBIA', 'Colombia', ''),
('HUILA', 'NORTE', '41349', 'HOBO', 'Hobo', ''),
('HUILA', 'NORTE', '41357', 'IQUIRA', 'Iquira', ''),
('HUILA', 'NORTE', '41001', 'NEIVA', 'Neiva', ''),
('HUILA', 'NORTE', '41524', 'PALERMO', 'Palermo', ''),
('HUILA', 'NORTE', '41615', 'RIVERA', 'Rivera', ''),
('HUILA', 'NORTE', '41676', 'SANTA MARÍA', 'Santa María', ''),
('HUILA', 'NORTE', '41799', 'TELLO', 'Tello', ''),
('HUILA', 'NORTE', '41801', 'TERUEL', 'Teruel', ''),
('HUILA', 'NORTE', '41872', 'VILLAVIEJA', 'Villavieja', ''),
('HUILA', 'NORTE', '41885', 'YAGUARÁ', 'Yaguará', ''),
('HUILA', 'OCCIDENTE', '41378', 'LA ARGENTINA', 'La Argentina', ''),
('HUILA', 'OCCIDENTE', '41396', 'LA PLATA', 'La Plata', ''),
('HUILA', 'OCCIDENTE', '41483', 'NÁTAGA', 'Nátaga', ''),
('HUILA', 'OCCIDENTE', '41518', 'PAICOL', 'Paicol', ''),
('HUILA', 'OCCIDENTE', '41797', 'TESALIA', 'Tesalia', ''),
('HUILA', 'SUR', '41006', 'ACEVEDO', 'Acevedo', ''),
('HUILA', 'SUR', '41244', 'ELÍAS', 'Elías', ''),
('HUILA', 'SUR', '41359', 'ISNOS', 'Isnos', ''),
('HUILA', 'SUR', '41503', 'OPORAPA', 'Oporapa', ''),
('HUILA', 'SUR', '41530', 'PALESTINA', 'Palestina', ''),
('HUILA', 'SUR', '41551', 'PITALITO', 'Pitalito', ''),
('HUILA', 'SUR', '41660', 'SALADOBLANCO', 'Saladoblanco', ''),
('HUILA', 'SUR', '41668', 'SAN AGUSTÍN', 'San Agustín', ''),
('HUILA', 'SUR', '41807', 'TIMANÁ', 'Timaná', ''),
('LA GUAJIRA', 'NORTE', '44035', 'ALBANIA', 'Albania', ''),
('LA GUAJIRA', 'NORTE', '44090', 'DIBULLA', 'Dibulla', ''),
('LA GUAJIRA', 'NORTE', '44430', 'MAICAO', 'Maicao', ''),
('LA GUAJIRA', 'NORTE', '44560', 'MANAURE', 'Manaure', ''),
('LA GUAJIRA', 'NORTE', '44001', 'RIOHACHA', 'Riohacha', ''),
('LA GUAJIRA', 'NORTE', '44847', 'URIBIA', 'Uribia', ''),
('LA GUAJIRA', 'SUR', '44078', 'BARRANCAS', 'Barrancas', ''),
('LA GUAJIRA', 'SUR', '44098', 'DISTRACCION', 'Distraccion', ''),
('LA GUAJIRA', 'SUR', '44110', 'EL MOLINO', 'El Molino', ''),
('LA GUAJIRA', 'SUR', '44279', 'FONSECA', 'Fonseca', ''),
('LA GUAJIRA', 'SUR', '44378', 'HATONUEVO', 'Hatonuevo', ''),
('LA GUAJIRA', 'SUR', '44420', 'LA JAGUA DEL PILAR', 'La Jagua Del Pilar', ''),
('LA GUAJIRA', 'SUR', '44650', 'SAN JUAN DEL CESAR', 'San Juan Del Cesar', ''),
('LA GUAJIRA', 'SUR', '44855', 'URUMITA', 'Urumita', ''),
('LA GUAJIRA', 'SUR', '44874', 'VILLANUEVA', 'Villanueva', ''),
('MAGDALENA', 'CENTRO', '47058', 'ARIGUANÍ', 'Ariguaní', ''),
('MAGDALENA', 'CENTRO', '47170', 'CHIBOLO', 'Chibolo', ''),
('MAGDALENA', 'CENTRO', '47460', 'NUEVA GRANADA', 'Nueva Granada', ''),
('MAGDALENA', 'CENTRO', '47555', 'PLATO', 'Plato', ''),
('MAGDALENA', 'CENTRO', '47660', 'SABANAS DE SAN ANGEL', 'Sabanas De San Angel', ''),
('MAGDALENA', 'CENTRO', '47798', 'TENERIFE', 'Tenerife', ''),
('MAGDALENA', 'NORTE', '47030', 'ALGARROBO', 'Algarrobo', ''),
('MAGDALENA', 'NORTE', '47053', 'ARACATACA', 'Aracataca', ''),
('MAGDALENA', 'NORTE', '47189', 'CIÉNAGA', 'Ciénaga', ''),
('MAGDALENA', 'NORTE', '47268', 'EL RETEN', 'El Reten', ''),
('MAGDALENA', 'NORTE', '47288', 'FUNDACION', 'Fundacion', ''),
('MAGDALENA', 'NORTE', '47570', 'PUEBLO VIEJO', 'Pueblo Viejo', ''),
('MAGDALENA', 'NORTE', '47980', 'ZONA BANANERA', 'Zona Bananera', ''),
('MAGDALENA', 'RIO', '47161', 'CERRO SAN ANTONIO', 'Cerro San Antonio', ''),
('MAGDALENA', 'RIO', '47205', 'CONCORDIA', 'Concordia', ''),
('MAGDALENA', 'RIO', '47258', 'EL PIÑON', 'El Piñon', ''),
('MAGDALENA', 'RIO', '47541', 'PEDRAZA', 'Pedraza', ''),
('MAGDALENA', 'RIO', '47551', 'PIVIJAY', 'Pivijay', ''),
('MAGDALENA', 'RIO', '47605', 'REMOLINO', 'Remolino', ''),
('MAGDALENA', 'RIO', '47675', 'SALAMINA', 'Salamina', ''),
('MAGDALENA', 'RIO', '47745', 'SITIONUEVO', 'Sitionuevo', ''),
('MAGDALENA', 'RIO', '47960', 'ZAPAYAN', 'Zapayan', ''),
('MAGDALENA', 'SANTA MARTA', '47001', 'SANTA MARTA', 'Santa Marta', ''),
('MAGDALENA', 'SUR', '47245', 'EL BANCO', 'El Banco', ''),
('MAGDALENA', 'SUR', '47318', 'GUAMAL', 'Guamal', ''),
('MAGDALENA', 'SUR', '47545', 'PIJIÑO DEL CARMEN', 'Pijiño Del Carmen', ''),
('MAGDALENA', 'SUR', '47692', 'SAN SEBASTIAN DE BUENAVISTA', 'San Sebastian De Buenavista', ''),
('MAGDALENA', 'SUR', '47703', 'SAN ZENON', 'San Zenon', ''),
('MAGDALENA', 'SUR', '47707', 'SANTA ANA', 'Santa Ana', ''),
('MAGDALENA', 'SUR', '47720', 'SANTA BARBARA DE PINTO', 'Santa Barbara De Pinto', ''),
('META', 'ARIARI', '50251', 'EL CASTILLO', 'El Castillo', ''),
('META', 'ARIARI', '50270', 'EL DORADO', 'El Dorado', ''),
('META', 'ARIARI', '50287', 'FUENTE DE ORO', 'Fuente De Oro', ''),
('META', 'ARIARI', '50313', 'GRANADA', 'Granada', ''),
('META', 'ARIARI', '50350', 'LA MACARENA', 'La Macarena', ''),
('META', 'ARIARI', '50370', 'LA URIBE', 'La Uribe', ''),
('META', 'ARIARI', '50400', 'LEJANÍAS', 'Lejanías', ''),
('META', 'ARIARI', '50325', 'MAPIRIPaN', 'Mapiripan', ''),
('META', 'ARIARI', '50330', 'MESETAS', 'Mesetas', ''),
('META', 'ARIARI', '50450', 'PUERTO CONCORDIA', 'Puerto Concordia', ''),
('META', 'ARIARI', '50577', 'PUERTO LLERAS', 'Puerto Lleras', ''),
('META', 'ARIARI', '50590', 'PUERTO RICO', 'Puerto Rico', ''),
('META', 'ARIARI', '50683', 'SAN JUAN DE ARAMA', 'San Juan De Arama', ''),
('META', 'ARIARI', '50711', 'VISTA HERMOSA', 'Vista Hermosa', ''),
('META', 'CAPITAL', '50001', 'VILLAVICENCIO', 'Villavicencio', ''),
('META', 'PIEDEMONTE', '50006', 'ACACiAS', 'Acacias', ''),
('META', 'PIEDEMONTE', '50110', 'BARRANCA DE UPIA', 'Barranca De Upia', ''),
('META', 'PIEDEMONTE', '50150', 'CASTILLA LA NUEVA', 'Castilla La Nueva', ''),
('META', 'PIEDEMONTE', '50226', 'CUMARAL', 'Cumaral', ''),
('META', 'PIEDEMONTE', '50245', 'EL CALVARIO', 'El Calvario', ''),
('META', 'PIEDEMONTE', '50318', 'GUAMAL', 'Guamal', ''),
('META', 'PIEDEMONTE', '50606', 'RESTREPO', 'Restrepo', ''),
('META', 'PIEDEMONTE', '50680', 'SAN CARLOS GUAROA', 'San Carlos Guaroa', ''),
('META', 'PIEDEMONTE', '50686', 'SAN JUANITO', 'San Juanito', ''),
('META', 'PIEDEMONTE', '50223', 'SAN LUIS DE CUBARRAL', 'San Luis De Cubarral', ''),
('META', 'PIEDEMONTE', '50689', 'SAN MARTÍN', 'San Martín', ''),
('META', 'RIO META', '50124', 'CABUYARO', 'Cabuyaro', ''),
('META', 'RIO META', '50568', 'PUERTO GAITÁN', 'Puerto Gaitán', ''),
('META', 'RIO META', '50573', 'PUERTO LoPEZ', 'Puerto Lopez', ''),
('NARIÑO', 'CENTRO', '52240', 'CHACHAGUI', 'Chachagui', ''),
('NARIÑO', 'CENTRO', '52207', 'CONSACA', 'Consaca', ''),
('NARIÑO', 'CENTRO', '52254', 'EL PEÑOL', 'El Peñol', ''),
('NARIÑO', 'CENTRO', '52260', 'EL TAMBO', 'El Tambo', ''),
('NARIÑO', 'CENTRO', '52381', 'LA FLORIDA', 'La Florida', ''),
('NARIÑO', 'CENTRO', '52480', 'NARIÑO', 'Nariño', ''),
('NARIÑO', 'CENTRO', '52001', 'PASTO', 'Pasto', ''),
('NARIÑO', 'CENTRO', '52683', 'SANDONÁ', 'Sandoná', ''),
('NARIÑO', 'CENTRO', '52788', 'TANGUA', 'Tangua', ''),
('NARIÑO', 'CENTRO', '52885', 'YACUANQUER', 'Yacuanquer', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52036', 'ANCUYA', 'Ancuya', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52320', 'GUAITARILLA', 'Guaitarilla', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52385', 'LA LLANADA', 'La Llanada', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52411', 'LINARES', 'Linares', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52418', 'LOS ANDES', 'Los Andes', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52435', 'MALLAMA', 'Mallama', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52506', 'OSPINA', 'Ospina', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52565', 'PROVIDENCIA', 'Providencia', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52612', 'RICAURTE', 'Ricaurte', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52678', 'SAMANIEGO', 'Samaniego', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52699', 'SANTA CRUZ', 'Santa Cruz', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52720', 'SAPUYES', 'Sapuyes', ''),
('NARIÑO', 'CENTRO OCCIDENTE', '52838', 'TUQUERRES', 'Tuquerres', ''),
('NARIÑO', 'COSTA', '52079', 'BARBACOAS', 'Barbacoas', ''),
('NARIÑO', 'COSTA', '52250', 'EL CHARCO', 'El Charco', ''),
('NARIÑO', 'COSTA', '52520', 'FRANCISCO PIZARRO', 'Francisco Pizarro', ''),
('NARIÑO', 'COSTA', '52390', 'LA TOLA', 'La Tola', ''),
('NARIÑO', 'COSTA', '52427', 'Magui', 'Magui', ''),
('NARIÑO', 'COSTA', '52473', 'MOSQUERA', 'Mosquera', ''),
('NARIÑO', 'COSTA', '52490', 'OLAYA HERRERA', 'Olaya Herrera', ''),
('NARIÑO', 'COSTA', '52621', 'ROBERTO PAYAN', 'Roberto Payan', '');
INSERT INTO `tabla_municipios` (`NOMBRE_DEPTO`, `PROVINCIA`, `CODIGO_MUNICIPIO`, `NOMBRE_MPIO`, `Nombre`, `Column_6`) VALUES
('NARIÑO', 'COSTA', '52696', 'SANTA BaRBARA', 'Santa Barbara', ''),
('NARIÑO', 'COSTA', '52835', 'TUMACO', 'Tumaco', ''),
('NARIÑO', 'NORTE', '52019', 'ALBAN', 'Alban', ''),
('NARIÑO', 'NORTE', '52051', 'ARBOLEDA', 'Arboleda', ''),
('NARIÑO', 'NORTE', '52083', 'BELEN', 'Belen', ''),
('NARIÑO', 'NORTE', '52110', 'BUESACO', 'Buesaco', ''),
('NARIÑO', 'NORTE', '52203', 'COLON', 'Colon', ''),
('NARIÑO', 'NORTE', '52233', 'CUMBITARA', 'Cumbitara', ''),
('NARIÑO', 'NORTE', '52256', 'EL ROSARIO', 'El Rosario', ''),
('NARIÑO', 'NORTE', '52258', 'El Tablon de Gomez', 'El Tablon De Gomez', ''),
('NARIÑO', 'NORTE', '52378', 'LA CRUZ', 'La Cruz', ''),
('NARIÑO', 'NORTE', '52399', 'LA UNION', 'La Union', ''),
('NARIÑO', 'NORTE', '52405', 'LEIVA', 'Leiva', ''),
('NARIÑO', 'NORTE', '52540', 'POLICARPA', 'Policarpa', ''),
('NARIÑO', 'NORTE', '52685', 'SAN BERNARDO', 'San Bernardo', ''),
('NARIÑO', 'NORTE', '52687', 'SAN LORENZO', 'San Lorenzo', ''),
('NARIÑO', 'NORTE', '52693', 'SAN PABLO', 'San Pablo', ''),
('NARIÑO', 'NORTE', '52694', 'SAN PEDRO DE CARTAGO', 'San Pedro De Cartago', ''),
('NARIÑO', 'NORTE', '52786', 'TAMINANGO', 'Taminango', ''),
('NARIÑO', 'SUR', '52022', 'ALDANA', 'Aldana', ''),
('NARIÑO', 'SUR', '52210', 'CONTADERO', 'Contadero', ''),
('NARIÑO', 'SUR', '52215', 'CÓRDOBA', 'Córdoba', ''),
('NARIÑO', 'SUR', '52224', 'CUASPUD', 'Cuaspud', ''),
('NARIÑO', 'SUR', '52227', 'CUMBAL', 'Cumbal', ''),
('NARIÑO', 'SUR', '52287', 'FUNES', 'Funes', ''),
('NARIÑO', 'SUR', '52317', 'GUACHUCAL', 'Guachucal', ''),
('NARIÑO', 'SUR', '52323', 'GUALMATAN', 'Gualmatan', ''),
('NARIÑO', 'SUR', '52352', 'ILES', 'Iles', ''),
('NARIÑO', 'SUR', '52354', 'IMUES', 'Imues', ''),
('NARIÑO', 'SUR', '52356', 'IPIALES', 'Ipiales', ''),
('NARIÑO', 'SUR', '52560', 'POTOSÍ', 'Potosí', ''),
('NARIÑO', 'SUR', '52573', 'PUERRES', 'Puerres', ''),
('NARIÑO', 'SUR', '52585', 'PUPIALES', 'Pupiales', ''),
('NORTE DE SANTANDER', 'CENTRO', '54051', 'ARBOLEDAS', 'Arboledas', ''),
('NORTE DE SANTANDER', 'CENTRO', '54223', 'CUCUTILLA', 'Cucutilla', ''),
('NORTE DE SANTANDER', 'CENTRO', '54313', 'GRAMALOTE', 'Gramalote', ''),
('NORTE DE SANTANDER', 'CENTRO', '54418', 'LOURDES', 'Lourdes', ''),
('NORTE DE SANTANDER', 'CENTRO', '54660', 'SALAZAR', 'Salazar', ''),
('NORTE DE SANTANDER', 'CENTRO', '54680', 'SANTIAGO', 'Santiago', ''),
('NORTE DE SANTANDER', 'CENTRO', '54871', 'VILLA CARO', 'Villa Caro', ''),
('NORTE DE SANTANDER', 'NORTE', '54109', 'BUCARASICA', 'Bucarasica', ''),
('NORTE DE SANTANDER', 'NORTE', '54250', 'EL TARRA', 'El Tarra', ''),
('NORTE DE SANTANDER', 'NORTE', '54720', 'SARDINATA', 'Sardinata', ''),
('NORTE DE SANTANDER', 'NORTE', '54810', 'TIBÚ', 'Tibú', ''),
('NORTE DE SANTANDER', 'OCCIDENTE', '54003', 'ABREGO', 'Abrego', ''),
('NORTE DE SANTANDER', 'OCCIDENTE', '54128', 'CACHIRÁ', 'Cachirá', ''),
('NORTE DE SANTANDER', 'OCCIDENTE', '54206', 'CONVENCIÓN', 'Convención', ''),
('NORTE DE SANTANDER', 'OCCIDENTE', '54245', 'EL CARMEN', 'El Carmen', ''),
('NORTE DE SANTANDER', 'OCCIDENTE', '54344', 'HACARÍ', 'Hacarí', ''),
('NORTE DE SANTANDER', 'OCCIDENTE', '54385', 'LA ESPERANZA', 'La Esperanza', ''),
('NORTE DE SANTANDER', 'OCCIDENTE', '54398', 'LA PLAYA', 'La Playa', ''),
('NORTE DE SANTANDER', 'OCCIDENTE', '54498', 'OCAÑA', 'Ocaña', ''),
('NORTE DE SANTANDER', 'OCCIDENTE', '54670', 'SAN CALIXTO', 'San Calixto', ''),
('NORTE DE SANTANDER', 'OCCIDENTE', '54800', 'TEORAMA', 'Teorama', ''),
('NORTE DE SANTANDER', 'ORIENTAL', '54001', 'CÚCUTA', 'Cúcuta', ''),
('NORTE DE SANTANDER', 'ORIENTAL', '54261', 'EL ZULIA', 'El Zulia', ''),
('NORTE DE SANTANDER', 'ORIENTAL', '54405', 'LOS PATIOS', 'Los Patios', ''),
('NORTE DE SANTANDER', 'ORIENTAL', '54553', 'PUERTO SANTANDER', 'Puerto Santander', ''),
('NORTE DE SANTANDER', 'ORIENTAL', '54673', 'SAN CAYETANO', 'San Cayetano', ''),
('NORTE DE SANTANDER', 'ORIENTAL', '54874', 'VILLA DEL ROSARIO', 'Villa Del Rosario', ''),
('NORTE DE SANTANDER', 'SUR OCCIDENTE', '54125', 'CÁCOTA', 'Cácota', ''),
('NORTE DE SANTANDER', 'SUR OCCIDENTE', '54174', 'CHITAGÁ', 'Chitagá', ''),
('NORTE DE SANTANDER', 'SUR OCCIDENTE', '54480', 'MUTISCUA', 'Mutiscua', ''),
('NORTE DE SANTANDER', 'SUR OCCIDENTE', '54518', 'PAMPLONA', 'Pamplona', ''),
('NORTE DE SANTANDER', 'SUR OCCIDENTE', '54520', 'PAMPLONITA', 'Pamplonita', ''),
('NORTE DE SANTANDER', 'SUR OCCIDENTE', '54743', 'SILOS', 'Silos', ''),
('NORTE DE SANTANDER', 'SUR ORIENTE', '54099', 'BOCHALEMA', 'Bochalema', ''),
('NORTE DE SANTANDER', 'SUR ORIENTE', '54172', 'CHINÁCOTA', 'Chinácota', ''),
('NORTE DE SANTANDER', 'SUR ORIENTE', '54239', 'DURANIA', 'Durania', ''),
('NORTE DE SANTANDER', 'SUR ORIENTE', '54347', 'HERRÁN', 'Herrán', ''),
('NORTE DE SANTANDER', 'SUR ORIENTE', '54377', 'LABATECA', 'Labateca', ''),
('NORTE DE SANTANDER', 'SUR ORIENTE', '54599', 'RAGONVALIA', 'Ragonvalia', ''),
('NORTE DE SANTANDER', 'SUR ORIENTE', '54820', 'TOLEDO', 'Toledo', ''),
('PUTUMAYO', 'PUTUMAYO', '86219', 'COLÓN', 'Colón', ''),
('PUTUMAYO', 'PUTUMAYO', '86001', 'MOCOA', 'Mocoa', ''),
('PUTUMAYO', 'PUTUMAYO', '86320', 'ORITO', 'Orito', ''),
('PUTUMAYO', 'PUTUMAYO', '86568', 'PUERTO ASIS', 'Puerto Asis', ''),
('PUTUMAYO', 'PUTUMAYO', '86569', 'PUERTO CAICEDO', 'Puerto Caicedo', ''),
('PUTUMAYO', 'PUTUMAYO', '86571', 'PUERTO GUZMAN', 'Puerto Guzman', ''),
('PUTUMAYO', 'PUTUMAYO', '86573', 'PUERTO LEGUIZAMO', 'Puerto Leguizamo', ''),
('PUTUMAYO', 'PUTUMAYO', '86755', 'SAN FRANCISCO', 'San Francisco', ''),
('PUTUMAYO', 'PUTUMAYO', '86757', 'SAN MIGUEL', 'San Miguel', ''),
('PUTUMAYO', 'PUTUMAYO', '86760', 'SANTIAGO', 'Santiago', ''),
('PUTUMAYO', 'PUTUMAYO', '86749', 'SIBUNDOY', 'Sibundoy', ''),
('PUTUMAYO', 'PUTUMAYO', '86865', 'VALLE DEL GUAMUEZ', 'Valle Del Guamuez', ''),
('PUTUMAYO', 'PUTUMAYO', '86885', 'VILLA GARZON', 'Villa Garzon', ''),
('QUINDIO', 'CAPITAL', '63001', 'ARMENIA', 'Armenia', ''),
('QUINDIO', 'CAPITAL', '63111', 'BUENAVISTA', 'Buenavista', ''),
('QUINDIO', 'CAPITAL', '63130', 'CALARCA', 'Calarca', ''),
('QUINDIO', 'CORDILLERANOS', '63212', 'CoRDOBA', 'Cordoba', ''),
('QUINDIO', 'CORDILLERANOS', '63302', 'GeNOVA', 'Genova', ''),
('QUINDIO', 'CORDILLERANOS', '63548', 'PIJAO', 'Pijao', ''),
('QUINDIO', 'FRIA', '63272', 'FILANDIA', 'Filandia', ''),
('QUINDIO', 'FRIA', '63690', 'SALENTO', 'Salento', ''),
('QUINDIO', 'NORTE', '63190', 'CIRCASIA', 'Circasia', ''),
('QUINDIO', 'VALLE', '63401', 'LA TEBAIDA', 'La Tebaida', ''),
('QUINDIO', 'VALLE', '63470', 'Montengro', 'Montengro', ''),
('QUINDIO', 'VALLE', '63594', 'QUIMBAYA', 'Quimbaya', ''),
('RISARALDA', 'UNO - VERTIENTE ORIENTAL', '66170', 'DOSQUEBRADAS', 'Dosquebradas', ''),
('RISARALDA', 'UNO - VERTIENTE ORIENTAL', '66400', 'LA VIRGINIA', 'La Virginia', ''),
('RISARALDA', 'UNO - VERTIENTE ORIENTAL', '66440', 'MARSELLA', 'Marsella', ''),
('RISARALDA', 'UNO - VERTIENTE ORIENTAL', '66001', 'PEREIRA', 'Pereira', ''),
('RISARALDA', 'UNO - VERTIENTE ORIENTAL', '66682', 'SANTA ROSA DE CABAL', 'Santa Rosa De Cabal', ''),
('RISARALDA', 'DOS - VERTIENTE OCCIDENTAL', '66045', 'APÍA', 'Apía', ''),
('RISARALDA', 'DOS - VERTIENTE OCCIDENTAL', '66075', 'BALBOA', 'Balboa', ''),
('RISARALDA', 'DOS - VERTIENTE OCCIDENTAL', '66088', 'BELÉN DE UMBRÍA', 'Belén De Umbría', ''),
('RISARALDA', 'DOS - VERTIENTE OCCIDENTAL', '66318', 'GUÁTICA', 'Guática', ''),
('RISARALDA', 'DOS - VERTIENTE OCCIDENTAL', '66383', 'LA CELIA', 'La Celia', ''),
('RISARALDA', 'DOS - VERTIENTE OCCIDENTAL', '66594', 'QUINCHiA', 'Quinchia', ''),
('RISARALDA', 'DOS - VERTIENTE OCCIDENTAL', '66687', 'SANTUARIO', 'Santuario', ''),
('RISARALDA', 'TRES - VERTIENTE DEL PACIFICO', '66456', 'MISTRATÓ', 'Mistrató', ''),
('RISARALDA', 'TRES - VERTIENTE DEL PACIFICO', '66572', 'PUEBLO RICO', 'Pueblo Rico', ''),
('SANTANDER', 'COMUNERA', '68176', 'CHIMA', 'Chima', ''),
('SANTANDER', 'COMUNERA', '68209', 'CONFINES', 'Confines', ''),
('SANTANDER', 'COMUNERA', '68211', 'CONTRATACIÓN', 'Contratación', ''),
('SANTANDER', 'COMUNERA', '68245', 'EL GUACAMAYO', 'El Guacamayo', ''),
('SANTANDER', 'COMUNERA', '68296', 'GALÁN', 'Galán', ''),
('SANTANDER', 'COMUNERA', '68298', 'GAMBITA', 'Gambita', ''),
('SANTANDER', 'COMUNERA', '68320', 'GUADALUPE', 'Guadalupe', ''),
('SANTANDER', 'COMUNERA', '68322', 'GUAPOTÁ', 'Guapotá', ''),
('SANTANDER', 'COMUNERA', '68344', 'HATO', 'Hato', ''),
('SANTANDER', 'COMUNERA', '68500', 'OIBA', 'Oiba', ''),
('SANTANDER', 'COMUNERA', '68522', 'PALMAR', 'Palmar', ''),
('SANTANDER', 'COMUNERA', '68524', 'PALMAS DEL SOCORRO', 'Palmas Del Socorro', ''),
('SANTANDER', 'COMUNERA', '68720', 'SANTA HELENA DEL OPÓN', 'Santa Helena Del Opón', ''),
('SANTANDER', 'COMUNERA', '68745', 'SIMACOTA', 'Simacota', ''),
('SANTANDER', 'COMUNERA', '68755', 'SOCORRO', 'Socorro', ''),
('SANTANDER', 'COMUNERA', '68770', 'SUAITA', 'Suaita', ''),
('SANTANDER', 'GARCIA ROVIRA', '68147', 'CAPITANEJO', 'Capitanejo', ''),
('SANTANDER', 'GARCIA ROVIRA', '68152', 'CARCASÍ', 'Carcasí', ''),
('SANTANDER', 'GARCIA ROVIRA', '68160', 'CEPITÁ', 'Cepitá', ''),
('SANTANDER', 'GARCIA ROVIRA', '68162', 'CERRITO', 'Cerrito', ''),
('SANTANDER', 'GARCIA ROVIRA', '68207', 'CONCEPCIÓN', 'Concepción', ''),
('SANTANDER', 'GARCIA ROVIRA', '68266', 'ENCISO', 'Enciso', ''),
('SANTANDER', 'GARCIA ROVIRA', '68318', 'GUACA', 'Guaca', ''),
('SANTANDER', 'GARCIA ROVIRA', '68425', 'MACARAVITA', 'Macaravita', ''),
('SANTANDER', 'GARCIA ROVIRA', '68432', 'MÁLAGA', 'Málaga', ''),
('SANTANDER', 'GARCIA ROVIRA', '68468', 'MOLAGAVITA', 'Molagavita', ''),
('SANTANDER', 'GARCIA ROVIRA', '68669', 'SAN ANDRÉS', 'San Andrés', ''),
('SANTANDER', 'GARCIA ROVIRA', '68684', 'SAN JOSÉ DE MIRANDA', 'San José De Miranda', ''),
('SANTANDER', 'GARCIA ROVIRA', '68686', 'SAN MIGUEL', 'San Miguel', ''),
('SANTANDER', 'GUANENTA', '68051', 'ARATOCA', 'Aratoca', ''),
('SANTANDER', 'GUANENTA', '68079', 'BARICHARA', 'Barichara', ''),
('SANTANDER', 'GUANENTA', '68121', 'CABRERA', 'Cabrera', ''),
('SANTANDER', 'GUANENTA', '68167', 'CHARALÁ', 'Charalá', ''),
('SANTANDER', 'GUANENTA', '68217', 'COROMORO', 'Coromoro', ''),
('SANTANDER', 'GUANENTA', '68229', 'CURITÍ', 'Curití', ''),
('SANTANDER', 'GUANENTA', '68264', 'ENCINO', 'Encino', ''),
('SANTANDER', 'GUANENTA', '68370', 'JORDÁN', 'Jordán', ''),
('SANTANDER', 'GUANENTA', '68464', 'MOGOTES', 'Mogotes', ''),
('SANTANDER', 'GUANENTA', '68498', 'OCAMONTE', 'Ocamonte', ''),
('SANTANDER', 'GUANENTA', '68502', 'ONZAGA', 'Onzaga', ''),
('SANTANDER', 'GUANENTA', '68533', 'PÁRAMO', 'Páramo', ''),
('SANTANDER', 'GUANENTA', '68549', 'PINCHOTE', 'Pinchote', ''),
('SANTANDER', 'GUANENTA', '68679', 'SAN GIL', 'San Gil', ''),
('SANTANDER', 'GUANENTA', '68682', 'SAN JOAQUÍN', 'San Joaquín', ''),
('SANTANDER', 'GUANENTA', '68855', 'VALLE DE SAN JOSÉ', 'Valle De San José', ''),
('SANTANDER', 'GUANENTA', '68872', 'VILLANUEVA', 'Villanueva', ''),
('SANTANDER', 'MARES', '68081', 'BARRANCABERMEJA', 'Barrancabermeja', ''),
('SANTANDER', 'MARES', '68092', 'BETULIA', 'Betulia', ''),
('SANTANDER', 'MARES', '68235', 'EL CARMEN DE CHUCURÍ', 'El Carmen De Chucurí', ''),
('SANTANDER', 'MARES', '68575', 'PUERTO WILCHES', 'Puerto Wilches', ''),
('SANTANDER', 'MARES', '68655', 'SABANA DE TORRES', 'Sabana De Torres', ''),
('SANTANDER', 'MARES', '68689', 'SAN VICENTE DE CHUCURÍ', 'San Vicente De Chucurí', ''),
('SANTANDER', 'MARES', '68895', 'ZAPATOCA', 'Zapatoca', ''),
('SANTANDER', 'SOTO', '68001', 'BUCARAMANGA', 'Bucaramanga', ''),
('SANTANDER', 'SOTO', '68132', 'CALIFORNIA', 'California', ''),
('SANTANDER', 'SOTO', '68169', 'CHARTA', 'Charta', ''),
('SANTANDER', 'SOTO', '68255', 'EL PLAYÓN', 'El Playón', ''),
('SANTANDER', 'SOTO', '68276', 'FLORIDABLANCA', 'Floridablanca', ''),
('SANTANDER', 'SOTO', '68307', 'GIRÓN', 'Girón', ''),
('SANTANDER', 'SOTO', '68406', 'LEBRÍJA', 'Lebríja', ''),
('SANTANDER', 'SOTO', '68418', 'LOS SANTOS', 'Los Santos', ''),
('SANTANDER', 'SOTO', '68444', 'MATANZA', 'Matanza', ''),
('SANTANDER', 'SOTO', '68547', 'PIEDECUESTA', 'Piedecuesta', ''),
('SANTANDER', 'SOTO', '68615', 'RIONEGRO', 'Rionegro', ''),
('SANTANDER', 'SOTO', '68705', 'SANTA BÁRBARA', 'Santa Bárbara', ''),
('SANTANDER', 'SOTO', '68780', 'SURATA', 'Surata', ''),
('SANTANDER', 'SOTO', '68820', 'TONA', 'Tona', ''),
('SANTANDER', 'SOTO', '68867', 'VETAS', 'Vetas', ''),
('SANTANDER', 'VELEZ', '68013', 'AGUADA', 'Aguada', ''),
('SANTANDER', 'VELEZ', '68020', 'ALBANIA', 'Albania', ''),
('SANTANDER', 'VELEZ', '68077', 'BARBOSA', 'Barbosa', ''),
('SANTANDER', 'VELEZ', '68101', 'BOLÍVAR', 'Bolívar', ''),
('SANTANDER', 'VELEZ', '68179', 'CHIPATÁ', 'Chipatá', ''),
('SANTANDER', 'VELEZ', '68190', 'CIMITARRA', 'Cimitarra', ''),
('SANTANDER', 'VELEZ', '68250', 'EL PEÑÓN', 'El Peñón', ''),
('SANTANDER', 'VELEZ', '68271', 'FLORIÁN', 'Florián', ''),
('SANTANDER', 'VELEZ', '68324', 'GUAVATÁ', 'Guavatá', ''),
('SANTANDER', 'VELEZ', '68327', 'GuEPSA', 'Guepsa', ''),
('SANTANDER', 'VELEZ', '68368', 'JESÚS MARÍA', 'Jesús María', ''),
('SANTANDER', 'VELEZ', '68377', 'LA BELLEZA', 'La Belleza', ''),
('SANTANDER', 'VELEZ', '68397', 'LA PAZ', 'La Paz', ''),
('SANTANDER', 'VELEZ', '68385', 'LANDÁZURI', 'Landázuri', ''),
('SANTANDER', 'VELEZ', '68572', 'PUENTE NACIONAL', 'Puente Nacional', ''),
('SANTANDER', 'VELEZ', '68573', 'PUERTO PARRA', 'Puerto Parra', ''),
('SANTANDER', 'VELEZ', '68673', 'SAN BENITO', 'San Benito', ''),
('SANTANDER', 'VELEZ', '68773', 'SUCRE', 'Sucre', ''),
('SANTANDER', 'VELEZ', '68861', 'VÉLEZ', 'Vélez', ''),
('SUCRE', 'MOJANA', '70265', 'GUARANDA', 'Guaranda', ''),
('SUCRE', 'MOJANA', '70429', 'MAJAGUAL', 'Majagual', ''),
('SUCRE', 'MOJANA', '70771', 'SUCRE', 'Sucre', ''),
('SUCRE', 'MONTES DE MARIA', '70230', 'CHALÁN', 'Chalán', ''),
('SUCRE', 'MONTES DE MARIA', '70204', 'COLOSO', 'Coloso', ''),
('SUCRE', 'MONTES DE MARIA', '70473', 'MORROA', 'Morroa', ''),
('SUCRE', 'MONTES DE MARIA', '70508', 'OVEJAS', 'Ovejas', ''),
('SUCRE', 'MONTES DE MARIA', '70001', 'SINCELEJO', 'Sincelejo', ''),
('SUCRE', 'MORROSQUILLO', '70221', 'COVEÑAS', 'Coveñas', ''),
('SUCRE', 'MORROSQUILLO', '70523', 'PALMITO', 'Palmito', ''),
('SUCRE', 'MORROSQUILLO', '70713', 'SAN ONOFRE', 'San Onofre', ''),
('SUCRE', 'MORROSQUILLO', '70820', 'SANTIAGO DE TOLÚ', 'Santiago De Tolú', ''),
('SUCRE', 'MORROSQUILLO', '70823', 'TOLÚ VIEJO', 'Tolú Viejo', ''),
('SUCRE', 'SABANAS', '70110', 'BUENAVISTA', 'Buenavista', ''),
('SUCRE', 'SABANAS', '70215', 'COROZAL', 'Corozal', ''),
('SUCRE', 'SABANAS', '70233', 'EL ROBLE', 'El Roble', ''),
('SUCRE', 'SABANAS', '70235', 'GALERAS', 'Galeras', ''),
('SUCRE', 'SABANAS', '70418', 'LOS PALMITOS', 'Los Palmitos', ''),
('SUCRE', 'SABANAS', '70670', 'SAMPUÉS', 'Sampués', ''),
('SUCRE', 'SABANAS', '70702', 'SAN JUAN BETULIA', 'San Juan Betulia', ''),
('SUCRE', 'SABANAS', '70717', 'SAN PEDRO', 'San Pedro', ''),
('SUCRE', 'SABANAS', '70742', 'SINCÉ', 'Sincé', ''),
('SUCRE', 'SAN JORGE', '70124', 'CAIMITO', 'Caimito', ''),
('SUCRE', 'SAN JORGE', '70400', 'LA UNIÓN', 'La Unión', ''),
('SUCRE', 'SAN JORGE', '70678', 'SAN BENITO ABAD', 'San Benito Abad', ''),
('SUCRE', 'SAN JORGE', '70708', 'SAN MARCOS', 'San Marcos', ''),
('TOLIMA', 'NORTE', '73030', 'AMBALEMA', 'Ambalema', ''),
('TOLIMA', 'NORTE', '73055', 'ARMERO', 'Armero', ''),
('TOLIMA', 'NORTE', '73270', 'FALAN', 'Falan', ''),
('TOLIMA', 'NORTE', '73283', 'FRESNO', 'Fresno', ''),
('TOLIMA', 'NORTE', '73349', 'HONDA', 'Honda', ''),
('TOLIMA', 'NORTE', '73443', 'MARIQUITA', 'Mariquita', ''),
('TOLIMA', 'NORTE', '73520', 'PALOCABILDO', 'Palocabildo', ''),
('TOLIMA', 'ORIENTE', '73148', 'CARMEN DE APICALÁ', 'Carmen De Apicalá', ''),
('TOLIMA', 'ORIENTE', '73226', 'CUNDAY', 'Cunday', ''),
('TOLIMA', 'ORIENTE', '73352', 'ICONONZO', 'Icononzo', ''),
('TOLIMA', 'ORIENTE', '73449', 'MELGAR', 'Melgar', ''),
('TOLIMA', 'ORIENTE', '73873', 'VILLARRICA', 'Villarrica', ''),
('TOLIMA', 'SUR', '73067', 'ATACO', 'Ataco', ''),
('TOLIMA', 'SUR', '73168', 'CHAPARRAL', 'Chaparral', ''),
('TOLIMA', 'SUR', '73217', 'COYAIMA', 'Coyaima', ''),
('TOLIMA', 'SUR', '73483', 'NATAGAIMA', 'Natagaima', ''),
('TOLIMA', 'SUR', '73504', 'ORTEGA', 'Ortega', ''),
('TOLIMA', 'SUR', '73555', 'PLANADAS', 'Planadas', ''),
('TOLIMA', 'SUR', '73616', 'RIOBLANCO', 'Rioblanco', ''),
('TOLIMA', 'SUR', '73622', 'RONCESVALLES', 'Roncesvalles', ''),
('TOLIMA', 'SUR', '73675', 'SAN ANTONIO', 'San Antonio', ''),
('TOLIMA', 'IBAGUE', '73026', 'ALVARADO', 'Alvarado', ''),
('TOLIMA', 'IBAGUE', '73043', 'ANZOÁTEGUI', 'Anzoátegui', ''),
('TOLIMA', 'IBAGUE', '73124', 'CAJAMARCA', 'Cajamarca', ''),
('TOLIMA', 'IBAGUE', '73200', 'COELLO', 'Coello', ''),
('TOLIMA', 'IBAGUE', '73268', 'ESPINAL', 'Espinal', ''),
('TOLIMA', 'IBAGUE', '73275', 'FLANDES', 'Flandes', ''),
('TOLIMA', 'IBAGUE', '73001', 'IBAGUe', 'Ibague', ''),
('TOLIMA', 'IBAGUE', '73547', 'PIEDRAS', 'Piedras', ''),
('TOLIMA', 'IBAGUE', '73624', 'ROVIRA', 'Rovira', ''),
('TOLIMA', 'IBAGUE', '73678', 'SAN LUIS', 'San Luis', ''),
('TOLIMA', 'IBAGUE', '73854', 'VALLE DE SAN JUAN', 'Valle De San Juan', ''),
('TOLIMA', 'SURORIENTE', '73024', 'ALPUJARRA', 'Alpujarra', ''),
('TOLIMA', 'SURORIENTE', '73236', 'DOLORES', 'Dolores', ''),
('TOLIMA', 'SURORIENTE', '73319', 'GUAMO', 'Guamo', ''),
('TOLIMA', 'SURORIENTE', '73563', 'PRADO', 'Prado', ''),
('TOLIMA', 'SURORIENTE', '73585', 'PURIFICACIÓN', 'Purificación', ''),
('TOLIMA', 'SURORIENTE', '73671', 'SALDAÑA', 'Saldaña', ''),
('TOLIMA', 'SURORIENTE', '73770', 'SUÁREZ', 'Suárez', ''),
('TOLIMA', 'NEVADOS', '73152', 'CASABIANCA', 'Casabianca', ''),
('TOLIMA', 'NEVADOS', '73347', 'HERVEO', 'Herveo', ''),
('TOLIMA', 'NEVADOS', '73408', 'LeRIDA', 'Lerida', ''),
('TOLIMA', 'NEVADOS', '73411', 'LiBANO', 'Libano', ''),
('TOLIMA', 'NEVADOS', '73461', 'MURILLO', 'Murillo', ''),
('TOLIMA', 'NEVADOS', '73686', 'SANTA ISABEL', 'Santa Isabel', ''),
('TOLIMA', 'NEVADOS', '73861', 'VENADILLO', 'Venadillo', ''),
('TOLIMA', 'NEVADOS', '73870', 'VILLAHERMOSA', 'Villahermosa', ''),
('VALLE DEL CAUCA', 'CENTRO', '76036', 'ANDALUCÍA', 'Andalucía', ''),
('VALLE DEL CAUCA', 'CENTRO', '76111', 'BUGA', 'Buga', ''),
('VALLE DEL CAUCA', 'CENTRO', '76113', 'BUGALAGRANDE', 'Bugalagrande', ''),
('VALLE DEL CAUCA', 'CENTRO', '76126', 'CALIMA', 'Calima', ''),
('VALLE DEL CAUCA', 'CENTRO', '76248', 'EL CERRITO', 'El Cerrito', ''),
('VALLE DEL CAUCA', 'CENTRO', '76306', 'GINEBRA', 'Ginebra', ''),
('VALLE DEL CAUCA', 'CENTRO', '76318', 'GUACARÍ', 'Guacarí', ''),
('VALLE DEL CAUCA', 'CENTRO', '76606', 'RESTREPO', 'Restrepo', ''),
('VALLE DEL CAUCA', 'CENTRO', '76616', 'RIOFRIO', 'Riofrio', ''),
('VALLE DEL CAUCA', 'CENTRO', '76670', 'SAN PEDRO', 'San Pedro', ''),
('VALLE DEL CAUCA', 'CENTRO', '76828', 'TRUJILLO', 'Trujillo', ''),
('VALLE DEL CAUCA', 'CENTRO', '76834', 'TULUÁ', 'Tuluá', ''),
('VALLE DEL CAUCA', 'CENTRO', '76890', 'YOTOCO', 'Yotoco', ''),
('VALLE DEL CAUCA', 'NORTE', '76020', 'ALCALa', 'Alcala', ''),
('VALLE DEL CAUCA', 'NORTE', '76041', 'ANSERMANUEVO', 'Ansermanuevo', ''),
('VALLE DEL CAUCA', 'NORTE', '76054', 'ARGELIA', 'Argelia', ''),
('VALLE DEL CAUCA', 'NORTE', '76100', 'BOLÍVAR', 'Bolívar', ''),
('VALLE DEL CAUCA', 'NORTE', '76147', 'CARTAGO', 'Cartago', ''),
('VALLE DEL CAUCA', 'NORTE', '76243', 'EL ÁGUILA', 'El Águila', ''),
('VALLE DEL CAUCA', 'NORTE', '76246', 'EL CAIRO', 'El Cairo', ''),
('VALLE DEL CAUCA', 'NORTE', '76250', 'EL DOVIO', 'El Dovio', ''),
('VALLE DEL CAUCA', 'NORTE', '76400', 'LA UNIÓN', 'La Unión', ''),
('VALLE DEL CAUCA', 'NORTE', '76403', 'LA VICTORIA', 'La Victoria', ''),
('VALLE DEL CAUCA', 'NORTE', '76497', 'OBANDO', 'Obando', ''),
('VALLE DEL CAUCA', 'NORTE', '76622', 'ROLDANILLO', 'Roldanillo', ''),
('VALLE DEL CAUCA', 'NORTE', '76823', 'TORO', 'Toro', ''),
('VALLE DEL CAUCA', 'NORTE', '76845', 'ULLOA', 'Ulloa', ''),
('VALLE DEL CAUCA', 'NORTE', '76863', 'VERSALLES', 'Versalles', ''),
('VALLE DEL CAUCA', 'NORTE', '76895', 'ZARZAL', 'Zarzal', ''),
('VALLE DEL CAUCA', 'OCCIDENTE', '76109', 'BUENAVENTURA', 'Buenaventura', ''),
('VALLE DEL CAUCA', 'ORIENTE', '76122', 'CAICEDONIA', 'Caicedonia', ''),
('VALLE DEL CAUCA', 'ORIENTE', '76736', 'SEVILLA', 'Sevilla', ''),
('VALLE DEL CAUCA', 'SUR', '76001', 'CALI', 'Cali', ''),
('VALLE DEL CAUCA', 'SUR', '76130', 'CANDELARIA', 'Candelaria', ''),
('VALLE DEL CAUCA', 'SUR', '76233', 'DAGUA', 'Dagua', ''),
('VALLE DEL CAUCA', 'SUR', '76275', 'FLORIDA', 'Florida', ''),
('VALLE DEL CAUCA', 'SUR', '76364', 'JAMUNDÍ', 'Jamundí', ''),
('VALLE DEL CAUCA', 'SUR', '76377', 'LA CUMBRE', 'La Cumbre', ''),
('VALLE DEL CAUCA', 'SUR', '76520', 'PALMIRA', 'Palmira', ''),
('VALLE DEL CAUCA', 'SUR', '76563', 'PRADERA', 'Pradera', ''),
('VALLE DEL CAUCA', 'SUR', '76869', 'VIJES', 'Vijes', ''),
('VALLE DEL CAUCA', 'SUR', '76892', 'YUMBO', 'Yumbo', ''),
('VAUPES', 'VAUPES', '97161', 'CARURU', 'Caruru', ''),
('VAUPES', 'VAUPES', '97001', 'MITÚ', 'Mitú', ''),
('VAUPES', 'VAUPES', '97511', 'PACOA', 'Pacoa', ''),
('VAUPES', 'VAUPES', '97777', 'PAPUNAHUA', 'Papunahua', ''),
('VAUPES', 'VAUPES', '97666', 'TARAIRA', 'Taraira', ''),
('VAUPES', 'VAUPES', '97889', 'YAVARATÉ', 'Yavaraté', ''),
('VICHADA', 'VICHADA', '99773', 'CUMARIBO', 'Cumaribo', ''),
('VICHADA', 'VICHADA', '99524', 'LA PRIMAVERA', 'La Primavera', ''),
('VICHADA', 'VICHADA', '99001', 'PUERTO CARREÑO', 'Puerto Carreño', ''),
('VICHADA', 'VICHADA', '99624', 'SANTA ROSALÍA', 'Santa Rosalía', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types_industry`
--

CREATE TABLE `types_industry` (
  `tpi_id` int(11) NOT NULL,
  `industry_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `types_industry`
--

INSERT INTO `types_industry` (`tpi_id`, `industry_name`) VALUES
(1, 'Agricultura'),
(2, 'Automotriz'),
(3, 'Banca y Finanzas'),
(4, 'Bienes Raíces'),
(5, 'Construcción'),
(6, 'Educación'),
(7, 'Energía'),
(8, 'Entretenimiento'),
(9, 'Farmacéutica'),
(10, 'Gastronomía'),
(11, 'Manufactura'),
(12, 'Medios de Comunicación'),
(13, 'Moda'),
(14, 'Salud y Bienestar'),
(15, 'Tecnología'),
(16, 'Telecomunicaciones'),
(17, 'Transporte y Logística'),
(18, 'Turismo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(30) DEFAULT NULL,
  `u_lastname` varchar(30) DEFAULT NULL,
  `u_phone` int(100) DEFAULT NULL,
  `u_email` varchar(60) DEFAULT NULL,
  `u_document` int(30) DEFAULT NULL,
  `u_type_document` varchar(30) DEFAULT NULL,
  `u_country` varchar(60) DEFAULT NULL,
  `u_city` varchar(30) DEFAULT NULL,
  `u_pass` varchar(200) DEFAULT NULL,
  `u_code` varchar(30) DEFAULT NULL,
  `rol_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `u_codeSeller` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `u_lastname`, `u_phone`, `u_email`, `u_document`, `u_type_document`, `u_country`, `u_city`, `u_pass`, `u_code`, `rol_id`, `c_id`, `status_id`, `u_codeSeller`) VALUES
(9, 'Ivan Alexis', 'Urbina Melo', 2147483647, 'iurbina@businessandconnection.coma', 12341234, 'Cedula de ciudadanía', 'Colombia', 'Cali', '$2y$10$iAE/0burGF3ZckIwtOj6vu./aDf7QyhLmDjiWrzNhM8No96l6dxmu', '55f0a5a8f3dbfc5a', 1, 1, 1, NULL),
(86, 'Edwin valencia', 'prueba', 2147483647, 'iaurbina04@misena.edu.co', 1144108604, 'Cedula de ciudadanía', 'Colombia', 'RIOSUCIO', '$2y$10$iAE/0burGF3ZckIwtOj6vu./aDf7QyhLmDjiWrzNhM8No96l6dxmu', '682b1c0a1301f6af', 2, 54, 1, NULL),
(87, 'Andres Muete', 'Muete', 1144108604, 'iurbina@businessandconnection.com', 1144108606, 'Cedula de ciudadanía', 'Colombia', 'PUERTO RONDÓN', '$2y$10$iAE/0burGF3ZckIwtOj6vu./aDf7QyhLmDjiWrzNhM8No96l6dxmu', '7c5e194934dc6c4d', 3, 54, 1, 'CodePrueba'),
(98, 'IVAN ALEXIS', 'URBINA MELO', 2147483647, 'iaurbina04@misena.edu.coa', 2147483647, 'Pasaporte', 'Colombia', 'PROVIDENCIA Y SANTA CATALINA', NULL, NULL, 4, 67, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouse`
--

CREATE TABLE `warehouse` (
  `wh_id` int(11) NOT NULL,
  `wh_name` varchar(60) DEFAULT NULL,
  `wh_desc` varchar(300) DEFAULT NULL,
  `wh_code` varchar(250) DEFAULT NULL,
  `wh_address` varchar(60) DEFAULT NULL,
  `wh_departament` varchar(60) DEFAULT NULL,
  `wh_city` varchar(30) DEFAULT NULL,
  `wh_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `wh_responsible` varchar(30) DEFAULT NULL,
  `wh_phone` varchar(60) DEFAULT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `warehouse`
--

INSERT INTO `warehouse` (`wh_id`, `wh_name`, `wh_desc`, `wh_code`, `wh_address`, `wh_departament`, `wh_city`, `wh_date`, `wh_responsible`, `wh_phone`, `c_id`) VALUES
(14, 'BODEGA PRUEBA', 'awsdfasdfasd', 'asdfasf', 'CALLE 1 C #76 A 25\r\nAPARTAMENTO E 202', 'AMAZONAS', 'EL', '2023-07-11 02:38:29', 'Ivan Alexis Urbina', '3007264043', 1),
(21, 'Bodega prueba', 'Articulos', 'ASDFASD', 'CL 1C#76A-25', 'AMAZONAS', 'EL ENCANTO', '2023-07-17 20:03:57', 'Ivan Alexis', '3007264043', 54),
(22, '760035', 'adasdasd', '760035', 'CALLE 1 C #76 A 25\r\nAPARTAMENTO E 202', 'CUNDINAMARCA', 'CHOCONTÁ', '2023-08-24 21:40:00', 'asdfasdfasdf', '3007264043', 54);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `action_permissions`
--
ALTER TABLE `action_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m_id` (`m_id`,`rol_id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `activity_status`
--
ALTER TABLE `activity_status`
  ADD PRIMARY KEY (`act_status_id`);

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`ar_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `mt_id` (`mt_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `sbcat_id` (`sbcat_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`color_id`);

--
-- Indices de la tabla `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `id_subs` (`id_subs`),
  ADD KEY `tpi_id` (`tpi_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `s_id` (`u_id`);

--
-- Indices de la tabla `creditlimits`
--
ALTER TABLE `creditlimits`
  ADD PRIMARY KEY (`limit_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indices de la tabla `credittransactions`
--
ALTER TABLE `credittransactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indices de la tabla `crm`
--
ALTER TABLE `crm`
  ADD PRIMARY KEY (`crm_id`),
  ADD KEY `u_id` (`assignor_id`),
  ADD KEY `crm_status` (`crm_status`),
  ADD KEY `prst_id` (`id_prst`),
  ADD KEY `id_prst` (`id_prst`);

--
-- Indices de la tabla `crm_meeting`
--
ALTER TABLE `crm_meeting`
  ADD PRIMARY KEY (`crm_meet_id`),
  ADD KEY `crm_id` (`crm_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indices de la tabla `customer_discounts`
--
ALTER TABLE `customer_discounts`
  ADD PRIMARY KEY (`cd_id`),
  ADD KEY `c_id` (`c_id`,`cat_id`,`sbcat_id`,`ar_id`,`gp_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `sbcat_id` (`sbcat_id`),
  ADD KEY `gp_id` (`gp_id`),
  ADD KEY `ar_id` (`ar_id`);

--
-- Indices de la tabla `customer_payment_method`
--
ALTER TABLE `customer_payment_method`
  ADD PRIMARY KEY (`customer_payment_id`),
  ADD KEY `c_id` (`c_id`,`payment_method_id`),
  ADD KEY `payment_method_id` (`payment_method_id`);

--
-- Indices de la tabla `extra_attributes_articles`
--
ALTER TABLE `extra_attributes_articles`
  ADD PRIMARY KEY (`art_attrs_id`),
  ADD KEY `ar_id` (`ar_id`);

--
-- Indices de la tabla `extra_attributes_order`
--
ALTER TABLE `extra_attributes_order`
  ADD PRIMARY KEY (`order_attrs_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `extra_attributes_quotes`
--
ALTER TABLE `extra_attributes_quotes`
  ADD PRIMARY KEY (`quote_attrs_id`),
  ADD KEY `quo_id` (`quo_id`);

--
-- Indices de la tabla `group_discounts`
--
ALTER TABLE `group_discounts`
  ADD PRIMARY KEY (`gp_id`);

--
-- Indices de la tabla `measurement_type`
--
ALTER TABLE `measurement_type`
  ADD PRIMARY KEY (`mt_id`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`m_id`);

--
-- Indices de la tabla `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `order_state_id` (`order_state_id`);

--
-- Indices de la tabla `order_articles`
--
ALTER TABLE `order_articles`
  ADD PRIMARY KEY (`orderart_id`),
  ADD KEY `ar_id` (`ar_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `order_states`
--
ALTER TABLE `order_states`
  ADD PRIMARY KEY (`order_state_id`);

--
-- Indices de la tabla `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id_partner`);

--
-- Indices de la tabla `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_id` (`rol_id`,`m_id`),
  ADD KEY `m_id` (`m_id`);

--
-- Indices de la tabla `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `ar_id` (`ar_id`),
  ADD KEY `wh_id` (`wh_id`);

--
-- Indices de la tabla `priority_states`
--
ALTER TABLE `priority_states`
  ADD PRIMARY KEY (`id_prst`);

--
-- Indices de la tabla `purchase_requests`
--
ALTER TABLE `purchase_requests`
  ADD PRIMARY KEY (`pr_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indices de la tabla `purchase_request_articles`
--
ALTER TABLE `purchase_request_articles`
  ADD PRIMARY KEY (`reqart_id`),
  ADD KEY `pr_id` (`pr_id`),
  ADD KEY `ar_id` (`ar_id`);

--
-- Indices de la tabla `purchase_request_states`
--
ALTER TABLE `purchase_request_states`
  ADD PRIMARY KEY (`state_id`);

--
-- Indices de la tabla `purchase_request_types`
--
ALTER TABLE `purchase_request_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indices de la tabla `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`quo_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `quote_state_id` (`quote_state_id`);

--
-- Indices de la tabla `quotes_states`
--
ALTER TABLE `quotes_states`
  ADD PRIMARY KEY (`quote_state_id`);

--
-- Indices de la tabla `quote_articles`
--
ALTER TABLE `quote_articles`
  ADD PRIMARY KEY (`quoart_id`),
  ADD KEY `ar_id` (`ar_id`),
  ADD KEY `quo_id` (`quo_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `sellers_customers`
--
ALTER TABLE `sellers_customers`
  ADD PRIMARY KEY (`sc_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`st_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `ar_id` (`ar_id`),
  ADD KEY `wh_id` (`wh_id`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`sbcat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indices de la tabla `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id_subs`);

--
-- Indices de la tabla `types_industry`
--
ALTER TABLE `types_industry`
  ADD PRIMARY KEY (`tpi_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `rol_id` (`rol_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `c_id_2` (`c_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indices de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`wh_id`),
  ADD KEY `c_id` (`c_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `action_permissions`
--
ALTER TABLE `action_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `activity_status`
--
ALTER TABLE `activity_status`
  MODIFY `act_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `ar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `colors`
--
ALTER TABLE `colors`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `company`
--
ALTER TABLE `company`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `creditlimits`
--
ALTER TABLE `creditlimits`
  MODIFY `limit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `crm`
--
ALTER TABLE `crm`
  MODIFY `crm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `crm_meeting`
--
ALTER TABLE `crm_meeting`
  MODIFY `crm_meet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `customer_discounts`
--
ALTER TABLE `customer_discounts`
  MODIFY `cd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `customer_payment_method`
--
ALTER TABLE `customer_payment_method`
  MODIFY `customer_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `extra_attributes_articles`
--
ALTER TABLE `extra_attributes_articles`
  MODIFY `art_attrs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `extra_attributes_order`
--
ALTER TABLE `extra_attributes_order`
  MODIFY `order_attrs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `extra_attributes_quotes`
--
ALTER TABLE `extra_attributes_quotes`
  MODIFY `quote_attrs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `group_discounts`
--
ALTER TABLE `group_discounts`
  MODIFY `gp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `measurement_type`
--
ALTER TABLE `measurement_type`
  MODIFY `mt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `order_articles`
--
ALTER TABLE `order_articles`
  MODIFY `orderart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `order_states`
--
ALTER TABLE `order_states`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `partners`
--
ALTER TABLE `partners`
  MODIFY `id_partner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `prices`
--
ALTER TABLE `prices`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `priority_states`
--
ALTER TABLE `priority_states`
  MODIFY `id_prst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `purchase_requests`
--
ALTER TABLE `purchase_requests`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `purchase_request_articles`
--
ALTER TABLE `purchase_request_articles`
  MODIFY `reqart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `purchase_request_states`
--
ALTER TABLE `purchase_request_states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `purchase_request_types`
--
ALTER TABLE `purchase_request_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `quotes`
--
ALTER TABLE `quotes`
  MODIFY `quo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `quotes_states`
--
ALTER TABLE `quotes_states`
  MODIFY `quote_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `quote_articles`
--
ALTER TABLE `quote_articles`
  MODIFY `quoart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sellers_customers`
--
ALTER TABLE `sellers_customers`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `sbcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id_subs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `types_industry`
--
ALTER TABLE `types_industry`
  MODIFY `tpi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `wh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `action_permissions`
--
ALTER TABLE `action_permissions`
  ADD CONSTRAINT `action_permissions_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`rol_id`),
  ADD CONSTRAINT `action_permissions_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `modules` (`m_id`);

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`mt_id`) REFERENCES `measurement_type` (`mt_id`),
  ADD CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`color_id`) REFERENCES `colors` (`color_id`),
  ADD CONSTRAINT `articles_ibfk_4` FOREIGN KEY (`sbcat_id`) REFERENCES `subcategory` (`sbcat_id`),
  ADD CONSTRAINT `articles_ibfk_5` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Filtros para la tabla `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`id_subs`) REFERENCES `subscription` (`id_subs`),
  ADD CONSTRAINT `company_ibfk_2` FOREIGN KEY (`tpi_id`) REFERENCES `types_industry` (`tpi_id`),
  ADD CONSTRAINT `company_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Filtros para la tabla `creditlimits`
--
ALTER TABLE `creditlimits`
  ADD CONSTRAINT `creditlimits_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `company` (`c_id`);

--
-- Filtros para la tabla `crm`
--
ALTER TABLE `crm`
  ADD CONSTRAINT `crm_ibfk_1` FOREIGN KEY (`assignor_id`) REFERENCES `users` (`u_id`),
  ADD CONSTRAINT `crm_ibfk_2` FOREIGN KEY (`crm_status`) REFERENCES `activity_status` (`act_status_id`),
  ADD CONSTRAINT `crm_ibfk_3` FOREIGN KEY (`id_prst`) REFERENCES `priority_states` (`id_prst`);

--
-- Filtros para la tabla `crm_meeting`
--
ALTER TABLE `crm_meeting`
  ADD CONSTRAINT `crm_meeting_ibfk_1` FOREIGN KEY (`crm_id`) REFERENCES `crm` (`crm_id`),
  ADD CONSTRAINT `crm_meeting_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `company` (`c_id`),
  ADD CONSTRAINT `crm_meeting_ibfk_3` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`);

--
-- Filtros para la tabla `customer_discounts`
--
ALTER TABLE `customer_discounts`
  ADD CONSTRAINT `customer_discounts_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `company` (`c_id`),
  ADD CONSTRAINT `customer_discounts_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`),
  ADD CONSTRAINT `customer_discounts_ibfk_3` FOREIGN KEY (`sbcat_id`) REFERENCES `subcategory` (`sbcat_id`),
  ADD CONSTRAINT `customer_discounts_ibfk_4` FOREIGN KEY (`gp_id`) REFERENCES `group_discounts` (`gp_id`),
  ADD CONSTRAINT `customer_discounts_ibfk_5` FOREIGN KEY (`ar_id`) REFERENCES `articles` (`ar_id`);

--
-- Filtros para la tabla `customer_payment_method`
--
ALTER TABLE `customer_payment_method`
  ADD CONSTRAINT `customer_payment_method_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `company` (`c_id`),
  ADD CONSTRAINT `customer_payment_method_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`);

--
-- Filtros para la tabla `extra_attributes_articles`
--
ALTER TABLE `extra_attributes_articles`
  ADD CONSTRAINT `extra_attributes_articles_ibfk_1` FOREIGN KEY (`ar_id`) REFERENCES `articles` (`ar_id`);

--
-- Filtros para la tabla `extra_attributes_order`
--
ALTER TABLE `extra_attributes_order`
  ADD CONSTRAINT `extra_attributes_order_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Filtros para la tabla `extra_attributes_quotes`
--
ALTER TABLE `extra_attributes_quotes`
  ADD CONSTRAINT `extra_attributes_quotes_ibfk_1` FOREIGN KEY (`quo_id`) REFERENCES `quotes` (`quo_id`);

--
-- Filtros para la tabla `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`order_state_id`) REFERENCES `order_states` (`order_state_id`);

--
-- Filtros para la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`rol_id`),
  ADD CONSTRAINT `permissions_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `modules` (`m_id`);

--
-- Filtros para la tabla `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_ibfk_2` FOREIGN KEY (`ar_id`) REFERENCES `articles` (`ar_id`),
  ADD CONSTRAINT `prices_ibfk_3` FOREIGN KEY (`wh_id`) REFERENCES `warehouse` (`wh_id`);

--
-- Filtros para la tabla `purchase_requests`
--
ALTER TABLE `purchase_requests`
  ADD CONSTRAINT `purchase_requests_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`),
  ADD CONSTRAINT `purchase_requests_ibfk_2` FOREIGN KEY (`state_id`) REFERENCES `purchase_request_states` (`state_id`),
  ADD CONSTRAINT `purchase_requests_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `purchase_request_types` (`type_id`),
  ADD CONSTRAINT `purchase_requests_ibfk_4` FOREIGN KEY (`c_id`) REFERENCES `company` (`c_id`);

--
-- Filtros para la tabla `purchase_request_articles`
--
ALTER TABLE `purchase_request_articles`
  ADD CONSTRAINT `purchase_request_articles_ibfk_1` FOREIGN KEY (`pr_id`) REFERENCES `purchase_requests` (`pr_id`),
  ADD CONSTRAINT `purchase_request_articles_ibfk_2` FOREIGN KEY (`ar_id`) REFERENCES `articles` (`ar_id`);

--
-- Filtros para la tabla `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `quotes_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`),
  ADD CONSTRAINT `quotes_ibfk_2` FOREIGN KEY (`quote_state_id`) REFERENCES `quotes_states` (`quote_state_id`);

--
-- Filtros para la tabla `quote_articles`
--
ALTER TABLE `quote_articles`
  ADD CONSTRAINT `quote_articles_ibfk_1` FOREIGN KEY (`quo_id`) REFERENCES `quotes` (`quo_id`);

--
-- Filtros para la tabla `sellers_customers`
--
ALTER TABLE `sellers_customers`
  ADD CONSTRAINT `sellers_customers_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`),
  ADD CONSTRAINT `sellers_customers_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `company` (`c_id`);

--
-- Filtros para la tabla `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`);

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`ar_id`) REFERENCES `articles` (`ar_id`),
  ADD CONSTRAINT `stock_ibfk_3` FOREIGN KEY (`wh_id`) REFERENCES `warehouse` (`wh_id`);

--
-- Filtros para la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`rol_id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `company` (`c_id`),
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Filtros para la tabla `warehouse`
--
ALTER TABLE `warehouse`
  ADD CONSTRAINT `warehouse_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `company` (`c_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
