class CustomerhiresController < ApplicationController

  before_action :authenticate_user!, only: [:create,:new]

  def customerhire_params
    params.require(:customerhire).permit(:no_items, :restaurant_name,:restaurant_address1,:restaurant_address2,:restaurant_pin)
  end

  def accept
    id = params[:id]
    customerhire = Customerhire.find(id)
    @driverpickup = Driverpickup.new()
    @driverpickup.driver_id = current_user.id
    @driverpickup.customer_id = customerhire.user_id
    @driverpickup.customerhire_id = customerhire.id
    @driverpickup.order_status = "accepted"
    @driverpickup.save
    customerhire.update(order_status: 'accepted')
    customerhire.save
    flash[:notice] = "Cheers! You have successfully accepted a delivery request. Make the delivery ASAP"
    redirect_to display_displayorder_path
  end


  def cancel
    id = params[:id]
    customerhire = Customerhire.find(id)
    customerhire.update(order_status: 'open')
    customerhire.save

    driverpickup= Driverpickup.where("customerhire_id = #{id}")
    driverpickup.each { |dp|
      if dp.order_status=="accepted"
        dp.update(order_status: "canceled")
      end
      }

    flash[:notice] = "You canceled the order"
    redirect_to display_displayorder_path
  end

  def delivered
    id = params[:id]
    customerhire = Customerhire.find(id)
    customerhire.update(order_status: 'delivered')
    customerhire.save

    driverpickup= Driverpickup.where("customerhire_id = #{id}")
    driverpickup.each { |dp|
      if dp.order_status=="accepted"
         dp.update(order_status: "delivered")
      end
      }
    redirect_to  delivered_orders_displayorder_path
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
