#!/usr/bin/env ruby

require_relative 'easter'
include Orthodox

class Holiday
  attr_accessor :year
	def initialize(year)
	  @year = year
	end

  def intro
    puts "| Welcome to \"Easter Calculator\""
    puts "| Please enter the year: ... "
  end
end

if __FILE__ == $0
  h = Holiday.new(Time.now.year)
  h.intro
  h.orthodox(@year) {gets.chomp.to_i}
end