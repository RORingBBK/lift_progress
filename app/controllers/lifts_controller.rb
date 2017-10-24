class LiftsController < ApplicationController

  def index
    @lift = Lift.all
  end

end
