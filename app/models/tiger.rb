class Tiger < ActiveRecord::Base
  def hungry?
    appetite > 0
  end
end
