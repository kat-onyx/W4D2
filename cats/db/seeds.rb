# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat = Cat.create(name: "Kitten", birth_date: "05/08/05", color: "orange", sex: "F", description: "Most adorable orange kitten ever.")

cat_rental_request = CatRentalRequest.create(cat_id: 1, start_date: "2019-01-01", end_date: "2019-02-01", status: "pending")
