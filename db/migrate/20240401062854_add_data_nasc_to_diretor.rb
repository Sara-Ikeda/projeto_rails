class AddDataNascToDiretor < ActiveRecord::Migration[6.1]
  def change
    add_column :diretors, :data_nasc, :date
  end
end
