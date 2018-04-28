class CreateCoursedets < ActiveRecord::Migration[5.1]
  def change
    create_table :coursedets do |t|
      t.string :name
      t.float  :value
      t.integer :course_id

      t.timestamps
    end
    add_index :coursedets, :course_id
  end
end
