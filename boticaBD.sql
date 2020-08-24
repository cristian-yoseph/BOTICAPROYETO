-- creación de la base de datos
create database boticaBD;
use boticaBD;
-- creación de la tabla de registros
create table nombre(
    -- creación de las columnas
    identificador INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR (255) NOT NULL,
    password VARCHAR (255) NOT NULL
)Engine InnoDB default charset=latin1;