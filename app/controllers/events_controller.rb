class EventsController < ApplicationController
  def index
    @events = Event.order(:date).all
    @events_by_date = @events.group_by { |e| e.date}
  end
end
