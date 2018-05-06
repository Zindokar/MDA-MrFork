class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:edit, :update, :destroy]

  # GET /restaurants
  # GET /restaurants.json
  def index
    load_restaurants
    @restaurants = Restaurant.all
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    if user_signed_in?
      @myReservation = Reservation.myRestaurantReservation(current_user.id, @restaurant.id)
    end
    @photos = @restaurant.photos
    @dishes = @restaurant.dishes
    @address = @restaurant.address
    @types = @restaurant.types
    @schedules = @restaurant.schedules
  end

  # GET /restaurants/new
  def new
    if !user_signed_in? || current_user.role == 1
      redirect_to(restaurants_path, alert: "No tiene permiso")
    end
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    if !user_signed_in? || current_user.role == 1
      redirect_to(restaurants_path, alert: "No tiene permiso")
    end

    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to edit_restaurant_path(@restaurant), notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def load_restaurants
    @restaurants_default = Gmaps4rails.build_markers(Restaurant.all) do |plot, marker|
      if plot.address.present?
        marker.lat plot.address.latitude
        marker.lng plot.address.longitude
        @status = rand(1..2)
        @openingTime = rand(10..13).to_s  + ":00 am"
        @closingTime = rand(20..24).to_s + ":00 pm"
        @punctuation = rand(4..10)
        marker.infowindow render_to_string(:partial => "/restaurants/info", :locals => {:name => plot.name, :openingTime => @openingTime, :closingTime => @closingTime, :punctuation => @punctuation })
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :description)
  end

  def authenticate
    if !user_signed_in? || !@restaurant.belongsToUser?(current_user) || current_user.role == 1
      redirect_to(@restaurant, alert: "No tiene permiso")
    end
  end
end