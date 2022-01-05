desc reward;
select * from reward;
alter table reward drop cudget_stock;

SELECT rw.id_reward, rw.reward_code, rw.reward_name, rw.redeem_point, rw.duration,
rw.budget_stock, rw.start_date, rw.end_date, rw.info, rw.term_condition, ct.name_category,
mer.name_merchant, rw.principal_id, pro.name_product 
FROM reward rw 
JOIN category ct ON rw.category_id = ct.id
JOIN merchant mer ON rw.merchant_id = mer.id
JOIN product pro ON rw.product_id = pro.id 
WHERE rw.deleted = false AND rw.principal_id = 1;

update reward set status = 'hold' where id = 6;
update reward set deleted = false where id = 6;

alter table reward modify start_date date;