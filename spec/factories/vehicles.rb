FactoryBot.define do
  factory :vehicle do
    nickname { Faker::Vehicle.make_and_model }
    registration { SecureRandom.alphanumeric(30) }
    mileage { Faker::Vehicle.mileage }
    engine_status { STATUSES.sample }
    
    trait :for_mini_van do
      association :vehicleable, factory: :mini_van
    end

    trait :for_sedan do
      association :vehicleable, factory: :sedan
    end

    trait :for_coupe do
      association :vehicleable, factory: :coupe
    end

    trait :for_motorcycle do
      association :vehicleable, factory: :motorcycle
    end
  end
end
