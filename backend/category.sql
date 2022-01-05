desc category;
select * from category;

insert into category(name_category) values('Product');

select p.name_product from category c join product p on c.id=p.category_id where c.name_category='Fee Good';

select p.name_product from product p join category c on p.category_id = c.id where c.name_category='Souvenir';

update category set name_category = 'Souvenir' where id = 2;