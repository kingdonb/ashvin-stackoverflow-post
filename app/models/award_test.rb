class AwardTest < ApplicationRecord
  belongs_to :award
  has_many :instructor_student_awards
end
