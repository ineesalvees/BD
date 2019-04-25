

-- Administrador
CREATE USER 'administrador'@'localhost' IDENTIFIED BY 'administrador';
GRANT ALL ON trabalho.* TO 'administrador'@'localhost';

-- Utilizador
CREATE USER 'utilizador'@'localhost' IDENTIFIED BY 'utilizador';
GRANT INSERT, UPDATE ON trabalho.Utilizador to 'utilizador'@'localhost';
GRANT SELECT ON trabalho.Produto to 'utilizador'@'localhost';
GRANT INSERT ON trabalho.Comentario to 'utilizador'@'localhost';
GRANT INSERT ON trabalho.Transferência to 'utilizador'@'localhost';
GRANT INSERT ON trabalho.Morada to 'utilizador'@'localhost';

-- Publicador
CREATE USER 'publicador'@'localhost' IDENTIFIED BY 'publicador';
GRANT SELECT, INSERT, UPDATE ON trabalho.Publicador to 'publicador'@'localhost';
GRANT SELECT, INSERT, UPDATE ON trabalho.Produto to 'publicador'@'localhost';

