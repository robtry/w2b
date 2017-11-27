# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  usuario    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Assignment < ApplicationRecord
	has_many :usuario_items, dependent: :destroy
	has_many :items, :through => :usuario_items
end
