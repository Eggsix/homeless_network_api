class Comment < ApplicationRecord
	 validates_presence_of :author, :comment
end
