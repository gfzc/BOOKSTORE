class AddReferenceToBook < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :author, foreign_key: true # comando ,nombre tabla,columna,tipo de atribu
  end
end
