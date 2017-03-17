class WelcomeController < ApplicationController
  def index
    flash[:notice] = "Good afternoon!"
  end
end
