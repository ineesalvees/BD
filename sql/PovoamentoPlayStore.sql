
INSERT INTO Categoria 
	(idCategoria , Designação)
    VALUES
		(1,'Jogo'),
		(2,'Aplicação'),
		(3,'Música'),
		(4,'Livro'),
		(5,'Filme');

-- Povoamento Morada
INSERT INTO MORADA
	(idMorada, Rua, Localidade)
    VALUES 
		(1,'Rua do raio','Braga'),
        (2,'Rua dos chãos','Braga'),
        (3,'Rua da invicta','Porto'),
        (4,'Rua de cima','Porto'),
        (5,'Rua do lado','Évora'),
        (6,'Rua da direita','Lisboa'),
        (7,'Rua da esquerda','Lisboa'),
        (8,'Rua superior','Lisboa'),
        (9,'Rua inferior','Leiria'),
        (10,'Rua interior','Coimbra'),
        (11,'Rua exterior','Faro'),
        (12,'Rua vasta','Vila Real'),
        (13,'Rua da alegria','Aveiro'),
        (14,'Rua da boa sorte','Aveiro'),
        (15,'Rua da juventude','Setúbal'),
        (16,'Rua das casas','Setúbal'),
        (17,'Bairro do povo','Braga');

-- Povoamento Publicadores
INSERT INTO Publicador 
	(idPublicador, Nome, Descrição)
    VALUES 
		(1,'SuperCell','Empresa de jogos mega brutal'),
	    (2,'Nitrome','Empresa de jogos arcade'),
        (3,'Logisk','Empresa de jogos puzzle'),
        (4,'Ketchapp','Empresa de jogos'),
        (5,'Donut Games','Empresa de jogos arcade'),
        (6,'InShot','Empresa de aplicações de edição de imagem'),
        (7,'TripAdvisor','Empresa de aplicações direcionadas a turismo'),
        (8,'Maple Media','Empresa de aplicações de gestão de armazenamento'),
        (9,'Shanga','Empresa de aplicações de wallpapers'),
        (10,'Google LLC','Empresa de várias aplicações para uso no diário'),
        (11,'Muse','Banda inglesa de rock'),
        (12,'Queen','Banda de rock britânica'),
        (13,'Coldplay','Banda britânica de rock alternativo'),
        (14,'Arcade Fire','Banda de indie rock'),
        (15,'Linkin Park','Banda de rock dos Estados Unidos'),
        (16,'Marvel','Estúdio de filmes de super heróis'),
        (17,'DC','Estúdio de filmes de super heróis'),
        (18,'Disney','Estúdio de Filmes de animação'),
        (19,'Pixar','Estúdio de filmes de animação'),
        (20,'Lucasfilm','Estúdio de filmes de ficção científica'),
        (21,'J.K. Rowling','Escritora de livros de fantasia'),
        (22,'Christopher Paolini','Escritor de livros de fantasia');

