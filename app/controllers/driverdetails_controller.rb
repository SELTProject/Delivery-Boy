class DriverdetailsController < ApplicationController

  def driverdetail_params
    params.require(:driverdetail).permit(:vehicle_no, :license_id)
  end

  def new
    @driverdetail = Driverdetail.new
  end
  
  def create
    logger.debug "driverdetail_params = "
    logger.debug driverdetail_params
    driverdetail = Driverdetail.new(driverdetail_params)
    
    @user = current_user
    @user.driverdetail = driverdetail
    flash[:notice] = "Your details were successfully created."
    redirect_to home_path
  end

  def edit
    @driverdetail = current_user.driverdetail
  end

  def update
    driverdetail = Driverdetail.new(params[:driverdetail]);
    
    @user = current_user
    @user.driverdetail = driverdetail
    #@movie.update_attributes!(movie_params)
    flash[:notice] = "Your details were successfully updated."
    redirect_to home_path
  end
  
end
