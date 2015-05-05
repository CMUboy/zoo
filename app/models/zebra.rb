class Zebra < ActiveRecord::Base
  validates :weight, presence: true
end
