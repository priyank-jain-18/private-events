class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :info, :default => "no further information provided"
	    t.string :location
      t.date :date

      t.timestamps
    end
  end
end