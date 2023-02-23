FactoryBot.define do
  factory :article do
    sequence(:id, &:to_s)
    title { 'MyString' }
    text { 'hello' }
    #  sequence(:title) { |n| "Unique + #{n} title" }
  end
end
