-- DELIMITER $$

-- CREATE FUNCTION `CalculateAge`(birthDate DATE) RETURNS INT
--     DETERMINISTIC
--     READS SQL DATA
-- BEGIN
--     RETURN TIMESTAMPDIFF(YEAR, birthDate, CURDATE());
-- END$$

-- DELIMITER ;DELIMITER $$

-- CREATE FUNCTION `CalculateAge`(birthDate DATE) RETURNS INT
--     DETERMINISTIC
--     READS SQL DATA
-- BEGIN
--     RETURN TIMESTAMPDIFF(YEAR, birthDate, CURDATE());
-- END$$

-- DELIMITER ;
-- SELECT `full_name`, `date_of_birth`, `CalculateAge`(`date_of_birth`) AS `age`
-- FROM `passport`;