# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


50. times do |num|
  User.create([
      { name: 'Happy Camper', email: 'happy_camper_#{num}@example.com' },
      { name: 'Sad Camper', email: 'sad_camper_#{num}@example.com' },
    ])
end

campsites = Campsite.create([
    { id: 11, name: "Serenity Forrest Campground", description: "Quite and peaceful campground on the water.", location: "Hoh, WA" },
    { id: 12, name: "Swampy Pastures Campground", description: "Remote campground with distinguished aromas.", location: "Portland, OR" },
    { id: 13, name: "I-5 Colonade", description: "A quaint camping ground with a sweet mountain bike track.", location: "Seattle, WA"}
  ])

50.times do
  Rating.create([
      { stars: 5, comment: "What a great campsit.", user_id: 1, campsite_id: 11 },
      { stars: 1, comment: "This place smells.", user_id: 2, campsite_id: 12}
    ])
end
