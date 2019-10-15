class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :name, null: false
      t.string :amount, null: false
      t.date :start_date
      t.date :end_date
      t.string :description

      t.timestamps null: false
    end
  end
end
