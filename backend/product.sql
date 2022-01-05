desc product;
select * from product;

select p.name_product, c.name_category from product p join category c on p.category_id = c.id where c.name_category = 'Free Good';

insert into product(id_product,name_product,curr_stock,qty_stock,status,category_id,principal_id)
values("PRD001","Susu Beruang",5,6,1,2,1);

select p.id_product, p.name_product, p.category_id, c.name_category,
p.qty_stock, p.curr_stock, p.principal_id, pr.principal_name, 
p.warehouse_id, w.name_warehouse 
from product p
join category c on p.category_id = c.id  
join principal pr on p.principal_id = pr.id
join warehouse w on p.warehouse_id = w.id 
where p.principal_id = 1;

update product set curr_stock=0 where id=4;


SELECT pro.id, pro.id_product, pro.name_product, pro.curr_stock, 
pro.qty_stock, cat.name_category, ware.name_warehouse 
FROM product pro 
JOIN category cat ON pro.category_id = cat.id
JOIN warehouse ware ON pro.warehouse_id = ware.id
WHERE pro.deleted = false AND pro.category_id = 1 AND pro.principal_id = 1;