class Sale < ActiveRecord::Base
  belongs_to :product
  belongs_to :bar
 #validates_uniqueness_of :product_id, :scope => :bar_id, :message => "should happen once per year"
 validates_uniqueness_of :product_id, :scope => :bar_id, message: "Produto  já cadastrado para esse Bar!" 
end
