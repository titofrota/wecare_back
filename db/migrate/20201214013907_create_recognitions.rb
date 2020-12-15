class CreateRecognitions < ActiveRecord::Migration[6.0]
  def change
    create_table :recognitions do |t|
      t.integer :sender_id, null: false
      t.integer :receiver_id, null: false
      t.text :message

      t.timestamps
    end
  end
end
