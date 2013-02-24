require 'aggregate'

histogram = Aggregate.new(0,500,20)

File.open("log/sauspiel.log").each do |line|
  histogram << line.scan(/\W(\d)ms/).flatten.first.to_i if line =~ /Completed 200/
end
puts histogram
