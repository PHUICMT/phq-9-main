CREATE TABLE `Questionnaire` (
  `id` varchar(255) PRIMARY KEY,
  `created_at` timestamp
);

CREATE TABLE `Videos` (
  `id` varchar(255),
  `video_name` varchar(255),
  `questionnaire_id` varchar(255),
  `video_type_is_webcam` boolean,
  PRIMARY KEY (`id`, `video_name`)
);

CREATE TABLE `Result` (
  `questionnaire_id` varchar(255),
  `emotion` json,
  `answer` json,
  `events` json
);

-- ALTER TABLE `Videos` ADD FOREIGN KEY (`questionnaire_id`) REFERENCES `Questionnaire` (`id`);

-- ALTER TABLE `Result` ADD FOREIGN KEY (`questionnaire_id`) REFERENCES `Questionnaire` (`id`);

