# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  nombre      :string
#  descripcion :text
#  item_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
	validates :nombre, presence: {message: "Campo obligatorio."}
	has_many :items
	has_many :assignments
end
