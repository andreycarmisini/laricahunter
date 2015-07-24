class Produto < ActiveRecord::Base
    belongs_to :categorium, foreign_key: 'categorias_id'
    has_many :cardapios, foreign_key: 'produto_id', :dependent => :destroy
    has_many :prato_tipicos, foreign_key: 'produtos_id', :dependent => :destroy
    def self.search(search)
      if search
        #(:all, :conditions => ['nome LIKE ?', "%#{search}%"])
        self.where("nome like ?", "%#{search}%")
      else
        #find(:all)
        self.all
      end
    end
end
