DELIMITER //

CREATE PROCEDURE CountVehiclesPerClient()
BEGIN
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        SELECT 'Произошла ошибка при подсчете транспортных средств.';
    END;

    SELECT Client_id, COUNT(*) AS VehicleCount
    FROM vehicle
    GROUP BY Client_id;
END //

DELIMITER ;