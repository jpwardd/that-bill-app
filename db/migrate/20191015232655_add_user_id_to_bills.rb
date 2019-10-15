class AddUserIdToBills < ActiveRecord::Migration[6.0]
  def change
     add_reference :bills, :user, foreign_key: true
  end
end
