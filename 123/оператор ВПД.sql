CREATE ROLE IF NOT EXISTS VPDoperator_role; 

-- Предоставление полных прав администратору на схему housing
GRANT ALL PRIVILEGES ON housing.* TO VPDoperator_role;

-- создание пользователя, если он еще не существует
CREATE USER IF NOT EXISTS 'admin'@'localhost' IDENTIFIED BY '123';

-- назначение роли пользователю
GRANT VPDoperator_role TO 'admin'@'localhost';

-- активация роли для пользователя
SET DEFAULT ROLE VPDoperator_role TO 'admin'@'localhost';

-- применение изменений прав
FLUSH PRIVILEGES;