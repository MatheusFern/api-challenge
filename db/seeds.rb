# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
35.times do
  Item.create(
    title: Faker::Book.title,
    desc: Faker::Lorem.sentence,
    is_active: Faker::Boolean.boolean,
  ).save
end
35.times do
  Task.create(
    name: Faker::Book.title,
    body: Faker::Lorem.sentence,
    is_completed: Faker::Boolean.boolean,
  ).save
end
