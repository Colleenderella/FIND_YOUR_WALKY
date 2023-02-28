class CreateCompanions < ActiveRecord::Migration[7.0]
  def change
    create_table :companions do |t|
      t.string :type
      t.string :offer_details
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
