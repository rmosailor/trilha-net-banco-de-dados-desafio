-- 1 - Buscar o nome e ano dos filmes
select f.Nome, f.Ano
  from FILMES f;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select f.Nome, f.Ano
  from FILMES f
 order by f.Ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select f.Nome, f.Ano, f.Duracao
  from FILMES f
 where f.Nome like 'De Volta%';

-- 4 - Buscar os filmes lançados em 1997
select f.Nome, f.Ano, f.Duracao
  from FILMES f
 where f.Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select f.Nome, f.Ano, f.Duracao
  from FILMES f
 where f.Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select f.Nome, f.Ano, f.Duracao
  from FILMES f
 where f.Duracao > 100 
   and f.Duracao < 150
 order by Duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select f.Ano, count(*) Quantidade
  from FILMES f
 group by f.Ano
 order by count(*) desc --, min(f.Duracao) desc; -- ???


-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select a.PrimeiroNome, UltimoNome
  from Atores a
 where a.Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select a.PrimeiroNome, a.UltimoNome
  from Atores a
 where a.Genero = 'F'
 order by a.PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
select f.Nome, g.Genero
  from FILMES f
 inner join FilmesGenero fg
    on fg.IdFilme = f.Id
 inner join Generos g
    on g.Id = fg.IdGenero 

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select f.Nome, g.Genero
  from FILMES f
 inner join FilmesGenero fg
    on fg.IdFilme = f.Id
 inner join Generos g
    on g.Id = fg.IdGenero 
 where g.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
  from ElencoFilme ef
 inner join Atores a
    on a.Id = ef.IdAtor
 inner join Filmes f
    on f.Id = ef.IdFilme

