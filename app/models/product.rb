class Product < ApplicationRecord
  has_many :orderables
  mount_uploader :image, ImageUploader

  def self.ransackable_attributes(_auth_object = nil)
    %w[category color created_at description full_description id image name price size
       updated_at]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[carts orderables]
  end
end
