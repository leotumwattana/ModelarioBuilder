class SectionsController < ApplicationController
  respond_to :html, :xml, :js
  
  def sort_move
    section = Section.find(params[:section_id])
    section.row_order_position = params[:position].to_i
    section.save
    render nothing: true
  end
  
  def sort
    params[:section].each_with_index do |id, index|
      Section.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end
  
  def index
    @modelario = Modelario.find(params[:modelario_id])
    @sections = @modelario.sections.all
    respond_with @sections
  end
  
  def show
    @modelario = Modelario.find(params[:modelario_id])
    @section = @modelario.sections.find(params[:section])
    respond_with @section
  end
  
  def new
    @modelario = Modelario.find(params[:modelario_id])
    @section = @modelario.sections.build(params[:section])
    respond_with @section
    session[:return_to] = request.referer
  end
  
  def create
    @modelario = Modelario.find(params[:modelario_id])
    @section = @modelario.sections.build(params[:section])
    if @section.save
      flash[:notice] = "Successfully created section"
    end
    if params[:subsectionof]
      @s = @modelario.sections.find(params[:subsectionof])
      @s.subsections << @section
      @s.save
    end
    redirect_to session[:return_to]
  end
  
  def edit
    @modelario = Modelario.find(params[:modelario_id])
    @section = @modelario.sections.find(params[:id])
    respond_with @section
    session[:return_to] = request.referer
  end
  
  def update
    @modelario = Modelario.find(params[:modelario_id])
    @section = @modelario.sections.find(params[:id])
    #@section.title = params[:section][:title]
    #@section.modelario_id = params[:modelario_id]
    #if @section.save
    if @section.update_attributes(params[:section])
      flash[:notice] = "Successfully updated section"
    end
    redirect_to session[:return_to]
  end
  
  def destroy
    @modelario = Modelario.find(params[:modelario_id])
    @section = @modelario.sections.find(params[:id])
    @section.destroy
    flash[:notice] = "Successfully destroyed section"
    redirect_to request.referer
  end
end
