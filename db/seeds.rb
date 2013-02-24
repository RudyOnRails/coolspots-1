# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1000.times do
  first_name = Forgery(:name).first_name
  last_name = Forgery(:name).last_name
  city = Forgery(:address).city
  
  user = User.create :username => first_name, :first_name => first_name, :last_name => last_name, :password => 'tune'
  location = Location.create :name => city, :city => city, :user_id => user.id
  
    guide = Guide.create :name => "Great flamenco bars in #{city}", :user_id => user.id, :location_id => location.id
    
    Random.new.rand(100).times do
      guide.votes.create :user_id => user.id
    end
    
  10.times do
    spot = Spot.create :name => Forgery(:spot_name).name, :user_id => user.id, :description => Forgery(:lorem_ipsum).words(1000)             
    guide.spots << spot
  end
end