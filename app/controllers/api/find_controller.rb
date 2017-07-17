class Api::FindController < ApplicationController
	protect_from_forgery except: :some_action

    def index
      @projects = Project.all
      render json: @projects
    end

    def find_by
		@projects = Project.find_by(title: ':record')
		render json: @projects
	end

	def show
		#@projects = Project.where(title: ':record')
		@projects = Project.where('title = :record', params[:title])
		render json: @projects
	end


end