-- Povoamento Produto
INSERT INTO Produto
	(idProduto, Nome, Tamanho , Categoria_idCategoria,Descrição , Preço, Classificação, Publicador_idPublicador)
	VALUES 
		(1,'Clash Royale',500,1,'Jogo de Estratégia online mega brutal', 0, 5, 1),
        (2,'Clash of clans',200,1,'Jogo de Estratégia online',0,4,1),
        (3,'Hay Day',160,1,'Jogo de evoluir a sua fazenda',1,3,1),
        (4,'Boom Beach',250,1,'Jogo de Estratégia online',0,4,1),
        (5,'Redundeon',200,1,'Jogo de aventura',1,5,2),
        (6,'Icebreaker',160,1,'Jogo puzzle',2,4,2),
        (7,'Tower Fortress',210,1,'Jogo de estratégia',0,4,2),
        (8,'Leap Day',110,1,'Jogo de ação',2,3,2),
        (9,'Hexio',120,1,'Jogo puzzle',2,4,3),
        (10,'Horizon',200,1,'Jogo arcade',0,4,4),
        (11,'Knife Hit',180,1,'Jogo arcade',0,5,4),
        (12,'Rider',220,1,'Jogo arcade',0,5,4),
        (13,'Mr Gun',120,1,'Jogo arcade',0,4,4),
        (14,'Stairs',110,1,'Jogo arcade',3,4,4),
        (15,'Knife Hit',180,1,'Jogo arcade',0,5,4),
        (16,'Micro Battles',120,1,'Jogo arcade multiplayer',1,4,5),
        (17,'Trafic Rush',90,1,'Jogo arcade multiplayer',0,4,5),
        (18,'Rat on the scooter',130,1,'Jogo arcade multiplayer',1,5,5),
        (19,'Editor de vídeo',120,2,'Aplicação de edição de vídeo',0,5,6),
        (20,'Editor de fotos',70,2,'Aplicação de edição de fotos',3,5,6),
        (21,'Colagem de fotos',80,2,'Aplicação de edição de vida',0,4,6),
        (22,'TripAdvisor',90,2,'Aplicação de review de restaurantes e hotéis',0,4,7),
        (23,'SeatGuru',70,2,'Aplicação para marcação',3,4,7),
        (24,'PropAppAlug',110,2,'Aplicação de aluguel',2,3,7),
        (25,'Gerenciador de arquivos',70,2,'Aplicação de gestão de armazenamento',0,5,8),
        (26,'Wallpapers',90,2,'Aplicação de wallpapers',2,5,9),
        (27,'Google Tradutor',90,2,'Aplicação de tradução',0,5,10),
        (28,'Google Earth',150,2,'Aplicação de mapa Mundo',4,5,10),
        (29,'Google Notícias',70,2,'Aplicação de Notícias',0,4,10),
        (30,'Google',60,2,'Aplicação de motor de busca',0,5,10),
        (31,'Pressure',7,3,'Música dos Muse',1,4,11),
        (32,'Something Human',9,3,'Música dos Muse',1,4,11),
        (33,'Algorithm',8,3,'Música dos Muse',1,5,11),
        (34,'The Void',9,3,'Música dos Muse',2,4,11),
        (35,'Dollar',9,3,'Música dos Queen',2,5,12),
        (36,'Heart Quake',9,3,'Música dos Queen',2,5,12),
        (37,'Keep Yourself Alive',8,3,'Música dos Queen',2,5,12),
        (38,'Fix you',7,3,'Música dos ColdPlay',2,5,13),
        (39,'The Scientist',7,3,'Música dos ColdPlay',2,4,13),
        (40,'Yellow',7,3,'Música dos ColdPlay',2,4,13),
        (41,'Viva La vida',9,3,'Música dos ColdPlay',2,5,13),
        (42,'Rebellion',7,3,'Música dos Arcade Fire',1,4,14),
        (43,'Ready to Start',7,3,'Música dos Arcade Fire',1,5,14),
        (44,'Wake up',8,3,'Música dos Arcade Fire',1,4,14),
        (45,'Fix you',7,3,'Música dos Arcade Fire',1,5,14),
        (46,'Numb',8,3,'Música dos Linkin Park',1,5,15),
        (47,'In the end',10,3,'Música dos Linkin Park',1,5,15),
        (48,'Burn It Down',9,3,'Música dos Linkin Park',1,5,15),
        (49,'Iron Man',1024,5,'Filme de super-heróis',5,5,16),
        (50,'Iron Man 2',1024,5,'Filme de super-heróis',5,5,16),
        (51,'Avengers',1024,5,'Filme de super-heróis',8,5,16),
        (52,'Avengers 2',1024,5,'Filme de super-heróis',8,5,16),
        (53,'Suicide Squad',1024,5,'Filme de super-heróis',7,5,17),
        (54,'Batman',1024,5,'Filme de super-heróis',7,5,17),
        (55,'O Rei Leão',1024,5,'Filme de animação',9,5,18),
        (56,'A bela e o Monstro',1024,5,'Filme de animação',9,4,18),
        (57,'O Aladino',1024,5,'Filme de animação',9,5,18),
        (58,'Toy Story',1024,5,'Filme de animação',9,5,19),
        (59,'Monstros e Companhia',1024,5,'Filme de animação',5,5,19),
        (60,'Star Wars',1024,5,'Filme de ficção científica',5,5,20),
        (61,'Harry Potter e a pedra filosofal',200,4,'Livro de fantasia',5,5,21),
        (62,'Harry Potter e a Camâra dos segredos',200,4,'Livro de fantasia',5,5,21),
        (63,'Eragon',200,4,'Livro de fantasia',5,5,22),
        (64,'Brisingr',200,4,'Livro de fantasia',5,5,22);
        
