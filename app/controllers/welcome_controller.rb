class WelcomeController < ApplicationController

  # GET /welcome
  def index
    @prelaunch = Prelaunch.new
  end

end
