# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "user123",
    password_confirmation: "user123"
  )
end

CreditCard.create(
  brand: Faker::TvShows::BigBangTheory.character,
  expiration_month: rand(1..12),
  expiration_year: rand(26..99),
  default_for_payment: true
)

5.times do
  CreditCard.create(
    brand: Faker::TvShows::BigBangTheory.character,
    expiration_month: rand(1..12),
    expiration_year: rand(26..99),
    default_for_payment: false
  )
end