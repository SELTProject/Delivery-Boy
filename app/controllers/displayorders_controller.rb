class DisplayordersController < ApplicationController
  before_action :authenticate_user!, only: [:display, :accepted]

  def display
    #@customerhires=Customerhire.find_by_order_status("open")
    @customerhires=Customerhire.where('order_status = "open"')
    logger.debug @customerhires
    #@customerhire.each { |ch| logger.debug ch}
  end

  def accepted
    # @driverpickups = Driverpickup.where('driver_id = current_user.id')
    # @customerhires=Customerhire.find_by_order_status("accepted")

    @customerhires = Customerhire.joins('join driverpickups on customerhires.id = driverpickups.customerhire_id and customerhires.order_status = "accepted" and driverpickups.order_status = "accepted" and driverpickups.driver_id = ' + current_user.id.to_s)
             .select('customerhires.id, customerhires.user_id, customerhires.no_items, customerhires.restaurant_name, customerhires.restaurant_address1, customerhires.restaurant_address2, customerhires.restaurant_pin, customerhires.order_status, customerhires.created_at, customerhires.updated_at')

    logger.debug @customerhires
    #@customerhire.each { |ch| logger.debug ch}
  end

  def delivered_orders
    # @driverpickups = Driverpickup.where('driver_id = current_user.id')
    # @customerhires=Customerhire.find_by_order_status("accepted")

    @customerhires = Customerhire.joins('join driverpickups on customerhires.id = driverpickups.customerhire_id and customerhires.order_status = "delivered" and driverpickups.order_status = "delivered" and driverpickups.driver_id = ' + current_user.id.to_s)
             .select('customerhires.id, customerhires.user_id, customerhires.no_items, customerhires.restaurant_name, customerhires.restaurant_address1, customerhires.restaurant_address2, customerhires.restaurant_pin, customerhires.order_status, customerhires.created_at, customerhires.updated_at')

    logger.debug @customerhires
    #@customerhire.each { |ch| logger.debug ch}
  end

end
