class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :location
      t.date :date
      t.time :time
      t.references :user, null: false, foreign_key: true
      t.references :companion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