-- Povoamento Utilizadores
INSERT INTO Utilizador
	(idUtilizador, Email, Nome, Data_Nascimento,Password,Morada_idMorada)
    VALUES
		(1,'soaresgon@gmail.com','soaresgon', '1990-12-12','pass1',1),
        (2,'nmdo.p@gmail.com','nmdo2','1992-06-23','pass2',2),
        (3,'jose2000@hotmail.com','josef','1981-09-12','pass3',3),
        (4,'americo_33@gmail.com','mero95','1995-12-15','pass4',4),
        (5,'ines@gmail.com','ines','1993-03-22','pass5',5),
        (6,'dant@hotmail.com','danny','1993-01-08','pass6',5),
        (7,'peterex@hotmail.com','peterex1','1993-06-08','pass7',6),
        (8,'diosnes@hotmail.com','diosnes','1998-11-26','pass8',7),
        (9,'crocoftw@gmail.com','nmfo','1998-12-30','pass9',8),
        (10,'mail3@gmail.com','montras','1990-11-01','pass10',9),
        (11,'rybur4@hotmail.com','rybur','1999-02-08','pass11',10),
        (12,'ruca12@gmail.com','ruii','1999-05-01','pass12',10),
        (13,'filas3@gmail.com','lili','1994-11-28','pass13',11),
        (14,'jnuno@hotmail.com','jnuno','1992-10-10','pass14',12),
        (15,'vicas111@gmail.com','vicente18','1998-03-11','pass15',12),
        (16,'oliba33@gmail.com','liba321','1985-09-21','pass16',12),
        (17,'must13@gmail.com','dududu','1985-10-29','pass17',13),
        (18,'dot1@hotmail.com','qua1234','1999-10-15','pass18',14),
        (19,'rest1np@gmail.com','rip','2000-11-30','pass19',15),
        (20,'memes911@gmail.com','memergod','2000-10-23','pass20',16),
        (21,'hugo112@gmail.com','paihugo','1992-07-09','pass21',17);
        

