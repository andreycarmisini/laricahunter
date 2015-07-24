class RemovecolumnFromMunicipios < ActiveRecord::Migration
  def change
     remove_column :municipios, :uf_id
  end
end
