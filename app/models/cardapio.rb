class Cardapio < ActiveRecord::Base
  belongs_to :estabelecimento, foreign_key: 'estabelecimentos_id'
  belongs_to :produto
  has_attached_file :foto, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :foto, :content_type => /\Aimage\/.*\Z/
  
end
