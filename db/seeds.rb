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

Ocean.create(name: "North Atlantic Ocean", img_url: "https://www.carbonbrief.org/wp-content/uploads/2018/04/north-atlantic-ocean-1.jpg")
Ocean.create(name: "South Atlantic Ocean", img_url: "https://30a.com/wp-content/uploads/2018/05/untitled-design-425.jpg")
Ocean.create(name: "North Pacific Ocean", img_url: "https://images.glaciermedia.ca/polopoly_fs/1.22782394.1505678749!/fileImage/httpImage/image.jpg_gen/derivatives/landscape_804/2017091718-jpg.jpg")
Ocean.create(name: "South Pacific Ocean", img_url: "https://c.stocksy.com/a/Z27900/z9/2172019.jpg")
Ocean.create(name: "Artic Ocean", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Arctic_ice.jpg/1200px-Arctic_ice.jpg")
Ocean.create(name: "Indian Ocean", img_url: "https://upload.wikimedia.org/wikipedia/commons/1/13/2016_Margaret_River_Australia_-_indian_ocean.jpg")
Ocean.create(name: "Antarctic Ocean", img_url: "https://d1hbkx7j13ujdz.cloudfront.net/wp-content/uploads/2018/08/Lets-Explore-the-Antarctic-Ocean-1024x683.jpg")

Sushi.create(name: "Yummy Salmon Tummy", img_url: "https://i.redd.it/12cdw2wb55p01.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Una Tuna", img_url: "https://media-cdn.tripadvisor.com/media/photo-s/06/7e/7b/f0/tuna-nigiri.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Eel Meal", img_url: "https://media.gettyimages.com/photos/two-pieces-of-eel-nigiri-sushi-picture-id149058086?s=2048x2048", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Simply Shrimpy", img_url: "https://wfg22p.s3.amazonaws.com/media/dishes/ebi_nigiri_sushi_576-reg.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Crab Nab", img_url: "https://sushimi.co.za/wp-content/uploads/2017/09/Nigiri-crab.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Salmon Roe", img_url: "https://upload.wikimedia.org/wikipedia/commons/8/8f/Salmon_roe_gunkanmaki_of_Moriya_Sakanaya_Uohei.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Sea Urchin", img_url: "https://planomagazine.com/wp-content/uploads/2017/09/Uni-Sushi-Plano-Magazine-5.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Young Yellowtail", img_url: "https://previews.123rf.com/images/andreyst/andreyst1204/andreyst120402361/13126260-closeup-of-a-young-yellow-tail-sushi.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Amaebi", img_url: "https://i0.wp.com/www.sushifaq.com/wp-content/uploads/2013/07/amaebi.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Squid", img_url: "https://thumbs.dreamstime.com/z/ika-sushi-17455010.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Anago", img_url: "https://media-cdn.tripadvisor.com/media/photo-s/06/ba/c6/f8/itacho-sushi.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Tai", img_url: "https://c8.alamy.com/comp/M0DK8H/tai-nigiri-sushi-M0DK8H.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Scallop", img_url: "https://upload.wikimedia.org/wikipedia/commons/c/cb/Hotate_gai.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Aji", img_url: "https://ajisushiissaquah.com/wp-content/uploads/2015/05/aji-sushi-seattle-3.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Octopus", img_url: "https://previews.123rf.com/images/ostancoff/ostancoff1504/ostancoff150400050/38176372-octopus-sushi-nigiri-isolated-on-white-background.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Mackrel", img_url: "https://d1rxvdm0rjmjgy.cloudfront.net/srv/images/saba-sushi-main-1600x900.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Sweetfish", img_url: "https://live.staticflickr.com/5270/5896850991_daa98cc50e_b.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Sanma", img_url: "https://upload.wikimedia.org/wikipedia/commons/4/4a/Toro_sanma_aburi-yaki_zushi_1_by_hirotomo.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Mantis Shrimp", img_url: "https://i.pinimg.com/originals/ed/cd/5f/edcd5fd0500d8708d95ce6240c7827d4.jpg", ocean_id: Ocean.all.sample.id)
Sushi.create(name: "Temaki", img_url: "https://images.wisegeek.com/temaki-sushi.jpg", ocean_id: Ocean.all.sample.id)



10.times do 
    Order.create(customer_id: Customer.all.sample.id, sushi_id: Sushi.all.sample.id)
end

10.times do
    Review.create(customer_id: Customer.all.sample.id, sushi_id: Sushi.all.sample.id, rating: rand(1..5))
end