class SectionsController < ApplicationController
  layout "admin"
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end
 def create
   @section = Section.new(section_params)
   if @section.save
    flash[:success] = "Your section was created successfully."
      redirect_to(:action => 'index')
   else
      render('new')
   end      
 end
  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)
      flash[:success] = "This section was updated successfully."
      redirect_to(:action => 'index')
     else
      render('new')
      end 
  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "This section #{@section.name} was destroyed successfully."
    redirect_to(:action => 'index', :notice => "Page was successfully deleted.")
  end
  private

  def section_params
    params.require(:section).permit(:page_id, :name, :position, :visible, :content_type, :content )
  end
end
