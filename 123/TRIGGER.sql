-- При добавление в мчд данные обновляет их значение
-- DELIMITER $$

-- CREATE TRIGGER update_previous_mrp
-- BEFORE INSERT ON mrp
-- FOR EACH ROW
-- BEGIN
--     DECLARE previous_id INT;

--     SELECT id INTO previous_id
--     FROM mrp
--     WHERE Client_id = NEW.Client_id
--     ORDER BY date_end DESC
--     LIMIT 1;

--     IF previous_id IS NOT NULL THEN
--         UPDATE mrp
--         SET date_end = NEW.date_start - INTERVAL 1 DAY
--         WHERE id = previous_id;
--     END IF;
-- END$$

-- DELIMITER ;