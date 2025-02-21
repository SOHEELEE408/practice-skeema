CREATE TABLE `organization_admin` (
  `agree_marketing_policy_yn` bit(1) DEFAULT NULL,
  `agree_privacy_policy_yn` bit(1) DEFAULT NULL,
  `agree_service_policy_yn` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `modified_at` datetime(6) DEFAULT NULL,
  `organization_id` bigint DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login_id` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` enum('BASIC_ADMIN','MEDICAL_STAFF','ORGANIZATION_ADMIN') DEFAULT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE','WAIT') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
