# This file should, contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


50. times do |num|
  User.create([
      { name: 'Happy Camper', email: "happy_camper_#{num}@example.com" },
      { name: 'Sad Camper', email: "sad_camper_#{num}@example.com" },
    ])
end

campsites = Campsite.create([
    { name: "Serenity Forrest Campground", description: "Quite and peaceful campground on the water.", location: "Hoh, WA" },
    { name: "Swampy Pastures Campground", description: "Remote campground with distinguished aromas.", location: "Portland, OR" },
    { name: "Bainbridge Folley", description: "A quaint camping ground with a sweet mountain bike track.", location: "Bainbridge, WA"},
    { name: "Spokane RV Park", description: "A quaint camping ground with a sweet mountain bike track.", location: "Spokane, WA"},
    { name: "Yakima Valley Campground", description: "A quaint camping ground with a sweet mountain bike track.", location: "Yakima, WA"},
    { name: "Yacolt Heights RV Park and Campground", description: "A quaint camping ground with a sweet mountain bike track.", location: "Yacolt, WA"},
    { name: "Puyallup Campgrounds", description: "A quaint camping ground with a sweet mountain bike track.", location: "Puyallup, WA"},
    { name: "Monroe Camp and RV", description: "A quaint camping ground with a sweet mountain bike track.", location: "Monroe, WA"},
    { name: "Concrete Wall and Campground", description: "A quaint camping ground with a sweet mountain bike track.", location: "Concrete, WA"},
    { name: "Ground Battle Ground Camp Ground", description: "A quaint camping ground with a sweet mountain bike track.", location: "Battle Ground, WA"}
  ])

campsite_id = 1
t = Time.new
10.times do
  Rating.create([
      { stars: 5, comment: "What a great campsite.", user_id: 1, campsite_id: campsite_id, created_at: t},
      { stars: 4, comment: "Pretty good, but not great.", user_id: 1, campsite_id: campsite_id, created_at: t},
      { stars: 3, comment: "It was average.", user_id: 2, campsite_id: campsite_id, created_at: t},
      { stars: 2, comment: "Not the best.", user_id: 2, campsite_id: campsite_id, created_at: t},
      { stars: 2, comment: "Not the best.", user_id: 2, campsite_id: campsite_id, created_at: t},
      { stars: 1, comment: "What an awful campsite.", user_id: 2, campsite_id: campsite_id, created_at: t}
    ])
  t -= 1.day
  campsite_id += 1
end
