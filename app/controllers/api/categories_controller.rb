class Api::CategoriesController < ApplicationController
	protect_from_forgery except: :some_action
	def hasmany
	@projects = Project.where(category_id: params["record"])
	render json: @projects
	end

	def update
		@project = Project.find(params[:id])
		@project.category_id = params["record"]
		@project.save
		render json: @project
	end
end
