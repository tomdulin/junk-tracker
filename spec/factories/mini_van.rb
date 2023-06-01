FactoryBot.define do
  factory :mini_van do
    doors { 4 }
    sliding_doors { [0,2,4].sample }
  end
end
