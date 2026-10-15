-- Versión para Clever Cloud: la base ya existe (la crea el add-on),
-- por eso NO lleva CREATE DATABASE ni USE.
CREATE TABLE IF NOT EXISTS empleados (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombres VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100),
  edad INT NOT NULL
) CHARACTER SET utf8mb4;
