class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, allow_blank?: false
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]
end
