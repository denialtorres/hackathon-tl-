class EditorController < ApplicationController
  #skip_before_action :authenticate_user!, :only => [:index]
  def index
    #binding.pry
    #@resources = Identity.last(100)
    @resources = Identity.paginate(:page => params[:page], :per_page => 30)
  end
end
