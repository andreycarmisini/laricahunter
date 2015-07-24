class PratoTipico < ActiveRecord::Base
  belongs_to :produto, foreign_key: 'produtos_id'
  belongs_to :municipio, foreign_key: 'municipios_id'
end
