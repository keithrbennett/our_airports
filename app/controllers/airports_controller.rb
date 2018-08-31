class AirportsController < ApplicationController
  before_action :set_airport, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /airports
  # GET /airports.json
  def index
    @airports = Airport.order("#{sort_column} #{sort_direction}").page params[:page]
  end

  # GET /airports/1
  # GET /airports/1.json
  def show
  end

  # GET /airports/new
  def new
    @airport = Airport.new
  end

  # GET /airports/1/edit
  def edit
  end

  # POST /airports
  # POST /airports.json
  def create
    @airport = Airport.new(airport_params)

    respond_to do |format|
      if @airport.save
        format.html { redirect_to @airport, notice: 'Airport was successfully created.' }
        format.json { render :show, status: :created, location: @airport }
      else
        format.html { render :new }
        format.json { render json: @airport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airports/1
  # PATCH/PUT /airports/1.json
  def update
    respond_to do |format|
      if @airport.update(airport_params)
        format.html { redirect_to @airport, notice: 'Airport was successfully updated.' }
        format.json { render :show, status: :ok, location: @airport }
      else
        format.html { render :edit }
        format.json { render json: @airport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airports/1
  # DELETE /airports/1.json
  def destroy
    @airport.destroy
    respond_to do |format|
      format.html { redirect_to airports_url, notice: 'Airport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airport
      @airport = Airport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airport_params
      params.require(:airport).permit(:oa_id, :ident, :type, :name, :lat, :long, :elevation_ft, :continent, :iso_country, :iso_region, :municipality, :scheduled_service, :gps_code, :iata_code, :home_link, :wikipedia_link, :keywords)
    end

  # For sortable tables, from https://richonrails.com/articles/sortable-table-columns
  private
  def sortable_columns
    %w(name  iso_country  lat  long  elevation_ft  home_link  wikipedia_link)
  end

  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
