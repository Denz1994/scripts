CREATE TABLE `Customer_Store`.`cart`
(
 `customer_id` int NOT NULL ,
 `item_id`     int NOT NULL ,
 `total_cost`  float NOT NULL ,

PRIMARY KEY (`customer_id`, `item_id`),
KEY `FK_1` (`customer_id`),
CONSTRAINT `FK_1` FOREIGN KEY `FK_1` (`customer_id`) REFERENCES `Customer_Store`.`customer` (`customer_id`),
KEY `FK_2` (`item_id`),
CONSTRAINT `FK_2` FOREIGN KEY `FK_2` (`item_id`) REFERENCES `Customer_Store`.`item` (`item_id`)
);

CREATE TABLE `Customer_Store`.`customer`
(
 `customer_id` int NOT NULL ,

PRIMARY KEY (`customer_id`)
);

CREATE TABLE `Customer_Store`.`item`
(
 `item_id` int NOT NULL ,
 `name`    text NOT NULL ,
 `cost`    float NOT NULL ,

PRIMARY KEY (`item_id`)
);
