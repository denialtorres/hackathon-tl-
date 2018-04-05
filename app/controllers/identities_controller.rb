class IdentitiesController < ApplicationController
  def index
  end
  
  def show
    @identity = Identity.find(params[:id])
  end
  
  def edit
    @identity = Identity.find(params[:id])
  end
  
  def update
    @identity = Identity.find(params[:id])
    if @identity.update(identity_params)
     redirect_to @identity
    else
     render 'edit'
    end
  end
  
  private
  def identity_params
    params.require(:identity).permit!
  end
end
