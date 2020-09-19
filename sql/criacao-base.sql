create database cep_brasil;
create table base_ceps_brasil (id SERIAL primary key, cep VARCHAR(8));

insert
	into
	base_ceps_brasil (cep)
values ('74130012'),
('72910733'),
('75131457'),
('74968755'),
('76600000'),
('73813816'),
('74055110'),
('74270040'),
('75400000'),
('75524010'),
('75804714'),
('72811580'),
('76400000'),
('72876601'),
('73840000')
