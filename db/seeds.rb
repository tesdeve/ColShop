# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.delete_all

Product.create!(title: 'Paquete 1 - Solo Frutas',
  description:
    %{<p>
      <em>Solo Furta </em> 
      Este paquete contiene solo furtas frescas directamente desde 
      el campo colombiano a tu mesa.
      </p>},
 # image: '../images/SoloFrutas.png',    
  price: 45.00,
  available: "yes",
  stock_quantity: 6)
# . . .
Product.create!(title: 'Paquete 2 - Verduras y Frutas',
  description:
    %{<em>Frutas y Verduraas</em>
      Este paquete contiene una seleccion de furtas y verduras frescas directamente desde 
      el campo colombiano a tu mesa.
      },
 # image: '../images/Frutas_Verduras.png',
  price: 26.00,
  available: "yes",
  stock_quantity: 8)
# . . .

Product.create!(title: 'Paquete 3 - Verduras y granos secos',
  description:
    %{<p>
      <em>Verduras y Granos</em> 
      Este paquete contiene una seleccion de furtas frescas y granos secos escogidos manualmente 
      directamente desde el campo y los mejores graneros colombiano a tu mesa.
      </p>},
  #image: '../images/VerduraGranos.png',
  price: 46.00,
  available: "No",
  stock_quantity: 0)

# . . .

Product.create!(title: 'Verduras, granos secos y Frutas',
  description:
    %{<p>
      <em>Verduras, Granos secos y Futas</em> 
      Este paquete contiene el gran combo de seleccion de Verduras y Furtas frescas 
      con el agreagdo de Granos secos escogidos manualmente directamente desde 
      el campo y los mejores graneros colombiano a tu mesa.
      </p>},
 # image: '../images/AllinOne.png',
  price: 46.00,
  available: "yes",
  stock_quantity: 9)
