class AddEstabelecimentoRefToMunicipioAndUser < ActiveRecord::Migration
  def change
    #add_reference :estabelecimentos, :municipios, index: true
    remove_reference :categorias, index: true
  end
end
