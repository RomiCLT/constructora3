class Material < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  has_many :obras, through: :materials_has_obra, dependent: :destroy
end
