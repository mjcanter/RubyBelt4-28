class UserController < ApplicationController
  	before_action :check_session
  def index
    @user = User.find_by_id(session[:user_id])
    @usershoes = Shoe.where(user_id: session[:user_id])
    @shoessold = Buyerseller.where(user_id: session[:user_id]).includes(:buyer)
    @shoesbought = Buyerseller.where(buyer_id: session[:user_id]).includes(:user)
    @sold = Buyerseller.all
    @purchase_amount = 0
    @sale_amount = 0
  end

  private
  def check_session
  	if !session[:user_id]
  		redirect_to '/'
    end
  end

end
