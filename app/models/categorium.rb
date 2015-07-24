class Categorium < ActiveRecord::Base
    has_many :produtos, foreign_key: 'categorias_id', :dependent => :destroy
end
