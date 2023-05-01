class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :body
      t.boolean :is_completed

      t.timestamps
    end
  end
end
