-- GROUP BY/HAVING
-- PROJETA NOME DOS TREINADORES QUE POSSUEM MAIS DO QUE 3 INSÍGNIAS
select t.nome, count(cidade) as qtInsignias
from insignia i inner join 
treinador t on i.cpf = t.cpf
group by t.nome
having count(cidade) > 3;

-- INNER JOIN
-- PROJETA NOME E CPF DE TODOS OS TREINADORES QUE SÃO MÉDICOS
select a.nome, a.cpf
from treinador a
inner join medico b
on (a.cpf = b.cpf);

-- OUTER JOIN
-- PROJETA O NOME DO TREINADOR E A ESPÉCIE E A PERSONALIDADE DE UM POKEWINX (CASO EXISTA)
select b.nome, a.especie, a.car_personalidade
from pokewinx a
right outer join treinador b
on (a.cpf = b.cpf);

-- PROJETA A ESPÉCIE E A PERSONALIDADE DE UM POKEWINX E O NOME DO TREINADOR (CASO EXISTA)
select a.especie, a.car_personalidade, b.nome
from pokewinx a
left outer join treinador b
on (a.cpf = b.cpf);

-- PROJETA A ESPÉCIE E A PERSONALIDADE DE UM POKEWINX E O NOME DO TREINADOR (CASO EXISTAM)
select a.especie, a.car_personalidade, b.nome
from pokewinx a
full outer join treinador b
on (a.cpf = b.cpf)
order by especie;

-- SEMI JUNÇÃO
-- PROJETA AS ESPÉCIES DE TODOS OS POKEWINX DO TIPO ÁGUA
select p.especie
from pokewinx p
where exists (select *
              from tipos d
              where d.idt = p.idt and d.tipo = 'agua');

-- PROJETA O NOME DOS TREINADORES QUE POSSUEM POKEWINX DA ESPÉCIE ‘SQUIRTLE’
select treinador.nome
from treinador
where exists (select *
              from pokewinx
              where treinador.cpf = pokewinx.cpf
              and pokewinx.especie = 'squirtle');

-- ANTI JUNÇÃO
-- PROJETA O NOME E O CPF DOS TREINADORES QUE NÃO FIZERAM NENHUMA BATALHA E NÃO SÃO LÍDERES
select t.nome, t.cpf 
from treinador t
where not exists (select * 
from batalha b 
where b.cpf_treinador = t.cpf)
and not exists (select * 
from lider l 
where l.cpf = t.cpf);

-- SUBCONSULTA ESCALAR
-- PROJETA AS ESPÉCIES DA TABELA POKEWINX ONDE A ALTURA É MAIOR DO QUE A MÉDIA DA ALTURA DAS ESPÉCIES
select especie
from pokewinx
where car_altura > (select avg(car_altura)
                    from pokewinx);

-- PROJETA OS NOMES DA TABELA TREINADOR ONDE A DATA DE NASCIMENTO É MAIOR DO QUE A DO TREINADOR CUJO CPF É ‘912345678’ (OU SEJA, PROJETA TODOS OS TREINADORES MAIS NOVOS DO QUE ELE)
select nome 
from treinador 
where dtNascimento > (select dtNascimento 
                      from treinador 
                      where cpf = '912345678');

-- SUBCONSULTA LINHA
-- PROJETA TODOS OS DADOS DOS POKEWINX QUE POSSUEM A MESMA ALTURA E PERSONALIDADE QUE O POKEWINX DE ID 42
select *
from pokewinx
where (car_altura, car_personalidade) = (select car_altura, car_personalidade
                                         from pokewinx
                                         where idt = 42);

-- SUBCONSULTA TABELA
-- PROJETA O NOME DE TODOS OS TREINADORES CUJA DATA DE NASCIMENTO É MAIOR DO QUE A DATA DE NASCIMENTO DE QUALQUER OUTRO TREINADOR, OU SEJA, TODOS OS TREINADORES MENOS O MAIS NOVO
select nome
from treinador
where dtNascimento > any (select dtNascimento
                            from treinador);

-- PROJETA A ESPÉCIE DE TODOS OS POKEWINX CUJA PERSONALIDADE É IGUAL A PERSONALIDADE DE QUALQUER POKEWINX QUE PERTENCE A UM TREINADOR
select especie
from pokewinx
where car_personalidade = any (select car_personalidade
                           from pokewinx
                           where cpf is not null);

-- OPERAÇÃO DE CONJUTO
-- MOSTRAR O NOME DE TODAS AS PESSOAS CADASTRADAS JUNTAMENTE COM TODAS AS ESPÉCIES CADASTRADAS
select nome
from treinador
union
(select especie
from pokewinx);

-- PROJETA O CPF DE TODOS OS TREINADORES QUE SÃO MÉDICOS
select cpf
from  treinador
intersect
(select cpf
from  medico);
