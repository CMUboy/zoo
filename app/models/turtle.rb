class Turtle < ActiveRecord::Base
  validates :status, presence: true

  def hide
    self.status = true
  end

  def emerge
    self.status = false
  end
end
