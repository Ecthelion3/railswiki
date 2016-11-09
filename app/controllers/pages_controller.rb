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

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    @page.old = false

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Product was successfully created.' }
        format.json { render json: @page, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def page_params
    params.require(:page).permit(:title, :body)
  end
end
