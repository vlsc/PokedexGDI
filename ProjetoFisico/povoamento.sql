REM   Script: Pokewinx - Povoamento ++
REM   povoamento

create sequence contarId
start with 1  
increment by 1;

-- Contadores das Insígnias criadas 

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

--

-- Contadores das Insígnias entregues

create sequence contarPewterAtualiza
start with 1
increment by 1;

create sequence contarCeruleanAtualiza
start with 1
increment by 1;

create sequence contarVermilionAtualiza
start with 1
increment by 1;

create sequence contarCeladonAtualiza
start with 1
increment by 1;

create sequence contarFuchsiaAtualiza
start with 1
increment by 1;

create sequence contarIlhaAtualiza
start with 1
increment by 1;

create sequence contarViridianAtualiza
start with 1
increment by 1;

--

-- Inserindo Treinadores

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

--

-- Inserindo Ginásios 

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

--

-- Inserindo Lideres

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

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 6.9, 70, 'amigavel', 'bulbasaur');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 8.5, 60, 'valente', 'charmander');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 9.0, 50, 'atrevido', 'squirtle');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 2.9, 30, 'solitário', 'caterpie');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 1.8, 30, 'travesso', 'pidgey');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 3.5, 30, 'atrevido', 'rattata');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 6.0, 40, 'desobediente', 'pikachu');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 9.9, 60, 'solitário', 'vulpix');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 5.5, 50, 'dócil', 'jigglypuff');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 460.0, 210, 'relaxado', 'snorlax');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 398.0, 1450, 'inflexível', 'wailord');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 5.4, 50, 'travesso', 'oddish');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 235.0, 650, 'irritado', 'gyarados');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 4.2, 40, 'atrevido', 'meowth');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 19.6, 80, 'peculiar', 'psyduck');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 210.0, 880, 'estressado', 'onix');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 45.4, 90, 'atrevido', 'tentacool');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 30.0, 100, 'tímido', 'ponyta');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 55.5, 130, 'atlético', 'throh');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 18.0, 70, 'solitário', 'gothorita');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 0.2, 10, 'suave', 'sinistea');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 59.0, 180, 'preciptado', 'aerodactyl');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 100.5, 180, 'cuidadoso', 'meganium');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 9.5, 60, 'sapeca', 'totodile');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 75.0, 140, 'alegre', 'quagsire');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 1.5, 30, 'ingênuo', 'togepi');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 6.0, 30, 'sério', 'magnemite');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 0.1, 130, 'sapeca', 'gastly');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 40.5, 150, 'apressado', 'gengar');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 34.6, 110, 'cuidadoso', 'chansey');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 40.6, 140, 'atrevido', 'jynx');

insert into pokewinx (idt, car_peso, car_altura, car_personalidade, especie) 
values (contarId.nextval, 54.5, 130, 'sapeca', 'mr. mime');

insert into pokewinx 
values (contarId.nextval, 6, 40, 'desobediente', 'pikachu', '123456789');

insert into pokewinx 
values (contarId.nextval, 9, 50, 'atrevido', 'squirtle', '123456789');

insert into pokewinx 
values (contarId.nextval, 210, 880, 'estressado', 'onix', '234567891');

insert into pokewinx 
values (contarId.nextval, 9.9, 60, 'solitário', 'vulpix', '234567891');

insert into pokewinx 
values (contarId.nextval, 9, 50, 'atrevido', 'squirtle', '345678912');

insert into pokewinx 
values (contarId.nextval, 1.5, 30, 'ingênuo', 'togepy', '345678912');

insert into pokewinx 
values (contarId.nextval, 19.6, 80, 'peculiar', 'psyduck', '345678912');

insert into pokewinx 
values (contarId.nextval, 34.6, 110, 'cuidadoso', 'chansey', '456789123');

insert into pokewinx 
values (contarId.nextval, 40.6, 140, 'atrevido', 'jynx', '456789123');

insert into pokewinx 
values (contarId.nextval, 54.5, 130, 'sapeca', 'mr. mime', '456789123');

insert into pokewinx 
values (contarId.nextval, 30, 100, 'tímido', 'ponyta', '567891234');

