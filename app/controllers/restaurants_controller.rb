class RestaurantsController < ApplicationController
    RESTAURANTS = {
    1 => { name: "Amarelinho", address: "Rio de Janeiro", category: "brazilian" },
    2 => { name: "Maya Café", address: "Ladeira da Glória", category: "cafe" },
    3 => { name: "Rotisseria", address: "Largo do Machado", category: "lebanese" },
    4 => { name: "Domenica", address: "Botafogo", category: "pizza" }
  }

  def index
    if params[:food_type].blank?
      @restaurants = RESTAURANTS
    else
      @category = params[:food_type]
      @restaurants = RESTAURANTS.select { |id, r| r[:category] == @category }
    end
  end

  def create
    render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:address]}'"
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end








