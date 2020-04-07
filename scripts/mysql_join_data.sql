CREATE TABLE `t_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` char(128) NOT NULL UNIQUE,
  `city_desc` char(128) NOT NULL,
  `province_name` char(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` char(128) NOT NULL UNIQUE,
  `province_desc` char(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into `t_province` select 1, "jiangsu", "jiangsu sheng";
insert into `t_province` select 2, "guangdong", "guangdong sheng";
insert into `t_province` select 3, "jiangxi", "jiangxi sheng";

insert into `t_city` select 1, "shanghai", "shanghai shi", "shanghai";
insert into `t_city` select 2, "nanjing", "nanjing shi", "jiangsu";
insert into `t_city` select 3, "shenzhen", "shenzhen shi", "guangdong";
