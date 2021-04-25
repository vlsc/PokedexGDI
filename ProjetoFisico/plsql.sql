-- O GATILHO É ATIVADO APÓS A INSERÇÃO EM BATALHA E ATUALIZA A INSÍGNIA QUE FOI REFERENCIADA EM BATALHA, PARA QUE ESSA PERTENÇA AO TREINADOR REFERENCIADO NA MESMA BATALHA  
create or replace trigger trigger_ganha_batalha
after insert on batalha
referencing new as n
for each row
when (n.cidade is not null and n.cod is not null)
begin
    update insignia
    set cpf = :n.cpf_treinador
    where cidade = :n.cidade and cod = :n.cod;
end;
/
-- O GATILHO É ATIVADO APÓS ATRIBUIR UM TREINADOR PARA UM POKEWINX
create or replace trigger trigger_treina_pokewinx 
after update of cpf on pokewinx 
referencing new as n 
for each row 
when (n.cpf is not null) 
begin 
    dbms_output.put_line('Atribuindo pokewinx ao treinador: '||:n.cpf);  
end; 
/
-- O GATILHO É ATIVADO APÓS A ATUALIZAÇÃO DE CPF EM UMA INSÍGNIA. IMPRIME UMA STRING INFORMANDO O NOVO CPF E O ANTIGO (SE HOUVER).
create or replace trigger trigger_change_insignia
after update of cpf on insignia
referencing old as o new as n
for each row
begin
    if (:o.cpf is null) then 
        dbms_output.put_line('Atribuindo insignia ao treinador: '||:n.cpf); 
    else
        dbms_output.put_line('Atribuindo insignia ao treinador: '||:n.cpf
   ||'Antigo treinador: '||:o.cpf); 
    end if; 
end;
/
-- IMPRIME O(S) TIPO(S) DE UM POKEMON A PARTIR DO SEU ID.
create or replace procedure pokemon_tipo (idPoke number) is
    cursor cur_poke is
        select tipo
        from tipos
        where idt = idPoke;
begin
    for tipoPoke in cur_poke loop
        dbms_output.put_line('tipo: '||tipoPoke.tipo);
    end loop;
end;
/
-- ATUALIZA INSIGNIA A PARTIR DOS VALORES DE CPF, CIDADE E CÓDIGO FORNECIDOS COMO PAR METROS NA PROCEDURE (FEITO PRA FORNECER UM CONTADOR COMO PAR METRO EM CÓDIGO)
create or replace procedure adiciona_insignia_sem_batalha(cp varchar, cid varchar, cd number) is
begin
  update insignia
  set cpf = cp
  where cidade = cid and cod = cd;
end;
/
-- FUNÇÃO RETORNA UMA STRING PARA INFORMAR SE AQUELA ESPÉCIE DE POKEWINX JÁ EXISTE NO BANCO DE DADOS.
create or replace function findPokewinx (especiePokeWinx varchar) return varchar is
cursor cursor_Pokewinx is
select *
from pokewinx;
begin
for reg_Pokewinx in cursor_Pokewinx loop
if (reg_Pokewinx.especie = especiePokeWinx) then return 'TRUE';
end if;
end loop;
return 'FALSE';
        
        exception
            when NO_DATA_FOUND then
                dbms_output.put_line('Dados indisponiveis da tabela');
                 return null;
end;
/
-- A FUNÇÃO RETORNA UMA TABELA COM TODOS OS MÉDICOS QUE JÁ TRATARAM O POKEWINX DADO. 
create or replace type tabelaObjeto as object (
  n varchar(30)
);
/
create or replace type tabela as table of tabelaObjeto;
/
create or replace function findTrata (idPokewinx number) return tabela is
medicos tabela;
cursor cursor_Trata is
    select *
    from trata;
cursor cursor_Treinador is
    select *
    from treinador;
begin
    medicos := tabela();
    for reg_Trata in cursor_Trata loop
        if (reg_Trata.idt = idPokewinx) then
            for reg_Treinador in cursor_Treinador loop
                if (reg_Treinador.cpf = reg_Trata.cpf) then 
                    medicos.extend; 
                    medicos(medicos.count) := tabelaObjeto(reg_Treinador.nome);
                end if;
            end loop;
        end if;
    end loop;
    return medicos;
   	 
	exception
    	when NO_DATA_FOUND then
        	dbms_output.put_line('Dados indisponiveis da tabela');
     		return null;
end;
/