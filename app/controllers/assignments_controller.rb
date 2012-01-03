class AssignmentsController < ApplicationController
  respond_to :html, :xml, :js
  
  def sort
    params[:assignment].each_with_index do |id, index|
      Assignment.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end
  
  def new
    @assignment = Assignment.new
    respond_with @assignment
  end
  
  def create
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    flash[:notice] = "Successfully removed assignment"
    redirect_to request.referer
  end
  
end
