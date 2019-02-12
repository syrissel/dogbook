# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# The data I am using will be from two different sources. Dog api and Faker.
# My plan is to make a mock Facebook website, but with dog profiles instead of people
# Users will be able to search for dogs by name and breed.



require 'net/http'
require 'json'

Dog.destroy_all
Owner.destroy_all
Breed.destroy_all


breed_url = 'https://dog.ceo/api/breeds/list/all'
breed_uri = URI(breed_url)
breed_response = Net::HTTP.get(breed_uri)

breeds = JSON.parse(breed_response)

15.times do
  Owner.create(name: Faker::Name.name)
end

breeds['message'].each do |key|
  puts key[0]
  breed = Breed.create(name: key[0])

  

  10.times do
    owner = Owner.find(Owner.pluck(:id).sample)

    dog_url = "https://dog.ceo/api/breed/#{key[0]}/images/random"
    dog_uri = URI(dog_url)
    dog_response = Net::HTTP.get(dog_uri)
    dog_json = JSON.parse(dog_response)

    Dog.create(name: Faker::Creature::Dog.name, image_url: dog_json['message'], breed: breed, owner: owner)
  end


end

Dog.create(name: 'doggo')