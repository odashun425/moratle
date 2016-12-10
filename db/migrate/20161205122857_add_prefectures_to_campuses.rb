class AddPrefecturesToCampuses < ActiveRecord::Migration
  def change
    add_column :campuses, :prefectures, :string
  end
end
