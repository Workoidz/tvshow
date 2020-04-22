class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :show_name
      t.datetime :show_timing
      t.integer :duration
      t.references :channel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
