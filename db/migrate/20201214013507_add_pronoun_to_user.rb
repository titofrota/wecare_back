class AddPronounToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :pronoun, null: false, foreign_key: true
  end
end
