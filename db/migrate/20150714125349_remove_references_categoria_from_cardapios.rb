class RemoveReferencesCategoriaFromCardapios < ActiveRecord::Migration
  def change
    remove_reference :cardapios, :categoria, index: true
  end
end
