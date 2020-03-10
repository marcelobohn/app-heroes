class Hero < ApplicationRecord
  validates :name, presence: true
  has_many_attached :files
end
