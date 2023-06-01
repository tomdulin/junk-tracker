class Coupe < ApplicationRecord
  include Vehicleable

  validates :doors, numericality: {  less_than_or_equal_to: 2 }
end
