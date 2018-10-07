class HomeController < ApplicationController
  def index
    #session[:times_here] ||= 0
    #session[:times_here] += 1
    Rails.logger.info  '#########################################'
    Rails.logger.info  params.inspect
    Rails.logger.info  '#########################################'
  end
end
