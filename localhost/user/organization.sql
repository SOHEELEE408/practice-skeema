CREATE TABLE `organization` (
  `active_yn` bit(1) DEFAULT NULL,
  `deleted_yn` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `modified_at` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` enum('CLINIC','GENERAL_HOSPITAL','HEALTH_AGENCY','HOSPITAL','NURSING_HOSPITAL','SUPERIOR_GENERAL_HOSPITAL') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
