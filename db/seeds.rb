# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Fill", score: 20)
Lyric.create(song_title: "Hotline Bling", genre:"Hip-Hop", artist:"Drake")

UserLyric.create(user_id:1, lyric_id: 1, correct: true)
