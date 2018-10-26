class Pokemon < ApplicationRecord
  belongs_to :trainer, optional: true # allowed us to do Pokemon.trainer
  validates :name, uniqueness: true
end
