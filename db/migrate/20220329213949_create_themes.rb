class CreateThemes < ActiveRecord::Migration[6.1]
  def change
    create_table :themes do |t|
      t.string :title_list
      t.string :description_list

      t.timestamps
    end
  end
end
