class CreateAwardTests < ActiveRecord::Migration[5.1]
  def change
    create_table :award_tests do |t|
      t.date :test_date
      t.time :test_time
      t.references :award, foreign_key: true
      t.decimal :test_fee

      t.timestamps
    end
  end
end
