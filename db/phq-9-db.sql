CREATE TABLE `questionnaire` (
  `id` varchar(255) PRIMARY KEY,
  `created_at` timestamp
);

CREATE TABLE `videos` (
  `id` varchar(255),
  `video_name` varchar(255),
  `questionnaire_id` varchar(255),
  `video_type_is_webcam` boolean,
  PRIMARY KEY (`id`, `video_name`)
);

CREATE TABLE `result` (
  `questionnaire_id` varchar(255),
  `emotion` json
);

ALTER TABLE `videos` ADD FOREIGN KEY (`questionnaire_id`) REFERENCES `questionnaire` (`id`);

ALTER TABLE `result` ADD FOREIGN KEY (`questionnaire_id`) REFERENCES `questionnaire` (`id`);

