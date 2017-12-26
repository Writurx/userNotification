class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.boolean :sms
      t.string :textCode
      t.text :shablon

      t.timestamps
    end
  end
end
