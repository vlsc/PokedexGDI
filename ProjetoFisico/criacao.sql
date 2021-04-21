REM   Script: Pokewinx - Criacao 

create table treinador ( 
    cpf varchar(10) primary key, 
    nome varchar(80), 
    dtNascimento date 
);

create table medico ( 
    cpf varchar(10) primary key, 
    especializacao varchar(50), 
    cpf_chefe varchar(10), 
    constraint fk_med_tre foreign key (cpf) references treinador on delete cascade, 
    constraint fk_med_med foreign key (cpf) references medico 
);

create table pokewinx (  
    idt number(6) primary key,  
    car_peso number(6,2),  
    car_altura number(4),  
    car_personalidade varchar(20),  
    especie varchar(20),  
    cpf varchar(10),  
    constraint fk_pok_tre foreign key (cpf) references treinador  
);

create table ginasio ( 
    cidade varchar(60) primary key, 
    nome varchar(30) 
);

create table lider ( 
    cpf varchar(10) primary key, 
    cidade varchar(60) constraint nn_uni_lider not null unique, 
    constraint fk_lid_tre foreign key (cpf) references treinador on delete cascade, 
    constraint fk_lid_gin foreign key (cidade) references ginasio on delete cascade 
);

create table trata (   
    cpf varchar(10),   
    idt number(6),   
    constraint pk_trata primary key (cpf, idt),   
    constraint fk_trata_med foreign key (cpf) references medico on delete cascade,   
    constraint fk_trata_poke foreign key (idt) references pokewinx on delete cascade   
);

create table tipos (  
    idt number(6),  
    tipo varchar(20),  
    constraint pk_tipos primary key (idt, tipo),  
    constraint fk_tipo_poke foreign key (idt) references pokewinx on delete cascade   
);

create table insignia (  
    cidade varchar(60),  
    cod number(4),  
    cor varchar(10),  
    cpf varchar(10),  
    constraint pk_insignia primary key (cidade, cod),  
    constraint fk_ins_gin foreign key (cidade) references ginasio on delete cascade,  
    constraint fk_ins_tre foreign key (cpf) references treinador on delete cascade 
);

create table batalha (  
    cpf_lider varchar(10),  
    cpf_treinador varchar(10),  
    data_bat date,  
    cidade varchar(60),  
    cod number(4),  
    constraint pk_batalha primary key (cpf_lider, cpf_treinador, data_bat),  
    constraint fk_bat_lid foreign key (cpf_lider) references lider,  
    constraint fk_bat_tre foreign key (cpf_treinador) references treinador,  
    constraint fk_cid_cod foreign key (cidade, cod) references insignia  
);
