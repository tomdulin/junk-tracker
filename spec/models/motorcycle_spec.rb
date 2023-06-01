require 'rails_helper'

RSpec.describe Motorcycle, type: :model do
  
  context 'validations' do
    it { should validate_inclusion_of(:seat_status).in_array(STATUSES) }
  end
end
