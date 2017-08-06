class AjaxController < ApplicationController
	 add_template_helper(ApplicationHelper)
	def search
		@projects = Project.select(:category_id).distinct
		#表示するカテゴリー番号を取得
	end
	def result
		@projects = Project.where(category_id: params[:category_id])
		#指定されたカテゴリーIDでprojectsテーブルを検索
	end
end