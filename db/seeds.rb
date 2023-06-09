# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Clothe.destroy_all
Rent.destroy_all

require "open-uri"

user1 = User.create(
  email:"sofiamontanari.a@gmail.com",
  password: "123456",
  first_name: "Sofía",
  last_name: "Montanari",
  user_name: "sofimontanari"
)

user2 = User.create(
  email:"varon@gmail.com",
  password: "789123",
  first_name: "David",
  last_name: "Varon",
  user_name: "dvaron2099"
)

user3 = User.create(
  email: "figueroa@gmail.com",
  password: "654321",
  first_name: "Chris",
  last_name: "Figueroa",
  user_name: "chriscoding23"
)

user4 = User.create(
  email: "bertintraverso@gmail.com",
  password: "332211",
  first_name: "Bertin",
  last_name: "Traverso",
  user_name: "bertints"
)

puts " 4 users have been created"

clothe1 = Clothe.create(
  name: "Sweater",
  gender: "Mujer",
  category: "Abrigos",
  size: "S",
  description: "Sweater con bolsillos. Axilas 47cm. Hombros caídos. Cintura 96cm. Cadera 98cm. Largo 87cm.",
  price: 15,
  user: user1
)
# https://www.renovatuvestidor.com/producto/mujer/ropa/sweaters/18763799

clothe2 = Clothe.create(
  name: "Sweater Lurex",
  gender: "Mujer",
  category: "Abrigos",
  size: "XL",
  description: "Sweater de la diseñadora Tory Burch modelo lurex stripe sweater confeccionado en lana merino y elastano en tono negro y plata con botones en el lateral. Comprado en new york, primerísima calidad y diseño!!!",
  price: 120,
  user: user1
)
# https://www.renovatuvestidor.com/producto/mujer/ropa/sweaters/18763790

clothe3 = Clothe.create(
  name: "Sweater Wanama",
  gender: "Mujer",
  category: "Abrigos",
  size: "S",
  description: "Sweater *wanama, talle s. Acrílico 80, viscosa 20. Ancho axilas 120, largo 73.",
  price: 37.3,
  user: user1
)
# https://www.renovatuvestidor.com/producto/mujer/ropa/sweaters/18763905

clothe4 = Clothe.create(
  name: "Saco Jazmín Chebar",
  gender: "Mujer",
  category: "Abrigos",
  size: "ÚNICO",
  description: "Bellísimo tapado jazmin chebar largo, de paño de lana, con cuello de piel de conejo. Mangas terminadas en cuero legítimo con piel corderito. Posee detalles en cuero y piel corderito. Tiene dos formas de cerrarlo: con un cierre en la parte más alta y con otro cierre que abarca todo el tapado. Forrado en raso estampado c/boquitas jch. Composición: 70% lana virgen + poliamida + cashmere + cuero ovino + piel conejo. Talle 1/40. Muy cuidado. hermoso y super abrigado! Un fuego!",
  price: 480,
  user: user1
)
#  https://www.renovatuvestidor.com/producto/mujer/ropa/sacos/18763881

clothe5 = Clothe.create(
  name: "Short Anthropologie",
  category: "Short",
  gender: "mujer",
  size: "S",
  description: "short verde militar con bolsillos y elástico en la cintura",
  price: 10.00,
  user: user2
)

# https://argentina-media.renuevatucloset.com/product/0180/20/thumb_17919026_product_medium.jpeg

clothe6 = Clothe.create(
  name: "Saco Banana Republic",
  category: "Blazer",
  gender: "Hombre",
  size: "M",
  description: "blazer impecable 1 sola postura",
  price: 15.00,
  user: user2
)
# https://argentina-media.renuevatucloset.com/product/0179/24/thumb_17823080_product_medium.jpeg

clothe7 = Clothe.create(
  name: "Vestido Banana Republic",
  category: "Vestido",
  gender: "Mujer",
  size: "XXS",
  description: "vestido largo, talle 0 manga corta, encaje azul marino medidas: cintura:30cm sisa: 34cm largo desde los hombros: 120cm ancho hombros: 32cm",
  price: 12.00,
  user: user2
)

# https://argentina-media.renuevatucloset.com/product/0138/57/thumb_13756389_product_medium.jpeg

clothe8 = Clothe.create(
  name: "Camisa Banana Republic",
  category: "Camisa",
  gender: "Hombre",
  size: "S",
  description: "camisa entallada marca banana republic blanca con rayas en dos tonos azules",
  price: 13.00,
  user: user2
)
# https://argentina-media.renuevatucloset.com/product/0097/07/thumb_9606381_product_medium.jpeg


