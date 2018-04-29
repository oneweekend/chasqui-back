FactoryBot.define do
  factory :location do
    latitude { -8.04 * rand(0.99..1.01) }
    longitude { -79.04 * rand(0.99..1.01) }
  end
end
