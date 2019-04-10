class UsersController < ApplicationController
  def show
    user = User.find(params[:id]) 
    render json: user
  end
  def create 
    user=User.new(params[:id])
    user.save!
  end
  def update
    user = User.find(params[:id])
    user.update!(user_params)
  end
  def destroy
    user = User.find(params[:id])
    user.destroy!
  end
end
