class ProductsSearch

  INDEX = ProductsIndex

  DEFAULTS = {
      distance: '10000km',
      skip_score: false
  }

  def initialize(options = {})
    @options = DEFAULTS.merge(options).with_indifferent_access
  end

  def search
    make_query.load
  end

  def make_query

    index = INDEX
    # index = index.filter{ tags(:or) == @options[:tag] } if tags?
    index = index.filter(coords_criteria) if location?

    index

  end

  def coords_criteria
    if location?
      {
        geo_distance: {
          distance: @options[:distance],
          coordinates: {
            lat: @options[:lat],
            lon: @options[:lon]
          }
        }
      }
    end
  end

  def location?
    @options[:lat].present? and @options[:lon].present?
  end

  def tags?
    @options[:tag].present?
  end

end