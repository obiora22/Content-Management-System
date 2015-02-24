class SubjectsController < ApplicationController

  layout "admin"

  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new({:name => "Default"})
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      flash[:notice] = "Subject created successfully."
      redirect_to(:action => 'index')
    else
      render(:action => 'new')
    end
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(subject_params)
    # if @subject.save
      flash[:notice] = "Subject '#{@subject.name}' was updated successfully."
      redirect_to(:action => 'show',:id => @subject.id)
    else
      render(:action => 'new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def delete
     @subject = Subject.find(params[:id])
  end
  def destroy
      subject = Subject.find(params[:id])
      subject.destroy
       flash[:notice] = "Subject '#{subject.name}' was destroyed successfully."
      redirect_to(:action => 'index', :notice => "Item was successfully deleted.")
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end
end
