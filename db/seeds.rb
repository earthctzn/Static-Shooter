# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create([
  {lives: 4},
  {lives: 4}
]);
Score.create([
  {game_score: 4500, high_score: 10000, game_id: 1, player_id: 1},
  {game_score: 7600, high_score: 9000, game_id: 2, player_id: 2}
])
Player.create([
  {name: 'Overlord'},
  {name: 'Nessa'}
])

