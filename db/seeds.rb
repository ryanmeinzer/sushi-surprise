# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.destroy_all
Ocean.destroy_all
Sushi.destroy_all
Order.destroy_all
Review.destroy_all

Customer.create(name: "Johnny")
Customer.create(name: "Suzy")
Customer.create(name: "Mary")
Customer.create(name: "Billy")
Customer.create(name: "Milly")

Ocean.create(name: "North Atlantic Ocean")
Ocean.create(name: "South Atlantic Ocean")
Ocean.create(name: "North Pacific Ocean")
Ocean.create(name: "South Pacific Ocean")
Ocean.create(name: "Artic Ocean")
Ocean.create(name: "Indian Ocean")
Ocean.create(name: "Antarctic Ocean")

Sushi.create(name: "Yummy Salmon Tummy", img_url: "https://i.redd.it/12cdw2wb55p01.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Una Tuna", img_url: "https://media-cdn.tripadvisor.com/media/photo-s/06/7e/7b/f0/tuna-nigiri.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Eel Meal", img_url: "https://media.gettyimages.com/photos/two-pieces-of-eel-nigiri-sushi-picture-id149058086?s=2048x2048", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Simply Shrimpy", img_url: "https://wfg22p.s3.amazonaws.com/media/dishes/ebi_nigiri_sushi_576-reg.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Crab Nab", img_url: "https://sushimi.co.za/wp-content/uploads/2017/09/Nigiri-crab.jpg", ocean_id: Ocean.all.sample.id)

10.times do 
    Order.create(customer_id: Customer.all.sample.id, sushi_id: Sushi.all.sample.id)
end

10.times do
    Review.create(customer_id: Customer.all.sample.id, sushi_id: Sushi.all.sample.id, rating: rand(1..5))
end