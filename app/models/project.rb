class Project < ActiveRecord::Base
	belongs_to :category
	has_many :tasks
	validates :title,
	presence: { message: "入力してください" },
	length: { minimum: 3, message: "短すぎ！"}
end
