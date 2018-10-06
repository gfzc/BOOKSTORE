class Author < ActiveRecord::Migration[5.2]
  def change
    #agregar columna
    add_column :authors, :year, :integer # comando ,nombre tabla,columna,tipo de atribu
  end
end
