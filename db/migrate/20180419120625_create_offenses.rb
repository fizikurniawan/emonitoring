class CreateOffenses < ActiveRecord::Migration[5.1]
  def change
    create_table :offenses do |t|
      t.string :name
      t.integer :frequency
      t.text :note
      t.integer :student_id

      t.timestamps
    end
    add_index :offenses, :student_id
  end
end
