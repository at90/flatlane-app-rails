class MyhomeController < ApplicationController
	before_action :set_home, only: [:show]

  # GET /cities
  # GET /cities.json
  def index
    @project = Home.all
    @filter=[]
    @id = params[:id]
    @city=City.find(@id).c_name
    @project.each do |project| 
          id=@id.to_i
          if project.c_id==id
          @filter.push(project)
          end
    end

  end
end
