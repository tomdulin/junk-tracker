class Sedan < ApplicationRecord
  include Vehicleable
  validates :doors, numericality: {  less_than_or_equal_to: 4 }
end
