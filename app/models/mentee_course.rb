class MenteeCourse < ApplicationRecord
  belongs_to :course
  belongs_to :mentee
end