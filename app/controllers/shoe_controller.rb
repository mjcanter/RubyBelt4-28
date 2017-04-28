class ShoeController < ApplicationController
	before_action :check_session
  def index
  	@user = User.find_by_id(session[:user_id])
  	@shoes = Shoe.all
  	@sold = Buyerseller.all
  end

  def create
  	@shoe = Shoe.create(shoe_params)
    redirect_to '/users'
  end

  def buy
  	@buy = Buyerseller.create(buy_params)
  	redirect_to '/users'
  end

  def delete
  	Shoe.find(params[:id]).destroy
  	redirect_to '/users'
  end

  private
  
  def shoe_params
  	params.require(:shoes).permit(:id, :product, :amount, :user_id)
  end

  def buy_params
  	params.require(:buys).permit(:user_id, :buyer_id, :shoe_id)
  end
  def check_session
  	if !session[:user_id]
  		redirect_to '/'
    end
  end
end
