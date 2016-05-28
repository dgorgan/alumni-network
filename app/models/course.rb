class Course < ApplicationRecord
  belongs_to :mentor_course

  has_many :mentees
  has_many :mentors
end
