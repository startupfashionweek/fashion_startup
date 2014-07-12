class Event < ActiveRecord::Base
  default_scope order('start_time ASC')

  validates_presence_of :date, :event_name, :description, :link, :start_time, :end_time
end
