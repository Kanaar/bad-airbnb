# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create test users
user01 = User.create(email: "UserOne@gmail.com", password: "password", password_confirmation: "password")
user02 = User.create(email: "UserTwo@gmail.com", password: "password", password_confirmation: "password")
user03 = User.create(email: "bruno@airbnbroke.com", password: "password", password_confirmation: "password")
user04 = User.create(email: "claudio@airbnbroke.com", password: "password", password_confirmation: "password")
user05 = User.create(email: "daniel@airbnbroke.com", password: "password", password_confirmation: "password")
user06 = User.create(email: "jvh@airbnbroke.com", password: "password", password_confirmation: "password")
user07 = User.create(email: "laura@airbnbroke.com", password: "password", password_confirmation: "password")
user08 = User.create(email: "manoel@airbnbroke.com", password: "password", password_confirmation: "password")
user09 = User.create(email: "iamthewinz@airbnbroke.com", password: "password", password_confirmation: "password")
user10 = User.create(email: "milene@airbnbroke.com", password: "password", password_confirmation: "password")
user11 = User.create(email: "otavio@airbnbroke.com", password: "password", password_confirmation: "password")
user12 = User.create(email: "renato@airbnbroke.com", password: "password", password_confirmation: "password")
user13 = User.create(email: "ricardo@airbnbroke.com", password: "password", password_confirmation: "password")
user14 = User.create(email: "kanaar@airbnbroke.com", password: "password", password_confirmation: "password")
user15 = User.create(email: "rodrigo@airbnbroke.com", password: "password", password_confirmation: "password")
user16 = User.create(email: "gangstacpa@airbnbroke.com", password: "password", password_confirmation: "password")
user17 = User.create(email: "bigp@airbnbroke.com", password: "password", password_confirmation: "password")

