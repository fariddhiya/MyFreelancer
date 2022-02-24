class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard
  end

  def show 
    @user = User.find(params[:id])
    @gig_user = Gig.where(user_id: params[:id])
    @reviews = Review.where(seller_id: params[:id]).order("created_at desc")
  end

  def update
    @user = current_user
    if @user.update(current_user_params)
      flash[:notice] = "Profile updated"
    else
      flash[:alert] = "can't update profile"
    end
    redirect_to dashboard_path
  end

  private
  def current_user_params
    params.require(:user).permit(:from, :about, :status, :language, :avatar)
  end
end
