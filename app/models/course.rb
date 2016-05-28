class Course < ApplicationRecord
  # belongs_to :mentor_course
  # has_many :mentees
  # has_many :mentors

  has_many :mentor_courses
  has_many :mentee_courses
  has_many :mentors, through: :mentor_courses
  has_many :mentees, through: :mentee_courses
end
