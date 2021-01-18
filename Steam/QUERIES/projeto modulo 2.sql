CREATE DATABASE steam;

USE steam;

select * from steam;

drop table jogos;

-- 1. Quais os jogos gratuitos que tem mais jogadores?
select name, price, owners from steam
where price = 0
order by owners desc
limit 20;

-- 2. Quais os jogos melhor avaliados?

-- 2.1. gratuitos.

select name, positive_ratings from steam
where price = 0
order by positive_ratings desc
limit 20;

--  2.2. pagos.

select name, positive_ratings from steam
where price <> 0
order by positive_ratings desc
limit 20;

--  2.3. geral.

select name, positive_ratings from steam
order by positive_ratings desc
limit 20;

-- 3. Qual o gênero mais bem avaliado?

select genres, count(genres) as totalDeJogos from steam
group by genres
order by totalDeJogos desc
limit 20;

-- -> fazer a porcentagem das avaliações positivas, com base no total de avaliações

select genres,
100 * count(*)/(select count(*) from steam) as porcentagem
from steam
group by genres
order by porcentagem desc
limit 20;

-- 4. Qual a plataforma mais utilizada?

select platforms, count(*) as quantidade from steam
group by platforms
order by quantidade desc;

-- 5. Quais os maiores concorrentes?
-- -> Checar quais são os maiores desenvolvedores

select developer, count(*) as quantidade from steam
group by developer
order by quantidade desc
limit 20;


-- 6. Quantos jogos são adquiridos por anos?
-- -> Avaliar a tendência de mercado a partir de uma análise temporal

-- 7. Qual a categoria mais jogada?

select categories, count(*) as quantidade from steam
group by categories
order by quantidade desc
limit 20;

-- 8. Quais o requisitos dos jogos mais jogados?
--    8.1. grátis

-- 9. Quais a classficação etária da maioria dos jogos?
select required_age, count(*) as quantidade from steam
group by required_age
order by quantidade desc
limit 20;

select * from steam;