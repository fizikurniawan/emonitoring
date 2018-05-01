class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.float :value
      t.string :predicate
      t.integer :student_id

      t.timestamps
    end
    add_index :courses, :student_id
  end
end
