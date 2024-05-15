--1 - Buscar o nome e ano dos filmes
SELECT f.Nome, f.Ano
FROM dbo.Filmes as f;

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT f.Nome, f.Ano, f.Duracao
FROM dbo.Filmes as f
ORDER BY f.Ano;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT f.Nome, f.Ano, f.Duracao
FROM dbo.Filmes as f
WHERE f.Nome = 'De Volta para o Futuro';

--4 - Buscar os filmes lançados em 1997
SELECT f.Nome, f.Ano, f.Duracao
FROM dbo.Filmes as f
WHERE f.Ano = 1997;

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT f.Nome, f.Ano, f.Duracao
FROM dbo.Filmes as f
WHERE f.Ano > 2000;

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT f.Nome, f.Ano, f.Duracao
FROM dbo.Filmes as f
WHERE f.Duracao > 100
AND f.Duracao < 150
ORDER BY f.Duracao;

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT f.Ano, Count(*) as Quantidade
FROM dbo.Filmes as f
GROUP BY f.Ano
ORDER BY Quantidade desc;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT a.Id, a.PrimeiroNome, a.UltimoNome, a.Genero 
FROM dbo.Atores as a;

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT a.Id, a.PrimeiroNome, a.UltimoNome, a.Genero 
FROM dbo.Atores as a
WHERE a.Genero = 'F'
ORDER BY a.PrimeiroNome;

--10 - Buscar o nome do filme e o gênero
SELECT f.Nome, g.Genero
FROM dbo.Filmes as f
INNER JOIN dbo.FilmesGenero as fg on fg.IdFilme = f.Id
INNER JOIN dbo.Generos as g on g.Id = fg.IdGenero;

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome, g.Genero
FROM dbo.Filmes as f
INNER JOIN dbo.FilmesGenero as fg on fg.IdFilme = f.Id
INNER JOIN dbo.Generos as g on g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério';

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel 
FROM dbo.Filmes as f
INNER JOIN dbo.ElencoFilme as ef on ef.IdFilme = f.Id
INNER JOIN dbo.Atores as a on a.Id = ef.IdAtor;


