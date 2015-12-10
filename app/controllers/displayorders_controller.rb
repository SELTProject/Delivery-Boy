class DisplayordersController < ApplicationController
  before_action :authenticate_user!, only: [:display]
  
  def display
    @customerhires=Customerhire.all
    logger.debug @customerhires
    #@customerhire.each { |ch| logger.debug ch}


  end
end
