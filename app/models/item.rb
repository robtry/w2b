class Item < ApplicationRecord
  belongs_to :event
  has_one :assignment, dependent: :destroy
end
