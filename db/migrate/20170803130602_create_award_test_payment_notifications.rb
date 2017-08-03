class CreateAwardTestPaymentNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :award_test_payment_notifications do |t|
      t.references :award_test, foreign_key: true
      t.references :instructor_student, foreign_key: true

      t.timestamps
    end
  end
end
