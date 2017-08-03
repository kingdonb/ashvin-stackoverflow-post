class InstructorStudent < ApplicationRecord
  has_many :instructor_student_awards, dependent: :destroy
  has_many :awards, through: :instructor_student_awards
  has_many :award_test_payment_notifications, dependent: :destroy
end