# Create user profiles
profiles = []
profiles << Profile.new(first_name: "John", last_name: "Doe", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7ZWwxqKu65GbQ_zwT77ecxQOCfHKmQDQs46gYDCIXxdLtbvbl", user: user01).save!
profiles << Profile.new(first_name: "Jane", last_name: "Doe", image_url: "https://39m9vk1z5i3x15rspj43y7k8-wpengine.netdna-ssl.com/wp-content/uploads/2018/03/brie-larson-captain-marvel-female-superhero-1300x742.jpg", user: user02).save!
profiles << Profile.new(first_name: "Bruno", last_name: "Toledo", image_url: "https://avatars3.githubusercontent.com/u/43172401?v=4", user: user03).save!
profiles << Profile.new(first_name: "Claudio", last_name: "Victer", image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/tfz5qd9eo4rvpl5uz6no.jpg", user: user04).save!
profiles << Profile.new(first_name: "Daniel", last_name: "Ujikawa", image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zu1b55k63np2ufsfe5ui.jpg", user: user05).save!
profiles << Profile.new(first_name: "Justin", last_name: "Holt", image_url: "https://avatars2.githubusercontent.com/u/30933701?v=4", user: user06).save!
profiles << Profile.new(first_name: "Laura", last_name: "Monfort", image_url: "https://avatars3.githubusercontent.com/u/43378768?v=4", user: user07).save!
profiles << Profile.new(first_name: "Manoel", last_name: "Do Nascimento", image_url: "https://avatars3.githubusercontent.com/u/41997004?v=4", user: user08).save!
profiles << Profile.new(first_name: "Manuel", last_name: "Winzler", image_url: "https://avatars1.githubusercontent.com/u/43183811?v=4", user: user09).save!
profiles << Profile.new(first_name: "Milene", last_name: "Cardoso", image_url: "https://avatars0.githubusercontent.com/u/43370005?v=4", user: user10).save!
profiles << Profile.new(first_name: "Otávio", last_name: "Leite", image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zpbrwgrmgtsq7hgzwzoe.jpg", user: user11).save!
profiles << Profile.new(first_name: "Renato", last_name: "Peixoto Pinto", image_url: "https://avatars2.githubusercontent.com/u/43689856?v=4", user: user12).save!
profiles << Profile.new(first_name: "Ricardo", last_name: "Tognola Montes De Oca", image_url: "https://avatars3.githubusercontent.com/u/43882173?v=4", user: user13).save!
profiles << Profile.new(first_name: "Richard", last_name: "Van Den Broek", image_url: "https://avatars0.githubusercontent.com/u/31623987?v=4", user: user14).save!
profiles << Profile.new(first_name: "Rodrigo", last_name: "Assuf", image_url: "https://avatars3.githubusercontent.com/u/43734401?v=4", user: user15).save!
profiles << Profile.new(first_name: "Steven", last_name: "Bowen", image_url: "https://avatars2.githubusercontent.com/u/22715037?v=4", user: user16).save!
profiles << Profile.new(first_name: "Pedro", last_name: "Meyer", image_url: "https://avatars0.githubusercontent.com/u/13518308?v=4", user: user17).save!

# Create listings
listing_one = Listing.new(headline: "Flood-damaged 3BR",
                          description: "Perfect spot if you got waders.",
                          address: "3644 North Racine Avenue",
                          price_daily: 3.50,
                          country: "US",
                          city: "Chicago",
                          capacity: 3,
                          image_url: "https://bloximages.chicago2.vip.townnews.com/nogalesinternational.com/content/tncms/assets/v3/editorial/4/e5/4e5fa2c4-45a6-11e4-bd38-53524b3248c4/53d56e7978716.image.jpg",
                          user: user01)
listing_one.save!

listing_two = Listing.new(headline: "A very fun place",
                          description: "wet and cold in the wind of the cities waste dump winds",
                          address: "123 Sesame Street",
                          price_daily: 11.50,
                          country: "BR",
                          city: "Rio de Janeiro",
                          capacity: 3,
                          image_url: "images/rio.jpg",
                          user: user02)
listing_two.save!

listing_three = Listing.new(headline: "A very exciting place",
                            description: "wet and cold in the wind of the cities waste dump winds",
                            address: "123 Sesame Street",
                            price_daily: 113.50,
                            country: "BR",
                            city: "Sao Paolo",
                            capacity: 3,
                            image_url: "images/rio.jpg",
                            user: user01)
listing_three.save!

listing_four = Listing.new(headline: "A very happy place",
                           description: "wet and cold in the wind of the cities waste dump winds",
                           address: "123 Sesame Street",
                           price_daily: 93.50 ,
                           country: "NL",
                           city: "Amsterdam",
                           capacity: 3,
                           image_url: "images/rio.jpg",
                           user: user02)
listing_four.save!

listing_five = Listing.new(headline: "S'more's the merrier!",
                           description: "Place burned down 7 years ago. Step lightly, and I don't suggest you wear anything white.",
                           address: "3735 West Diversey Avenue",
                           price_daily: 12,
                           country: "US",
                           city: "Chicago",
                           capacity: 3,
                           image_url: "https://cdn.oncarrot.com/uploads/sites/15466/2018/03/fire-smoke-damage-restoration-1.jpg",
                           user: user01)
listing_five.save!

listing_six = Listing.new(headline: "A very eventful place",
                          description: "wet and cold in the wind of the cities waste dump winds",
                          address: "123 Sesame Street",
                          price_daily: 39.50,
                          country: "DE",
                          city: "Hamburg",
                          capacity: 3,
                          image_url: "images/rio.jpg",
                          user: user01)
listing_six.save!

listing_seven = Listing.new(headline: "A very good place",
                            description: "wet and cold in the wind of the cities waste dump winds",
                            address: "123 Sesame Street",
                            price_daily: 0.50,
                            country: "DE",
                            city: "Frankfurt",
                            capacity: 3,
                            image_url: "images/rio.jpg",
                            user: user01)
listing_seven.save!


Listing.new(headline: "Sinking fast! Limited availability!",
            description: "Wife caught me cheating, so she drilled a hole in my one true love. You probably got a night or two left to keep dry. Not ideal if you suffer from vertigo.",
            address: "111 N Lake Shore Drive",
            price_daily: 67,
            country: "USA",
            city: "Chicago",
            capacity: 2,
            image_url: "http://www.sea-way.org/blog2/jb6.jpg",
            user: user17).save!

Listing.new(headline: "Pitch a tent in the heart of Chicago",
            description: "Relaxed tent community, close to public transit and main thoroughfares. Gotta fend for yourself for the most part, but you'll make friends fast over the nightly trash can fire if you bring a bottle of booze to pass around.",
            address: "315 West 35th Street",
            price_daily: 22,
            country: "USA",
            city: "Chicago",
            capacity: 5,
            image_url: "https://www.theeastsiderla.com/wp-content/uploads/2015/12/homeless-encampment-on-hoover-under-the-101-freeway-in-silver-lake-photo-by-connie-acosta.jpg",
            user: user10).save!

Listing.new(headline: "Au revoir, TSA!",
            description: "Get a first-class ticket to sweet dreams on a busted bird",
            address: "O'Hare Airport",
            price_daily: 4.62,
            country: "USA",
            city: "Chicago",
            capacity: 47,
            image_url: "https://st2.depositphotos.com/1257585/11207/i/950/depositphotos_112071064-stock-photo-old-broken-planes-cemetery-aircraft.jpg",
            user: user08).save!

Listing.new(headline: "Uncle Karl's crawlspace",
            description: "Don't stay here. Seriously.",
            address: "6719 West Belmont Avenue",
            price_daily: 2,
            country: "USA",
            city: "Chicago",
            capacity: 16,
            image_url: "http://s3-production.bobvila.com/articles/wp-content/uploads/2014/11/unfinished.jpg",
            user: user04).save!

Listing.new(headline: "Carnival After Dark",
            description: "Stumbled upon this neglected ruins of a 1950's carnival with a few friends. We decided to get drunk and have a party. Don't recall much after that, but I do remember a lot of fuss over a clown with an axe -- and not everyone made it home.",
            address: "2800 West Grand Avenue",
            price_daily: 6.50,
            country: "USA",
            city: "Chicago",
            capacity: 12,
            image_url: "http://www.flanderstoday.eu/sites/default/files/webimages/aalst-fireweb.jpg",
            user: user12).save!

#  Create bookings
Booking.new(:start_date => DateTime.new(2019,1,10), :end_date => DateTime.new(2019,1,18), :total_cost => 900, :guest_number => 1, :listing => listing_one, :user => user02).save!

Booking.new(:start_date => DateTime.new(2019,2,26), :end_date => DateTime.new(2019,3,1), :total_cost => 900, :guest_number => 1, :listing => listing_six, :user => user02).save!

Booking.new(:start_date => DateTime.new(2019,1,1), :end_date => DateTime.new(2019,1,2), :total_cost => 900, :guest_number => 2, :listing => listing_seven, :user => user02).save!

Booking.new(:start_date => DateTime.new(2019,3,12), :end_date => DateTime.new(2019,3,23), :total_cost => 900, :guest_number => 1, :listing => listing_five, :user => user02).save!

Booking.new(:start_date => DateTime.new(2019,2,23), :end_date => DateTime.new(2019,3,12), :total_cost => 900, :guest_number => 2, :listing => listing_four, :user => user01).save!

Booking.new(:start_date => DateTime.new(2019,1,8), :end_date => DateTime.new(2019,1,18), :total_cost => 900, :guest_number => 1, :listing => listing_two, :user => user01).save!

Booking.new(:start_date => DateTime.new(2019,8,10), :end_date => DateTime.new(2019,9,3), :total_cost => 900, :guest_number => 2, :listing => listing_four, :user => user01).save!
