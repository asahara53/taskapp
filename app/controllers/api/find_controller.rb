class Api::FindController < ApplicationController
	protect_from_forgery except: :some_action

    def index
      @projects = Project.all
      render json: @projects
    end

    def find_by
		@projects = Project.find_by(title: params["record"])
		binding.pry
		render json: @projects
	end

	def belongs
		@projects = Project.find_by(name: params["record"])
		binding.pry
		render json: @projects
	end


end
