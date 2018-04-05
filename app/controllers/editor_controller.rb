class EditorController < ApplicationController
  #skip_before_action :authenticate_user!, :only => [:index]
  def index
   @q = Identity.ransack(params[:q])
   @resources = @q.result.paginate(:page => params[:page], :per_page => 30)
   render :index
  end

  def search
    index
  end
end
