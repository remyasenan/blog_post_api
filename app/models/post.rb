class Post < ApplicationRecord

	# validations
  validates_presence_of :title, :url, :created_at
end
