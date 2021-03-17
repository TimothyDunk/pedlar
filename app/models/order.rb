class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pedal
  validates_uniqueness_of :pedal_id
end
