-- ############################### INNER JOIN ###############################

-- projeta o nome e a data de nascimento de todos os médicos
select nome, dtNascimento 
from treinador p
inner join medico m
on p.cpf = m.cpf;

select a.cidade, a.cod, a.cor, a.cpf
from insignia a
inner join treinador b
ON (a.cpf = b.cpf);

select a.especie, a.car_personalidade, a.cpf
from pokewinx a
inner join treinador b
ON (a.cpf = b.cpf);

select a.nome, a.cpf
from treinador a
inner join medico b
ON (a.cpf = b.cpf);

-- ############################### OUTER JOIN ###############################

select a.especie, a.car_personalidade, a.cpf
from pokewinx a
right outer join treinador b
on (a.cpf = b.cpf);

select a.especie, a.car_personalidade, a.cpf
from pokewinx a
left outer join treinador b
on (a.cpf = b.cpf);

select a.especie, a.car_personalidade, a.cpf
from pokewinx a
full outer join treinador b
on (a.cpf = b.cpf)
order by especie;

-- (Junção Externa) Dizer a cidade e o codigo das insignias que NÂO estão associadas a treinadores.

select insignia.cidade, insignia.cod
from insignia left outer join treinador
on (insignia.cpf = treinador.cpf)
where treinador.cpf is null;

-- ############################### ANTI JUNCAO ###############################

-- projeta a espécie e o id de todos os pokemons que não são tratados por nenhum médico
select p.especie, p.idt
from pokewinx p
where not exists (select * from trata t where t.idt = p.idt);

-- nome e cpf dos treinadores que não fizeram nenhuma batalha e não são líderes
select t.nome, t.cpf from treinador t
where not exists (select * from batalha b where b.cpf_treinador = t.cpf)
and not exists (select * from lider l where l.cpf = t.cpf);

-- ############################### SUBCONSULTA ESCALAR ###############################

select nome
from treinador where 
dtNascimento > any (select dtNascimento from treinador);

select nome
from treinador
where dtNascimento < any (select dtNascimento from treinador);

select especie
from pokewinx
where car_altura > (select avg(car_altura) from pokewinx);

select cod
from batalha
where data_bat > any (select data_bat from batalha);

--pegando apenas o nome do treinador mais velho
select nome
from treinador
where dtNascimento not in (select dtNascimento
                           from treinador 
                           where dtNascimento > 
                           any (select dtNascimento 
                           from treinador));
                          

-- pegando o nome do treinador mais novo                           
select nome
from treinador
where dtNascimento not in (select dtNascimento
                           from treinador 
                           where dtNascimento < 
                           any (select dtNascimento 
                           from treinador));
                           

-- verificando qual é o menor cpf
select cpf
from medico
where cpf not in (select cpf
                  from medico
                  where cpf >
                  any (select cpf
                  from medico));

-- verificando qual é o maior cpf                  
select cpf
from medico
where cpf not in (select cpf
                  from medico
                  where cpf <
                  any (select cpf
                  from medico));

