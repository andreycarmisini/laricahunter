class AddUfRefToMunicipios < ActiveRecord::Migration
  def change
    add_reference :municipios, :ufs, index: true
  end
end
