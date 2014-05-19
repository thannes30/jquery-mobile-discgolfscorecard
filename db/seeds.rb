# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# REMOVE ME FROM SEED... once understood
bo_user = User.create({username: 'bo', password: 'password', password_confirmation: 'password'})
bo_game = Game.create()
bo_score = Score.create()

bo_score.user = bo_user
bo_score.game = bo_game
bo_score.save



