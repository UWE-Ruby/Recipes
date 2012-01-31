class Recipe < ActiveRecord::Base
  validates :name, :description, presence: true
  validates :description, length: { minimum: 5 }
end
