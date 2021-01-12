7.times do
  billboard = Billboard.create(
    title: Faker::Music.genre,
    details: Faker::Quote.famous_last_words
  )
  5.times do 
    artist = Artist.create(
      name: Faker::Music.band,
      rank: Faker::Number.within(range: 1..100),
      numAlbs: Faker::Number.within(range: 1..10)
    )
    Song.create(
      billboard_id: billboard.id,
      artist_id: artist.id,
      genre: Faker::Music.genre,
      album: Faker::Music.album,
      title: Faker::Music::Prince.song,
      length: Faker::Number.within(range: 1..5)
    )
    # lksdj chdjlsdjf dfksdkf ldj ie
  end
end
puts 'Data Seeded'