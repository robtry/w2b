# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  usuario    :string
#  cantidad   :integer
#  event_id   :integer
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Assignment < ApplicationRecord
	validates :usuario, presence: {message: "Campo obligatorio"}
	validates :cantidad, presence: {message: "Campo obligatorio"}, numericality: {only_integer: true}
	#relaciones
	#has_many :usuario_items, dependent: :destroy
	#has_many :items, :through => :usuario_items
	belongs_to :event
	belongs_to :item
	
end
