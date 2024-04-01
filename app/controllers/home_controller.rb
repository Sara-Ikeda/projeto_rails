class HomeController < ApplicationController
  def catalogo
    @filmes = Filme.all
    @diretores = Diretor.all
    @generos = Genero.all
  end

end