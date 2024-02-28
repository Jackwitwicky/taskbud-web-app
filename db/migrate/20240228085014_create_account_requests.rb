class CreateAccountRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :account_requests do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :request_type, null: false
      t.text :message

      t.timestamps
    end
  end
end
