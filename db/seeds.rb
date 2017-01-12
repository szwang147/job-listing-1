# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts"1@1, 10jobs"

create_account = User.create(email:"1@1", password:"123123")

create_jos = for i in 1..10 do
Job.create!(title: "job no.#{i}", description: "created by #{i} job for something",
wage_lower_bound: rand(1..50)*100, wage_upper_bound: rand(51..99)*100, contact_email: "rand(33..39)@rand(33..39)", )
end
