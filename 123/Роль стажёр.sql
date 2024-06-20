CREATE ROLE IF NOT EXISTS user_roles;

grant select on mdk1101.client to user_roles;
grant select on mdk1101.contact to user_roles;
grant select on mdk1101.mrp to user_roles;
grant select on mdk1101.passport to user_roles;
grant select on mdk1101.tachograph to user_roles;
grant select on mdk1101.vehicle to user_roles;

create user if not exists 'user'@'localhost' identified by 'yabloki2021';
grant user_roles to 'user'@'localhost';
flush privileges;
