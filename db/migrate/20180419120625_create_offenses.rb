class CreateOffenses < ActiveRecord::Migration[5.1]
  def change
    create_table :offenses do |t|
      t.string :name
      t.integer :frequency
      t.text :note

      t.timestamps
    end
  end
end
