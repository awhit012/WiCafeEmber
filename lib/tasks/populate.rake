namespace :db do
  task populate: :environment do

    User.destroy_all

    20.times do
      User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        rating: [*1..10].sample,
        about_me:Faker::HipsterIpsum.words(10).join(' ')
        )
    end
  end
end