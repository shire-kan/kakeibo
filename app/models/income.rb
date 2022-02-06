class Income < ApplicationRecord
  validates :name, presence: true

  has_many :income_values, dependent: :destroy
end
