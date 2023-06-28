-- drop database fashionstore;
create database fashionstore;
use fashionstore;
-- Tạo bảng
create table cart (id integer not null auto_increment, count integer not null, product_id integer, user_id varchar(255), primary key (id)) engine=InnoDB;
create table category (id integer not null auto_increment, category_name nvarchar(1111), primary key (id)) engine=InnoDB;
create table `order` (id integer not null auto_increment, address nvarchar(1111), booking_date date, country nvarchar(1111), email nvarchar(1111), fullname nvarchar(1111), note nvarchar(1111), payment_method nvarchar(1111), phone nvarchar(1111), status nvarchar(1111), total integer, user_id varchar(255), primary key (id)) engine=InnoDB;
create table order_item (id integer not null auto_increment, count integer, order_id integer, product_id integer, primary key (id)) engine=InnoDB;
create table product (id integer not null auto_increment, created_at date, description nvarchar(11111), is_active integer, is_selling integer, price integer, product_name nvarchar(1111), quantity integer, sold integer, category_id integer, primary key (id)) engine=InnoDB;
create table product_image (id integer not null auto_increment, url_image nvarchar(1111), product_id integer, primary key (id)) engine=InnoDB;
create table user (id varchar(255) not null, avatar nvarchar(1111), email nvarchar(1111), login_type nvarchar(1111), password nvarchar(1111), phone_number nvarchar(1111), role nvarchar(1111), user_name nvarchar(1111), primary key (id)) engine=InnoDB;
alter table cart add constraint FK3d704slv66tw6x5hmbm6p2x3u foreign key (product_id) references product (id);
alter table cart add constraint FKl70asp4l4w0jmbm1tqyofho4o foreign key (user_id) references user (id);
alter table `order` add constraint FKcpl0mjoeqhxvgeeeq5piwpd3i foreign key (user_id) references user (id);
alter table order_item add constraint FKs234mi6jususbx4b37k44cipy foreign key (order_id) references `order` (id);
alter table order_item add constraint FK551losx9j75ss5d6bfsqvijna foreign key (product_id) references product (id);
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id);
alter table product_image add constraint FK6oo0cvcdtb6qmwsga468uuukk foreign key (product_id) references product (id);

-- Insert dữ liệu
INSERT INTO `fashionstore`.`user` (`id`, `login_Type`, `role`, `password`, `user_Name`, `avatar`, `email`, `phone_Number`) VALUES ('duy', 'default', 'user', 'MQ==', 'QuocDuy', 'https://haycafe.vn/wp-content/uploads/2022/02/Avatar-trang-den.png', 'duyquocdo19@gmail.com', '0978131575');
INSERT INTO `fashionstore`.`user` (`id`, `login_Type`, `role`, `password`, `user_Name`, `avatar`, `email`, `phone_Number`) VALUES ('hoanhao1512', 'default', 'user', 'MQ==', 'QuocDuy', 'https://haycafe.vn/wp-content/uploads/2022/02/Avatar-trang-den.png', 'duyquocdo19@gmail.com', '0978131575');
INSERT INTO `fashionstore`.`user` (`id`, `login_Type`, `role`, `password`, `user_Name`, `avatar`, `email`, `phone_Number`) VALUES ('admin', 'default', 'admin', 'MQ==', 'QuocDuy', 'https://haycafe.vn/wp-content/uploads/2022/02/Avatar-trang-den.png', 'duyquocdo19@gmail.com', '0978131575');
-- user name = duy pass=1
-- admin name = admin pass=1

INSERT INTO `fashionstore`.`category` (`category_Name`) VALUES ('Kinh dị');
INSERT INTO `fashionstore`.`category` (`category_Name`) VALUES ('Hành Động');
INSERT INTO `fashionstore`.`category` (`category_Name`) VALUES ('Phiêu lưu');
INSERT INTO `fashionstore`.`category` (`category_Name`) VALUES ('Gia đình');
INSERT INTO `fashionstore`.`category` (`category_Name`) VALUES ('Trinh thám');


