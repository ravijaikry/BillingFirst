class CreateOutstandingBills < ActiveRecord::Migration[5.0]
  def change
    create_table :outstanding_bills do |t|
      t.references :attendee, foreign_key: true

      t.timestamps
    end
  end
end
