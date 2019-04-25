
DELIMITER //
CREATE PROCEDURE insere_utilizador (IN id INT, IN email VARCHAR(45), IN nome VARCHAR(45), IN data DATE, 
                                    IN password VARCHAR(45), IN morada INT)
	BEGIN
		DECLARE exit handler for SQLEXCEPTION
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
		
        DECLARE exit handler for SQLWARNING
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
    
		START TRANSACTION;
			INSERT INTO Utilizador
				(idUtilizador, Email, Nome, Data_Nascimento,Password,Morada_idMorada)
				VALUES
				(id,email,nome,data,password,morada);
		COMMIT;
	END //

CREATE PROCEDURE insere_publicador (IN id INT, IN nome VARCHAR(45), IN descrição VARCHAR(100))
	BEGIN
		DECLARE exit handler for SQLEXCEPTION
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
		
        DECLARE exit handler for SQLWARNING
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
		
        START TRANSACTION;
			INSERT INTO Publicador
				(idPublicador, Nome, Descrição)
				VALUES
				(id,nome,descrição);
		COMMIT;
	END //

CREATE PROCEDURE insere_produto (IN id INT, IN nome VARCHAR(45), IN tamanho INT,IN descrição VARCHAR(100),
								 IN preço INT, IN classificação INT, IN idpublicador INT, IN idcategoria INT)
	BEGIN
		DECLARE exit handler for SQLEXCEPTION
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
		
        DECLARE exit handler for SQLWARNING
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
            
		START TRANSACTION;
			INSERT INTO Publicador
				(idProduto, Nome, Tamanho , Descrição , Preço, Classificação, Publicador_idPublicador, Categoria_idCategoria)
				VALUES
				(id,nome,tamanho,descrição,preço,classificação,idpublicador,idcategoria);
		COMMIT;
	END //
    
CREATE PROCEDURE insere_transferencia (IN idutilizador INT, idproduto INT, IN data DATE)
	BEGIN
		DECLARE exit handler for SQLEXCEPTION
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
		
        DECLARE exit handler for SQLWARNING
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
		
        START TRANSACTION;
			INSERT INTO Publicador
				(Utilizador_idUtilizador,Produto_idProduto,Data)
				VALUES
				(idutilizador,idproduto,data);
		COMMIT;
	END //

CREATE PROCEDURE insere_comentario (IN idutilizador INT, idproduto INT, IN data DATE, IN conteudo VARCHAR(200))
	BEGIN
		DECLARE exit handler for SQLEXCEPTION
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
		
        DECLARE exit handler for SQLWARNING
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
            
		START TRANSACTION;
			INSERT INTO Comentário
				(Utilizador_idUtilizador,Produto_idProduto,Conteúdo,Data)
				VALUES
				(idutilizador,idproduto,data,conteudo);
		COMMIT;
	END //    
    
CREATE PROCEDURE insere_categoria (IN id INT, IN designação VARCHAR(45))
	BEGIN
		DECLARE exit handler for SQLEXCEPTION
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
		
        DECLARE exit handler for SQLWARNING
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
            
		START TRANSACTION;
			INSERT INTO Categoria
				(idCategoria , Designação)
				VALUES
				(id,designação);
		COMMIT;
	END //        

CREATE PROCEDURE insere_morada (IN id INT,IN rua VARCHAR(100), IN localidade VARCHAR(45))
	BEGIN
		DECLARE exit handler for SQLEXCEPTION
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
		
        DECLARE exit handler for SQLWARNING
			BEGIN
				SHOW ERRORS LIMIT 1;
                SHOW WARNINGS;
                ROLLBACK;
			END;
            
		START TRANSACTION;
			INSERT INTO Morada
				(idMorada, Rua, Localidade)
				VALUES
				(id,rua,localidade);
		COMMIT;
	END //    

DELIMITER //

CREATE VIEW Top10Produtos AS
	SELECT Produto.Nome, Produto.Classificação  from Produto
		ORDER BY Produto.CLassificação DESC
	LIMIT 10;

CREATE VIEW mediaIdades AS
	Select AVG(TIMESTAMPDIFF(YEAR, Data_Nascimento, CURDATE())) from Utilizador;

CREATE VIEW avgSize AS 
	SELECT AVG(Tamanho) FROM Produto;
    
DROP VIEW Top10Produtos;
DROP PROCEDURE insere_categoria;
DROP PROCEDURE insere_morada;
DROP PROCEDURE insere_transferencia;
DROP PROCEDURE insere_comentario;
DROP PROCEDURE insere_produto;
DROP PROCEDURE insere_publicador;
DROP PROCEDURE insere_utilizador;