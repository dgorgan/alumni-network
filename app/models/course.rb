class Course < ApplicationRecord
  has_many :mentor_courses
  has_many :mentee_courses
  has_many :mentors, through: :mentor_courses
  has_many :mentees, through: :mentee_courses


  def self.all_to_json
    {
      courses: all.map { |course| course.to_json }
    }
  end

  def to_json
    {
      id: id,
      institution: institution,
      description: description
    }
  end

end
