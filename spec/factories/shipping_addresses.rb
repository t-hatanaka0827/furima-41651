FactoryBot.define do
  factory :shipping_address do
    purchase { nil }
    postal_code { "MyString" }
    shipping_area_id { 1 }
    city { "MyString" }
    address { "MyString" }
    building { "MyString" }
    phone_number { "MyString" }
  end
end
