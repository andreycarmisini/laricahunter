class EstabelecimentosController < ApplicationController
  before_action :set_estabelecimento, only: [:show, :edit, :update, :destroy]
  before_action :set_municipios, only: [:new, :show, :edit]
  before_action :set_users, only: [:new, :show, :edit, :update]
  before_action :authenticate_user!
  skip_before_filter :verify_authenticity_token, :only => [:destroy]
  respond_to :html

  def index
    @estabelecimentos = Estabelecimento.all
    respond_with(@estabelecimentos)
    #autorizacao
    @users = User.all
    authorize @users
  end

  def show
    respond_with(@estabelecimento)
  end

  def new
    @estabelecimento = Estabelecimento.new
    respond_with(@estabelecimento)
  end

  def edit
  end

  def create
    @estabelecimento = Estabelecimento.new(estabelecimento_params)
    @estabelecimento.save
    respond_with(@estabelecimento)
  end

  def update
    @estabelecimento.update(estabelecimento_params)
    respond_with(@estabelecimento)
  end

  def destroy
    @estabelecimento.destroy
    respond_with(@estabelecimento)
  end
  
  def set_municipios
     @municipios = Municipio.all
  end
  
  def set_users
     @users = User.all
  end

  private
    def set_estabelecimento
      @estabelecimento = Estabelecimento.find(params[:id])
    end

    def estabelecimento_params
      params.require(:estabelecimento).permit(:cnpj, :razaosocial, :nomefantasia, :logradouro, :numero, :complemento, :bairro, :cep, :fone1, :fone2, :fone3, :horaabertura, :horafechamento, :municipios_id, :users_id, :name, :avatar)
    end
    
   
end
