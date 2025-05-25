alter session set "_oracle_script"=true;
alter user system identified by SYS;
/*crear usuario*/
create user gym identified by gym;
grant connect, resource to gym;

/*cambiar tablespaces*/
alter user gym
default TABLESPACE users
TEMPORARY tablespace temp;

/*asignar espacio a las tablas */
alter user gym  quota unlimited on users;

