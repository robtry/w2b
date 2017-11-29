# == Schema Information
#
# Table name: items
#
#  id              :integer          not null, primary key
#  numero          :integer
#  numero_original :integer
#  descripcion     :string
#  completado      :boolean          default(FALSE)
#  event_id        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Item < ApplicationRecord
	#validaciones
	validates :numero, presence: {message: "Campo obligatorio"}, numericality: {only_integer: true}
	validates :descripcion, presence: {message: "Campo obligatorio"}
	#relaciones
	belongs_to :event
	has_many :assignments
	#has_many :usuario_items, dependent: :destroy
	#has_many :assignments, :through => :usuario_items
end
