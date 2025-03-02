FactoryBot.define do
  factory :order_address do
    postal_code      { format('%03d-%04d', Faker::Number.number(digits: 3), Faker::Number.number(digits: 4)) }
    shipping_area_id { Faker::Number.between(from: 2, to: 48) }
    city            { Faker::Address.city }
    address         { Faker::Address.street_address }
    building        { Faker::Address.secondary_address }
    phone_number    { Faker::Number.number(digits: 11).to_s }
    token           { "tok_#{Faker::Alphanumeric.alphanumeric(number: 24)}" }
  end
end



