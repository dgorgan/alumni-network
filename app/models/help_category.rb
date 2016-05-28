class HelpCategory < ApplicationRecord
  has_many :mentee_help_categories
  has_many :mentees, through: :mentee_help_categories
  has_many :mentor_help_categories
  has_many :mentors, through: :mentor_help_categories
end
