REM   Script: Pokewinx - Povoamento +
REM   povoamento

REM   Script: Pokewinx - Povoamento +


REM   povoamento


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

insert into treinador 
values ('123456789', 'Ash', Date'2000-01-01');

insert into treinador 
values ('234567891', 'Brock', Date'1997-03-21');

insert into treinador 
values ('345678912', 'Misty', Date'1999-09-04');

insert into treinador 
values ('456789123', 'Alice', Date'2000-01-18');

insert into treinador 
values ('567891234', 'Aninha', Date'2001-11-11');

insert into treinador 
values ('678912345', 'Day', Date'2000-03-03');

insert into treinador 
values ('789123456', 'Vic', Date'2001-01-24');

insert into treinador 
values ('891234567', 'Mikah', Date'1996-05-08');

insert into treinador 
values ('912345678', 'Robson', Date'1981-04-29');

insert into treinador 
values ('213456789', 'Vilians', Date'2001-04-25');

insert into treinador 
values ('231456789', 'Morone', Date'2001-02-10');

insert into treinador 
values ('234156789', 'Pucca', Date'2001-06-18');

insert into treinador 
values ('234516789', 'Elias', Date'2002-04-06');

insert into treinador 
values ('234561789', 'Laborao', Date'2001-02-22');

insert into treinador 
values ('234567189', 'Lulu', Date'2001-04-16');

insert into treinador 
values ('234567819', 'Allan', Date'1998-11-16');

insert into treinador  
values ('132456789', 'Matheus', Date'2001-06-25');

insert into ginasio 
values ('Pewter', 'Rocha');

insert into ginasio 
values ('Cerulean', 'Cascata');

insert into ginasio 
values ('Vermilion', 'Trovão');

insert into ginasio 
values ('Celadon', 'Arco-Iris');

insert into ginasio 
values ('Fuchsia', 'Alma');

insert into ginasio 
values ('Ilha Cinnabar', 'Vulcão');

insert into ginasio 
values ('Viridian', 'Terra');

insert into lider 
values ('234567891', 'Pewter');

insert into lider 
values ('345678912', 'Cerulean');

insert into lider 
values ('567891234', 'Celadon');

insert into lider 
values ('891234567', 'Viridian');

insert into lider 
values ('789123456', 'Fuchsia');

insert into medico (cpf, especializacao) 
values ('456789123', 'Aquatico');

insert into medico (cpf, especializacao) 
values ('678912345', 'Eletrico');

insert into medico 
values ('213456789', 'Psiquico', '456789123');

insert into medico 
values ('234156789', 'Fada', '678912345');

insert into medico 
values ('231456789', 'Fogo', '456789123');

select t.nome, especializacao, l.nome as nome_chefe from treinador t, medico m, treinador l 
where t.cpf = m.cpf and l.cpf = m.cpf_chefe 
union all 
select t.nome, especializacao, '-' as nome_chefe from treinador t, medico m 
where t.cpf = m.cpf and m.cpf_chefe is null;

create sequence contar1 
start with 1  
increment by 1;

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 6.9, 70, 'amigavel', 'bulbasaur');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 8.5, 60, 'valente', 'charmander');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 9.0, 50, 'atrevido', 'squirtle');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 2.9, 30, 'solitário', 'caterpie');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 1.8, 30, 'travesso', 'pidgey');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 3.5, 30, 'atrevido', 'rattata');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 6.0, 40, 'desobediente', 'pikachu');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 9.9, 60, 'solitário', 'vulpix');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 5.5, 50, 'dócil', 'jigglypuff');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 460.0, 210, 'relaxado', 'snorlax');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 398.0, 1450, 'inflexível', 'wailord');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 5.4, 50, 'travesso', 'oddish');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 235.0, 650, 'irritado', 'gyarados');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 4.2, 40, 'atrevido', 'meowth');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 19.6, 80, 'peculiar', 'psyduck');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 210.0, 880, 'estressado', 'onix');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 45.4, 90, 'atrevido', 'tentacool');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 30.0, 100, 'tímido', 'ponyta');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 55.5, 130, 'atlético', 'throh');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 18.0, 70, 'solitário', 'gothorita');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 0.2, 10, 'suave', 'sinistea');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 59.0, 180, 'preciptado', 'aerodactyl');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 100.5, 180, 'cuidadoso', 'meganium');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 9.5, 60, 'sapeca', 'totodile');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 75.0, 140, 'alegre', 'quagsire');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 1.5, 30, 'ingênuo', 'togepi');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 6.0, 30, 'sério', 'magnemite');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 0.1, 130, 'sapeca', 'gastly');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 40.5, 150, 'apressado', 'gengar');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 34.6, 110, 'cuidadoso', 'chansey');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 40.6, 140, 'atrevido', 'jynx');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contar1.nextval, 54.5, 130, 'sapeca', 'mr. mime');

