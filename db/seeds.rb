# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create test users
user_one = User.create! :email => 'UserOne@gmail.com', :password => 'password', :password_confirmation => 'password'
user_two = User.create! :email => 'UserTwo@gmail.com', :password => 'password', :password_confirmation => 'password'

# Create user profiles
Profile.new(:first_name => 'John', :last_name => 'Doe', :user => user_one).save!
Profile.new(:first_name => 'Jane', :last_name => 'Doe', :user => user_two).save!

# Create listings
listing_one = Listing.new(:headline => 'A very bad place', :description => "wet and cold in the wind of the cities waste dump winds", :address => '123 Sesame Street', :price_daily => 3.50 , :country => 'US', :city => 'Compton', :capacity => 3, :user => user_one)
listing_one.save!

listing_two = Listing.new(:headline => 'A very fun place', :description => "wet and cold in the wind of the cities waste dump winds", :address => '123 Sesame Street', :price_daily => 13.50 , :country => 'BR', :city => 'Rio de Janeiro', :capacity => 3, :user => user_two)
listing_two.save!

listing_three = Listing.new(:headline => 'A very exciting place', :description => "wet and cold in the wind of the cities waste dump winds", :address => '123 Sesame Street', :price_daily => 113.50 , :country => 'BR', :city => 'Sao Paolo', :capacity => 3, :user => user_one)
listing_three.save!

listing_four = Listing.new(:headline => 'A very happy place', :description => "wet and cold in the wind of the cities waste dump winds", :address => '123 Sesame Street', :price_daily => 93.50 , :country => 'NL', :city => 'Amsterdam', :capacity => 3, :user => user_two)
listing_four.save!

listing_five = Listing.new(:headline => 'A very interesting place', :description => "wet and cold in the wind of the cities waste dump winds", :address => '123 Sesame Street', :price_daily => 883.50 , :country => 'US', :city => 'Chicago', :capacity => 3, :user => user_one)
listing_five.save!

listing_six = Listing.new(:headline => 'A very eventful place', :description => "wet and cold in the wind of the cities waste dump winds", :address => '123 Sesame Street', :price_daily => 39.50 , :country => 'DE', :city => 'Hamburg', :capacity => 3, :user => user_one)
listing_six.save!

listing_seven = Listing.new(:headline => 'A very good place', :description => "wet and cold in the wind of the cities waste dump winds", :address => '123 Sesame Street', :price_daily => 0.50 , :country => 'DE', :city => 'Frankfurt', :capacity => 3, :user => user_one)
listing_seven.save!

#  Create bookings
Booking.new(:start_date => DateTime.new(2019,1,10), :end_date => DateTime.new(2019,1,18), :total_cost => 900, :guest_number => 1, :listing => listing_one, :user => user_two).save!

Booking.new(:start_date => DateTime.new(2019,2,26), :end_date => DateTime.new(2019,3,1), :total_cost => 900, :guest_number => 1, :listing => listing_six, :user => user_two).save!

Booking.new(:start_date => DateTime.new(2019,1,1), :end_date => DateTime.new(2019,1,2), :total_cost => 900, :guest_number => 2, :listing => listing_seven, :user => user_two).save!

Booking.new(:start_date => DateTime.new(2019,3,12), :end_date => DateTime.new(2019,3,23), :total_cost => 900, :guest_number => 1, :listing => listing_five, :user => user_two).save!

Booking.new(:start_date => DateTime.new(2019,2,23), :end_date => DateTime.new(2019,3,12), :total_cost => 900, :guest_number => 2, :listing => listing_four, :user => user_one).save!

Booking.new(:start_date => DateTime.new(2019,1,8), :end_date => DateTime.new(2019,1,18), :total_cost => 900, :guest_number => 1, :listing => listing_two, :user => user_one).save!

Booking.new(:start_date => DateTime.new(2019,8,10), :end_date => DateTime.new(2019,9,3), :total_cost => 900, :guest_number => 2, :listing => listing_four, :user => user_one).save!
