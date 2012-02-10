class ModelariosController < ApplicationController
  respond_to :html, :xml, :js
  
  def index
    @modelarios = Modelario.all
    respond_with @modelarios
  end
  def show
    @modelario = Modelario.find(params[:id])
    respond_with @modelario
  end
  def new
    @modelario = Modelario.new
    respond_with @modelario
    session[:return_to] = request.referer
  end
  def create
    @modelario = Modelario.new(params[:modelario])
    if @modelario.save
      cookies[:last_modelario_id] = @modelario.id
      flash[:notice] = "Successfully created modelario."
    end
    respond_with @modelario
  end
  def edit
    @modelario = Modelario.find(params[:id])
    respond_with @modelario
    session[:return_to] = request.referer
  end
  def update
    @modelario = Modelario.find(params[:id])
    if @modelario.update_attributes(params[:modelario])
      flash[:notice] = "Successfully updated modelario"
    end
    redirect_to session[:return_to]
  end
  def destroy
    @modelario = Modelario.find(params[:id])
    @modelario.destroy
    flash[:notice] = "Successfully destroyed modelario"
    redirect_to modelarios_path
  end
end
