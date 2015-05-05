class Tiger < ActiveRecord::Base
  validates :appetite, presence: true

  def hungry?
    appetite > 0
  end

  def eat(zebra)
    new_appetite = (appetite - zebra.weight).to_i
    self.appetite = [new_appetite, 0].max
    zebra.destroy
  end
end
