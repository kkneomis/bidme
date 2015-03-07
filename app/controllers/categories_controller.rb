class CategoriesController < ApplicationController
  def food
    @events=Event.where(category: "Food")
  end

  def venue
    @events=Event.where(category: "Venue")
  end

  def decorations
    @events=Event.where(category: "Decorations")
  end

  def entertainment
    @events=Event.where(category: "Entertainment")
  end

  def catering
    @events=Event.where(category: "Catering")
  end

  def clothing
    @events=Event.where(category: "Clothing")
  end

  def other
    @events=Event.where(category: "Other")
  end
end
