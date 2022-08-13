class Obra < ApplicationRecord
    has_many :material
    has_many :materials_has_obras
end
