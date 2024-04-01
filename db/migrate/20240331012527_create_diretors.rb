class CreateDiretors < ActiveRecord::Migration[6.1]
  def change
    create_table :diretors do |t|
      t.string :nome
      t.string :nacionalidade
      t.datetime :data_nasc

      t.timestamps
    end
  end
end
