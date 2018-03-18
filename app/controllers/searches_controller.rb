class SearchesController < ApplicationController

  def index

  end

  def show
    search
  end

  def search
      @restaurants = search_name
      @addresses = search_postalCode + search_city + search_street
  end


  def search_name
    key = "%#{params[:keyword]}%"
    return Restaurant.restaurantByName(key)
  end

  def search_postalCode
    key = "%#{params[:keyword]}%"
    return Restaurant.restaurantByPostalCode(key)
  end

  def search_city
    key = "%#{params[:keyword]}%"
    return Restaurant.restaurantByCity(key)

  end

  def search_street
    key = "%#{params[:keyword]}%"
    return Restaurant.restaurantByStreet(key)
  end

end
