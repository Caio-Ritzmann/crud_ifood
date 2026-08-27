    CREATE DATABASE ifood_sql;
USE ifood_sql;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL
  
);

CREATE TABLE restaurantes (
    id INT PRIMARY KEY  AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    categoria ENUM('Lanches', 'Culinária Brasileira', 'Pizza', 'Marmitas', 'Comida japonesa') NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    endereco VARCHAR(255) NOT NULL

);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    cliente_id INT NOT NULL,
    restaurante_id INT NOT NULL,
    data_pedido DATETIME NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    status ENUM('Pendente', 'Em andamento', 'Entregue') NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (restaurante_id) REFERENCES restaurantes(id)
);