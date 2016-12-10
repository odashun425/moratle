class AddUserIdToCampus < ActiveRecord::Migration
  def change
    add_column :campus, :user_id, :integer
  end
end
