class IdentitiesController < ApplicationController
  def index
    @identities = Identity
        .paginate(page: params[:page], per_page: 10)
        .order('created_at DESC')
  end

  def show
    @identity = Identity.find(params[:id])
    @query = GoogleSearchResults.new q: "#{@identity.first_name}", serp_api_key: "ef36bfe645bc8bc2154487fb5708c8c4e435e20f7d91dc4b8d0f3ec11e87d562"
  end

  def new
    @identity = Identity.new
  end

  def create
    @identity = Identity.new(identity_params)
    if @identity.save
      redirect_to @identity, notice: 'Persona registrada con éxito.'
    else
      render :new
    end
  end

  def edit
    @identity = Identity.find(params[:id])
  end

  def update
    @identity = Identity.find(params[:id])
    if @identity.update(identity_params)
     redirect_to @identity
    else
     render :edit
    end
  end

  private
  def identity_params
    params.require(:identity).permit!
  end
end
