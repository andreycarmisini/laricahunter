class CreateEstabelecimentos < ActiveRecord::Migration
  def change
    create_table :estabelecimentos do |t|
      t.integer :cnpj
      t.string :razaosocial
      t.string :nomefantasia
      t.string :logradouro
      t.integer :numero
      t.string :complemento
      t.string :bairro
      t.string :cep
      t.string :fone1
      t.string :fone2
      t.string :fone3
      t.time :horaabertura
      t.time :horafechamento
      t.timestamps
    end
  end
end
