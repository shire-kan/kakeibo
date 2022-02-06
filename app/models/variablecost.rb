class Variablecost < ApplicationRecord
  validates :name, presence: true

  has_many :variablecost_values, dependent: :destroy
end
