class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campus do |t|
      t.string :classname
      t.text :classdetail
      t.string :class
      t.string :teacher
      t.string :university
      t.string :department
      t.string :course
      t.timestamps
    end
  end
end
