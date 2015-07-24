class CardapiosController < ApplicationController
  before_action :set_cardapio, only: [:show, :edit, :update, :destroy]
  before_action :set_estabelecimento, only: [:new, :show, :edit]
  before_action :set_produto, only: [:new, :show, :edit]
  before_action :selected, only: [:new, :show, :edit]
  
  skip_before_filter :verify_authenticity_token, :only => [:destroy]
  respond_to :html
  

  def index
     @param1 = params[:param1] 
    
     if !@user.nil? && policy(User).index?
        @cardapios = Cardapio.all
     else
        if @param1 != nil && current_user.nil?
          @cardapios = Cardapio.where(estabelecimentos_id: Estabelecimento.select('id').where('id' => @param1))
        else
          @cardapios = Cardapio.where(estabelecimentos_id: Estabelecimento.select('id').where('users_id' => current_user.id))
          
        end
     end
    
  end

  def show
    respond_with(@cardapio)
  end

  def new
    @cardapio = Cardapio.new
    respond_with(@cardapio)
  end

  def edit
  end

  def create
    @cardapio = Cardapio.new(cardapio_params)
    @cardapio.save
    respond_with(@cardapio)
  end

  def update
    @cardapio.update(cardapio_params)
    respond_with(@cardapio)
  end

  def destroy
    @cardapio.destroy
    respond_with(@cardapio)
  end
  
  def selected
    #@estab = Estabelecimento.searchId(current_user.id)[0].id
  end

  private
    def set_cardapio
      @cardapio = Cardapio.find(params[:id])
    end

    def cardapio_params
      params.require(:cardapio).permit(:preco, :descricao, :foto, :produto_id, :estabelecimentos_id)
    end
    
    def set_estabelecimento
     @estabelecimento = Estabelecimento.searchId(current_user, current_user.role)
    end
    
    def set_produto
     @produto = Produto.all
    end
    
end
