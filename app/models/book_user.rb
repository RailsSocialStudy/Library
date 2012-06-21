class BookUser < ActiveRecord::Base
  attr_accessible :book_id, :user_id
end
