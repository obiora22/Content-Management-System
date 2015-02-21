class PagesController < ApplicationController
  
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end
  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:notice] = "Your page was created successfully."
      redirect_to(:action =>'index')
    else
      render('new')  
    end
  end
  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:notice] = "This page was updated successfully."
       redirect_to(:action => 'show',:id => @page.id)
    else
       render('edit')
       end   
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "This subject '#{@page.name}' was destroyed successfully."
    redirect_to(:action => 'index', :notice => "Page was successfully deleted.")
  end

  private

  def page_params
    params.require(:page).permit(:name, :permalink, :position, :visible, :subject_id)
  end

end
