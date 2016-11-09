class PagesController < ApplicationController
  def index
    @pages = Page.where(old: false)
  end

  def show
    @page = Page.find_by_id(params[:id])
  end
end
