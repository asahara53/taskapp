class Api::CategoriesController < ApplicationController
	protect_from_forgery except: :some_action
	def where
	@categories = Category.find(params[:id])
	@projects = Project.find[category_id: @categories]
	render json: @projects
	end
end