class CreateCardapios < ActiveRecord::Migration
  def change
    create_table :cardapios, :id => false do |t|
      t.float :preco
      t.string :descricao
      t.attachment :foto
      t.references :produto, index: true
      t.references :categoria, index: true

      t.timestamps
    end
  end
end
