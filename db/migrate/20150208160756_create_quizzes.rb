class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :instructor_id
      t.integer :group_id
      t.string :title
      t.string :subject
      t.string :description
      t.integer :mark
      t.date :date_to_publish
      t.time :time_to_publish
      t.boolean :status

      t.timestamps null: false
    end
  end
end
