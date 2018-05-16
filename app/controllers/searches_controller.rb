class SearchesController < ApplicationController


  def index
    @cities = search_city_Combobox
    @food = search_food_Combobox


    @allRestaurants = Restaurant.all


  end

  def search_city_Combobox
    r=[]
    key = "%#{params[:keyword]}%"
    address= Restaurant.restaurantByCity(key)
    address.each do |a|
      r << a.city
    end
    return r.uniq
  end

  def search_food_Combobox
  r=[]
  key = "%#{params[:keyword]}%"
  types= Restaurant.restaurantByFood(key)
  types.each do |a|
    r << a.name
  end
  return r.uniq
end

  def show
    search

  end

  def search
    keyCity = "%#{params[:cityOption]}%"
    keyFood = params[:foodOption]
    if(keyFood.present?)
      restaurant= search_name + search_postalCode + search_street
      @restaurants=restaurant & search_city & search_food
    else
      restaurant= search_name + search_postalCode + search_street
      @restaurants=restaurant & search_city
      end

  end

  def search_food
    idRestaurants=[]
    keyFood = params[:foodOption]
    type = Restaurant.restaurantByType(keyFood)
      type = type.restaurants
      type.each do |a|
        idRestaurants << a
      end
    return idRestaurants
  end

  def search_city
    r=[]
    key = "%#{params[:cityOption]}%"
    address= Restaurant.restaurantByCity(key)
    address.each do |a|
      r << a.restaurant
    end
    return r
  end

  def search_name
    key = "%#{params[:keyword]}%"
    return Restaurant.restaurantByName(key)
  end

  def search_postalCode
    key = "%#{params[:keyword]}%"
    r=[]
    address=  Restaurant.restaurantByPostalCode(key)
    address.each do |a|
      r << a.restaurant
    end
    return r
  end

  def search_street
    key = "%#{params[:keyword]}%"
    r= []
    address=  Restaurant.restaurantByStreet(key)
    address.each do |a|
      r << a.restaurant
    end
    return r
  end

end
