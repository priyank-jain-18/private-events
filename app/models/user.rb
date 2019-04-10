class User < ApplicationRecord
    has_many :events, class_name: 'Event', foreign_key: 'creator_id'
	has_many :invites, :foreign_key => :attendee_id
	has_many :attended_events, :through => :invites

	def upcoming_events
		self.events.upcoming
	end
	def previous_events
		self.events.past
	end
end
