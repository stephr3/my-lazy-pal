# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
shows = [
  ['Stranger Things', "80's children and monsters!", 'TV', 'Sci Fi'],
  ['Sex in the City', "4 single rich ladies in New York", 'TV', 'Comedy'],
  ['Star Wars I - VII', "80's storm troopers and siblings!", 'Movie', 'Sci Fi'], ['Arrested Development', "2000s sitcom!", 'TV', 'Comedy'],
  ['Firefly', "Space cowboys!", 'TV', 'Sci Fi'],
  ['Once', "Musical documentary", 'Movie', 'Drama'],
  ['Her', "Scarlett Johannsen's voice and some weirdo", 'Movie', 'Romance']
]

shows.each do |name, description, media_type, category|
  Show.create( name: name, description: description, media_type: media_type, category: category)
end

users = [
  [ 'steph', '1111'],
  [ 'sam', '1111']
]

users.each do |username, password|
  User.create( username: username, password: password)
end

binges = [
  [ '2016-09-21 11:00:00', '2016-09-21 12:00:00', 1, 1], [ '2016-09-18 22:00:00', '2016-09-18 23:00:00', 2, 1], [ '2016-09-15 14:00:00', '2016-09-15 15:00:00', 4, 1]
]

binges.each do |start, finish, show_id, user_id|
  Binge.create( start: start, finish: finish, show_id: show_id, user_id: user_id)
end
