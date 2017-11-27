# == Schema Information
#
# Table name: usuario_items
#
#  id            :integer          not null, primary key
#  item_id       :integer
#  assignment_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class UsuarioItem < ApplicationRecord
  belongs_to :item
  belongs_to :assignment
end
