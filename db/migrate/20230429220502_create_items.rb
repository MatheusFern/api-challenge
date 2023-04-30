class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :desc
      t.boolean :is_active

      t.timestamps
    end
  end
end