-- cidade que mais deu insignias em batalha (se tiverem 2 ou + com mesmo valor, retorna a menor lexicograficamente
select cidade from (select count(data_bat) as qt, cidade from batalha
                    where cidade is not null
                    group by cidade)
order by qt desc, cidade asc
fetch first 1 rows only;

-- ############################### SUBCONSULTA LINHA ###############################
                       
-- projeta a espécie dos pokemons com o mesmo peso e altura do pokemon de id 19
select especie
from pokewinx
where (car_peso, car_altura) = (select car_peso, car_altura from pokewinx where idt = 19);

-- projeta a espécie e o id dos pokemons maiores que o pokemon de id 19
select especie, idt
from pokewinx, (select car_altura as throh_altura, car_peso as throh_peso from pokewinx where idt = 19)
where throh_altura < car_altura and throh_peso < car_peso;
                       
-- (Subconsulta linha) Mostrar todos os dados dos pokewinx que possuem a mesma altura e personalidade que o pokewinx de id 42.

select *
from pokewinx
where (car_altura, car_personalidade) = (select car_altura, car_personalidade
                                         from pokewinx
                                         where idt = 42 );
                       
-- ############################### SUBCONSULTA TABELA ###############################
                       
-- mostrar o id e a espécie dos pokemons que não são da mesma especie do pokemon com id 10
select idt, especie
from pokewinx
where especie != (select especie from pokewinx where idt = 10);

--mostrando todos os treinadores, menos o mais velho
select *
from treinador
where dtNascimento > any (select dtNascimento
                          from treinador);

--mostrar o nome de todas as pessoas cadastradas na pokedex
select idt
from pokewinx
where especie = 'agua'
union
(select idt
from pokewinx
where especie = 'fogo');

-- ############################### OPERACAO DE CONJUNTO ###############################

--Mostrar o nome de todos as pessoas cadastradas juntamente com todas as especies cadastradas
select nome
from treinador
union
(select especie
from pokewinx);

--Mostrar o cpf de todos os treinadores que são médicos
select cpf
from treinador
intersect
(select cpf
from medico);

-- Nome e quantidade de vitórias em batalhas de ginásio de cada treinador, mesmo que não tenha batalhado
select nome_treinador, count(*) as vitorias 
from (select t.nome as nome_treinador from treinador t inner join batalha b on t.cpf = b.cpf_treinador)
group by nome_treinador
union
select t.nome, 0
from treinador t 
where not exists(select *
                 from batalha b
                 where b.cpf_treinador = t.cpf and b.cidade is not null
                );

-- Nome das pessoas que são medicas e lideres ao mesmo tempo
select nome 
from treinador t
where exists(select*
             from medico m
             where t.cpf = m.cpf 
            )
intersect 
select nome 
from treinador t
where exists(select*
             from lider l
             where t.cpf = l.cpf 
            );
                       
--############################### GROUP BY/HAVING ###############################

-- Cpf dos treinadores que tem 8 ou mais insígnias 
select cpf, count(*) as insignias
from insignia
where cpf is not null
group by cpf
having count(*) >= 8;

-- mostrando treinadores com mais do que 3 insignias
select t.nome, count(cidade) as qtInsignias
from insignia i inner join 
treinador t on i.cpf = t.cpf
group by t.nome
having count(cidade) > 3;

-- Nome dos treinadores com mais insignias que a média 
select t.nome
from treinador t
where t.cpf in (select cp
                   from (select i.cpf as cp, count(*) as qtd from insignia i group by i.cpf)
                   where qtd > (select avg(qtd_insig)
                                   from (select b.cpf, count(*) as qtd_insig
                                         from insignia b
                                         group by cpf
                                        )
                                  )
               ); 
                       
--############################### SEMI JOIN ###############################
   
-- Nome dos treinadores com pokemon 
select t.nome 
from treinador t
where exists(select *
             from pokewinx p
             where p.cpf = t.cpf
            );

-- Especie dos pokemons do tipo agua 
select p.especie
from pokewinx p
where exists(select *
             from tipos d
             where d.idt = p.idt and tipo = 'agua'
             );

-- Nome dos treinadores com pokemons do tipo terra 
select t.nome 
from treinador t
where exists(select *
             from pokewinx p
             where p.cpf = t.cpf and exists(select *
                                            from tipos d
                                            where d.idt = p.idt and tipo = 'terra'
                                           )
            );

-- Nome dos treinadores que já perderam batalhas
select t.nome 
from treinador t
where exists(select *
             from batalha b
             where b.cpf_treinador = t.cpf and b.cidade is null 
            );
                       
                       
-- (Semi-Junção) Dizer o nome dos treinadores que possuem o pokewinx chamado "squirtle"

select treinador.nome
from treinador
where exists (select *
              from pokewinx
              where treinador.cpf = pokewinx.cpf and pokewinx.especie = 'squirtle');

                       
