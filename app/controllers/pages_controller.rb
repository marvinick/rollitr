class PagesController < ApplicationController
def index
  @pages = Page.all
  @user = User.new
end

def new
  @page = Page.new
end

def create
  @page = Page.new(page_params)

  if @page.save
    flash[:notice] = "Great, you've just send out a new one"
    redirect_to page_path(@page)
  else
    render :new
  end
end

def show
  @page = Page.find(params[:id])
end

private

  def page_params
    params.require(:page).permit(:title, :name, :email)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end