class Mentee < ApplicationRecord
  has_many :mentee_help_categories
  has_many :mentee_courses
  has_many :help_categories, through: :mentee_help_categories
  has_many :courses, through: :mentee_courses
end
