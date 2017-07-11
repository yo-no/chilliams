class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.date :date
      t.text :description
      t.text :location
      t.text :url

      t.timestamps
    end
  end
end