insert into pokewinx 
values (contar1.nextval, 6, 40, 'desobediente', 'pikachu', '123456789');

insert into pokewinx 
values (contar1.nextval, 9, 50, 'atrevido', 'squirtle', '123456789');

insert into pokewinx 
values (contar1.nextval, 210, 880, 'estressado', 'onix', '234567891');

insert into pokewinx 
values (contar1.nextval, 9.9, 60, 'solitário', 'vulpix', '234567891');

insert into pokewinx 
values (contar1.nextval, 9, 50, 'atrevido', 'squirtle', '345678912');

insert into pokewinx 
values (contar1.nextval, 1.5, 30, 'ingênuo', 'togepy', '345678912');

insert into pokewinx 
values (contar1.nextval, 19.6, 80, 'peculiar', 'psyduck', '345678912');

insert into pokewinx 
values (contar1.nextval, 34.6, 110, 'cuidadoso', 'chansey', '456789123');

insert into pokewinx 
values (contar1.nextval, 40.6, 140, 'atrevido', 'jynx', '456789123');

insert into pokewinx 
values (contar1.nextval, 54.5, 130, 'sapeca', 'mr. mime', '456789123');

insert into pokewinx 
values (contar1.nextval, 30, 100, 'tímido', 'ponyta', '567891234');

insert into pokewinx 
values (contar1.nextval, 5.5, 50, 'dócil', 'jigglypuff', '567891234');

insert into pokewinx 
values (contar1.nextval, 5.4, 50, 'travesso', 'oddish', '567891234');

insert into pokewinx 
values (contar1.nextval, 6.9, 70, 'amigável', 'bulbasaur', '678912345');

insert into pokewinx 
values (contar1.nextval, 18, 70, 'solitário', 'gothorita', '678912345');

insert into pokewinx 
values (contar1.nextval, 9.5, 60, 'sapeca', 'totodile', '678912345');

insert into pokewinx 
values (contar1.nextval, 8.5, 60, 'valente', 'charmander', '789123456');

insert into pokewinx 
values (contar1.nextval, 40.5, 150, 'apressado', 'gengar', '789123456');

insert into pokewinx 
values (contar1.nextval, 59, 180, 'preciptado', 'aerodactyl', '789123456');

insert into pokewinx 
values (contar1.nextval, 4.2, 40, 'atrevido', 'meowth', '891234567');

insert into pokewinx 
values (contar1.nextval, 460, 210, 'relaxado', 'snorlax', '891234567');

insert into pokewinx 
values (contar1.nextval, 5.5, 50, 'dócil', 'jigglypuff', '912345678');

insert into pokewinx 
values (contar1.nextval, 0.1, 130, 'sapeca', 'gastly', '213456789');

insert into pokewinx 
values (contar1.nextval, 45.4, 90, 'atrevido', 'tentacool', '213456789');

insert into pokewinx 
values (contar1.nextval, 55.5, 130, 'atlético', 'throh', '231456789');

insert into pokewinx 
values (contar1.nextval, 75, 140, 'alegre', 'quagsire', '234156789');

insert into pokewinx 
values (contar1.nextval, 9.5, 60, 'sapeca', 'totodile', '234516789');

insert into pokewinx 
values (contar1.nextval, 55.5, 130, 'atlético', 'throh', '234561789');

insert into pokewinx 
values (contar1.nextval, 6, 40, 'desobediente', 'pikachu', '234567189');

insert into pokewinx 
values (contar1.nextval, 2.9, 30, 'solitário', 'caterpie', '234567189');

