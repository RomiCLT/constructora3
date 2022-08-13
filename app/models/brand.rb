class Brand < ApplicationRecord
    has_many :material, dependent: :destroy
end
