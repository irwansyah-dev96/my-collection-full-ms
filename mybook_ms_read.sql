-- CREATE DATABASE mybook_ms_read;

-- USE mybook_ms_read;


-- DDL
CREATE TABLE `tb_read_book` (
  `id` varchar(36) NOT NULL,
  `date_of_read` bigint NOT NULL,
  `page_of_read` int DEFAULT NULL,
  `issbn` varchar(15) DEFAULT NOT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  KEY `FK_book_issbn` (`issbn`),
  CONSTRAINT `FK_book_issbn` FOREIGN KEY (`issbn`) REFERENCES `tb_book` (`issbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;