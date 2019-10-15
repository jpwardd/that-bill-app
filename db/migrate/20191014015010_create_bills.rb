class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.date :due_date, null: false
      t.string :amount, null: false
      t.boolean :auto_pay
      t.boolean :paid

      t.timestamps null: false
    end
  end
end
