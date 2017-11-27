class Item < ApplicationRecord
	validates :numero, presence: {message: "Campo obligatorio"}, numericality: {only_integer: true}
	validates :descripcion, presence: {message: "Campo obligatorio"}
	belongs_to :event
	has_one :assignment, dependent: :destroy
end
