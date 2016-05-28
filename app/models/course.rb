class Course < ApplicationRecord
  belongs to :mentor_course

  has many :mentees
  has many :mentors
end
