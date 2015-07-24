class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.float :price
      t.references :product, index: true
      t.references :bar, index: true

      t.timestamps
    end
  end
end
