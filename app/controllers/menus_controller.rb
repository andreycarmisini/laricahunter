class MenusController < ApplicationController
   def index
    param1 = params[:param1] #
    #@bares = Bar.find(params[:id])
    #@x = Bar.find(params[:id])
   # @todos = Sale.joins(:product).where(:@x)
    @todos = Estabelecimento.find_by_sql("SELECT nomefantasia FROM estabelecimentos GROUP BY id")
    @teste = Estabelecimento.where(:id => param1).distinct
    @menus = Sale.joins(:estabelecimento).where(:estabelecimento_id => param1).distinct
   end
end
