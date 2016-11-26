class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :nickname
      t.integer :rate
      t.text :review
      t.integer :attendance
      t.integer :textbook
      t.integer :test
      t.integer :test_times
      t.integer :test_bringing
      t.integer :report
      t.timestamps
    end
  end
end
