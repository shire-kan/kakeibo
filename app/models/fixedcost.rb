class Fixedcost < ApplicationRecord
  validates :name, presence: true

  has_many :fixedcost_values, dependent: :destroy
end
