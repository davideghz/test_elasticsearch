class Product < ActiveRecord::Base
  after_commit :update_index

  has_many :product_tags
  has_many :tags, through: :product_tags

  def update_index
    ProductsIndex::Product.import(id)
  end

end
