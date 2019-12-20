class Game < ApplicationRecord
    belongs_to :player

    scope :top_score, ->() {order('score', 'desc').limit(1).first}




end
