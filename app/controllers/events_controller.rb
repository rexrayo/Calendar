class EventsController < ApplicationController
  def index
  end

  def create
  	@event = Event.new
  	@event.save
  end

  def edit
  end

  def new
  	@event = Event.new
  end
end
