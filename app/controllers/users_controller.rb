class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    render json: @user 
  end

  def destroy
    @user = User.find(params[:id])
    user.destroy(user_params)
    render json: @user 
  end

  def update
    @user = User.find(params[:id])
    user.update(user_params)
    render json: @user 
  end
end
