require 'faker'

# spec/factories/contacts.rb 
# See more at: http://everydayrails.com/2012/03/19/testing-series-rspec-models-factory-girl.html#sthash.3ki0fhk3.dpuf
FactoryGirl.define do 
	factory :artist do |f| 
		f.fname { Faker::Name.first_name } 
		f.lname { Faker::Name.last_name } 
		f.dob { Date.today - rand(50*356) } 
#		f.link {  } 
	end 


	factory :show do |u|  
		u.name { Faker::Lorem.sentence(rand(10)) } 
		u.desc { Faker::Lorem.paragraph(rand(10)) } 
		u.opened  { Date.today - rand(50*356)  }
#		u.link { Faker::Internet.email }
	end 


	factory :user do |u| 
		u.fname { Faker::Name.first_name } 
		u.lname { Faker::Name.last_name } 
		u.name  { Faker::Internet.user_name }
#		u.email { Faker::Internet.email }
		u.uid   { rand(100000) }
		u.provider   { "Faker" }
		u.admin { false }
	end 
	
	factory :admin do |u| 
		u.fname { Faker::Name.first_name } 
		u.lname { Faker::Name.last_name } 
		u.name  { Faker::Internet.user_name }
#		u.email { Faker::Internet.email }
		u.uid   { Random(100000) }
		u.provider   { "Faker" }
		u.admin { true }
	end
end 
