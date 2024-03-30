CREATE TABLE `Customer_Store`.`customer`
(
 `customer_email` varchar(255) NOT NULL ,
 `name`           varchar(255) NOT NULL ,
 `payment_method_id` tinyInt NOT NULL UNIQUE

PRIMARY KEY (`customer_email`)
FOREIGN KEY (`payment_method_id`) REFERENCES `Customer_Store`.`payment_method` (`payment_method_id`)
);

CREATE TABLE `Customer_Store`.`payment_method`
(
 `payment_method_id` int NOT NULL UNIQUE,
 `name` varchar(45) NOT NULL UNIQUE

PRIMARY KEY (`payment_method_id`)

)


CREATE TABLE `Customer_Store`.`order`
(
 `order_id`       int NOT NULL ,
 `customer_email` varchar(255) NOT NULL ,
 `details`        text NULL ,
 `date`           datetime NOT NULL ,
 `total_amount`   float NOT NULL ,

PRIMARY KEY (`order_id`, `customer_email`),
KEY `FK_1` (`customer_email`),
CONSTRAINT `FK_3` FOREIGN KEY `FK_1` (`customer_email`) REFERENCES `Customer_Store`.`customer` (`customer_email`)
);

CREATE TABLE `Customer_Store`.`product`
(
 `product_id`  int NOT NULL ,
 `name`        varchar(255) NOT NULL ,
 `description` text NOT NULL ,
 `stock`       int NOT NULL ,
 `price`       float NOT NULL ,

PRIMARY KEY (`product_id`)
);


CREATE TABLE `Customer_Store`.`product_order`
(
 `product_id`     int NOT NULL ,
 `order_id`       int NOT NULL ,
 `customer_email` varchar(255) NOT NULL ,

PRIMARY KEY (`product_id`, `order_id`, `customer_email`),
KEY `FK_1` (`product_id`),
CONSTRAINT `FK_1` FOREIGN KEY `FK_1` (`product_id`) REFERENCES `Customer_Store`.`product` (`product_id`),
KEY `FK_2` (`order_id`, `customer_email`),
CONSTRAINT `FK_2` FOREIGN KEY `FK_2` (`order_id`, `customer_email`) REFERENCES `Customer_Store`.`order` (`order_id`, `customer_email`)
);