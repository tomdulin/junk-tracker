require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  describe '#has_associated_type' do
    let(:vehicle) { FactoryBot.create(:vehicle, :for_coupe) }

    it 'is associated with a type' do
      expect(vehicle.vehicleable.doors).to eq(2)
    end

    it 'can assess mileage' do
      vehicle.mileage = 19000
      expect(vehicle.mileage_to_s).to eq('Low (19,000)')
    end
  end
end
