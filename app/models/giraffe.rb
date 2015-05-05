class Giraffe < ActiveRecord::Base
  validates :height, presence: true

  def guess_age
    if height >= 13
      8
    elsif height >= 10
      5
    elsif height >= 8
      3
    else
      1
    end
  end
end
