select * from tb_product_keyword where prod_idx=5 order by pr_sum desc limit 5;

UPDATE tb_corperation
SET corp_key = 'admin'
WHERE corp_key = 'corp_key 100';

select* from tb_corperation;

insert into tb_corperation (corp_name,corp_tel,corp_email,corp_addr,joined_at) VALUES('test','test','test','test',NOW());

    SELECT *
    FROM tb_corperation
    ORDER BY joined_at DESC
    LIMIT 10 OFFSET (1) *10
    
    select * from tb_deep where label=1;
    

update tb_review set review_name= SUBSTRING(review_name, 5);

select * from tb_corperation;

select * from tb_product;

delete from tb_product where prod_idx=14;