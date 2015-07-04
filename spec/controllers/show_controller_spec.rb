require 'rails_helper'

RSpec.describe ShowsController, type: :controller do

	context "GET views" do
		let (:s) { Show.first } #find(Show.ids[rand(Show.count)]) } 
		
		it "Shows#Index" do 
			get :index
			expect(response.status).to eq(200)
			expect(response.status).to render_template(:index)
		end

		it "Shows#show" do 
			params = { show: { id: s.id } }
			get :show, params
			expect(response.status).to eq(200)
			expect(response.status).to render_template(:show)
		end

		it "Shows#new" do 
			get :new
			expect(response.status).to eq(200)
			expect(response.status).to render_template(:new)
			expect(assigns(:show)).to be_a_new(Show)
		end

		it "Shows#edit" do 
			params = { show: { id: s.id } }
			get :edit, params
			expect(response.status).to eq(200)
			expect(response.status).to render_template(:edit)
		end
	end
end

#      show_albums GET    /shows/:show_id/albums(.:format)             albums#index
#                  POST   /shows/:show_id/albums(.:format)             albums#create
#   new_show_album GET    /shows/:show_id/albums/new(.:format)         albums#new
#  edit_show_album GET    /shows/:show_id/albums/:id/edit(.:format)    albums#edit
#       show_album GET    /shows/:show_id/albums/:id(.:format)         albums#show
#                  PATCH  /shows/:show_id/albums/:id(.:format)         albums#update
#                  PUT    /shows/:show_id/albums/:id(.:format)         albums#update
#                  DELETE /shows/:show_id/albums/:id(.:format)         albums#destroy
#    show_keywords GET    /shows/:show_id/keywords(.:format)           keywords#index
#                  POST   /shows/:show_id/keywords(.:format)           keywords#create
# new_show_keyword GET    /shows/:show_id/keywords/new(.:format)       keywords#new
#edit_show_keyword GET    /shows/:show_id/keywords/:id/edit(.:format)  keywords#edit
#     show_keyword GET    /shows/:show_id/keywords/:id(.:format)       keywords#show
#                  PATCH  /shows/:show_id/keywords/:id(.:format)       keywords#update
#                  PUT    /shows/:show_id/keywords/:id(.:format)       keywords#update\
#                  DELETE /shows/:show_id/keywords/:id(.:format)       keywords#destroy
#            shows GET    /shows(.:format)                             shows#index
#                  POST   /shows(.:format)                             shows#create
#         new_show GET    /shows/new(.:format)                         shows#new
#        edit_show GET    /shows/:id/edit(.:format)                    shows#edit
#             show GET    /shows/:id(.:format)                         shows#show
#                  PATCH  /shows/:id(.:format)                         shows#update
#                  PUT    /shows/:id(.:format)                         shows#update
#                  DELETE /shows/:id(.:format)                         shows#destroy
