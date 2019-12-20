# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create([
  {score_id: 1},
  {score_id: 2},
  {score_id: 3}
]);
Score.create([
  {game_score: 4500, game_id: 1, player_name: "BallerMane"},
  {game_score: 7600, game_id: 2, player_name: "Nessa"},
  {game_score: 7630, game_id: 3, player_name: "BurtReinolds"}
])


