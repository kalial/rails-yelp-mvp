class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # When a restaurant is destroyed, all of its reviews should be destroyed as well.
  # Validation --> review
  # Validation --> restaurant
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :phone_number, presence: true
end
# Validation
# A restaurant must have at least a name, an address and a category.
# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
# A review must have a parent restaurant.
# A review must have content and a rating. The rating should be a number between 0 and 5.
# When a restaurant is destroyed, all of its reviews should be destroyed as well.
