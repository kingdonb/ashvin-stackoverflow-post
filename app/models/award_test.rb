class AwardTest < ApplicationRecord
  belongs_to :award
  has_many :instructor_student_awards
  has_many :award_test_payment_notifications
  has_many :instructor_students,
    through: :instructor_student_awards

  scope :current_admin_award_test, ->(
    end_date, begin_date, instructor_student_list) {
      joins(instructor_student_awards: :instructor_student).
      where("test_date <= ? AND test_date >= ?",
            end_date.end_of_month,
            begin_date.beginning_of_month).
      where(instructor_student_awards:
            { instructor_student: instructor_student_list }
           )
    }

  scope :current_unpaid, ->(
    end_date, begin_date, instructor_student_list) {
    current_admin_award_test(end_date, begin_date, instructor_student_list).
      left_outer_joins(:award_test_payment_notifications).
        where(award_test_payment_notifications: { id: nil } )
    }
end
