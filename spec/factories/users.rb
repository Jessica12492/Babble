FactoryBot.define do
  factory :user do |f|
    f.email{faker::Internet.email}
    f.password{faker::Internet.password(min_length: 10,max_length: 20, special_characters: true)}
    
  end
end
