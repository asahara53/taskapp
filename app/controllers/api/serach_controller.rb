module Api

  class ProjectsController < ApplicationController
    def index
      @projects = Project.all
      render json: @projects
    end

    def search_item
		@projects = Project.all
	end
  end
end