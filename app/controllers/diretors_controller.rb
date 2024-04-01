class DiretorsController < ApplicationController
  def show
    @diretor = Diretor.find(params[:id])
  end

  def new
    @diretor = Diretor.new
  end

  def create
    @diretor = Diretor.new(nome: params[:diretor][:nome],
                           nacionalidade: params[:diretor][:nacionalidade],
                           data_nasc: params[:diretor][:data_nasc],
                           genero_id: params[:diretor][:genero_id]
                          )

    if @diretor.save

      return redirect_to(root_path)
    end

    render :new
  end

  def edit
    @diretor = Diretor.find(params[:id])
  end

  def update
    @diretor = Diretor.find(params[:id])

    if @diretor.update(nome: params[:diretor][:nome],
                       nacionalidade: params[:diretor][:nacionalidade],
                       data_nasc: params[:diretor][:data_nasc],
                       genero_id: params[:diretor][:genero_id]
                      )

      return redirect_to(root_path)
    end

    render :edit
  end
end