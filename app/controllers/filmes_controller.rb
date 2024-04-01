class FilmesController < ApplicationController
  def show 
    @filme = Filme.find(params[:id])
  end

  def new
    @filme = Filme.new
  end

  def create
    @filme = Filme.new(titulo: params[:filme][:titulo],
                       sinopse: params[:filme][:sinopse],
                       pais_origem: params[:filme][:pais_origem],
                       duracao: params[:filme][:duracao],
                       diretor_id: params[:filme][:diretor_id],
                       genero_id: params[:filme][:genero_id],
                       ano_lancamento: params[:filme][:ano_lancamento]
                      )

    if @filme.save
      return redirect_to(root_path)
    end

    render :new
  end

  def edit
    @filme = Filme.find(params[:id])
  end

  def update
    @filme = Filme.find(params[:id])

    if @filme.update(titulo: params[:filme][:titulo],
                     sinopse: params[:filme][:sinopse],
                     pais_origem: params[:filme][:pais_origem],
                     duracao: params[:filme][:duracao],
                     diretor_id: params[:filme][:diretor_id],
                     genero_id: params[:filme][:genero_id],
                     ano_lancamento: params[:filme][:ano_lancamento]
                    )

      return redirect_to(root_path)
    end

    render :edit
  end
end