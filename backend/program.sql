desc program;
alter table program modify id_program varchar(10) not null;
select * from program;

select date(updated_date) from program;

select date_format(start_date, '%m/%d/%Y') from program;

create table program(id int not null auto_increment primary key, 
id_program varchar(20) not null, name_program varchar(45) not null, 
description text, point int not null, ulang boolean default(false), 
multiple boolean default(false),amount_transaction int not null, amount_usage int not null,
duration int not null, principal_id bigint not null, foreign key(principal_id) references principal(id)); 
desc principal;
alter table program modify id bigint not null auto_increment;

select id_program, name_program, amount_transaction, amount_usage,
duration, status, repeats, multiple, point, start_date, end_date, description 
from program where principal_id = 1;

update program set status = 'hold' where id = 3;


alter table program modify start_date varchar(10) not null;
alter table program modify end_date varchar(10) not null;