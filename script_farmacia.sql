create database farmacia;

use farmacia;

CREATE TABLE caixa(
codAtendente int PRIMARY KEY auto_increment,
salario decimal(7,2) not null,
nome varchar(255) not null,
telCel varchar(255) not null,
cpf varchar(15) unique not null,
telFixo varchar(255) null,
email varchar(255) unique not null,
rg varchar(15) unique not null
);

CREATE TABLE produto_remedio (
codProduto int PRIMARY KEY auto_increment,
qtde int not null,
nome varchar(255) not null,
preco decimal(7,2) not null,
fabricante varchar(255) not null,
generico bit not null
);

CREATE TABLE compra_venda (
codCompra_Venda int PRIMARY KEY auto_increment,
cpf varchar(15) null,
hora time null,
data date null,
total decimal(7,2) not null,
codAtendente int not null,
FOREIGN KEY(codAtendente) REFERENCES caixa (codAtendente)
);

CREATE TABLE itens_compra (
codCompra_Venda int not null,
codProduto int not null,
qtde int not null,
total_unitario varchar(255) not null,
FOREIGN KEY(codCompra_Venda) REFERENCES compra_venda (codCompra_Venda),
FOREIGN KEY(codProduto) REFERENCES produto_remedio (codProduto)
);

insert INTO caixa (nome, cpf, rg, email, telCel, salario) VALUES
('Rodrigo da Silva','123.123.123-12','12.1234.123-1','rodrigo@gmail.com','1191111-1111',3.000),
('Pâmela Soares','234.432.876-32','54.2345.654-8','pamelas@gmail.com','1192345-2345',2.500),
('Maurício Cunha','760.478.188-80','68.2694.834-6','mauricioc@gmail.com','1193014-3750',4.000),
('Eduardo Cunha','372.158.953-56','12.7427.075-7','educunha@gmail.com','1194770-8702',2.000),
('Juliana Pereira','298.708.278-88','124.5214.12-9','jupereira@gmail.com','1193290-1243',3.000);

insert INTO produto_remedio (nome, fabricante, generico, preco, qtde) VALUES
('Sabonete','Dove',0,3.5,4),
('Dipirona','Bayer',1,5.20,2),
('Barra de Chocolate','Lacta',0,2.5,3),
('Dorflex','Bayer',0,5.0,1),
('Anador','Feriade',1,7.5,2),
('Paracetamol','Medquimica',1,3.0,3),
('Batom Vermelho','Plasmedix',0,7.0,1),
('Shampoo','Clear',0,8.0,2),
('Estomazil','Bayer',1,5.5,2),
('Álcool Gél','DVrio',1,10.99,5);

INSERT INTO compra_venda (codAtendente, cpf, data, hora, total) VALUES
(1,'829.054.380-23','2020-06-10','19:11:00',22.6),
(1,'678.253.576-86','2020-06-12','19:35;00',17.5),
(2,'678.253.576-77','2020-06-08','12:45:00',10.5),
(2,'829.054.380-23','2020-06-12','23:02:00',69.0),
(3,'209.512.666-23','2020-06-01','11:30:00',49.48),
(3,'209.512.666-23','2020-06-17','17:21:00',15.0),
(4,'123.345.567-09','2020-05-30','09:45:00',19.7),
(4,'123.345.569-21','2020-06-01','10:30:00',15.0),
(5,'663.835.833-33','2020-06-07','12:40:00',109.9),
(5,'663.835.833-33','2020-05-26','21:50:00',26.0);

insert INTO itens_compra (codCompra_Venda, codProduto, qtde, total_unitario) VALUES
(1,1,2,7.0),
(1,2,3,15.6),
(2,3,3,7.5),
(2,4,2,10.0),
(3,5,1,7.5),
(3,6,1,3.0),
(4,7,3,21.0),
(4,8,6,48.0),
(5,9,5,27.5),
(5,10,2,21.98),
(6,5,2,15.0),
(7,3,3,7.5),
(7,2,1,5.2),
(7,7,1,7.0),
(8,1,2,7.0),
(8,8,1,8.0),
(9,10,10,109.9),
(10,4,3,15.0),
(10,9,2,11.0);