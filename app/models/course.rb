class Course < ApplicationRecord
  has_many :mentor_courses
  has_many :mentee_courses
  has_many :mentors, through: :mentor_courses
  has_many :mentees, through: :mentee_courses
end
