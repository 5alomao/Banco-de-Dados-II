
CREATE VIEW `v_pets` AS (
select codPet as Codigo, 
nomePet as Nome, 
tipoPet as Especie, 
racaPet as Raca, 
portePet as Porte, 
cliente.nomeCliente as Dono 
from pet inner JOIN 
cliente on codCliente = CLIENTE_codCliente);