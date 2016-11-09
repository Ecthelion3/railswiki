class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find_by_id(params[:id])
  end
end
