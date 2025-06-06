create database laptop_shop
use laptop_shop
ALTER TABLE cart_detail
DROP FOREIGN KEY FKclb1c0wg3mofxnpgidib1t987;

ALTER TABLE cart_detail
ADD CONSTRAINT FKclb1c0wg3mofxnpgidib1t987 FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE;

select * from products

INSERT INTO products (id, battery, cpu, factory, graphics_card, image, name, price, quantity, ram, screen, sold, ssd, target, weight) VALUES
(2, '56Wh', 'Intel Core i7-1165G7', 'HP', 'Intel Iris Xe', 'HP.jpg', 'HP Pavilion 14', 18000000, 15, '8GB', '14"', 9, '512GB', 'Office', '1.4kg'),
(3, '48Wh', 'AMD Ryzen 5 5500U', 'Acer', 'AMD Radeon', 'acer.jpg', 'Acer Aspire 5', 13500000, 30, '8GB', '15.6"', 18, '512GB', 'Student', '1.6kg'),
(4, '70Wh', 'Intel Core i9-13900H', 'ASUS', 'NVIDIA RTX 4070', 'asus1.jpg', 'ASUS ROG Strix G16', 42000000, 10, '16GB', '16"', 4, '1TB', 'Gaming', '2.3kg'),
(6, '45Wh', 'Intel Core i3-1115G4', 'Dell', 'Intel UHD', 'dell2.jpg', 'Dell Vostro 3400', 12000000, 22, '4GB', '14"', 11, '256GB', 'Student', '1.65kg'),
(7, '80Wh', 'Intel Core i7-13700H', 'MSI', 'NVIDIA RTX 4060', 'msi1.jpg', 'MSI GF63 Thin', 37000000, 8, '16GB', '15.6"', 5, '1TB', 'Gaming', '2.1kg'),
(8, '50Wh', 'AMD Ryzen 7 5800H', 'HP', 'NVIDIA GTX 1650', 'hp2.jpg', 'HP Victus 16', 23500000, 12, '16GB', '16.1"', 7, '512GB', 'Gaming', '2.4kg'),
(9, '65Wh', 'Intel Core i5-1240P', 'ASUS', 'Intel Iris Xe', 'asus2.jpg', 'ASUS Vivobook 14', 15500000, 20, '8GB', '14"', 13, '512GB', 'Office', '1.45kg'),
(10, '52Wh', 'Intel Core i7-1260P', 'Lenovo', 'Intel Iris Xe', 'lenovo2.jpg', 'Lenovo Yoga Slim 7', 22000000, 16, '16GB', '14"', 10, '1TB', 'Office', '1.3kg'),
(11, '75Wh', 'Intel Core i9-13980HX', 'ASUS', 'NVIDIA RTX 4090', 'asus3.jpg', 'ASUS ROG Zephyrus Duo', 72000000, 4, '32GB', '16"', 1, '2TB', 'Gaming', '2.5kg'),
(12, '40Wh', 'Intel Pentium N6000', 'Acer', 'Intel UHD', 'acer2.jpg', 'Acer Swift 1', 8500000, 25, '4GB', '14"', 19, '256GB', 'Student', '1.3kg'),
(13, '50Wh', 'Intel Core i5-1235U', 'Dell', 'Intel Iris Xe', 'dell3.jpg', 'Dell Latitude 3420', 17500000, 10, '8GB', '14"', 6, '512GB', 'Business', '1.6kg'),
(14, '60Wh', 'AMD Ryzen 7 5700U', 'HP', 'AMD Radeon', 'hp3.jpg', 'HP Envy x360', 19000000, 12, '16GB', '15.6"', 8, '512GB', 'Office', '1.7kg'),
(15, '45Wh', 'Intel Core i3-1215U', 'Lenovo', 'Intel UHD', 'lenovo3.jpg', 'Lenovo V14', 11000000, 28, '8GB', '14"', 20, '256GB', 'Student', '1.5kg'),
(16, '66Wh', 'Intel Core i5-12500H', 'ASUS', 'NVIDIA RTX 3050', 'asus4.jpg', 'ASUS TUF Gaming F15', 26500000, 7, '16GB', '15.6"', 3, '512GB', 'Gaming', '2.2kg'),
(17, '43Wh', 'Intel Core i7-1065G7', 'Dell', 'Intel Iris Plus', 'dell4.jpg', 'Dell XPS 13', 28000000, 6, '16GB', '13.3"', 2, '1TB', 'Office', '1.2kg'),
(18, '55Wh', 'AMD Ryzen 5 5625U', 'HP', 'AMD Radeon', 'hp4.jpg', 'HP 245 G9', 14500000, 17, '8GB', '14"', 11, '512GB', 'Student', '1.45kg'),
(19, '48Wh', 'Intel Core i5-10210U', 'Acer', 'Intel UHD', 'acer3.jpg', 'Acer TravelMate P2', 12500000, 14, '8GB', '15.6"', 6, '256GB', 'Business', '1.8kg'),
(20, '50Wh', 'Intel Core i5-1240P', 'ASUS', 'Intel Iris Xe', 'asus5.jpg', 'ASUS Zenbook 14 OLED', 23500000, 9, '16GB', '14"', 7, '1TB', 'Office', '1.4kg');




