x = Thread.new { sleep 0.1; print "x"; print "y"; print "z"; }
a = Thread.new { print "a"; print "b"; sleep 0.2; print "c" }
x.join
a.join 
