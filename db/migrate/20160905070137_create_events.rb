class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.decimal :total_amount, precision: 10, scale: 2
      t.string :location
      t.date :event_date
      t.references :event_type, foreign_key: true

      t.timestamps
    end
  end
end
