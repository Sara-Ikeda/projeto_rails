class RemoveAnoLancamentoFromFilme < ActiveRecord::Migration[6.1]
  def change
    remove_column :filmes, :ano_lancamento, :string
  end
end
