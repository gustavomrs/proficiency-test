class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.references :student, index: true
      t.references :course, index: true

      t.timestamps
    end
    add_foreign_key :classrooms, :students, column: :student_id
    add_foreign_key :classrooms, :courses, column: :course_id
  end
end
