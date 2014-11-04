require_relative '../easter_holiday'
 
require 'yaml'
require "spec_helper"

describe Holiday do
  before :each do
  	@holiday = Holiday.new(year: "2014")
  end
  subject {@holiday}
  
  it {should be_an_instance_of Holiday}
  it {should respond_to(:year)}
  #==============Test module method=========//
  describe "Method \'orthodox\' should return right value" do
  	let(:holiday) {Holiday.new(year: 2014){include Orthodox}}
    it {should respond_to(:orthodox)}
  end
end
