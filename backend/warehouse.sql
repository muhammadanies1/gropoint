desc warehouse;
select * from warehouse;
truncate warehouse;

select id, id_warehouse, name_warehouse, created_date, updated_date from warehouse where id = 1;
update warehouse set deleted = false where id = 1;

