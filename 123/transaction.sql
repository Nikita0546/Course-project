start transaction;
set @client_mrp = 2;
set @id_contact = 2;
select date_end as "окончание действия Мчд"
from mrp where client_id = @client_mrp;
update mrp 
set date_end = "2024-06-11" 
where id = 1;
commit ;
