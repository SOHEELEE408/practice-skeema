CREATE TABLE `training_content` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '훈련 콘텐츠 PK',
  `training_id` bigint DEFAULT NULL COMMENT '훈련 PK',
  `content_id` bigint DEFAULT NULL COMMENT '콘텐츠 PK',
  `patient_id` bigint DEFAULT NULL COMMENT '환자 PK',
  `seq` int DEFAULT NULL COMMENT '훈련 콘텐츠 배정 순서',
  `difficulty` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '난이도(HARD, NORMAL, EASY)',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '진행 상태(WAITING, - 본 회차 진행 전 IN_PROGRESS - 본 회차 진행 중, COMPLETE - 본 회차 완료)',
  `deleted_yn` tinyint(1) DEFAULT '0' COMMENT '삭제 여부(0: 삭제 전, 1: 삭제 됨)',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일자',
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '생성자',
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일자',
  `modified_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='배정된 훈련 콘텐츠';
