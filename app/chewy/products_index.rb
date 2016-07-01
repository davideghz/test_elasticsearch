class ProductsIndex < Chewy::Index
  define_type Product do
    field :name
    field :tags, value: -> { tags.map(&:name)}
  end
end