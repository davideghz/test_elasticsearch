class ProductsIndex < Chewy::Index
  define_type Product do
    field :name
    field :tags, value: -> { tags.map(&:name)}
    field :coordinates, type: 'geo_point', value: -> (product){
      { lat: product.lat, lon: product.lon }
    }
  end
end