clothe9 = Clothe.create(
  category: "Chaqueta",
  size: "XL",
  description:"Campera montage impermeable. En perfecto estado,es tan linda como la ves en fotos. Medidas: 45cm de axila a axila,90cm de contorno de busto,56cm de largo,37cm de hombro a hombro,50cm largo de mangas de sisa a puños.",
  price: 12.50,
  name: "Chaqueta ñiño",
  gender: "Hombre",
  user: user3
)
# https://www.renovatuvestidor.com/producto/kids/niños/remeras/18763439

clothe10 = Clothe.create(
  category: "Polera",
  size: "L",
  description:"impecable sin uso",
  price: 15.50,
  name: "Polera PSG",
  gender: "Hombre",
  user: user3
)
# https://www.renovatuvestidor.com/producto/kids/niños/jeans/18764781
clothe11 = Clothe.create(
  category: "Jeans",
  size: "M",
  description:"jean gap straight fit azul oscuro",
  price: 9.50,
  name: "Pantalon Jeans",
  gender: "Hombre",
  user: user3
)
# https://www.renovatuvestidor.com/producto/kids/niños/jeans/18764781
clothe12 = Clothe.create(
  category: "Abrigo",
  size: "M",
  description: "Chaleco gris, excelente calidad, súper abrigado.",
  price: 9.50,
  name: "Chaleco gris",
  gender: "Hombre",
  user: user3
)
clothe13 = Clothe.create(
  name: "Jeans negros",
  gender: "Hombre",
  category: "Jeans",
  size: "M",
  description: "Jeans en buenas condiciones",
  price: 95,
  user: user4
)
# https://argentina-media.renuevatucloset.com/product/0184/64/thumb_18363587_product_medium.jpeg

clothe14 = Clothe.create(
  name: "Camisa Polo",
  gender: "Hombre",
  category: "Camisa",
  size: "L",
  description: "camisa a cuadros como nueva",
  price: 70,
  user: user4
)

# https://argentina-media.renuevatucloset.com/product/0184/34/thumb_18333459_product_medium.jpeg

clothe15 = Clothe.create(
  name: "Chaleco columbia",
  gender: "Hombre",
  category: "Chaleco",
  size: "S",
  description: "Chaleco vintage del año 2010",
  price: 50,
  user: user4
)

# https://argentina-media.renuevatucloset.com/product/0184/59/thumb_18358486_product_medium.jpeg

clothe16 = Clothe.create(
  name: "Cardigan penguin",
  gender: "Hombre",
  category: "Cardigan",
  size: "M",
  description: "Cardigan de otoño",
  price:50,
  user: user4
)

# https://argentina-media.renuevatucloset.com/product/0184/10/thumb_18309377_product_medium.jpeg

puts " 16 clothes have been created"

rent1 = Rent.create(
  user: user1,
  clothe: clothe5,
  pickup_date: Date.yesterday,
  return_date: Date.tomorrow
)

rent2 = Rent.create(
  user: user1,
  clothe: clothe6,
  pickup_date: Date.today,
  return_date: Date.tomorrow
)

# rent3 = Rent.create(
#   user: user1,
#   clothe: clothe7,
#   pickup_date: Date.yesterday,
#   return_date: Date.tomorrow
# )

# rent4 = Rent.create(
#   user: user1,
#   clothe: clothe8,
#   pickup_date: Date.yesterday,
#   return_date: Date.tomorrow
# )

rent5 = Rent.create(
  user: user2,
  clothe: clothe9,
  pickup_date: Date.today,
  return_date: Date.tomorrow
)

rent6 = Rent.create(
  user: user2,
  clothe: clothe10,
  pickup_date: Date.today,
  return_date: Date.tomorrow
)

# rent7 = Rent.create(
#   user: user2,
#   clothe: clothe11,
#   pickup_date: Date.yesterday,
#   return_date: Date.tomorrow
# )

# rent8 = Rent.create(
#   user: user2,
#   clothe: clothe12,
#   pickup_date: Date.yesterday,
#   return_date: Date.tomorrow
# )

rent9 = Rent.create(
  user: user3,
  clothe: clothe13,
  pickup_date: Date.today,
  return_date: Date.tomorrow
)

rent10 = Rent.create(
  user: user3,
  clothe: clothe14,
  pickup_date: Date.today,
  return_date: Date.tomorrow
)

# rent11 = Rent.create(
#   user: user3,
#   clothe: clothe15,
#   pickup_date: Date.yesterday,
#   return_date: Date.tomorrow
# )

# rent12 = Rent.create(
#   user: user3,
#   clothe: clothe16,
#   pickup_date: Date.yesterday,
#   return_date: Date.tomorrow
# )

rent13 = Rent.create(
  user: user4,
  clothe: clothe1,
  pickup_date: Date.today,
  return_date: Date.tomorrow
)

rent14 = Rent.create(
  user: user4,
  clothe: clothe2,
  pickup_date: Date.today,
  return_date: Date.tomorrow
)

