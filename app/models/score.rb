class Score < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  # belongs_to :game

    def total_score
      total_score = hole_1 + hole_2 + hole_3 + hole_4 + hole_5 + hole_6 + hole_7 + hole_8 + hole_9 + hole_10 + hole_11 + hole_12 + hole_13 + hole_14 + hole_15 + hole_16 + hole_17 + hole_18
    end
  end

