CREATE ROLE IF NOT EXISTS trainee_roles;

grant select on mdk1101.client to trainee_roles;
grant select on mdk1101.contact to trainee_roles;
grant select on mdk1101.mrp to trainee_roles;
grant select on mdk1101.passport to trainee_roles;
grant select on mdk1101.tachograph to trainee_roles;
grant select on mdk1101.vehicle to trainee_roles;

create user if not exists 'user'@'localhost' identified by '123';
grant trainee_roles to 'user'@'localhost';
flush privileges;
