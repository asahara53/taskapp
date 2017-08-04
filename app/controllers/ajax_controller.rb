class AjaxController < ApplicationController
	protect_from_forgery except: :some_action
	def search
		#選択ボックスに表示するカテゴリー名を取得
		@projects = Project.select(:category_id).distinct
	end

	def result
		#選択ボックスで指定されたカテゴリーでprojectsテーブルを検索
		@projects = Project.where(category_id: params[:category_id])
	end
end
