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
      redirect_to menu_path(@menu)
    else
      render :new
    end
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])

    if @menu.update
      redirect_to menu_path(@menu)
    else
      render :edit
    end
  end


  private
    def menu_params
      params.require(:menu).permit(:menu)
    end
end