desc principal;
select * from principal;

select r.id, p.username, p.principal_name FROM principal p JOIN role r ON p.role_id = r.id;
select id, username, password, role_id from principal where username = 'nestle123' AND password = 'admin';

select * from principal where username = 'nestle123' AND password = 'admin';

select id, principal_name, username, role_id from principal where username = '+62215570001';