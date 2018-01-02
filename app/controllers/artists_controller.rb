class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  autocomplete :artist, :name, :full => true

 
  def index
    @artists = Artist.all
  end
  
  def search
   @artists = Artist.search(params[:q] , params[:page])
    respond_to do |format|
      format.html
      format.js 
    end
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_params
      params.require(:artist).permit(:name, :location_id, :description)
    end
end
