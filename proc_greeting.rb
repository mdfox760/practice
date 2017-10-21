# Public Class Method

def proc_from
  Proc.new
end
proc = proc_from{ "Hello." }
puts proc.call
