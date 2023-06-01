require 'rails_helper'

RSpec.describe MiniVan, type: :model do
  context 'validations' do
    it { should validate_numericality_of(:doors).is_less_than_or_equal_to(4) }
  end
end
