class IdentitiesController < ApplicationController
  def index
  end
  
  def show
    @identity = Identity.find(params[:id])
    @query = GoogleSearchResults.new q: "#{@identity.first_name}", serp_api_key: "ef36bfe645bc8bc2154487fb5708c8c4e435e20f7d91dc4b8d0f3ec11e87d562"
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
