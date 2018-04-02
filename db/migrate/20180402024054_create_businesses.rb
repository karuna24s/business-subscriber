class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :business_name
      t.integer :status
      t.timestamps
    end
  end
end
