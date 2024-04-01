class HomeController < ApplicationController
  def catalogo

  end

  def lista_diretors
    @diretores = Diretor.all
  end

  def lista_generos
    @generos = Genero.all
  end

  def lista_filmes
    @filmes = Filme.all
  end
end