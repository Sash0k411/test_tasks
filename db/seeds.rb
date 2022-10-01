# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

rand_char = lambda do
  ('A'..'Z').to_a.sample
end

rand_string = lambda do
  10.times.map { rand_char.call }.join
end


10.times do |i|
  artist = Artist.create!(
    name: "#{rand_string.call} № #{i+1}"
  )

  10.times do |i|
    song_params = {
      artist: artist,
      title: "#{rand_string.call} № #{i+1}",
      length: "#{i} seconds",
      filesize: "#{i + 1}"
    }
    song = Song.create!(song_params)

    (10..100).to_a.sample.times do |i|
      download_params = {
        song: song,
        created_at: (1..100).to_a.sample.days.ago
      }
      Download.create!(download_params)
    end
  end
end




