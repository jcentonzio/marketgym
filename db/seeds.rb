# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




Zone.create! [
	{name: 'Región Metropolitana'},
	{name: 'Ciudades'},
]

City.create! [
	{name: 'Cerrillos', :zone_id => 1},
	{name: 'Cerro Navia', :zone_id => 1},
	{name: 'El Bosque', :zone_id => 1},
	{name: 'Estación Central', :zone_id => 1},
	{name: 'Huechuraba', :zone_id => 1},
	{name: 'Independencia', :zone_id => 1},
	{name: 'La Cisterna', :zone_id => 1},
	{name: 'La Florida', :zone_id => 1},
	{name: 'La Granja', :zone_id => 1},
	{name: 'La Pintana', :zone_id => 1},
	{name: 'La Reina', :zone_id => 1},
	{name: 'Las Condes', :zone_id => 1},
	{name: 'Lo Barnechea', :zone_id => 1},
	{name: 'Lo Espejo', :zone_id => 1},
	{name: 'LO PRADO', :zone_id => 1},
	{name: 'Maipú', :zone_id => 1},
	{name: 'Ñuñoa', :zone_id => 1},
	{name: 'Padre Hurtado', :zone_id => 1},
	{name: 'Pedro Aguirre Cerda', :zone_id => 1},
	{name: 'Peñalolen', :zone_id => 1},
	{name: 'Pirque', :zone_id => 1},
	{name: 'Providencia', :zone_id => 1},
	{name: 'Pudahuel', :zone_id => 1},
	{name: 'Quilicura', :zone_id => 1},
	{name: 'Quinta Normal', :zone_id => 1},
	{name: 'Recoleta', :zone_id => 1},
	{name: 'Renca', :zone_id => 1},
	{name: 'San Bernardo', :zone_id => 1},
	{name: 'San Juaquín', :zone_id => 1},
	{name: 'San Miguel', :zone_id => 1},
	{name: 'San Ramon', :zone_id => 1},
	{name: 'Santiago centro', :zone_id => 1},
	{name: 'Vitacura', :zone_id => 1},
	{name: 'Iquique', :zone_id => 2},
	{name: 'Antofagasta', :zone_id => 2},
	{name: 'Calama', :zone_id => 2},
	{name: 'Copiapó', :zone_id => 2},
	{name: 'La Serena', :zone_id => 2},
	{name: 'Coquimbo', :zone_id => 2},
	{name: 'Valparaíso', :zone_id => 2},
	{name: 'Viña del Mar', :zone_id => 2},
	{name: 'Rancagua', :zone_id => 2},
	{name: 'Talca', :zone_id => 2},
	{name: 'Concepción', :zone_id => 2},
	{name: 'Temuco', :zone_id => 2},
	{name: 'Pucón', :zone_id => 2},
	{name: 'Villarrica', :zone_id => 2},
	{name: 'Valdivia', :zone_id => 2},
	{name: 'Osorno', :zone_id => 2},
	{name: 'Puerto Varas', :zone_id => 2},
	{name: 'Puerto Montt', :zone_id => 2},
	{name: 'Coyhaique', :zone_id => 2},
	{name: 'Punta Arenas', :zone_id => 2}, 
]
