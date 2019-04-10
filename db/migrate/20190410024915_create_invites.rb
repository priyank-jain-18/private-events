class CreateInvites < ActiveRecord::Migration[5.2]
  def change
    create_table :invites do |t|
      t.integer :attendee
      t.integer :attendee_event_id

      t.timestamps
    end
  end
end
