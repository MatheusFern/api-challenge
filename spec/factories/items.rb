FactoryBot.define do
  factory :item do
    title {Faker::Lorem.setence}
    desc { Faker::Lorem.paragraph(sentence_count: 10) }
    item

    factory :invalid_item do
      title {nil}
    end
  end
end
