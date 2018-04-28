class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :nis
      t.string :nisn
      t.string :grade
      t.integer :sex
      t.date :birthdate
      t.string :address
      t.string :photo

      t.timestamps
    end
  end
end
