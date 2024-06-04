select * from tb_trend;

UPDATE tb_corperation
SET corp_key = 'admin'
WHERE corp_key = 'corp_key 100';

select* from tb_corperation;

insert into tb_corperation (corp_name,corp_tel,corp_email,corp_addr,joined_at) VALUES('test','test','test','test',NOW());

    SELECT *
    FROM tb_corperation
    ORDER BY joined_at DESC
    LIMIT 10 OFFSET (1) *10