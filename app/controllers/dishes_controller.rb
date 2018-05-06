class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]
  before_action :set_restaurant, except: :destroy
  before_action :authenticate

  # GET /dishes
  # GET /dishes.json
  def index
    @dishes = @restaurant.dishes
  end

  # POST /dishes
  # POST /dishes.json
  def create
    @dish = @restaurant.dishes.new(dish_params)

    if @dish.save
      redirect_to restaurant_dishes_path, notice: 'Dish was successfully created'
    else
      redirect_to restaurant_dishes_path, notice: 'No ha sido posible crear el plato'
    end
  end

  # PATCH/PUT /dishes/1
  # PATCH/PUT /dishes/1.json
  def update
    respond_to do |format|
      if @dish.update(dish_params)
        format.html { redirect_to restaurant_dishes_path, notice: 'Dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish }
      else
        format.html { render :edit }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dishes/1
  # DELETE /dishes/1.json
  def destroy
    @dish.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_dishes_path, notice: 'Dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_dish
      @dish = Dish.find(params[:id])
    end

  def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

  # Never trust parameters from the scary internet, only allow the white list through.
  def dish_params
      params.require(:dish).permit(:name, :description, :price, :image)
    end

  def authenticate
    if !user_signed_in? || !@restaurant.belongsToUser?(current_user) || current_user.role == 1
      redirect_to(@restaurant, alert: "No tiene permiso")
    end
  end
end
