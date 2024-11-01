Create table Estado (
idEstado int not null auto_increment,
Nome varchar(50) not null,
UF char(2),
primary key (idEstado)
);

Create table Municipio (
id int not null auto_increment,
Nome varchar(80) not null,
codIBGE int not null,
Estado_idEstado int not null,
primary key (id),
Constraint fk_Municipio_Estado
foreign key (Estado_idEstado)
references Estado (idEstado)
);

Create table Cliente (
ID int not null auto_increment,
Nome varchar(80) not null,
CPF varchar(11) not null,
Celular char(11),
EndLogradouro varchar(10) not null,
EndNumero varchar(10) not null,
EndMunicipio int not null,
EndCEP char(8),
Municipio_ID int not null,
primary key (ID),
constraint fk_Cliente_Municipio
foreign key (Municipio_ID)
references municipio (id)
);

Create table ContasReceber(
id int not null auto_increment,
Cliente_ID int not null,
Faturavenda int,
DataConta date not null,
DataVencimento date not null,
Situacao enum ('1','2','3'),
primary key (id),
constraint fk_ContasReceber_Cliente
foreign key (Cliente_ID)
references cliente (id)
on delete no action
on update no action
);

