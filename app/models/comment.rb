class Comment < ApplicationRecord
  belongs_to :post
  validates_length_of :name
  validates_presence_of :body
end
