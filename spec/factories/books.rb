FactoryBot.define do

  factory :book do
    title       {"アンパンマン"}
    comment     {"あああ"}
    image       {File.open("#{Rails.root}/spec/fixtures/test_image.jpg")}
    writer      {"いいい"}
    price       {333}
    stock       {222}
    category_id {1}
    created_at  { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    category
    user
  end

end