# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

Identity.destroy_all

CSV.foreach("db/amber.csv", headers: true) do |line|
  Identity.create! line.to_hash
end
CSV.foreach("db/fuerocomun.csv", headers: true) do |line|
  Identity.create! line.to_hash
end

User.create(email: 'admin@gmail.com', password: 'password', password_confirmation: 'password', superadmin_role: true)


