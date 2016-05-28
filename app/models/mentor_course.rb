class MentorCourse < ApplicationRecord
  belongs_to :course
  belongs_to :mentor
end