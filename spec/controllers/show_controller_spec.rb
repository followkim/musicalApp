require 'rails_helper'

RSpec.describe ShowsController, type: :controller do

	it "is successful" do 
		get :index
		expect(response.status).to eq(200)
	end

	it "renders index" do 
		get :index
		expect(response.status).to render_template(:index)
	end
