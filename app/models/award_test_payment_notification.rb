class AwardTestPaymentNotification < ApplicationRecord
  belongs_to :award_test
  belongs_to :instructor_student
end
