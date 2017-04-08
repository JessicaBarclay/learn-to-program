dong = "Dong"

def clock(&block)
  block.call
end


clock do
  puts  Time.new.hour
end


p clock
