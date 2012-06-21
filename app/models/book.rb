class Book < ActiveRecord::Base
  attr_accessible :book_id, :isbn, :name
end
