class InstructorStudentAward < ApplicationRecord
  belongs_to :award
  belongs_to :instructor_student
  belongs_to :award_test
  has_many :award_test_payment_notifications,
    through: :instructor_student

  delegate :award, to: :award_test
end
