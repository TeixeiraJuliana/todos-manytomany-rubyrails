class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.references :theme_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end