class Tag < ActiveRecord::Base
  after_commit :update_index

  has_many :product_tags
  has_many :products, through: :product_tags

  def update_index
    ProductsIndex::Product.import(products.ids)
  end

end