insert into pokewinx 
values (contar1.nextval, 9.5, 60, 'sapeca', 'totodile', '234567819');

insert into pokewinx 
values (contar1.nextval, 64.8, 110, 'travesso', 'gligar', '132456789');

insert into tipos 
values (1,'planta');

insert into tipos 
values (1,'venenoso');

insert into tipos 
values (2,'fogo');

insert into tipos 
values (3,'agua');

insert into tipos 
values (4,'inseto');

insert into tipos 
values (5,'voador');

insert into tipos 
values (5,'normal');

insert into tipos 
values (6,'normal');

insert into tipos 
values (7,'eletrico');

insert into tipos 
values (8,'fogo');

insert into tipos 
values (9,'normal');

insert into tipos 
values (9,'fada');

insert into tipos 
values (10,'normal');

insert into tipos 
values (11,'agua');

insert into tipos 
values (12, 'planta');

insert into tipos 
values (12, 'venenoso');

insert into tipos 
values (13, 'agua');

insert into tipos 
values (13, 'voador');

insert into tipos 
values (14, 'normal');

insert into tipos 
values (15, 'agua');

insert into tipos 
values (16, 'pedra');

insert into tipos 
values (16, 'terra');

insert into tipos 
values (17, 'agua');

insert into tipos 
values (17, 'venenoso');

insert into tipos 
values (18, 'fogo');

insert into tipos 
values (19, 'lutador');

insert into tipos 
values (20, 'psiquico');

insert into tipos 
values (21, 'fantasma');

insert into tipos 
values (22, 'pedra');

insert into tipos 
values (22, 'voador');

insert into tipos 
values (23, 'planta');

insert into tipos 
values (24, 'agua');

insert into tipos 
values (25, 'agua');

insert into tipos 
values (26, 'normal');

insert into tipos 
values (27, 'eletrico');

insert into tipos 
values (28, 'fantasma');

insert into tipos 
values (29, 'fantasma');

insert into tipos 
values (30, 'normal');

insert into tipos 
values (31, 'psiquico');

insert into tipos 
values (31, 'gelo');

insert into tipos 
values (32, 'psiquico');

insert into tipos 
values (33, 'eletrico');

insert into tipos 
values (34, 'agua');

insert into tipos 
values (35, 'pedra');

insert into tipos 
values (35, 'terra');

insert into tipos 
values (36, 'fogo');

insert into tipos 
values (37, 'agua');

insert into tipos 
values (38, 'normal');

insert into tipos 
values (39, 'agua');

insert into tipos 
values (40, 'normal');

insert into tipos 
values (41, 'gelo');

insert into tipos 
values (41, 'psiquico');

insert into tipos 
values (42, 'fada');

insert into tipos 
values (42, 'psiquico');

insert into tipos 
values (43, 'fogo');

insert into tipos 
values (44, 'normal');

insert into tipos 
values (44, 'fada');

insert into tipos 
values (45, 'planta');

insert into tipos 
values (45, 'venenoso');

insert into tipos 
values (46, 'planta');

insert into tipos 
values (46, 'venenoso');

insert into tipos 
values (47, 'psiquico');

insert into tipos 
values (48, 'agua');

insert into tipos 
values (49, 'fogo');

insert into tipos 
values (50, 'fantasma');

insert into tipos 
values (50, 'venenoso');

insert into tipos 
values (51, 'voador');

insert into tipos 
values (51, 'pedra');

insert into tipos 
values (52, 'normal');

insert into tipos 
values (53, 'normal');

insert into tipos 
values (54, 'normal');

insert into tipos 
values (54, 'fada');

insert into tipos 
values (55, 'fantasma');

insert into tipos 
values (55, 'venenoso');

insert into tipos 
values (56, 'agua');

insert into tipos 
values (56, 'venenoso');

insert into tipos 
values (57, 'lutador');

insert into tipos 
values (58, 'agua');

insert into tipos 
values (59, 'agua');

insert into tipos 
values (58, 'terra');

insert into tipos 
values (25, 'terra');

insert into tipos 
values (60, 'lutador');

insert into tipos 
values (61, 'eletrico');

insert into tipos 
values (62, 'inseto');