# rent15 = Rent.create(
#   user: user4,
#   clothe: clothe3,
#   pickup_date: Date.yesterday,
#   return_date: Date.tomorrow
# )

# rent16 = Rent.create(
#   user: user4,
#   clothe: clothe4,
#   pickup_date: Date.yesterday,
#   return_date: Date.tomorrow
# )

puts " 16 rents have been created"

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/52/thumb_18351238_product_small.jpeg")
clothe1.photos.attach(io: file, filename: "thumb_18351238_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/52/thumb_18351239_product_small.jpeg")
clothe1.photos.attach(io: file, filename: "thumb_18351239_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/52/thumb_18351190_product_small.jpeg")
clothe2.photos.attach(io: file, filename: "thumb_18351190_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/52/thumb_18351192_product_small.jpeg")
clothe2.photos.attach(io: file, filename: "thumb_18351192_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/52/thumb_18351667_product_small.jpeg")
clothe3.photos.attach(io: file, filename: "thumb_18351667_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/52/thumb_18351668_product_small.jpeg")
clothe3.photos.attach(io: file, filename: "thumb_18351668_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/52/thumb_18351540_product_small.jpeg")
clothe4.photos.attach(io: file, filename: "thumb_18351540_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/52/thumb_18351541_product_small.jpeg")
clothe4.photos.attach(io: file, filename: "thumb_18351541_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0180/20/thumb_17919026_product_medium.jpeg")
clothe5.photos.attach(io: file, filename: "thumb_17919026_product_medium.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0180/20/thumb_17919027_product_small.jpeg")
clothe5.photos.attach(io: file, filename: "thumb_17919027", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0179/24/thumb_17823080_product_medium.jpeg")
clothe6.photos.attach(io: file, filename: "thumb_17823080_product_medium.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0179/24/thumb_17823081_product_medium.jpeg")
clothe6.photos.attach(io: file, filename: "thumb_17823081_product_medium.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0138/57/thumb_13756389_product_medium.jpeg")
clothe7.photos.attach(io: file, filename: "thumb_18351667_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0138/57/thumb_13756390_product_medium.jpeg")
clothe7.photos.attach(io: file, filename: "thumb_13756390_product_medium", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0097/07/thumb_9606381_product_medium.jpeg")
clothe8.photos.attach(io: file, filename: "thumb_9606381_product_medium.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0097/07/thumb_9606382_product_medium.jpeg")
clothe8.photos.attach(io: file, filename: "thumb_9606382_product_medium.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0185/28/thumb_18427290_product_small.jpeg")
clothe9.photos.attach(io: file, filename: "thumb_18427290_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0185/28/thumb_18427291_product_small.jpeg")
clothe9.photos.attach(io: file, filename: "thumb_18351239_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/50/thumb_18349801_product_small.jpeg")
clothe10.photos.attach(io: file, filename: "thumb_18349801_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/50/thumb_18349803_product_small.jpeg")
clothe10.photos.attach(io: file, filename: "thumb_18349803_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/56/thumb_18355271_product_small.jpeg")
clothe11.photos.attach(io: file, filename: "thumb_18355271_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/56/thumb_18355273_product_small.jpeg")
clothe11.photos.attach(io: file, filename: "thumb_18355273_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0185/21/thumb_18420406_product_small.jpeg")
clothe12.photos.attach(io: file, filename: "thumb_18420406_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0185/21/thumb_18420408_product_small.jpeg")
clothe12.photos.attach(io: file, filename: "thumb_18420408_product_small.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/64/thumb_18363587_product_medium.jpeg")
clothe13.photos.attach(io: file, filename: "thumb_18363587_product_medium.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/64/thumb_18363588_product_medium.jpeg")
clothe13.photos.attach(io: file, filename: "thumb_18363588_product_medium.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/34/thumb_18333459_product_medium.jpeg")
clothe14.photos.attach(io: file, filename: "thumb_18333459_product_medium", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/34/thumb_18333460_product_medium.jpeg")
clothe14.photos.attach(io: file, filename: "thumb_18333460_product_medium.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/59/thumb_18358486_product_medium.jpeg")
clothe15.photos.attach(io: file, filename: "thumb_18358486_product_medium.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/59/thumb_18358487_product_medium.jpeg")
clothe15.photos.attach(io: file, filename: "thumb_18358487_product_medium.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/10/thumb_18309377_product_medium.jpeg")
clothe16.photos.attach(io: file, filename: "thumb_18309377_product_medium.jpeg", content_type: "image/jpg")

file = URI.open("https://argentina-media.renuevatucloset.com/product/0184/10/thumb_18309378_product_medium.jpeg")
clothe16.photos.attach(io: file, filename: "thumb_18309378_product_medium.jpeg", content_type: "image/jpg")
