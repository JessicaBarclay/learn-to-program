# Take a block of code, wrap it in an object (proc)
# store it in a variable or pass it to a method
# It is like a method, you can call it wherever and whenever you like
# But becuase it is an OBJECT it isn't bound to a specific object class.

toast = Proc.new {puts "Cheers!"}

toast.call


# pass them arguments just like a method!
do_you_like = Proc.new do |arg|
  puts "Do you like #{arg}?"
end

do_you_like.call("Chocolate")
do_you_like.call("Ruby")


# using them within methods

def do_self_importantly(some_proc)
  puts "Everyone listen up! Umm... #{some_proc.call}"
end

say_hello = Proc.new {"Hello!"}
say_goodbye = Proc.new {"Goodbye!"}

do_self_importantly(say_hello) # we are passing our proc as an arg
do_self_importantly(say_goodbye)


# you can write methods that determine
# if you should call a proc, and by how many times

def maybe_do(some_proc)
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do(some_proc)
  2.times {some_proc.call}
end

wink = Proc.new{puts "<wink>"}
glance = Proc.new{puts "<glance>"}

maybe_do(wink)
maybe_do(wink)
maybe_do(glance)
maybe_do(glance)
twice_do(wink)
twice_do(glance)
