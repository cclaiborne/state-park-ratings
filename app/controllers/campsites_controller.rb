class CampsitesController < ApplicationController
  before_action :set_campsite, only: [:show, :edit, :update, :destroy]

  # GET /campsites
  # GET /campsites.json
  def index
    @campsites = Campsite.paginate(:page => params[:page], per_page: 14).order(:name)
    @map_marker_hash = Gmaps4rails.build_markers(@campsites) do |campsite, marker|
      marker.lat campsite.latitude
      marker.lng campsite.longitude
    end
  end

  # GET /campsites/1
  # GET /campsites/1.json
  def show
    @map_marker_hash = Gmaps4rails.build_markers(@campsite) do |campsite, marker|
      marker.lat campsite.latitude
      marker.lng campsite.longitude
    end
    @rating = Rating.new
    @ratings = Rating.paginate(:page => params[:page], per_page: 8).order(created_at: :desc)
  end

  # GET /campsites/new
  def new
    @campsite = Campsite.new
  end

  # GET /campsites/1/edit
  def edit
  end

  # POST /campsites
  # POST /campsites.json
  def create
    @campsite = Campsite.new(campsite_params)

    respond_to do |format|
      if @campsite.save
        format.html { redirect_to @campsite, notice: 'Campsite was successfully created.' }
        format.json { render action: 'show', status: :created, location: @campsite }
      else
        format.html { render action: 'new' }
        format.json { render json: @campsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campsites/1
  # PATCH/PUT /campsites/1.json
  def update
    respond_to do |format|
      if @campsite.update(campsite_params)
        format.html { redirect_to @campsite, notice: 'Campsite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @campsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campsites/1
  # DELETE /campsites/1.json
  def destroy
    @campsite.destroy
    respond_to do |format|
      format.html { redirect_to campsites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campsite
      @campsite = Campsite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campsite_params
      params.require(:campsite).permit(:name, :description, :location, :latitude, :longitude)
    end

    def rating_params
      params.require(:rating).permit(:stars, :comment, :campsite_id, :name, :description, :location, :latitude, :longitude, :user_id)
    end
end
