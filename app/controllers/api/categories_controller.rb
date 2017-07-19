class Api::CategoriesController < ApplicationController
	protect_from_forgery except: :some_action
	def where
	@categories = Category.where(name: "record")
	@projects = Project.where(category_id: @categories)
	render json: @projects
	end
end
