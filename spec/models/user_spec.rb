require "spec_helper"

RSpec.describe User, :type => :model do

	context "Check FactoryGirl"  do
		it "has a valid factory"  do 
			FactoryGirl.create(:user).should be_valid 
		end
	end

  it "Validate presence of email"
  it "Validate uniqueness of email"
  it "Validate presence of username"
  it "Validate uniqueness of username"
  it "Validate presence of password" 
  it "Validate presence of provider"
  it "Validate presence of admin"

end
