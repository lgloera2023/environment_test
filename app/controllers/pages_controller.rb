class PagesController < ApplicationController
  # Add attribute to track 
  def index
    @pages = Page.order('pages.page_number ASC')
  end
  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end
  def create
    @page = Page.new(page_parameters)
    respond_to do |format|
      if @page.save
        format.html { redirect_to page_url(@page), notice: "Page was successfully created." }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @page = Page.find(params[:id])
  end
  def update
    @page = Page.find(params[:id])
    respond_to do |format|
      if @page.update(page_parameters)
        format.html { redirect_to page_path(@page), notice: "Page was successfully updated." }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    @page = Page.find(params[:id])
  end
  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to pages_url, notice: "Page was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  private
    def page_parameters
      params.require(:page).permit(
        :chapter,
        :page_number,
        :content,
        :book_id
      )
    end
end

