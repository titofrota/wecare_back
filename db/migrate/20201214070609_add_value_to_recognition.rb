class AddValueToRecognition < ActiveRecord::Migration[6.0]
  def change
    add_reference :recognitions, :value, null: false, foreign_key: true
  end
end
