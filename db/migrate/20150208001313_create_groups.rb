class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :instructor_id
      t.string :group_name
      t.string :description
      t.integer :number_of_students

      t.timestamps null: false
    end
  end
end
