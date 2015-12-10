class DisplayordersController < ApplicationController
  before_action :authenticate_user!, only: [:display]
  
  def display
    @customerhires=Customerhire.find_by_order_status("open")
    logger.debug @customerhires
    #@customerhire.each { |ch| logger.debug ch}
  end
end
