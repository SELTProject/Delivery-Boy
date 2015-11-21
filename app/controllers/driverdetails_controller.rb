class DriverdetailsController < ApplicationController

  def driverdetail_params
    params.require(:driverdetail).permit(:vehicle_no, :license_id)
  end

  def new
    @driverdetail = Driverdetail.new
  end

  def create
    logger.debug "Inside create driverdetails"
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
    logger.debug "Inside update driverdetails"
    logger.debug "driverdetail_params = "
    logger.debug driverdetail_params
    #driverdetail = Driverdetail.find_by_user_id(current_user.id)

    @user = current_user
    @user.driverdetail.update_attributes(driverdetail_params)
    flash[:notice] = "Your details were successfully updated."
    redirect_to home_path
  end

end
