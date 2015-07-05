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
		let (:a) { Artist.new } 
		it "save object identical name" do 
			a.lname = Artist.last.lname
			a.fname = Artist.last.fname
			expect(a.save).to eq false
		end
		
		it "save object different last name, same first name" do 
			a.lname =  Time.now.to_i.to_s
			expect(a.save).to eq true
		end

	#	it "save object different last name" do 
	#		a.lname = Artist.last.lname
	#		expect(a.save).to eq true
	#		a.destroy
	#		a.lname = Artist.last.fname+Artist.last.lname
	#	end
	end

end
		

