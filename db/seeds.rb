# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all if Rails.env.development?
Clothe.destroy_all if Rails.env.development?
Rent.destroy_all if Rails.env.development?

user1 = User.create(
  email:"sofiamontanari.a@gmail.com",
  password: "123456",
  first_name: "Sofía",
  last_name: "Montanari"
)

user2 = User.create(
  email:"varon@gmail.com",
  password: "789123",
  first_name: "David",
  last_name: "Varon"
)

user3 = User.create(
  email: "figueroa@gmail.com",
  password: "654321",
  first_name: "Chris",
  last_name: "Figueroa"
)

user4 = User.create(
  email: "bertintraverso@gmail.com",
  password: "332211",
  first_name: "Bertin",
  last_name: "Traverso"
)

clothe1 = Clothe.create(
  name: "Sweater"
  gender: "Mujer"
  category: "Abrigos"
  size: "S"
  description: "Sweater con bolsillos. Axilas 47cm. Hombros caídos. Cintura 96cm. Cadera 98cm. Largo 87cm."
  price: 15
)
# https://www.renovatuvestidor.com/producto/mujer/ropa/sweaters/18763799

clothe2 = Clothe.create(
  name: "Sweater Lurex"
  gender: "Mujer"
  category: "Abrigos"
  size: "XL"
  description: "Sweater de la diseñadora Tory Burch modelo lurex stripe sweater confeccionado en lana merino y elastano en tono negro y plata con botones en el lateral. Comprado en new york, primerísima calidad y diseño!!!"
  price: 120
)
# https://www.renovatuvestidor.com/producto/mujer/ropa/sweaters/18763790

clothe3 = Clothe.create(
  name: "Sweater Wanama"
  gender: "Mujer"
  category: "Abrigos"
  size: "S"
  description: "Sweater *wanama, talle s. Acrílico 80, viscosa 20. Ancho axilas 120, largo 73."
  price: 37.3
)
# https://www.renovatuvestidor.com/producto/mujer/ropa/sweaters/18763905

clothe4 = Clothe.create(
  name: "Saco Jazmín Chebar"
  gender: "Mujer"
  category: "Abrigos"
  size: "ÚNICO"
  description: "Bellísimo tapado jazmin chebar largo, de paño de lana, con cuello de piel de conejo. Mangas terminadas en cuero legítimo con piel corderito. Posee detalles en cuero y piel corderito. Tiene dos formas de cerrarlo: con un cierre en la parte más alta y con otro cierre que abarca todo el tapado. Forrado en raso estampado c/boquitas jch. Composición: 70% lana virgen + poliamida + cashmere + cuero ovino + piel conejo. Talle 1/40. Muy cuidado. hermoso y super abrigado! Un fuego!"
  price: 480
)
#  https://www.renovatuvestidor.com/producto/mujer/ropa/sacos/18763881


clothe9 = clothe.create(
  category: "Chaqueta",
  size: "XL",
  description:"Campera montage impermeable. En perfecto estado,es tan linda como la ves en fotos. Medidas: 45cm de axila a axila,90cm de contorno de busto,56cm de largo,37cm de hombro a hombro,50cm largo de mangas de sisa a puños."
  price: 12.50,
  name: "Chaqueta ñiño"
  gender: "Hombre"
)
# https://www.renovatuvestidor.com/producto/kids/niños/remeras/18763439
clothe10 = clothe.create(
  category: "Polera",
  size: "L",
  description:"impecable sin uso"
  price: 15.50,
  name: "Polera PSG"
  gender: "Hombre"
)
# https://www.renovatuvestidor.com/producto/kids/niños/jeans/18764781
clothe11 = clothe.create(
  category: "Jeans",
  size: "M",
  description:"jean gap straight fit azul oscuro"
  price: 9.50,
  name: "Pantalons Jeans"
  gender: "Hombre"
)
# https://www.renovatuvestidor.com/producto/kids/niños/jeans/18764781
clothe12 = clothe.create(
  category: "Jeans",
  size: "M",
  description:"jean gap straight fit azul oscuro"
  price: 9.50,
  name: "Pantalons Jeans"
  gender: "Hombre"
)
