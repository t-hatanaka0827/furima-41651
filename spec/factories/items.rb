require 'open-uri'
FactoryBot.define do
  factory :item do
    association :user

    name { Faker::Commerce.product_name }
    description { Faker::Lorem.sentence }
    category_id { Faker::Number.between(from: 2, to: 10) }
    condition_id { Faker::Number.between(from: 2, to: 6) }
    shipping_cost_id { Faker::Number.between(from: 2, to: 3) }
    shipping_area_id { Faker::Number.between(from: 2, to: 48) }
    shipping_day_id { Faker::Number.between(from: 2, to: 4) }
    price { Faker::Number.between(from: 300, to: 9_999_999) }


    after(:build) do |item|
      image_url = Faker::LoremFlickr.image(size: "50x50")
      downloaded_image = URI.open(image_url)

      item.image.attach(
        io: downloaded_image,
        filename: "test_image.jpg",
        content_type: "image/jpeg"
      )
    end
  end
end
