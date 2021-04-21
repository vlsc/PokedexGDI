-- ALICEEEEEEEEEEE

create or replace procedure pokemon_tipo (idPoke number) is 
    cursor cur_poke is 
        select tipo 
        from tipos 
        where idt = idPoke; 
    tipoPoke tipos.tipo%TYPE; 
begin 
    open cur_poke; 
    loop 
        fetch cur_poke into tipoPoke; 
        exit when cur_poke%notfound; 
        dbms_output.put_line('tipo: '||tipoPoke); 
    end loop; 
    close cur_poke; 
end;

create or replace procedure pokemon_esp_tipo (esp varchar) is  
    cursor cur_poke is  
        select tipo  
        from tipos t inner join pokewinx p on t.idt = p.idt 
        where especie = esp;  
    tipoPoke tipos.tipo%TYPE;  
begin  
    open cur_poke;  
    loop  
        fetch cur_poke into tipoPoke;  
        exit when cur_poke%notfound;  
        dbms_output.put_line('tipo: '||tipoPoke);  
    end loop;  
    close cur_poke;  
end;

create or replace trigger trigger_change_insignia 
after update of cpf on insignia 
referencing old as o new as n 
for each row 
begin 
    if (:o.cpf is null) then 
        dbms_output.put_line('Atribuindo insignia ao treinador: '||:n.cpf); 
    end if; 
    if (:o.cpf is not null) then 
        dbms_output.put_line('Atribuindo insignia ao treinador: '||:n.cpf||' Antigo treinador: '||:o.cpf); 
    end if; 
end;

create or replace procedure nome_procedimento is 
    pesoAux number(6,2):= 5.0; 
    cursor cur_peso is 
        select idt, especie 
        from pokewinx 
        where car_peso > pesoAux; 
    idPoke pokewinx.idt%TYPE; 
    esp pokewinx.especie%TYPE; 
begin 
    open cur_peso; 
    loop 
        fetch cur_peso into idPoke, esp; 
        exit when cur_peso%NOTFOUND; 
        DBMS_OUTPUT.PUT_LINE(idPoke || ' ' || esp); 
    end loop; 
    close cur_peso; 
end;

--Allan

--Function

CREATE OR REPLACE FUNCTION findPokewinx (especiePokeWinx VARCHAR)  RETURN VARCHAR IS

    CURSOR cursor_Pokewinx IS
    SELECT *
    FROM pokewinx;
    
    BEGIN
        
        FOR reg_Pokewinx IN cursor_Pokewinx LOOP
        
            IF(reg_Pokewinx.especie = especiePokeWinx) THEN
                return 'TRUE';
            END IF;
            
        END LOOP;
        
        return 'FALSE';
        
        EXCEPTION 
            WHEN NO_DATA_FOUND THEN 
                dbms_output.put_line('Dados indisponiveis da tabela');
                RETURN NULL;
        
    END;
