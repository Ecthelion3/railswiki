class PagesController < ApplicationController
  def index
    @pages = Page.where(old: false)
  end

  def show
    @page = Page.find_by_id(params[:id])
  end

  def history
    @page = Page.find_by_id(params[:id])
    @pages = Page.where(title: @page.title)
  end
end