INSERT INTO products (id, battery, cpu, factory, graphics_card, image, name, price, quantity, ram, screen, sold, ssd, target, weight) VALUES
(21, '56Wh', 'Intel Core i7-1165G7', 'HP', 'Intel Iris Xe', 'HP.jpg', 'HP Pavilion 14', 18000000, 15, '8GB', '14"', 9, '512GB', 'Office', '1.4kg'),
(22, '48Wh', 'AMD Ryzen 5 5500U', 'Acer', 'AMD Radeon', 'acer.jpg', 'Acer Aspire 5', 13500000, 30, '8GB', '15.6"', 18, '512GB', 'Student', '1.6kg'),
(23, '70Wh', 'Intel Core i9-13900H', 'ASUS', 'NVIDIA RTX 4070', 'asus1.jpg', 'ASUS ROG Strix G16', 42000000, 10, '16GB', '16"', 4, '1TB', 'Gaming', '2.3kg'),
(24, '45Wh', 'Intel Core i3-1115G4', 'Dell', 'Intel UHD', 'dell2.jpg', 'Dell Vostro 3400', 12000000, 22, '4GB', '14"', 11, '256GB', 'Student', '1.65kg'),
(25, '80Wh', 'Intel Core i7-13700H', 'MSI', 'NVIDIA RTX 4060', 'msi1.jpg', 'MSI GF63 Thin', 37000000, 8, '16GB', '15.6"', 5, '1TB', 'Gaming', '2.1kg'),
(26, '50Wh', 'AMD Ryzen 7 5800H', 'HP', 'NVIDIA GTX 1650', 'hp2.jpg', 'HP Victus 16', 23500000, 12, '16GB', '16.1"', 7, '512GB', 'Gaming', '2.4kg'),
(27, '65Wh', 'Intel Core i5-1240P', 'ASUS', 'Intel Iris Xe', 'asus2.jpg', 'ASUS Vivobook 14', 15500000, 20, '8GB', '14"', 13, '512GB', 'Office', '1.45kg'),
(28, '52Wh', 'Intel Core i7-1260P', 'Lenovo', 'Intel Iris Xe', 'lenovo2.jpg', 'Lenovo Yoga Slim 7', 22000000, 16, '16GB', '14"', 10, '1TB', 'Office', '1.3kg'),
(29, '75Wh', 'Intel Core i9-13980HX', 'ASUS', 'NVIDIA RTX 4090', 'asus3.jpg', 'ASUS ROG Zephyrus Duo', 72000000, 4, '32GB', '16"', 1, '2TB', 'Gaming', '2.5kg'),
(30, '40Wh', 'Intel Pentium N6000', 'Acer', 'Intel UHD', 'acer2.jpg', 'Acer Swift 1', 8500000, 25, '4GB', '14"', 19, '256GB', 'Student', '1.3kg'),
(32, '50Wh', 'Intel Core i5-1235U', 'Dell', 'Intel Iris Xe', 'dell3.jpg', 'Dell Latitude 3420', 17500000, 10, '8GB', '14"', 6, '512GB', 'Business', '1.6kg'),
(33, '60Wh', 'AMD Ryzen 7 5700U', 'HP', 'AMD Radeon', 'hp3.jpg', 'HP Envy x360', 19000000, 12, '16GB', '15.6"', 8, '512GB', 'Office', '1.7kg'),
(34, '45Wh', 'Intel Core i3-1215U', 'Lenovo', 'Intel UHD', 'lenovo3.jpg', 'Lenovo V14', 11000000, 28, '8GB', '14"', 20, '256GB', 'Student', '1.5kg'),
(35, '66Wh', 'Intel Core i5-12500H', 'ASUS', 'NVIDIA RTX 3050', 'asus4.jpg', 'ASUS TUF Gaming F15', 26500000, 7, '16GB', '15.6"', 3, '512GB', 'Gaming', '2.2kg'),
(36, '43Wh', 'Intel Core i7-1065G7', 'Dell', 'Intel Iris Plus', 'dell4.jpg', 'Dell XPS 13', 28000000, 6, '16GB', '13.3"', 2, '1TB', 'Office', '1.2kg'),
(37, '55Wh', 'AMD Ryzen 5 5625U', 'HP', 'AMD Radeon', 'hp4.jpg', 'HP 245 G9', 14500000, 17, '8GB', '14"', 11, '512GB', 'Student', '1.45kg'),
(38, '48Wh', 'Intel Core i5-10210U', 'Acer', 'Intel UHD', 'acer3.jpg', 'Acer TravelMate P2', 12500000, 14, '8GB', '15.6"', 6, '256GB', 'Business', '1.8kg'),
(39, '50Wh', 'Intel Core i5-1240P', 'ASUS', 'Intel Iris Xe', 'asus5.jpg', 'ASUS Zenbook 14 OLED', 23500000, 9, '16GB', '14"', 7, '1TB', 'Office', '1.4kg');
