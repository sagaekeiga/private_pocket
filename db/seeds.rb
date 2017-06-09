user = User.create(:email => 'sagae5.28rujeae@gmail.com', :password => 's19930528')

for num in 1..20 do
History.create!(name:  "サンプル",
             event: "日清戦争",
             url: "http://i.imgur.com/Na8HdtZ.jpg",
             description:              Faker::Lorem.sentence(500),
             page:              111,
             stage:              10)
end