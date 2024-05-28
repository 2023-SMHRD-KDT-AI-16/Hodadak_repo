select * from tb_corperation;

UPDATE tb_corperation
SET corp_key = 'admin'
WHERE corp_key = 'corp_key 100';

select* from tb_corperation;

insert into tb_corperation (corp_name,corp_tel,corp_email,corp_addr,joined_at) VALUES('test','test','test','test',NOW());

