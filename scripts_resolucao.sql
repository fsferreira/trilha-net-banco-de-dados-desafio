-- 1
SELECT f.nome,
       f.ano
FROM   filmes f (nolock)

-- 2
SELECT f.nome,
       f.ano
FROM   filmes f (nolock)
ORDER  BY f.ano

-- 3
SELECT f.nome,
       f.ano,
       f.duracao
FROM   filmes f (nolock)
WHERE  f.nome = 'de volta para o futuro'

-- 4
SELECT f.nome,
       f.ano,
       f.duracao
FROM   filmes f (nolock)
WHERE  f.ano = 1997

--5
SELECT f.nome,
       f.ano,
       f.duracao
FROM   filmes f (nolock)
WHERE  f.ano > 2000

--6
SELECT f.nome,
       f.ano,
       f.duracao
FROM   filmes f (nolock)
WHERE  f.duracao > 100
       AND f.duracao < 150
ORDER  BY f.duracao

--7
SELECT f.ano,
       Count(f.ano) AS quantidade
FROM   filmes f (nolock)
GROUP  BY f.ano
ORDER  BY f.duracao DESC

--8
SELECT a.id,
       a.primeironome,
       a.ultimonome,
       a.genero
FROM   atores a (nolock)
WHERE  a.genero = 'm'

--9
SELECT a.id,
       a.primeironome,
       a.ultimonome,
       a.genero
FROM   atores a (nolock)
WHERE  a.genero = 'f'
order by a.primeironome

--10
SELECT f.nome, g.genero
FROM   filmesgenero fg (nolock)
       JOIN filmes f (nolock)
         ON fg.idfilme = f.id
       JOIN generos g (nolock)
         ON g.id = fg.idgenero 

--11
SELECT f.nome,
       g.genero
FROM   filmesgenero fg (nolock)
       JOIN filmes f (nolock)
         ON fg.idfilme = f.id
       JOIN generos g (nolock)
         ON g.id = fg.idgenero
WHERE  g.genero = 'mistério'

--12
SELECT f.nome,
       a.primeironome,
       a.ultimonome,
       ef.papel
FROM   filmesgenero fg (nolock)
       JOIN filmes f (nolock)
         ON fg.idfilme = f.id
       JOIN elencofilme ef (nolock)
         ON ef.idfilme = f.id
       JOIN atores a (nolock)
         ON a.id = ef.idator
