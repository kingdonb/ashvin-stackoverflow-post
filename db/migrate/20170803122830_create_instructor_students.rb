class CreateInstructorStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :instructor_students do |t|

      t.timestamps
    end
  end
end
