class CreateSubscribers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :email_address
      t.integer :business_id
      t.timestamps
    end
  end
end
