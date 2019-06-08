DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `username` varchar(20) NOT NULL,
	`email` varchar(150) NOT NULL,
	`password` varchar(255) NOT NULL,
	`firstname` varchar(255) NOT NULL,
	`surname` varchar(255) NOT NULL,
	`confirm_token` varchar(255) DEFAULT NULL,
	`confirm_at` datetime DEFAULT NULL,
	`reset_token` varchar(255) DEFAULT NULL,
	`reset_at` datetime DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user` int(11) NOT NULL,
    `bio` text NOT NULL,
    `tags` text NOT NULL,
    `gender` enum('man', 'woman', 'other') NOT NULL,
    `orientation` enum('hetero', 'homo', 'bi') NOT NULL,
    `age` int(11) NOT NULL,
    `location` text NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user` int(11) NOT NULL,
    `profile` int(11) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;