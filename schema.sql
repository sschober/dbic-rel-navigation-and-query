drop database dbix_test;

create database dbix_test;
\connect dbix_test

create table account (
  id serial primary key,
  no varchar
);
create type sourcetype as enum ( 'TYPE_A', 'TYPE_B');
create table orgunit (
  id serial primary key,
  name varchar,
  source sourcetype
);
create table orgunitaccount (
  orgunitid int references orgunit(id),
  accountid int references account(id)
);

insert into account(no) values ( '999999' );
insert into orgunit(name,source) values ( 'unit1', 'TYPE_A'), ('unit2', 'TYPE_B');
insert into orgunitaccount VALUES( '1','1');
