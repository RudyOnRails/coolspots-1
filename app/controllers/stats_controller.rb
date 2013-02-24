class StatsController < ApplicationController
  
  def index
    
    # Create a histogram for 0 to 20 milliseconds range, and 2ms-sized bins
    histogram = Aggregate.new(0,20,2)
    
    File.read(File.dirname(__FILE__)+"/../../log/sauspiel.log").split("\n").each do |line|
      #histogram << line.scan(/\W(\d)ms/.first.to_i if line =~ /Completed 200/
    end
    
    @bins = []
    @values = []
    
    histogram.each do |bin, count|
      @bins << bin
      @values << count
    end
    
    @ranges = 0.step(response_times.max, bin_width).each_cons(2).map { |s, e| Range.new(s, e, true) }
    
    @chart_values = response_times.group_by { |v| @ranges.find { |r| r.cover? v } }
  end
  
end