insert into pokewinx 
values (contarId.nextval, 5.5, 50, 'dócil', 'jigglypuff', '567891234');

insert into pokewinx 
values (contarId.nextval, 5.4, 50, 'travesso', 'oddish', '567891234');

insert into pokewinx 
values (contarId.nextval, 6.9, 70, 'amigável', 'bulbasaur', '678912345');

insert into pokewinx 
values (contarId.nextval, 18, 70, 'solitário', 'gothorita', '678912345');

insert into pokewinx 
values (contarId.nextval, 9.5, 60, 'sapeca', 'totodile', '678912345');

insert into pokewinx 
values (contarId.nextval, 8.5, 60, 'valente', 'charmander', '789123456');

insert into pokewinx 
values (contarId.nextval, 40.5, 150, 'apressado', 'gengar', '789123456');

insert into pokewinx 
values (contarId.nextval, 59, 180, 'preciptado', 'aerodactyl', '789123456');

insert into pokewinx 
values (contarId.nextval, 4.2, 40, 'atrevido', 'meowth', '891234567');

insert into pokewinx 
values (contarId.nextval, 460, 210, 'relaxado', 'snorlax', '891234567');

insert into pokewinx 
values (contarId.nextval, 5.5, 50, 'dócil', 'jigglypuff', '912345678');

insert into pokewinx 
values (contarId.nextval, 0.1, 130, 'sapeca', 'gastly', '213456789');

insert into pokewinx 
values (contarId.nextval, 45.4, 90, 'atrevido', 'tentacool', '213456789');

insert into pokewinx 
values (contarId.nextval, 55.5, 130, 'atlético', 'throh', '231456789');

insert into pokewinx 
values (contarId.nextval, 75, 140, 'alegre', 'quagsire', '234156789');

insert into pokewinx 
values (contarId.nextval, 9.5, 60, 'sapeca', 'totodile', '234516789');

insert into pokewinx 
values (contarId.nextval, 55.5, 130, 'atlético', 'throh', '234561789');

insert into pokewinx 
values (contarId.nextval, 6, 40, 'desobediente', 'pikachu', '234567189');

insert into pokewinx 
values (contarId.nextval, 2.9, 30, 'solitário', 'caterpie', '234567189');

insert into pokewinx 
values (contarId.nextval, 9.5, 60, 'sapeca', 'totodile', '234567819');

insert into pokewinx 
values (contarId.nextval, 64.8, 110, 'travesso', 'gligar', '132456789');

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
values (25, 'terra');

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
values (58, 'terra');

insert into tipos 
values (59, 'agua');

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
values ('Vermilion', contarVermilion.nextval,'rubi');

insert into insignia (cidade,cod,cor)
values ('Vermilion', contarVermilion.nextval,'rubi');

insert into insignia (cidade,cod,cor)
values ('Vermilion', contarVermilion.nextval,'rubi');

insert into insignia (cidade,cod,cor)
values ('Vermilion', contarVermilion.nextval,'rubi');

insert into insignia (cidade,cod,cor)
values ('Vermilion', contarVermilion.nextval,'rubi');

insert into insignia (cidade,cod,cor)
values ('Vermilion', contarVermilion.nextval,'rubi');

insert into insignia (cidade,cod,cor)
values ('Vermilion', contarVermilion.nextval,'rubi');

insert into insignia (cidade,cod,cor)
values ('Vermilion', contarVermilion.nextval,'rubi');

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

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia (cidade,cod,cor)
values ('Celadon', contarCeladon.nextval,'esmeralda');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Fuchsia', contarFuchsia.nextval,'ametista');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia  (cidade,cod,cor)
values ('Ilha Cinnabar', contarIlha.nextval,'cinnabar');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

insert into insignia   (cidade,cod,cor)
values ('Viridian', contarViridian.nextval,'turmalina');

exec adiciona_insignia_sem_batalha('123456789', 'Pewter', contarPewterAtualiza.nextval);

exec adiciona_insignia_sem_batalha('123456789', 'Cerulean', contarCeruleanAtualiza.nextval);

