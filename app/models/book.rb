class Book < ApplicationRecord
  has_many :ordered_books
  has_many :orders, through: :ordered_books
  has_many :comments
end
