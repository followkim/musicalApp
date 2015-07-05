require 'rails_helper'

RSpec.describe Show, type: :model do


	context "Check FactoryGirl"  do
		it "has a valid factory"  do 
			FactoryGirl.create(:show).should be_valid 
		end
	end

	context "Check helper methods" do
		let (:s) { Show.all[rand(Show.count)] } 
		
	end

	context "Check validations" do
		it "Show should have name" do 
			expect(Show.where("name is null").count).to eq 0
		end

		it "Show should not be blank" do 
			expect(Show.where("name like ''").count).to eq 0
		end
		it "Save nameless" do 
			s = Show.new
			expect(s.save).to eq false
		end

		it "Save blank" do 
			s = Show.new
			s.name = ""
			expect(s.save).to eq false
		end
	end
end
