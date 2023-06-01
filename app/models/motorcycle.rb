class Motorcycle < ApplicationRecord
  include Vehicleable

  enum seat_statuses: STATUSES
  validates :seat_status, inclusion: { in: STATUSES }
end
