class Food < ApplicationRecord
  belongs_to :Category
  belongs_to :Course
end
