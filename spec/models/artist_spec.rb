require "spec_helper"

RSpec.describe Artist, :type => :model do

	context "Check FactoryGirl"  do
		it "has a valid factory"  do 
			FactoryGirl.create(:artist).should be_valid 
		end
	end
	
	context "Check helper methods" do
		let (:a) { Artist.new } 
		before do 
			a.fname = "Kim"
			a.lname = "Gray"
		end	
		
		it "test flName" do 
			expect(a.lfName).to eq "Gray, Kim"
		end
		
		it "test flName" do 
			expect(a.flName).to eq "Kim Gray"
		end
	end

	context "Check validation" do
#		let (:a) { Artist.new } 

		it "save object identical name" do 
			FactoryGirl.build(:artist, fname: Artist.last.fname, lname: Artist.last.lname).should_not be_valid
		end
		
		it "save object same last name, different first name" do 
			FactoryGirl.build(:artist, lname: Artist.last.lname).should be_valid
		end

		it "save object same first name, different last name" do 
			FactoryGirl.build(:artist, fname: Artist.last.fname).should be_valid
		end

		it "Shouldn't save without last name" do 
			FactoryGirl.build(:artist, lname: nil).should_not be_valid
		end

		it "Shouldn't save without first name" do 
			FactoryGirl.build(:artist, fname: nil).should_not be_valid
		end
		
	#	it "save object different last name" do 
	#		a.lname = Artist.last.lname
	#		expect(a.save).to eq true
	#		a.destroy
	#		a.lname = Artist.last.fname+Artist.last.lname
	#	end
	end

end
		

