class Event < ApplicationRecord
	validates :nombre, presence: {message: "Campo obligatorio."}
	has_many :items
end
