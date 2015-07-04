require 'rails_helper'

RSpec.describe AlbumsController, type: :controller do

	context "GET Album views" do
		let (:a) { Album.first } #find(Album.ids[rand(Album.count)]) } 
		
		it "Albums#Index" do 
			get :index
			expect(response.status).to eq(200)
			expect(response.status).to render_template(:index)
		end

		it "Albums#show" do 
			params = { Album: { id: a.id } }
			get :show, params
			expect(response.status).to eq(200)
			expect(response.status).to render_template(:show)
		end

		it "Albums#new" do 
			get :new
			expect(response.status).to eq(200)
			expect(response.status).to render_template(:new)
			expect(assigns(:album)).to be_a_new(Album)
		end

		it "Albums#edit" do 
			params = { Album: { id: a.id } }
			get :edit, params
			expect(response.status).to eq(200)
			expect(response.status).to render_template(:edit)
		end
	end
end

