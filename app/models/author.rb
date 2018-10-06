class Author < ApplicationRecord
    has_many :books, dependent: :destroy #crear la relacion con tabla books y borra en cascada con dependencia destruccion
end
