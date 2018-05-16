class AdminController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    @restaurants = Restaurant.all
  end

  def manage_users
    @users = User.all
  end

  def manage_restaurants
    @restaurants = Restaurant.all
  end

  def show_restaurants_admin
  end

end
