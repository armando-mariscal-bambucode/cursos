class CreateCourses < ActiveRecord::Migration[8.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.boolean :published, default: false
      t.boolean :visible, default: false

      t.timestamps
    end
  end
end
