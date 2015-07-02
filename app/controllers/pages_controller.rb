class PagesController < ApplicationController
  def home
    @title = "Home"	  
  end

  def contact
   @title = "Contact"
  end

  def about
   @title = "About"
  end	
  
  def help
   @title = "Help"	  
  end


def show_data
    @command = params[:command]
    @rgen_version = params[:rgen_version]
    @tools = params[:tools] || []
    @platforms = params[:platforms] || []
    @vault = params[:vault] || [] 
end


end  
