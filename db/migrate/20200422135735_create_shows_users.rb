class CreateShowsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :shows_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :show, null: false, foreign_key: true
    end
  end
end
