class BusinessdetailsController < ApplicationController

  def businessdetail_params
    params.require(:businessdetail).permit(:business_name, :address_line_1, :address_line_2, :zip_code, :city, :state, :country)
  end

  def new
    @businessdetail = Businessdetail.new
  end
  
  def create
    logger.debug "Inside create businessdetails"
    logger.debug "businessdetail_params = "
    logger.debug businessdetail_params
    businessdetail = Businessdetail.new(businessdetail_params)
    
    @user = current_user
    @user.businessdetail = businessdetail
    flash[:notice] = "Your details were successfully created."
    redirect_to home_path
  end
  def edit
    @businessdetail = current_user.businessdetail
  end

  def update
    logger.debug "Inside update businessdetails"
    logger.debug "businessdetail_params = "
    logger.debug businessdetail_params
    #businessdetail = Businessdetail.find_by_user_id(current_user.id)

    @user = current_user
    @user.businessdetail.update_attributes!(businessdetail_params)
    #@user.businessdetail = businessdetail
    flash[:notice] = "Your details were successfully updated."
    redirect_to home_path
  end
  
end
