module Vehicleable
  extend ActiveSupport::Concern

  included do
    has_one :vehicle, :as => :vehicleable
  end
end