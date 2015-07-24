class AddReferencesEstabelcimentoToCardapios < ActiveRecord::Migration
  def change
    add_reference :cardapio, :estabelecimentos, index: true
  end
end
