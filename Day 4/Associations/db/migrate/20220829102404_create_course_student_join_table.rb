class CreateCourseStudentJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses , :students
  end
end
