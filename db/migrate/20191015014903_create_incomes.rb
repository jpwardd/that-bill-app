class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.string :name
      t.string :amount, null: false
      t.belongs_to :user
    end
  end
end
