FactoryBot.define do
  factory :motorcycle do
    seat_status { STATUSES.sample }
  end
end
