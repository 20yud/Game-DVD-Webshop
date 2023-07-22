-- drop database dvdstore;
create database dvdstore;
use dvdstore;
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
INSERT INTO `dvdstore`.`user` (`id`, `login_Type`, `role`, `password`, `user_Name`, `avatar`, `email`, `phone_Number`) VALUES ('duy', 'default', 'user', 'MQ==', 'QuocDuy', 'https://haycafe.vn/wp-content/uploads/2022/02/Avatar-trang-den.png', 'duyquocdo19@gmail.com', '0978131575');
INSERT INTO `dvdstore`.`user` (`id`, `login_Type`, `role`, `password`, `user_Name`, `avatar`, `email`, `phone_Number`) VALUES ('hp', 'default', 'user', 'MQ==', 'HaPhan', 'https://haycafe.vn/wp-content/uploads/2022/02/Avatar-trang-den.png', 'duyquocdo19@gmail.com', '0978131575');
INSERT INTO `dvdstore`.`user` (`id`, `login_Type`, `role`, `password`, `user_Name`, `avatar`, `email`, `phone_Number`) VALUES ('hoanhao1512', 'default', 'user', 'MQ==', 'QuocDuy', 'https://haycafe.vn/wp-content/uploads/2022/02/Avatar-trang-den.png', 'duyquocdo19@gmail.com', '0978131575');
INSERT INTO `dvdstore`.`user` (`id`, `login_Type`, `role`, `password`, `user_Name`, `avatar`, `email`, `phone_Number`) VALUES ('admin', 'default', 'admin', 'MQ==', 'QuocDuy', 'https://haycafe.vn/wp-content/uploads/2022/02/Avatar-trang-den.png', 'duyquocdo19@gmail.com', '0978131575');
-- user name = duy pass=1
-- user name = hp pass=1
-- admin name = admin pass=1

INSERT INTO `dvdstore`.`category` (`category_Name`) VALUES ('Kinh dị');
INSERT INTO `dvdstore`.`category` (`category_Name`) VALUES ('Hành Động');
INSERT INTO `dvdstore`.`category` (`category_Name`) VALUES ('Phiêu lưu');
INSERT INTO `dvdstore`.`category` (`category_Name`) VALUES ('Gia đình');
INSERT INTO `dvdstore`.`category` (`category_Name`) VALUES ('Trinh thám');


INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'Experience survival horror like never before in the 8th major installment in the Resident Evil franchise\product_imageproduct_image\ - Resident Evil Village. With detailed graphics, intense first-person action and masterful storytelling, the terror has never felt more realistic..', '1', '1', '100000', 'Resident Evil Village', '100', '20', '1');
INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'Until Dawn is a 2015 interactive drama horror video game\product_imageproduct_image\ developed by Supermassive Games and published by Sony Computer Entertainment for the PlayStation 4..', '1', '1', '150000', 'Until Dawn', '100', '20', '1');
INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'Fear and isolation seep through the walls of an abandoned southern farmhouse.\product_imageproduct_image\ "7" marks a new beginning for survival horror with the “Isolated View” of the visceral new first-person perspective..', '1', '1', '100000', 'Resident Evil 7 Biohazard', '100', '20', '1');

INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'Winner of over 175 Game of the Year Awards and recipient of over 250 perfect scores,\product_imageproduct_image\ RDR2 is the epic tale of outlaw Arthur Morgan and the infamous Van der Linde gang, on the run across America at the dawn of the modern age. Also includes access to the shared living world of Red Dead Online..', '1', '1', '120000', 'Red Dead Redemption 2', '100', '20', '2');
INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'His vengeance against the Gods of Olympus years behind him, Kratos now lives as a man in the realm of Norse Gods and monsters.\product_imageproduct_image\ It is in this harsh, unforgiving world that he must fight to survive… and teach his son to do the same.', '1', '1', '250000', 'God of War', '100', '20', '2');
INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'Grand Theft Auto V for PC offers players the option to explore the award-winning world\product_imageproduct_image\ of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second..', '1', '1', '100000', 'Grand Theft Auto V', '100', '20', '2');

INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'After the events of Marvel’s Spider-Man Remastered,\product_imageproduct_image\ teenage Miles Morales is adjusting to his new home while following in the footsteps of his mentor, Peter Parker, as a new Spider-Man. When a fierce power struggle threatens to destroy his home, Miles must take up the mantle of Spider-Man and own it.', '1', '1', '280000', 'Marvel’s Spider-Man: Miles Morales', '100', '20', '3');
INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'Experience Aloy’s legendary quest to unravel the mysteries of a future Earth ruled by Machines.\product_imageproduct_image\ Use devastating tactical attacks against your prey and explore a majestic open world in this award-winning action RPG!.', '1', '1', '150000', 'Horizon Zero Dawn', '100', '20', '3');
INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'Hunt your nightmares as you search for answers in the ancient city of Yharnam, now cursed with a strange endemic\product_imageproduct_image\ illness spreading through the streets like wildfire. Danger, death and madness lurk around every corner of this dark and horrific world, and you must discover its darkest secrets in order to survive..', '1', '1', '100000', 'Bloodborne', '100', '20', '3');

INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'Exclusively built for two players working together, join May and Cody on a surreal adventure through their chaotic\product_imageproduct_image\ household as they put petty squabbles aside to conquer manic vacuum cleaners, militarised squirrels and more.', '1', '1', '200000', 'It Takes Two', '100', '20', '4');
INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'Become the wandering spirit guide Kena and embark on a voyage across a\product_imageproduct_image\ corrupted world, gathering together a group of adorable followers known as the Rot, harnessing their combined powers to banish corruption from the land.', '1', '1', '80000', 'Kena: Bridge of Spirits', '100', '20', '4');
INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'It is not just getting hot in the kitchen, it is getting chaotic. \product_imageproduct_image\With a strong focus on cooperative chaos, Overcooked! challenges you and up to three others to turn out a selection of fine cuisine against the clock. Slice, seer, sautee and serve, all without setting the kitchen ablaze!.', '1', '1', '80000', 'Overcooked! All You Can Eat!', '100', '20', '4');

INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'Although Rockstar’s L.A. Noire has already done the rounds on the trusty PS4,\product_imageproduct_image\ it’s subsequent remastering on PS4 has opened it up to a whole new audience. A violent crime thriller set in the post-war boom of Hollywood’s Golden Age, L.A.', '1', '1', '120000', 'L.A. Noire', '100', '20', '5');
INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'It was only a matter of time until the pride of 221b Baker Street would make his way onto Sony’s home console,\product_imageproduct_image\ and in Sherlock Holmes – Crimes & Punishments his debut is one marked by a lofty caliber indeed', '1', '1', '100000', 'Sherlock Holmes – Crimes & Punishments', '100', '20', '5');
INSERT INTO `dvdstore`.`product` (`created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES ('2023-07-10', 'A resolutely colorful and at times, positively cheerful detective adventure, The Raven Remastered throws players back to the 1960s and casts them as Swiss Constable Anton Jakob Zellner,\product_imageproduct_image\ a long tenured police officer who must track down the titular Raven – a murder and world-renowned master thief.', '1', '1', '80000', 'The Raven Remastered', '100', '20', '5');



INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965648/imagedvd/r1_vzdy9n.jpg', '1');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965649/imagedvd/r2_fprh2x.jpg', '1');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965649/imagedvd/r3_ayymcw.jpg', '1');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965651/imagedvd/u2_hx6zam.jpg', '2');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965651/imagedvd/u_btxe61.jpg', '2');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965651/imagedvd/u1_jwhk9c.jpg', '2');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965649/imagedvd/r7_mr79ep.jpg', '3');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965650/imagedvd/r72_rsxtqk.jpg', '3');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965650/imagedvd/r73_sxdcwq.jpg', '3');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965650/imagedvd/red_ayhxh4.jpg', '4');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965652/imagedvd/red1_h5hnqn.jpg', '4');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965645/imagedvd/god1_gy75ya.webp', '5');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965645/imagedvd/god2_bxisww.jpg', '5');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965646/imagedvd/gta1_fgvnzs.jpg', '6');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965646/imagedvd/gta2_c4fgnc.jpg', '6');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965648/imagedvd/gta_zxsxn4.png', '6');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965650/imagedvd/s_r7vk3z.jpg', '7');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965650/imagedvd/s2_p2oj0p.jpg', '7');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965646/imagedvd/h_odtwh2.jpg', '8');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965647/imagedvd/h1_blzc4f.jpg', '8');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689966174/imagedvd/h2_zh48kb.jpg', '8');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965648/imagedvd/b1_bd58la.jpg', '9');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965645/imagedvd/b3_hrzdbj.jpg', '9');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965644/imagedvd/b2_wkinpe.jpg', '9');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965645/imagedvd/i_myusgr.jpg', '10');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965645/imagedvd/i1_saaith.jpg', '10');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965646/imagedvd/k_yeq92p.jpg', '11');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965646/imagedvd/k1_qb7ztr.jpg', '11');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965647/imagedvd/k3_fu6uhn.jpg', '11');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965648/imagedvd/o_eychtk.jpg', '12');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965648/imagedvd/o1_tz0que.webp', '12');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689966174/imagedvd/o2_oj0lc9.jpg', '12');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965647/imagedvd/l_ysuo6g.jpg', '13');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965648/imagedvd/l2_tswple.jpg', '13');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965648/imagedvd/l1_irio48.jpg', '13');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965651/imagedvd/ss1_ewziwy.webp', '14');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965651/imagedvd/ss2_hawqp9.jpg', '14');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965651/imagedvd/ss3_csajsl.jpg', '14');

INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965648/imagedvd/ra1_v8ixtw.jpg', '15');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965649/imagedvd/ra_wtcaej.jpg', '15');
INSERT INTO `dvdstore`.`product_image` (`url_image`, `product_id`) VALUES ('https://res.cloudinary.com/dv38robnn/image/upload/v1689965650/imagedvd/ra2_fbwizs.jpg', '15');

INSERT INTO `dvdstore`.`cart` (`count`, `product_id`, `user_id`) VALUES ('2', '1', 'duy');
INSERT INTO `dvdstore`.`cart` (`count`, `product_id`, `user_id`) VALUES ('3', '3', 'duy');
INSERT INTO `dvdstore`.`cart` (`count`, `product_id`, `user_id`) VALUES ('2', '2', 'duy');
INSERT INTO `dvdstore`.`cart` (`count`, `product_id`, `user_id`) VALUES ('1', '5', 'duy');

INSERT INTO `dvdstore`.`cart` (`count`, `product_id`, `user_id`) VALUES ('4', '2', 'hp');
INSERT INTO `dvdstore`.`cart` (`count`, `product_id`, `user_id`) VALUES ('1', '1', 'hp');
INSERT INTO `dvdstore`.`cart` (`count`, `product_id`, `user_id`) VALUES ('3', '3', 'hp');
INSERT INTO `dvdstore`.`cart` (`count`, `product_id`, `user_id`) VALUES ('2', '4', 'hp');
