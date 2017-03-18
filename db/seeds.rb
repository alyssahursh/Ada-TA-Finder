# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([name: 'Chicago', { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


15.times do
  User.create({
    first_name:             Faker::Name.first_name,
    last_name:              Faker::Name.last_name,
    pronouns:               "She/Her",
    physical_description:   Faker::Lorem.paragraph,
    bio:                    Faker::Lorem.paragraph,
    email:                  Faker::Internet.email,
    twitter:                Faker::Lorem.word,
    screenhero:             Faker::Lorem.word,
    company:                Faker::Lorem.word,
    languages:              Faker::Lorem.paragraph,
    at_ada:                 [true, false].sample,
    remote:                 [true, false].sample,
    available:              [true, false].sample,
    agreed_to_terms:        true,
    student:                false
  })
end
