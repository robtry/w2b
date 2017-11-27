class UsuarioItem < ApplicationRecord
  belongs_to :item
  belongs_to :assignment
end
