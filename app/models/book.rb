class Book < ApplicationRecord
    belongs_to :author #crear la relacion con tabla author
    has_many :user_books
    has_many :users, through: :user_books #crea inner join
end
