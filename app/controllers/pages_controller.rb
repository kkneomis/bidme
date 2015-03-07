class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end
  
  def planner
    @events = Event.where(user: current_user)
  end
  
end
