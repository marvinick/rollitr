class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      redirect_to menus_path
    else
      render :new
    end
  end

  private
    def menus_params
      params.require(:menu).permit(:menu)
    end
end