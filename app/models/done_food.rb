class DoneFood < ApplicationRecord
  belongs_to :Client
  belongs_to :Food
end
