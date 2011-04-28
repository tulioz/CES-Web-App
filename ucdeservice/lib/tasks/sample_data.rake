require 'faker'

namespace :db do
    desc "Create fake location records in the db"
    task :populate => :environment do
      Rake::Task['db:reset'].invoke
      User.create!(:email => "example@example.com",
                   :password => '111111',
                    :password_confirmation => '111111') 
      Type.create!(:name => "Restaurants")                                 

      eventSuffixes = ["Day", "Celebration", "Seminar", "Conference"];

      25.times do
        e = {
          :name => "#{Faker::Lorem.words(2)} #{eventSuffixes.rand.to_s}",
          :description => Faker::Lorem.paragraphs(1),
          :website => "#{Faker::Internet.domain_name()}#{Faker::Internet.domain_suffix()}",
          :date => (1..200).to_a.rand.days.from_now
        }

        Event.create!(e)
      end    

      restaurantCategories = ["American", "Chinese", "Japanese", "French",
                              "Italian", "Fast Food", "Indian", "Thai",
                              "Cafe", "Deli", "Cajun"]
            
      50.times do
        r = {
          # :name => Faker::Name::Company.name(),
          :name => Faker::Company.name(),
          :category => restaurantCategories.rand.to_s,
          :address => "#{Faker::Address.street_address()} #{Faker::Address.street_name()}",
          :address_2 => Faker::Address.city(),
          :phone => '129248242',
          :latitude => '1000000',
          :longitude => '1000000',
          :description => Faker::Company.catch_phrase(),
          :type_id => 1,
          :event_id => Event.all.rand.id,
          :featured => rand(2)
        }
      
        Location.create!(r)
      end



      
    end
end
                              