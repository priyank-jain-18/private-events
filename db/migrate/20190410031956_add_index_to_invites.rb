class AddIndexToInvites < ActiveRecord::Migration[5.2]
  def change
      add_index :invites, :attendee_id
	    add_index :invites, :attended_event_id
	    add_index :invites, [:attendee_id, :attended_event_id], unique: true
  end
end
