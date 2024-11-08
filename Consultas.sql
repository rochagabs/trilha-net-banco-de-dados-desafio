--NUMERO 1
SELECT Nome, Ano FROM Filmes;

--NUMERO 2
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;

--NUMERO 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome='De Volta para o Futuro';

--NUMERO 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano=1997;

--NUMERO 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano>2000;

--NUMERO 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao>100 AND Duracao<150 ORDER BY Duracao ASC;

--NUMERO 7
SELECT Ano, COUNT(Ano) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

--NUMERO 8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero ='M';

--NUMERO 9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero ='F' ORDER BY PrimeiroNome;

--NUMERO 10
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;


--NUMERO 11
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';


--NUMERO 12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;



