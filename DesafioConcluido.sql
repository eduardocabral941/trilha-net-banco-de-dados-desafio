-- Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT NOME, ANO, Duracao FROM Filmes ORDER BY ANO ASC;

-- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT * FROM FILMES WHERE NOME LIKE UPPER('%De volta%');

-- Buscar os filmes lançados em 1997
SELECT * FROM FILMES WHERE ANO = 1997

--  Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM FILMES WHERE ANO >= 2000

-- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM FILMES WHERE DURACAO > 100 AND DURACAO < 150 ORDER BY DURACAO ASC ;

-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ANO, COUNT(Ano) as Quantidade  FROM FILMES GROUP BY ANO ORDER BY quantidade desc

-- Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Filmes

-- Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM ATORES WHERE GENERO = 'M'

-- Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM ATORES WHERE GENERO = 'F' ORDER BY PRIMEIRONOME

-- Buscar o nome do filme e o gênero
SELECT F.NOME, G.GENERO 
FROM FILMES F, FILMESGENERO A, GENEROS G
WHERE F.ID = A.IdFilme
AND G.ID = A.IdGenero

-- Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.NOME, G.GENERO 
FROM FILMES F, FILMESGENERO A, GENEROS G
WHERE F.ID = A.IdFilme
AND G.ID = A.IdGenero
AND G.GENERO = 'Mistério'

-- Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.NOME, A.PRIMEIRONOME, A.ULTIMONOME, PAPEL
FROM FILMES F, ATORES A, ELENCOFILME E  
WHERE F.ID = E.IdFilme
AND A.Id = E.IdAtor

------------------------------------------------------------------------------------------------