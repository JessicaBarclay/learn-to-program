# a program which takes the time before running the code block,
# runs it, then takes the time again et the end -
# and finally figures out the difference


def profile (block_description, &block)
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end

profile "25000 doublings" do
  number = 1
  25000.times do
    number = number + number
  end
  puts "#{number.to_s.length} digits"
end

profile "count to a million" do
  number = 0
  1000000.times {number = number + 1}
end
