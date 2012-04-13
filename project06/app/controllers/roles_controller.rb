class RolesController < ApplicationController
  filter_resource_access
  
  def index
    @roles = Role.all
    
    respond_to do |format|
      format.html
      format.json { render json: @roles}
    end
  end
end
