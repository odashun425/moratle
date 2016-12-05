class AddBirthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :birth, :date
    add_column :users, :nickname, :string
    add_column :users, :university, :text
    add_column :users, :sibougyokai, :text
  end
end