INSERT INTO Comentário
     (Utilizador_idUtilizador,Produto_idProduto,Conteúdo,Data)
     VALUES
         (1,1,'Muito Bom','2016-10-11'),
         (2,1,'First','2015-12-08'),
         (3,2,'Recomendo Muito Bom !!!','2017-12-07'),
         (10,3,'O melhor','2017-01-02'),
         (10,4,'O meu jogo favorito','2018-06-04'),
         (10,5,'Recomendo','2017-10-10'),
         (10,6,'Muito viciante','2017-11-11'),
         (10,7,'Estou viciado','2018-02-01'),
         (4,8,'A ideia é boa mas tem muitos bugs','2017-01-30'),
         (10,9,'Muito bom para todo o mundo!!','2018-02-25'),
         (10,10,'Estou adorando','2017-03-03'),
         (10,11,'Completamente colado','2018-01-31'),
         (5,12,'Adorei','2016-02-27'),
         (10,23,'Maravilhoso','2017-12-12'),
         (10,24,'Maravilindo','2018-03-10'),
         (10,25,'Incrível','2017-04-24'),
         (10,21,'Lindo','2017-03-03'),
         (6,22,'Vai dar muito jeito','2016-03-20'),
         (7,26,'Pessimo','2018-04-06'),
         (8,26,'Horrivel','2018-05-09'),
         (10,27,'Meu favorito','2018-02-21'),
         (10,28,'Detestável','2017-10-10'),
         (10,29,'Muito mal optimizado','2016-12-23'),
         (10,30,'Não é de grande utilidade','2017-09-29'),
         (9,31,'Maravilha','2017-03-10'),
         (10,32,'Gostei muito','2017-11-29'),
         (10,33,'Lindo','2017-10-20'),
         (10,34,'Demais','2017-10-09'),
         (10,35,'Que mimo','2017-08-08'),
         (10,36,'Do melhor','2017-01-04'),
         (10,37,'Não gostei','2017-06-21'),
         (10,38,'Muito horrível','2017-03-20'),
         (10,39,'Mais ou menos bom','2017-09-10'),
		 (10,40,'Uma porcaria','2016-11-28'),
         (10,41,'Das minhas favoritas','2017-01-07'),
         (10,42,'Surpreendeu pela positiva','2017-05-17'),
         (11,42,'Incrivel','2017-06-01'),
         (10,43,'Apaixonado','2017-07-02'),
         (10,44,'Linda','2017-08-29'),
         (12,51,'Muito útil','2016-08-02'),
         (13,52,'Adoro','2017-09-09'),
         (14,53,'Lindo','2018-03-20'),
         (15,54,'Meu filme favorito','2016-10-29'),
         (16,55,'Simplesmente lindo!!','2016-12-31'),
         (17,56,'Fantástico','2017-05-16'),
         (18,57,'Odiei','2017-06-20'),
         (19,58,'Mesmo bom','2018-01-01'),
         (20,59,'Destestei','2017-03-07'),
         (1,60,'Magnífico','2018-06-08'),
         (2,60,'Adorei','2017-07-23'),
         (3,13,'Uma porcaria','2016-11-30'),
         (4,14,'Cheio de bugs','2017-02-22'),
         (5,14,'Horrível','2018-01-23'),
         (6,15,'Amei','2017-12-02'),
         (7,16,'Muito bom para jogar com amigos','2017-09-13'),
         (8,17,'Estou viciado','2018-02-12'),
         (9,18,'Dá para estar','2017-07-13'),
         (10,19,'Muito útil','2017-12-21'),
         (11,20,'Muito bom e fácil de usar','2018-10-20'),
         (12,45,'Optimo','2017-12-15'),
         (13,46,'Meu favorito','2016-11-29'),
         (14,47,'Uma maravilha','2017-08-22'),
         (15,48,'Gosto muito!!!','2016-12-02'),
         (21,1,'100% o melhor jogo de todos','2018-04-05'),
         (21,13,'Muito divertido','2018-05-05');
         
INSERT INTO Transferência
     (Utilizador_idUtilizador,Produto_idProduto,Data)
     VALUES
     (1,1,'2017-11-01'),
     (1,40,'2017-11-10'),
     (2,7,'2017-11-20'),
     (3,13,'2017-11-30'),
     (4,20,'2017-01-01'),
     (5,32,'2017-03-01'),
     (6,33,'2017-04-01'),
     (7,18,'2017-05-01'),
     (8,18,'2016-06-02'),
     (8,55,'2016-07-02'),
     (9,64,'2016-10-02'),
     (10,61,'2016-10-02'),
     (11,60,'2016-10-05'),
     (12,60,'2016-10-20'),
     (12,2,'2016-10-22'),
     (12,1,'2016-10-12'),
     (13,25,'2016-05-14'),
     (14,26,'2016-06-16'),
     (15,27,'2016-08-02'),
     (16,31,'2016-09-20'),
     (16,32,'2018-02-27'),
     (16,38,'2018-01-20'),
     (17,39,'2018-12-19'),
     (17,8,'2018-12-17'),
     (18,46,'2018-10-12'),
     (18,47,'2018-05-02'),
     (19,47,'2018-05-22'),
     (19,50,'2018-08-13'),
     (20,50,'2018-11-11'),
     (20,51,'2018-03-19'),
     (20,61,'2018-01-18'),
     (21,1,'2017-02-13'),
     (21,54,'2016-11-21'),
     (21,13,'2016-12-13');
     
