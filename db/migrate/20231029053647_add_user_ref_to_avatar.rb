class AddUserRefToAvatar < ActiveRecord::Migration[7.1]
  def change
    add_reference :avatars, :user, null: false, foreign_key: false
  end
end
