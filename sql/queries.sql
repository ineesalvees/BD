-- Do ponto de vista do Utilizador:
	-- 1. Saber qual é o publicador de um certo produto;
DELIMITER //
CREATE PROCEDURE obterpublicador (IN idProduto INT)
	BEGIN
		SELECT Publicador.*, Produto.idProduto, Produto.Nome FROM Produto
		INNER JOIN Publicador on Publicador.idPublicador = Produto.Publicador_idPublicador
		WHERE Produto.idProduto = idProduto;
	END //
DELIMITER //

SET @idProduto = 3;
CALL obterpublicador (@idProduto);
DROP PROCEDURE obterpublicador;

	-- 2. Saber a designação da categoria de um produto;
DELIMITER //
CREATE PROCEDURE obterdesignação (IN idProduto INT)
	BEGIN
		SELECT Produto.Nome, Categoria.Designação From Produto
		INNER JOIN Categoria on Categoria.idCategoria = Produto.Categoria_idCategoria
		WHERE Produto.idProduto = idProduto;
	END //
DELIMITER //

CALL obterdesignação (@idProduto);
DROP PROCEDURE obterdesignação;

	-- 3. Saber qual o produto com melhor classificação;
DELIMITER //
CREATE PROCEDURE obterproduto_maior_classificação ()
	BEGIN
		SELECT Produto.Nome, Produto.Classificação from Produto
		ORDER BY Classificação DESC
		LIMIT 1;
	END //
DELIMITER //

CALL obterproduto_maior_classificação();
DROP PROCEDURE obterproduto_maior_classificação;

	-- 4. Saber quais são os produtos gratuitos;
DELIMITER //
CREATE PROCEDURE obterprodutos_gratuitos ()
	BEGIN
		SELECT * FROM Produto
		WHERE Preço = 0;
	END //
DELIMITER //

CALL obterprodutos_gratuitos();
DROP PROCEDURE obterprodutos_gratuitos;

	-- 5. Saber quais são os produtos transferidos por um utilizador;
DELIMITER //
CREATE PROCEDURE obterprodutos_utilizador (IN idUtilizador INT)
	BEGIN
		SELECT Produto.Nome from Utilizador 
		INNER JOIN Transferência ON Utilizador.idUtilizador = Transferência.Utilizador_idUtilizador
		INNER JOIN Produto ON Produto.idProduto = Transferência.Produto_idProduto 
		WHERE Utilizador.idUtilizador = idUtilizador;
	END //
DELIMITER //

SET @idUtilizador = 5;
CALL obterprodutos_utilizador(@idUtilizador);
DROP PROCEDURE obterprodutos_utilizador;

	-- 6. Saber o comentário mais recente, do último produto transferido por um utilizador;
DELIMITER //
CREATE PROCEDURE obtercomentário_maisrecente_produto_maisrecente (IN idUtilizador INT)
	BEGIN
		SELECT Comentário.Conteúdo, Produto.Nome, Transferência.Data, Comentário.Data from Comentário
		INNER JOIN Utilizador ON Utilizador.idUtilizador = Comentário.Utilizador_idUtilizador
		INNER JOIN Produto ON Produto.idProduto = Comentário.Produto_idProduto
		INNER JOIN Transferência ON Transferência.Utilizador_idUtilizador = Utilizador.idUtilizador
		WHERE Utilizador.idUtilizador = idUtilizador
		ORDER BY Transferência.Data DESC,
				 Comentário.Data DESC
		LIMIT 1;
	END //
DELIMITER //

CALL obtercomentário_maisrecente_produto_maisrecente(@idUtilizador);
DROP PROCEDURE obtercomentário_maisrecente_produto_maisrecente;
	
-- Do ponto de vista do Publicador:
	-- 1. Saber que utilizadores transferiram um produto que lhe pertence e em que data foi feita essa transferência;
DELIMITER //
CREATE PROCEDURE obterproduto_utilizadores (IN idProduto INT)
	BEGIN
		SELECT Produto.Nome, Utilizador.Nome, Publicador.Nome, Transferência.Data FROM Publicador
		INNER JOIN Produto ON Produto.Publicador_idPublicador = Publicador.idPublicador
		INNER JOIN Transferência ON Transferência.Produto_idProduto = Produto.idProduto
		INNER JOIN Utilizador ON Transferência.Utilizador_idUtilizador = Utilizador.idUtilizador
		WHERE Produto.idProduto = idProduto;
	END //
DELIMITER //

SET @idProduto = 12;
CALL obterproduto_utilizadores (@idProduto);
DROP PROCEDURE obterproduto_utilizadores;

	-- 2. Saber que comentários foram feitos a um determinado produto que lhe pertence;
DELIMITER //
CREATE PROCEDURE obterproduto_comentários (IN idProduto INT)
	BEGIN
		SELECT Produto.nome, Publicador.Nome, Comentário.Conteúdo, Utilizador.Nome FROM Publicador
		INNER JOIN Produto on Produto.Publicador_idPublicador = Publicador.idPublicador
		INNER JOIN Comentário ON Comentário.Produto_idProduto = Produto.idProduto
		INNER JOIN Utilizador ON Comentário.Utilizador_idUtilizador = Utilizador.idUtilizador
		WHERE Produto.idProduto = idProduto;
	END //
DELIMITER //

CALL obterproduto_comentários(@idProduto);
DROP PROCEDURE obterproduto_comentários;

	-- 3. Saber qual o seu produto com melhor classificação;
DELIMITER //
CREATE PROCEDURE obterproduto_maiorclassificação (IN idPublicador INT)
	BEGIN
		SELECT Produto.Nome, Produto.Classificação, Publicador.Nome from Produto
		INNER JOIN Publicador ON Publicador.idPublicador = Produto.Publicador_idPublicador
		WHERE Publicador.idPublicador = idPublicador
		ORDER BY Produto.Classificação DESC
		LIMIT 1;
	END //
DELIMITER //

SET @idPublicador = 5;
CALL obterproduto_maiorclassificação(@idPublicador);
DROP PROCEDURE obterproduto_maiorclassificação;

SELECT * FROM Categoria, Comentário;
SELECT * FROM Comentário;
SELECT * FROM Morada;
SELECT * FROM PRODUTO;
SELECT * FROM PUBLICADOR;
SELECT * FROM utilizador;