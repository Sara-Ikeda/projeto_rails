class RemoveDataNascFromDiretor < ActiveRecord::Migration[6.1]
  def change
    remove_column :diretors, :data_nasc, :string
  end
end
