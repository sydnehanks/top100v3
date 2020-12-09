# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#roles = ['teacher', 'ta', 'student']
10.times do
  billboard = Billboard.create(
    name: Faker::Educator.course
  )
  10.times do 
    artist = Artist.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )
    song.create(
      title: title.sample,
      album: album.id,
      length: length.id,
      genre: genre.id,
    )
  end
end
puts "Data Seeded."