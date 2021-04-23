create database if not exists desafio;

use desafio;

create table if not exists modulo (
    id      int auto_increment,
    name    varchar(255),
    primary key(id)
) character set utf8 collate utf8_general_ci;

insert into modulo (name) values ('Docker');
insert into modulo (name) values ('Kubernetes');
insert into modulo (name) values ('Fundamentos de arquitetura de software');
insert into modulo (name) values ('Domain Driven Design e Arquitetura hexagonal');
insert into modulo (name) values ('Apache Kafka');

commit;