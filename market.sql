CREATE TABLE providers(id int not null, name varchar(255) default null, primary key (id));
CREATE TABLE products(id int not null, name varchar(255) default null, provider int not null, primary key (id), foreign key (provider) references providers(id));

insert into providers(id, name) values(1, 'Granja Tony');
insert into providers(id, name) values(2, 'Frutas Lila');
insert into providers(id, name) values(3, 'Tierras Paco');
insert into providers(id, name) values(4, 'Cultivos Juan');

insert into products(id, name, provider) values(1, 'Manzanas', 1);
insert into products(id, name, provider) values(2, 'Peras', 2);
insert into products(id, name, provider) values(3, 'Cereza', 2);
insert into products(id, name, provider) values(4, 'Banano', 3);