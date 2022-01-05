desc merchant;
select * from merchant;
select last_insert_id() from role;

select id_merchant, name_merchant, lattitude, longitude, address, principal_id from merchant where principal_id = 1;