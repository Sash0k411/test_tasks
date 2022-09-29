# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

100000.times do |i|
  artist = Artist.new(name: "Artist № #{i+1}")
  artist.save!
end

1000000.times do |i|
  song_params = {
    title: "Song № #{i+1}",
    length: "#{i} seconds",
    filesize: "#{i + 1}"}
  song = Song.new(song_params)
  song.save!
  end


500000.times do |i|
  Download.create!(count: i)
end

