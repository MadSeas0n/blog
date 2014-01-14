class Post < ActiveRecord::Base
	has_many   :comments
	belongs_to :category
	validates :category, presence: true
end
