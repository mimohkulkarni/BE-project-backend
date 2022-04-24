
CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `cityName` varchar(30) NOT NULL
)

INSERT INTO `city` (`id`, `cityName`) VALUES
(1, 'Pune'),
(2, 'Hillwood'),
(3, 'San Jose'),
(4, 'The City'),
(5, 'South Park');

CREATE TABLE `emp` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cityId` int(11) NOT NULL,
  `score` int(11) NOT NULL
)

INSERT INTO `emp` (`id`, `name`, `cityId`, `score`) VALUES
(1, 'Lord Brain', 1, 5),
(2, 'Matthew', 2, 4),
(3, 'Ferrero Jeremy', 3, 6),
(4, 'Bud Light', 4, 4),
(5, 'Demi Moore', 5, 6),
(6, 'Woody Allen', 1, 2),
(7, 'Joaquin Phoenix', 2, 9),
(8, 'Meg Ryan', 3, 4),
(9, 'Trey Anastasio', 4, 3),
(10, 'Marie Osmond', 5, 6);

ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cityId` (`cityId`);


ALTER TABLE `emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

ALTER TABLE `emp`
  ADD CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`cityId`) REFERENCES `city` (`id`);
