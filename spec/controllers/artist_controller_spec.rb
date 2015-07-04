require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do

	context "GET Artist views" do
		let (:a) { Artist.first } #find(ARtist.ids[rand(Artist.count)]) } 
		
		it "Artist#index" do 
			get :index
			expect(response.status).to eq(200)
			expect(response.status).to render_template(:index)
		end

		it "Artist#show" do 
			params = { artist: { id: a.id } }
			get :show, params
			expect(response.status).to eq(200)
			expect(response.status).to render_template(:show)
		end

		it "Artist#new" do 
			get :new
			expect(response.status).to eq(200)
			expect(response.status).to render_template(:new)
			expect(assigns(:artist)).to be_a_new(Artist)
		end

		it "Artist#edit" do 
			params = { artist: { id: a.id } }
			get :edit, params
			expect(response.status).to eq(200)
			expect(response.status).to render_template(:edit)
		end
	end
end

