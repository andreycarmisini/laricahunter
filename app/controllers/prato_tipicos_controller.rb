class PratoTipicosController < ApplicationController
  before_action :set_prato_tipico, only: [:show, :edit, :update, :destroy]
  before_action :set_municipio, only: [:new, :show, :edit, :update, :destroy]
  before_action :set_produto, only: [:new, :show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token, :only => [:destroy]
  respond_to :html

  def index
    @prato_tipicos = PratoTipico.all
    respond_with(@prato_tipicos)
  end

  def show
    respond_with(@prato_tipico)
  end

  def new
    @prato_tipico = PratoTipico.new
    respond_with(@prato_tipico)
  end

  def edit
  end

  def create
    @prato_tipico = PratoTipico.new(prato_tipico_params)
    #@prato_tipico.save
    #respond_with(@prato_tipico)
    respond_to do |format|
      if @prato_tipico.save
        format.html { redirect_to @prato_tipico, notice: 'Prato Típico gravado com sucesso.' }
        format.json { render :show, status: :created, location: @prato_tipico }
      else
        format.html { render :new }
        format.json { render json: @prato_tipico.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @prato_tipico.update(prato_tipico_params)
    respond_with(@prato_tipico)
  end

  def destroy
    @prato_tipico.destroy
    respond_with(@prato_tipico)
  end

  private
    def set_prato_tipico
      @prato_tipico = PratoTipico.find(params[:id])
    end

    def prato_tipico_params
      params.require(:prato_tipico).permit(:produtos_id, :municipios_id)
    end
    
    def set_municipio
      @municipio = Municipio.all
    end
    
    def set_produto
      @produto = Produto.all
    end
  
end
