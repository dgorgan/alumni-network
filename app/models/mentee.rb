class Mentee < ApplicationRecord
  has_many :mentee_help_categories
  has_many :help_categories, through: :mentee_help_categories
end
