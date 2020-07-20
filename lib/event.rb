require 'pry'
require 'time'

class Event
  attr_accessor :start_date
  attr_accessor :duration
  attr_accessor :title
  attr_accessor :attendees

  def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
    @start_date = Time.parse(start_date_to_save)
    @duration = duration_to_save
    @title = title_to_save
    @attendees = attendees_to_save
  end

  def postpone_24h
    @start_date = @start_date + 24*60*60 
  end

  def end_date
    return @start_date + @duration*60
  end

  def is_past?
    Time.now > @start_date
  end

  def is_future?
    Time.now < @start_date
  end

  def is_soon?
    Time.now - @start_date < 30
  end

  def to_s
    puts "< Titre : #{@title}"
    puts "< Date de début #{@start_date}"
    puts "< Durée : #{duration}"
    @attendees.each { |email| puts "< Invités #{email}" }
  end
end
