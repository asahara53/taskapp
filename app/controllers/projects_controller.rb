class ProjectsController < ApplicationController
	before_action :set_project, only: [:show, :edit,
	 :update, :destroy, :destroy_item, :get_item, :update_item]
	protect_from_forgery except: :some_action

	def index
		@projects = Project.all
	end

	def show
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to projects_path
		else 
			render 'new'
		end
	end

	def create_item
		@project = Project.new
		@project.title = params[:title]
		@project.save
		render json: @project
	end

	def update_item
		@project.title = params[:title]
		@project.save
		render json: @project
	end

	def edit
	end

	def update
		if @project.update(project_params)
			redirect_to projects_path
		else
			render 'edit'
		end
	end

	def destroy
		@project.destroy
		redirect_to projects_path
	end

	def destroy_item
		@project.destroy
		render text: "Delete!"
	end

	def get_item
		render json: @project
	end

	private
		def project_params
			params[:project].permit(:title)
		end

	def set_project
		@project = Project.find(params[:id])
	end
	
end
