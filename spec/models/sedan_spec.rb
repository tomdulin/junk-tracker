require 'rails_helper'

RSpec.describe Sedan, type: :model do
  it { should validate_numericality_of(:doors).is_less_than_or_equal_to(4) }
end
