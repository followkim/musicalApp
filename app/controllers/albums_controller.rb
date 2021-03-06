class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]
   before_filter :check_login

  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.all
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
  end

  # GET /albums/new
  def new
    @album = Album.new
    @album.show_id = Show.find(params[:show_id])
  end

  # GET /albums/1/edit
  def edit
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to show_url(@album.show_id), notice: 'Added new album to '+Show.find(@album.show_id).name+'.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albums/1
  # PATCH/PUT /albums/1.json
  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to show_url(@album.show_id), notice: 'Album was successfully updated.' }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
	if (@album.show_id.nil?) 
		redirectUrl = albums_url
	else 
		redirectUrl = show_url(@album.show_id)
	end
		
    @album.destroy
    respond_to do |format|
      format.html { redirect_to redirectUrl, notice: 'Album was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:name, :picture, :desc, :released, :spotify, :show_id)
    end

    def load_show
      @show = Show.find(params[:show_id])
	end

end
