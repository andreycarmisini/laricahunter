class Estabelecimento < ActiveRecord::Base
  belongs_to :municipio, foreign_key: 'municipios_id'
  belongs_to :user, foreign_key: 'users_id'
  has_many :cardapios, foreign_key: 'estabelecimentos_id', :dependent => :destroy
  #accepts_nested_attributes_for :cardapios
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
    
  def self.search(search, city)
      #if search
        @estabelecimento =  self.joins(:municipio).where('municipios.nome like ?', "%#{city}%" ).where("nomefantasia like ?", "%#{search}%")
        @estabelecimento =  @estabelecimento + self.joins(:municipio).where('municipios.nome like ?', "%#{city}%" ).where(id: Cardapio.select("estabelecimentos_id").joins(:produto).where("nome like ?", "%#{search}%"))
        self.where(id: @estabelecimento)
      #else
      #  self.all
      #end
  end
  
  def self.searchId(current_user, role)
      if role != 'admin' 
        self.where('users_id' => current_user)
      else
        self.all 
      end  
  end
  
end
