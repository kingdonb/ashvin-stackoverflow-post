class CreateInstructorStudentAwards < ActiveRecord::Migration[5.1]
  def change
    create_table :instructor_student_awards do |t|
      t.references :award_test, foreign_key: true
      t.references :instructor_student, foreign_key: true
      t.boolean :is_registered, default: false

      t.timestamps
    end
  end
end
