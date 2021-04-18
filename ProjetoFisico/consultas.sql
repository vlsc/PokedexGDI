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

-- ############################### ANTI JUNCAO ###############################

-- projeta a espécie e o id de todos os pokemons que não são tratados por nenhum médico
select p.especie, p.idt
from pokewinx p
where not exists (select * from trata t where t.idt = p.idt);

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

-- ############################### SUBCONSULTA LINHA ###############################
                       
-- projeta a espécie dos pokemons com o mesmo peso e altura do pokemon de id 19
select especie
from pokewinx
where (car_peso, car_altura) = (select car_peso, car_altura from pokewinx where idt = 19);

-- projeta a espécie e o id dos pokemons maiores que o pokemon de id 19
select especie, idt
from pokewinx, (select car_altura as throh_altura, car_peso as throh_peso from pokewinx where idt = 19)
where throh_altura < car_altura and throh_peso < car_peso;
                  
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
