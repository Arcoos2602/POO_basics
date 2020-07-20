require_relative 'event.rb'

class WorkEvent < Event
  def initialize(start_date, duration, title, attendees, location)
    @location = location
    super(start_date, duration, title, attendees)
  end
  def is_event_acceptable?
    if @attendees.length > 3 || @duration > 60
      puts "Cette réunion ne respecte pas nos bonnes pratiques !"
      return false
    else
      puts "Cette réunion est OK."
      return true
    end
  end
end