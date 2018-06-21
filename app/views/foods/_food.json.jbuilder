json.extract! food, :id, :name, :content, :price, :image, :Category_id, :Course_id, :created_at, :updated_at
json.url food_url(food, format: :json)