exec adiciona_insignia_sem_batalha('123456789', 'Vermilion', contarVermilionAtualiza.nextval);

exec adiciona_insignia_sem_batalha('123456789', 'Celadon', contarCeladonAtualiza.nextval);

exec adiciona_insignia_sem_batalha('123456789', 'Fuchsia', contarFuchsiaAtualiza.nextval); 

exec adiciona_insignia_sem_batalha('123456789', 'Ilha Cinnabar', contarIlhaAtualiza.nextval); 

exec adiciona_insignia_sem_batalha('123456789', 'Viridian', contarViridianAtualiza.nextval);

exec adiciona_insignia_sem_batalha('234567891', 'Pewter', contarPewterAtualiza.nextval);

exec adiciona_insignia_sem_batalha('345678912','Cerulean',  contarCeruleanAtualiza.nextval);

exec adiciona_insignia_sem_batalha('456789123','Fuchsia', contarFuchsiaAtualiza.nextval);

exec adiciona_insignia_sem_batalha('456789123','Vermilion', contarVermilionAtualiza.nextval);

exec adiciona_insignia_sem_batalha('567891234','Celadon', contarCeladonAtualiza.nextval);

exec adiciona_insignia_sem_batalha('678912345','Cerulean',  contarCeruleanAtualiza.nextval);

exec adiciona_insignia_sem_batalha('678912345','Ilha Cinnabar', contarIlhaAtualiza.nextval);

exec adiciona_insignia_sem_batalha('678912345','Fuchsia', contarFuchsiaAtualiza.nextval);

exec adiciona_insignia_sem_batalha('678912345','Pewter', contarPewterAtualiza.nextval);

exec adiciona_insignia_sem_batalha('789123456','Fuchsia', contarFuchsiaAtualiza.nextval);

exec adiciona_insignia_sem_batalha('891234567','Viridian', contarViridianAtualiza.nextval);

exec adiciona_insignia_sem_batalha('234156789','Vermilion', contarVermilionAtualiza.nextval);

exec adiciona_insignia_sem_batalha('234516789','Vermilion', contarVermilionAtualiza.nextval);

exec adiciona_insignia_sem_batalha('234567189','Celadon', contarCeladonAtualiza.nextval);

exec adiciona_insignia_sem_batalha('132456789','Fuchsia', contarFuchsiaAtualiza.nextval);

exec adiciona_insignia_sem_batalha('132456789','Ilha Cinnabar', contarIlhaAtualiza.nextval);

exec adiciona_insignia_sem_batalha('132456789','Viridian', contarViridianAtualiza.nextval);

insert into batalha 
values ('234567891', '345678912', Date'2021-01-01', 'Pewter', contarPewterAtualiza.nextval);

insert into batalha 
values ('234567891', '234156789', Date'2021-01-02', 'Pewter', contarPewterAtualiza.nextval);

insert into batalha 
values ('234567891', '132456789', Date'2021-01-03', 'Pewter', contarPewterAtualiza.nextval);

insert into batalha 
values ('345678912', '213456789', Date'2021-01-04', 'Cerulean', contarCeruleanAtualiza.nextval);

insert into batalha 
values ('345678912', '234567189', Date'2021-01-05', 'Cerulean', contarCeruleanAtualiza.nextval);

insert into batalha 
values ('345678912', '231456789', Date'2021-01-06', 'Cerulean', contarCeruleanAtualiza.nextval);

insert into batalha (cpf_lider, cpf_treinador, data_bat) 
values ('567891234', '231456789', Date'2021-01-07');

insert into batalha (cpf_lider, cpf_treinador, data_bat) 
values ('567891234', '213456789', Date'2021-01-08');

insert into batalha 
values ('567891234', '345678912', Date'2021-01-09', 'Celadon', contarCeladonAtualiza.nextval);

insert into batalha 
values ('891234567', '345678912', Date'2021-01-10', 'Viridian', contarViridianAtualiza.nextval);

insert into batalha 
values ('789123456', '234516789', Date'2021-01-13', 'Fuchsia', contarFuchsiaAtualiza.nextval);

