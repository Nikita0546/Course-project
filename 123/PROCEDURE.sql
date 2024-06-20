-- Процедура для проверки наличия тахографа у клиента 
-- Процедура проверяет, есть ли у клиента тахограф,  и если да, то возвращает его серийный номер
-- Входные параметры: id клиента
-- Выходные параметры: Серийный номер тахографа,  если он есть,  иначе - NULL
-- DELIMITER $$

-- CREATE PROCEDURE CheckTachograph(IN client_id INT)
-- BEGIN
--     DECLARE serial_number VARCHAR(16);

--     -- Попытка получить серийный номер тахографа для указанного клиента
--     SELECT t.serial_number INTO serial_number
--     FROM tachograph AS t
--     WHERE t.Client_id = client_id LIMIT 1;

--     -- Если серийный номер найден, возвращаем его
--     IF serial_number IS NOT NULL THEN
--         SELECT serial_number;
--     ELSE
--         -- Если тахограф не найден, возвращаем сообщение об отсутствии
--         SELECT 'Тахограф не найден' AS message;
--     END IF;
-- END $$

-- DELIMITER ;