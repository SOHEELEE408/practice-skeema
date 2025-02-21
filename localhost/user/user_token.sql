CREATE TABLE `user_token` (
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `login_id` varchar(100) DEFAULT NULL,
  `refresh_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
