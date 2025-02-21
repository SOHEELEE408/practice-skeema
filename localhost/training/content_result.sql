CREATE TABLE `content_result` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `training_id` bigint DEFAULT NULL COMMENT '훈련 PK',
  `training_content_id` bigint DEFAULT NULL COMMENT '훈련 콘텐츠 PK',
  `content_id` bigint DEFAULT NULL COMMENT '콘텐츠 PK',
  `patient_id` bigint NOT NULL COMMENT '환자 PK',
  `study_date` date DEFAULT NULL COMMENT '[삭제 예정]훈련 콘텐츠 수행일자',
  `entry_date` date DEFAULT NULL COMMENT '훈련 콘텐츠 수행일자',
  `study_duration` decimal(10,6) DEFAULT NULL COMMENT '훈련 콘텐츠 수행 시간',
  `review_yn` tinyint(1) DEFAULT NULL COMMENT '복습 여부(0: 본 회차 수행, 1: 복습)',
  `deleted_yn` tinyint(1) DEFAULT '0' COMMENT '삭제 여부(0: 삭제 전, 1: 삭제 됨)',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일자',
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '생성자',
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일자',
  `modified_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='모든 콘텐츠 훈련 결과';
