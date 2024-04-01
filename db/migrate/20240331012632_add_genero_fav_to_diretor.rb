class AddGeneroFavToDiretor < ActiveRecord::Migration[6.1]
  def change
    add_reference :diretors, :genero, null: false, foreign_key: true
  end
end
