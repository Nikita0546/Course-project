CREATE VIEW `date_mrp` AS 
SELECT c.id AS `Client_id`, c.legal_entity, m.source_path, m.date_end 
FROM `client` c
JOIN `mrp` m ON c.id = m.Client_id
WHERE m.date_end < CURDATE();