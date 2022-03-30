class AddUserToThemes < ActiveRecord::Migration[6.1]
  def change
    add_reference :themes, :user, foreign_key: true
  end
end
