# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gruVendedor = Grupo.create(:nome => "Vendedor", :descricao => "Pessoas que comercializam produtos alimentícios ou de bens de consumo na praia.")
gruCliente = Grupo.create(:nome => "Cliente", :descricao => "Pessoas frequentam a praia porque moram na cidade ou estão em viagem.")

tipoBarraqueiro = Tipo.create(:nome => "Barraqueiros", :descricao => "Pessoas que tem o ponto na areia da praia e colocam guarda-sol para seus clientes", :grupo => gruVendedor )
tipoAmbulante = Tipo.create(:nome => "Ambulantes", :descricao => "Pessoas que andam pela areia da praia vendendo seus produtos", :grupo => gruVendedor )
tipoCliente = Tipo.create(:nome => "Cliente", :descricao => "Pessoas que estão a lazer/viagem e estão visitando aquele local.", :grupo => gruCliente )
