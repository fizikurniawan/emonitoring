class CreateAchievements < ActiveRecord::Migration[5.1]
  def change
    create_table :achievements do |t|
      t.string :name
      t.string :level
      t.date :achievement_date

      t.timestamps
    end
  end
end
