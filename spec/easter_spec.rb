require_relative '../easter_holiday'
 
require 'yaml'
require "spec_helper"

describe Holiday do
  before :each do
  	@holiday = Holiday.new "Kind", "Year", "Month", "Day"
  end
  subject{@holiday}
  
  it{should be_an_instance_of Holiday}
  it{should respond_to(:kind)}
  it{should respond_to(:year)}
  it{should respond_to(:month)}
  it{should respond_to(:day)}
end
