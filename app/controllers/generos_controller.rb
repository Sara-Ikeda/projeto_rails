class GenerosController < ApplicationController
  def show 
    @genero = Genero.find(params[:id])
  end

  def new
    @genero = Genero.new
  end

  def create
    @genero = Genero.new(nome: params[:genero][:nome])

    if @genero.save
      return redirect_to(root_path)
    end
    
    render :new
  end

  def edit
    @genero = Genero.find(params[:id])
  end

  def update
    @genero = Genero.find(params[:id])

    if @genero.update(nome: params[:genero][:nome])
      return redirect_to(root_path)

    end
    render :edit

  end
end