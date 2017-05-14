# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([name: 'Chicago', { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  at_ada = [true, false].sample
  uid = 1
  User.create({
    name:             Faker::Name.name,
    pronouns:               ["She/Her", "He/Him", "She/Her/They/Them", "They/Them"].sample,
    physical_description:   Faker::Lorem.sentence,
    bio:                    Faker::Lorem.paragraph,
    email:                  Faker::Internet.email,
    twitter:                Faker::Lorem.word,
    screenhero:             Faker::Lorem.word,
    company:                Faker::Lorem.word,
    languages:              Faker::Lorem.paragraph,
    at_ada:                 at_ada,
    remote:                 [!at_ada, false].sample,
    available:              [true, false].sample,
    agreed_to_terms:        true,
    student:                false,
    provider:               "github",
    uid:                    uid
  })
  uid += 1
end
