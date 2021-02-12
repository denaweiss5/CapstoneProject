json.extract! recipe, :id, :user_id, :name, :calories, :carbs, :fat, :protein, :instructions, :ingredients, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
