CREATE TABLE `training` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `patient_id` bigint NOT NULL COMMENT '환자(user.patient) pk',
  `round` int DEFAULT NULL COMMENT '회차',
  `start_date` date DEFAULT NULL COMMENT '훈련 시작일자',
  `end_date` date DEFAULT NULL COMMENT '훈련 종료일자',
  `goal_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '목표(SLEEP: 수면, MEAL: 식사, EMOTION: 감정, HEALTH: 건강)',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '훈련 진행 상태(WAITING, - 본 회차 진행 전 IN_PROGRESS - 본 회차 진행 중, COMPLETE - 본 회차 완료)',
  `deleted_yn` tinyint(1) DEFAULT '0' COMMENT '삭제 여부(0: 삭제 전, 1: 삭제 됨)',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일자',
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '생성자',
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일자',
  `modified_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='배정된 훈련';
