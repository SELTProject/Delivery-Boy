class CustomerhiresController < ApplicationController

  before_action :authenticate_user!, only: [:create,:new]

  def customerhire_params
    params.require(:customerhire).permit(:no_items, :restaurant_name,:restaurant_address1,:restaurant_address2,:restaurant_pin)
  end

  def new
    @customerhire = Customerhire.new
  end

  def create
    # logger.debug "Inside create customerhire"
    # logger.debug "Customerhire = "
    # logger.debug customerhire_params
    customerhire = Customerhire.new(customerhire_params)
    if current_user
      @user = current_user
      @user.customerhires << customerhire
    end



    #customerhire.save
    #@user = current_user
    #@user.driverdetail = driverdetail
    flash[:notice] = "Delivery Boy will contact you shortly :)"
    redirect_to home_path
  end

end
