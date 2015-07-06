require 'rails_helper'

RSpec.describe Album, type: :model do


	context "Check FactoryGirl"  do
		it "has a valid factory"  do 
			FactoryGirl.create(:album).should be_valid 
		end
	end

	context "Check helper methods" do
		let (:s) { Show.all[rand(Show.count)] } 
		
	end

	context "Check validations" do
		it "Album should have name" do 
			expect(Album.where("name is null").count).to eq 0
		end

		it "Album name should not be blank" do 
			expect(Album.where("name like ''").count).to eq 0
		end
		it "Save nameless" do 
			s = Album.new
			expect(s.save).to eq false
		end

		it "Save blank" do 
			s = Album.new
			s.name = ""
			expect(s.save).to eq false
		end
	end
end
