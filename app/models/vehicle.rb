class Vehicle < ApplicationRecord
  belongs_to :vehicleable, polymorphic: true
  include MileageEvaluator
  enum engine_statuses: STATUSES

  validates :mileage, presence: true
  validates :nickname, presence: true
  validates :engine_status, inclusion: { in: STATUSES }
end
