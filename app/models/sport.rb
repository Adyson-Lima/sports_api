class Sport < ApplicationRecord
  validates :name, :description, presence: true
end
