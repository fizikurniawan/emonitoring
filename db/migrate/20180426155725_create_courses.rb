class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.float :value
      t.string :predicate

      t.timestamps
    end
  end
end
