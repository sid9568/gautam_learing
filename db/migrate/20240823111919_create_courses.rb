class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :image

      t.timestamps
    end
  end
end
