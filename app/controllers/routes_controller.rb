class RoutesController < ApplicationController
  before_action :set_route, except: [:index, :new, :create]

  def index
    @routes = Route.all
  end

  def new
    @route = Route.new
  end

  def create
    @route = current_user.routes.build(route_params)
      if @route.save
        redirect_to user_routes_path(current_user, @route)
      else 
        render :new
      end
  end

  def show
  end

  def edit
  end

  def update
    if @route.update(route_params)
      redirect_to user_routes_path(current_user, @route)
    else
      render :edit
    end
  end

  def destroy
    @route.destroy
    redirect_to user_routes_path(current_user)
  end

  private
    def set_route
      @route = Route.find_by_id(params[:id])
    end

    def route_params
      params.require(:route).permit(:name, :type, :stars, :pitches, :location, :url)
    end
end
