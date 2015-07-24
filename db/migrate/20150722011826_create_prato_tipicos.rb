class CreatePratoTipicos < ActiveRecord::Migration
  def change
    create_table :prato_tipicos do |t|
      t.references :produtos, index: true
      t.references :municipios, index: true
      t.timestamps
    end
  end
end
