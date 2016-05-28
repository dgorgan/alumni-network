class Mentor < ApplicationRecord
  has_many :mentor_help_categories
  has_many :help_categories, through: :mentor_help_categories
end
