class HomeController < ApplicationController
  def index
  	 @hotdogs = Hotdog.order_alphabetical
  end
end
