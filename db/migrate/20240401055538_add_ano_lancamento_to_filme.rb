class AddAnoLancamentoToFilme < ActiveRecord::Migration[6.1]
  def change
    add_column :filmes, :ano_lancamento, :string
  end
end
