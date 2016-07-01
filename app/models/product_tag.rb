class ProductTag < ActiveRecord::Base
  after_commit :update_index

  belongs_to :product
  belongs_to :tag

  def update_index
    ProductsIndex::Product.import(product_id)
  end

end
