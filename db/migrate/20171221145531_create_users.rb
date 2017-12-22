class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :phone
      t.string :email
      t.boolean :sendToMail
      t.boolean :sendToSms

      t.timestamps
    end
  end
end
