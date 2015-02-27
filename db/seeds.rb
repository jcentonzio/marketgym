# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Service.create! [
	{name: 'FITNESS & GYM'},
	{name: 'WELLNESS & SPA'},
	{name: 'PISCINAS'},
	{name: 'ACTIVIDADES DIRIGIDAS'},
	{name: 'SERVICIOS'},
	{name: 'RESTAURACIÓN'},
]


Sitem.create! [
	{name: 'MUSCULACIÓN', service_id: 1},
	{name: 'PESO LIBRE', service_id: 1},
	{name: 'CARDIO', service_id: 1},
	{name: 'APARATO DE ABDOMINALES', service_id: 1},
	{name: 'BANCOS DE MUSCULACIÓN', service_id: 1},
	{name: 'BICICLETA ELÍPTICA', service_id: 1},
	{name: 'BICICLETA ESTATICA', service_id: 1},
	{name: 'BICICLETA RECLINABLE', service_id: 1},
	{name: 'TRATADORA', service_id: 1},
	{name: 'MULTIESTACIONES DE MUSCULACIÓN', service_id: 1},
	{name: 'MÁQUINAS DE MUSCULACIÓN', service_id: 1},
	{name: 'SPA E HIDROMASAJE', service_id: 2},
	{name: 'BAÑO DE VAPOR', service_id: 2},
	{name: 'CICLO DUCHAS', service_id: 2},
	{name: 'SALA RELAX', service_id: 2},
	{name: 'PISCINA INTEIOR', service_id: 3},
	{name: 'PISCINA EXTERIOR', service_id: 3},
	{name: 'YOGA', service_id: 4},
	{name: 'PILATES', service_id: 4},
	{name: 'AEROBIC', service_id: 4},
	{name: 'SPINNING', service_id: 4},
	{name: 'STEPS', service_id: 4},
	{name: 'BODY PUMP', service_id: 4},
	{name: 'ABDOMINALES', service_id: 4},
	{name: 'AQUA FIT', service_id: 4},
	{name: 'AQUAGYM', service_id: 4},
	{name: 'BODY COMBAT', service_id: 4},
	{name: 'CRODDFIT', service_id: 4},
	{name: 'TAI CHI', service_id: 4},
	{name: 'TONIFICACIÓN', service_id: 4},
	{name: 'DUCHAS', service_id: 5},
	{name: 'TAQUILLAS', service_id: 5},
	{name: 'VESTUARIO', service_id: 5},
	{name: 'TERRAZA', service_id: 5},
	{name: 'MAQUINAS DE VENDING', service_id: 6},	
]


