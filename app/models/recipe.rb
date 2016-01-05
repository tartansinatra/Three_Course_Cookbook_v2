class Recipe < ActiveRecord::Base
  belongs_to :category

# Presence
validates :name, presence: true

# Length
validates :name, length: { minimum: 5 }
validates :name, length: { maximum: 50 }

end