insert into tipos 
values (63, 'agua');

insert into tipos 
values (64, 'terra');

insert into tipos 
values (64, 'voador');

insert into trata 
values ('456789123', 28);

insert into trata 
values ('456789123', 11);

insert into trata 
values ('456789123', 55);

insert into trata 
values ('456789123', 32);

insert into trata 
values ('678912345', 4);

insert into trata 
values ('678912345', 18);

insert into trata 
values ('678912345', 20);

insert into trata 
values ('678912345', 46);

insert into trata 
values ('213456789', 11);

insert into trata 
values ('213456789', 12);

insert into trata 
values ('213456789', 51);

insert into trata 
values ('234156789', 33);

insert into trata 
values ('234156789', 23);

insert into trata 
values ('234156789', 13);

insert into trata 
values ('234156789', 10);

insert into trata 
values ('231456789', 1);

insert into trata 
values ('231456789', 2);

insert into trata 
values ('231456789', 64);

insert into trata 
values ('231456789', 58);

insert into trata 
values ('231456789', 14);

insert into trata 
values ('231456789', 44);

insert into trata 
values ('231456789', 45);

create sequence contarPewter 
start with 1 
increment by 1;

create sequence contarCerulean 
start with 1 
increment by 1;

create sequence contarVermilion 
start with 1 
increment by 1;

create sequence contarCeladon 
start with 1 
increment by 1;

create sequence contarFuchsia 
start with 1 
increment by 1;

create sequence contarIlha 
start with 1 
increment by 1;

create sequence contarViridian 
start with 1 
increment by 1;

insert into insignia 
values ('Pewter', contarPewter.nextval,'bronze', '123456789');

insert into insignia 
values ('Cerulean', contarCerulean.nextval,'safira', '123456789');

insert into insignia 
values ('Vermilion', contarVermilion.nextval,'rubi', '123456789');

insert into insignia 
values ('Celadon', contarCeladon.nextval,'esmeralda', '123456789');

insert into insignia 
values ('Fuchsia', contarFuchsia.nextval,'ametista', '123456789');

insert into insignia 
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar', '123456789');

insert into insignia 
values ('Viridian', contarViridian.nextval,'turmalina', '123456789');

insert into insignia 
values ('Pewter', contarPewter.nextval,'bronze','234567891');

insert into insignia 
values ('Cerulean', contarCerulean.nextval,'safira','345678912');

insert into insignia 
values ('Fuchsia', contarFuchsia.nextval,'ametista','456789123');

insert into insignia 
values ('Vermilion', contarVermilion.nextval,'rubi','456789123');

insert into insignia 
values ('Celadon', contarCeladon.nextval,'esmeralda','567891234');

insert into insignia 
values ('Cerulean', contarCerulean.nextval,'safira','678912345');

insert into insignia 
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar','678912345');

insert into insignia 
values ('Fuchsia', contarFuchsia.nextval,'ametista','678912345');

insert into insignia 
values ('Pewter', contarPewter.nextval,'bronze','678912345');

insert into insignia 
values ('Fuchsia', contarFuchsia.nextval,'ametista','789123456');

insert into insignia 
values ('Viridian', contarViridian.nextval,'turmalina','891234567');

insert into insignia 
values ('Vermilion', contarVermilion.nextval,'rubi','234156789');

insert into insignia 
values ('Vermilion', contarVermilion.nextval,'rubi', '234516789');

insert into insignia 
values ('Celadon', contarCeladon.nextval,'esmeralda','234567189');

insert into insignia 
values ('Fuchsia', contarFuchsia.nextval,'ametista','132456789');

insert into insignia 
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar','132456789');

insert into insignia 
values ('Viridian', contarViridian.nextval,'turmalina','132456789');

insert into insignia (cidade,cod,cor) 
values ('Pewter', contarPewter.nextval,'bronze');

insert into insignia (cidade,cod,cor) 
values ('Pewter', contarPewter.nextval,'bronze');

insert into insignia (cidade,cod,cor) 
values ('Pewter', contarPewter.nextval,'bronze');

insert into insignia (cidade,cod,cor) 
values ('Pewter', contarPewter.nextval,'bronze');

