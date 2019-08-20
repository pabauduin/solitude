class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def delete
  end

  def new
  end

  def create
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
     @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = "Profile updated"
      redirect_to edit_user_path
    else
      render 'edit'
    end
  end

private

  def user_params
      params.require(:user).permit(:name, :city, :email, :password)
    end
end
