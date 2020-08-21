class StaticController < ApplicationController
  def home
    @routes = Route.all
    render(layouts: "landing_layout")
  end
end