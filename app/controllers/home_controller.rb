class HomeController < ApplicationController
  def index
    param1 = params[:param1] #
    @city = params[:city]
    #@bares = Bar.find(params[:id])
    #@x = Bar.find(params[:id])
    #@todos = Sale.joins(:product).where(:@x)
    
    #@todos = Estabelecimento.find_by_sql("SELECT * FROM estabelecimentos GROUP BY id")
    @todos = Estabelecimento.search(params[:search],params[:city])
    @teste = Sale.joins(:estabelecimento).where(:estabelecimento_id => param1).distinct
    @pratostipicoscardapio = Cardapio.where(produto_id: PratoTipico.select('produtos_id').joins(:municipio).where('municipios.nome like ?', "%#{@city}%" ))
  end
end
