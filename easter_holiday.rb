#!/usr/bin/env ruby
require_relative 'easter'
include Orthodox

class Holiday
  attr_accessor :year
	def initialize(year="2014")
	  @year = year
	end

	def intro
		puts "I want to know when will be #{@year}"
	end
end

if __FILE__ == $0
  h = Holiday.new
  h.intro
  h.summ(@year)

  # Change name to be "Zeke"
  h.year = 2016
  h.intro
end