class Product < ApplicationRecord
  has_many :orderables
  has_many :carts, through: :orderables
  mount_uploader :image, ImageUploader

  def self.ransackable_attributes(_auth_object = nil)
    %w[category color created_at description full_description id image name price size
       updated_at]
  end
    def self.ransackable_associations(auth_object = nil)
    ["carts", "orderables"]
  end
end
