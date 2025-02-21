CREATE TABLE `user_verification` (
  `checked_yn` bit(1) DEFAULT NULL,
  `deleted_yn` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expiration_date` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `modified_at` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `verification_no` varchar(255) DEFAULT NULL,
  `category` enum('EMAIL','PHONE') DEFAULT NULL,
  `type` enum('ADMIN','APP') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
