class AddReferencesEstabelcimentoToCardapios2 < ActiveRecord::Migration
  def change
    add_reference :cardapios, :estabelecimentos, index: true
  end
end
