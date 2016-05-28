class Mentor < ApplicationRecord

  belongs_to :user
  has_many :mentor_help_categories
  has_many :help_categories, through: :mentor_help_categories
  has_many :mentor_courses
  has_many :courses, through: :mentor_courses
end
