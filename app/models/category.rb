class Category < ActiveRecord::Base
  has_many :recipes

  # Presence
  validates :name, presence: true

  # Length
  validates :name, length: { minimum: 5 }
  
end
