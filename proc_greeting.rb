# Public Class Method
name = "Matt"
def proc_from
  Proc.new
end
proc = proc_from{ "Hello, #{name}" }
puts proc.call
