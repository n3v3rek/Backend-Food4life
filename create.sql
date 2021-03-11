create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date not null, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, weight integer not null, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, weight integer not null, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
create table ban (banid bigint not null auto_increment, description varchar(255) not null, unban_date date, userid bigint not null, primary key (banid)) engine=InnoDB
create table comment (user_recipe_key bigint not null auto_increment, content_of_comment varchar(255) not null, creation_date date not null, status varchar(255) not null, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table diet (dietid bigint not null auto_increment, creation_date date not null, recommended_carbohydrates integer not null, recommended_fats integer not null, recommended_kilocalories integer not null, recommended_proteins integer not null, userid bigint not null, primary key (dietid)) engine=InnoDB
create table favorite_recipes (user_recipe_key bigint not null auto_increment, recipeid bigint not null, userid bigint not null, primary key (user_recipe_key)) engine=InnoDB
create table meal (mealid bigint not null auto_increment, day_of_the_week varchar(255) not null, meal_number integer not null, dietid bigint not null, primary key (mealid)) engine=InnoDB
create table meal_product (meal_product_key bigint not null auto_increment, mealid bigint not null, productid bigint not null, primary key (meal_product_key)) engine=InnoDB
create table meal_recipe (meal_recipe_key bigint not null auto_increment, mealid bigint not null, recipeid bigint not null, primary key (meal_recipe_key)) engine=InnoDB
create table measurement (measurementid bigint not null auto_increment, biceps_circumference integer not null, calf_circumference integer not null, chest_circumference integer not null, creation_date date not null, description varchar(255) not null, growth integer not null, hip_size integer not null, thigh_circumference integer not null, waist_size integer not null, weight double precision not null, userid bigint not null, primary key (measurementid)) engine=InnoDB
create table product (productid bigint not null auto_increment, allergens varchar(255), carbohydrates integer not null, creation_date date, description varchar(255), fats integer not null, kilocalories integer not null, name varchar(255) not null, proteins integer not null, status varchar(255), weight integer not null, userid bigint not null, primary key (productid)) engine=InnoDB
create table recipe (recipeid bigint not null auto_increment, carbohydrates integer not null, content_of_recipe varchar(255) not null, creation_date date not null, description varchar(255) not null, fats integer not null, ingredients varchar(255) not null, kilocalories integer not null, likes_counter integer not null, name varchar(255) not null, proteins integer not null, status varchar(255) not null, weight integer not null, userid bigint not null, primary key (recipeid)) engine=InnoDB
create table user (userid bigint not null auto_increment, account_type varchar(255) not null, birthday_date date, creation_date date not null, email varchar(255) not null, password varchar(255) not null, username varchar(255) not null, primary key (userid)) engine=InnoDB
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table ban add constraint FKc2capjvvr96khvwbodbehxcli foreign key (userid) references user (userid)
alter table comment add constraint FK55c6amcy33grb3c6s10kq3d2a foreign key (recipeid) references recipe (recipeid)
alter table comment add constraint FKe7pshbkin4984x23q4wboi5ka foreign key (userid) references user (userid)
alter table diet add constraint FK57hjfra0beqmki02dr0sjx3h foreign key (userid) references user (userid)
alter table favorite_recipes add constraint FKsdc5lwvxbtut41i3d95l84iyo foreign key (recipeid) references recipe (recipeid)
alter table favorite_recipes add constraint FK3yve1q92g9aswqw85l4ib2h1f foreign key (userid) references user (userid)
alter table meal add constraint FKkjn7en1a37dhykcrd1ce5mse foreign key (dietid) references diet (dietid)
alter table meal_product add constraint FK15tobq0myktkkwdomhgj4ypkq foreign key (mealid) references meal (mealid)
alter table meal_product add constraint FK6ymewg3s9brqolxrp8h4e0up7 foreign key (productid) references product (productid)
alter table meal_recipe add constraint FKgptfnbyk3oa5nk7oer85dgfni foreign key (mealid) references meal (mealid)
alter table meal_recipe add constraint FKlrun1s81u4cppywylei8y5n7l foreign key (recipeid) references recipe (recipeid)
alter table measurement add constraint FKkqpxs78j9uiuyv5vj8yd6e1me foreign key (userid) references user (userid)
alter table product add constraint FKfb9sly2jhj919n55ijuhn69qa foreign key (userid) references user (userid)
alter table recipe add constraint FK483xp15xdsnnb3ykateo4igie foreign key (userid) references user (userid)
