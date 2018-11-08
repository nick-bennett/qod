create table quote (
  quote_id bigint generated by default as identity,
  created timestamp not null,
  text varchar(4096) not null,
  source_id bigint not null,
  primary key (quote_id)
);
create table source (
  source_id bigint generated by default as identity,
  created timestamp not null,
  name varchar(1024) not null,
  primary key (source_id)
);
alter table source add constraint UK_4a1uurs8rtj4xnah2j9uguec0 unique (name);
alter table quote add constraint FK4gnwxqrpbw5culhb0cxc6lnv0 foreign key (source_id) references source on delete cascade;
