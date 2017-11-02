class Recipe
  attr_reader :uri, :label, :image_url, :source, :source_url, :ingredient_lines

  def initialize(uri, label, image_url, source, source_url, ingredient_lines)
    if uri == nil || label == nil || image_url == nil || source == nil || source_url == nil || ingredient_lines == nil
      raise ArgumentError.new("Recipe was not created")
    end
    
    @uri = uri
    @label = label
    @image_url = image_url
    @source = source
    @source_url = source_url
    @ingredient_lines = ingredient_lines # Array
    # TODO: Add in the nutrient labels
    # @diet_labels = diet_labels # Array
    # @health_labels = health_labels # Array
    # @ingredients = ingredients # Array with hashes inside
    # @calories = calories
    # @total_weight = total_weight
    # @total_nutrients = total_nutrients # Hash key with hashes as the values --> Another method to parse out each label
    # @total_daily = total_daily
    # @digest = digest #Hash Key with an Array of hashes
  end

  def uri_id # This is called in the view
    return self.uri[/(?<=_)[a-zA-Z0-9]+/]
  end

end



# response.parsed_response["hits"][0]["recipe"]["uri"]
# ["image"]
# ["url"]
# ["dietLabels"] => ["Low-Carb"]
# ["healthLabels"] => ["Sugar-Conscious",
 # "Peanut-Free",
 # "Tree-Nut-Free",
 # "Alcohol-Free"]
 #["ingredientLines"] =>
  # ["1/2 cup (125ml) mirin",
  #  "1/2 cup (125ml) soy sauce",
  #  "One 2-inch (5cm) piece of fresh ginger, peeled and grated",
  #  "2-pounds (900g) boneless chicken thighs (4-8 thighs, depending on size)"],
  #


# response["hits"].each do |recipe|