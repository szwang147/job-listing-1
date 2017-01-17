# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts"seeds"

create_account = User.create(email:"1@1", password:"123123", is_admin:"true", )
create_account = User.create(email:"2@2", password:"123123", is_admin:"false", )

puts"admin account created"

create_jos = for i in 1..10 do
Job.create!(title: "job no.#{i}", description: "created by #{i} job for something",
wage_lower_bound: rand(1..50)*100, wage_upper_bound: rand(51..99)*100,
contact_email: "rand(33..39)@rand(33..39)", is_hidden:"false")
end
puts"10 public jobs created"

create_jos = for i in 1..10 do
Job.create!(title: "job no.#{i}", description: "created by #{i} job for something",
wage_lower_bound: rand(1..50)*100, wage_upper_bound: rand(51..99)*100,
contact_email: "rand(33..39)@rand(33..39)", is_hidden:"true")
end
puts"10 hidden jobs created"


puts"1@1, 10 p-jobs, 10 h-jobs, success"
