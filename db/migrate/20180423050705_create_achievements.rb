class CreateAchievements < ActiveRecord::Migration[5.1]
  def change
    create_table :achievements do |t|
      t.string :name
      t.string :level
      t.date :achievement_date
      t.integer :student_id

      t.timestamps
    end
    add_index :achievements, :student_id
  end
end
