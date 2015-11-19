class DriverdetailsController < ApplicationController

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end

  def new
    @driverdetail = Driverdetail.new
  end
  
  def create
    @driverdetail;
    @user = current_user
    @user.driverdetail << @driverdetail
    flash[:notice] = "Your details were successfully created."
    redirect_to home_path
  end

  def edit
    @driverdetail = current_user.driverdetail
  end

  def update
    @driverdetail;
    @user = current_user
    @user.driverdetail << @driverdetail
    #@movie.update_attributes!(movie_params)
    flash[:notice] = "Your details were successfully updated."
    redirect_to home_path
  end
  
end
