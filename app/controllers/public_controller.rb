class PublicController < ApplicationController
  def home
      @home = 'This is My Homepage'
      render :home
  end

  def about
      @about = 'about me: this is my awesome page'
      render :about
  end
    
end
