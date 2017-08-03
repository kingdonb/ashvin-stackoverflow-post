class AwardTest < ApplicationRecord
  belongs_to :award
  has_many :instructor_student_awards

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
end
