class InstructorStudentAward < ApplicationRecord
  belongs_to :award
  belongs_to :instructor_student
  belongs_to :award_test

  delegate :award, to: :award_test
end
