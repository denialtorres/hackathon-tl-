class IdentitiesController < ApplicationController
  has_scope :by_name

  def new
  end
 
  def create
  end

  def show
    @identity = Identity.find(params[:id])
    respond_to do |format|
      format.json { render json: @identity.to_json }
    end
  end

  def index
    @identities =  apply_scopes(Identity).all
    respond_to do |format|
      format.json { render json: @identities.to_json }
    end
  end
  
  def update
    @identity = Identity.find(params[:id])
 
    if @identity.update(params)
      redirect_to @identity
    else
      render 'edit'
    end
    respond_to do |format|
      format.json { render json: @identities.to_json }
    end
  end

  def destroy
    @identity = Identity.find(params[:id])
    @identity.destroy
 
    redirect_to articles_path
  end
end