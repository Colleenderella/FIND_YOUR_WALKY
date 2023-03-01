# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting current database entries..."
Companion.destroy_all
User.destroy_all

puts "Creating Companions"
colleen = User.create!(email: "colleen@colleen.com", password: "123456")
katja = User.create!(email: "katja@katja.com", password: "123456")
louise = User.create!(email: "louise@louise.com", password: "123456")
besher = User.create!(email: "besher@besher.com", password: "123456")

Companion.create!([
  {
  name: "Luna",
  companion_type: "Tyrannosaurus rex",
  offer_details: "Luna is a very friendly T-rex, although she weighs 6000kg, she's super energetic and can run up
  to 25km/h,so if you are looking for the right motivation to start running again, she can be a perfect companion.",
  user: colleen
  },
  {
    name: "Zeus",
    companion_type: "chicken",
    offer_details: "Zeus can be your new awesome feathery companion, he's an early raiser so if you are a morning person
    ,think how much fun you both could be having",
    user: katja
  },
  {
    name: "Gus",
    companion_type: "Tortoises",
    offer_details: "Gus is a 120-year-old bundle of wisdom and joy
    ,if you are into long slow walks on the beach, he should be your next vacation companion for sure!",
    user: louise
  },
  {
    name: "Winnie",
    companion_type: "Polar bear",
    offer_details: "Winnie is an arctic polar bear, which means she's a cuddle champion, her thick white fur will keep
    you warm for days",
    user: besher
  },
  {
    name: "Bo",
    companion_type: "kangaroo",
    offer_details: "Bo can and should be your nee gym buddy, his top-notch physique that comes out as all 12 years of
    training, book him now and start your new transformation!",
    user: colleen
  },
{
  name: "Missy",
  companion_type: "Hippo",
  offer_details: "Oreo is the cutest new swimmer in town, she's an ideal walking buddy as well, book her now and enjoy
  your new favorite exercise!",
  user: louise
}])

p "Created #{Companion.count} Companions"
