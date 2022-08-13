class Category < ApplicationRecord
    has_many :material, dependent: :destroy
end