insert into insignia (cidade,cod,cor) 
values ('Pewter', contarPewter.nextval,'bronze');

insert into insignia (cidade,cod,cor) 
values ('Pewter', contarPewter.nextval,'bronze');

insert into insignia (cidade,cod,cor) 
values ('Pewter', contarPewter.nextval,'bronze');

insert into insignia (cidade,cod,cor) 
values ('Pewter', contarPewter.nextval,'bronze');

insert into insignia (cidade,cod,cor) 
values ('Cerulean', contarCerulean.nextval,'safira');

insert into insignia (cidade,cod,cor) 
values ('Cerulean', contarCerulean.nextval,'safira');

insert into insignia (cidade,cod,cor) 
values ('Cerulean', contarCerulean.nextval,'safira');

insert into insignia (cidade,cod,cor) 
values ('Cerulean', contarCerulean.nextval,'safira');

insert into insignia (cidade,cod,cor) 
values ('Cerulean', contarCerulean.nextval,'safira');

insert into insignia (cidade,cod,cor) 
values ('Cerulean', contarCerulean.nextval,'safira');

insert into insignia (cidade,cod,cor) 
values ('Cerulean', contarCerulean.nextval,'safira');

insert into insignia (cidade,cod,cor) 
values ('Cerulean', contarCerulean.nextval,'safira');

insert into insignia (cidade,cod,cor) 
values ('Vermilion', contarVermilion.nextval,'rubi');

insert into insignia (cidade,cod,cor) 
values ('Vermilion', contarVermilion.nextval,'rubi');

insert into insignia (cidade,cod,cor) 
values ('Vermilion', contarVermilion.nextval,'rubi');

insert into insignia (cidade,cod,cor) 
values ('Vermilion', contarVermilion.nextval,'rubi');

insert into insignia (cidade,cod,cor) 
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor) 
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia  (cidade,cod,cor) 
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor) 
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor) 
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor) 
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia   (cidade,cod,cor) 
values ('Viridian', contarViridian.nextval,'turmalina');

insert into batalha 
values ('234567891', '345678912', Date'2021-01-01', 'Pewter', 4);

update insignia 
set cpf = '345678912' 
where cidade = 'Pewter' and cod = 4;

insert into batalha 
values ('234567891', '234156789', Date'2021-01-02', 'Pewter', 5);

update insignia 
set cpf = '234156789' 
where cidade = 'Pewter' and cod = 5;

insert into batalha 
values ('234567891', '132456789', Date'2021-01-03', 'Pewter', 6);

update insignia 
set cpf = '132456789' 
where cidade = 'Pewter' and cod = 6;

insert into batalha 
values ('345678912', '213456789', Date'2021-01-04', 'Cerulean', 4);

update insignia 
set cpf = '213456789' 
where cidade = 'Cerulean' and cod = 4;

insert into batalha 
values ('345678912', '234567189', Date'2021-01-05', 'Cerulean', 5);

update insignia 
set cpf = '234567189' 
where cidade = 'Cerulean' and cod = 5;

insert into batalha 
values ('345678912', '231456789', Date'2021-01-06', 'Cerulean', 6);

update insignia 
set cpf = '231456789' 
where cidade = 'Cerulean' and cod = 6;

insert into batalha 
values ('567891234', '345678912', Date'2021-01-09', 'Celadon', 4);

update insignia 
set cpf = '345678912' 
where cidade = 'Celadon' and cod = 4;

insert into batalha 
values ('891234567', '345678912', Date'2021-01-10', 'Viridian', 4);

update insignia 
set cpf = '345678912' 
where cidade = 'Viridian' and cod = 4;

insert into batalha 
values ('789123456', '234516789', Date'2021-01-13', 'Fuchsia', 6);

update insignia 
set cpf = '234516789' 
where cidade = 'Fuchsia' and cod = 6;

insert into batalha (cpf_lider, cpf_treinador, data_bat) 
values ('567891234', '231456789', Date'2021-01-07');

insert into batalha (cpf_lider, cpf_treinador, data_bat) 
values ('567891234', '213456789', Date'2021-01-08');

insert into batalha (cpf_lider, cpf_treinador, data_bat) 
values ('891234567', '234516789', Date'2021-01-12');

