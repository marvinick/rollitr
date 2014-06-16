class PagesController < ApplicationController
def index
  @pages = Page.all
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

end