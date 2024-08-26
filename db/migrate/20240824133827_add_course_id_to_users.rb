class AddCourseIdToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :course, foreign_key: true
  end
end
