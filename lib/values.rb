require 'pry'

  groceries = {
 dairy: ["milk", "yogurt", "cheese"],
  vegetable: ["carrots", "broccoli", "cucumbers"],
  meat: ["chicken", "steak", "salmon"],
  grains: ["rice", "pasta"]
 }

def get_the_values(groceries)
  ( groceries.keys + groceries.values.grep(Hash){|sub_hash| get_the_values(sub_hash) } ).flatten
end
