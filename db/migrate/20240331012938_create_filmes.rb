class CreateFilmes < ActiveRecord::Migration[6.1]
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.integer :ano_lancamento
      t.string :sinopse
      t.string :pais_origem
      t.integer :duracao
      t.references :diretor, null: false, foreign_key: true
      t.references :genero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
