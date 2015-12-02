class DisplayordersController < ApplicationController

  def display
    @customerhires=Customerhire.all
    logger.debug @customerhires
    #@customerhire.each { |ch| logger.debug ch}


  end
end
