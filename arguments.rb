# Using splats as a catch all
def go(x, *args)
  puts args.inspect
end
# Hmmm, where did the "a" go and why?
go("a", "b", "c") # Only returns "b" and "c". Why?

def diff_go(**params)
  puts params.inspect
end

# returns hash
diff_go(x: 100, y: 200)

# Things get wonky from here. Doesn't return anything. Why?
def go(x, y)
end

point = [12, 10]
go(*point)

# For new keyword arguments. This returns the values if used with puts.
def go(x:, y:)
end

point = { x: 400, y: 800 }
go(**point)

def go(x, y, *args)
  puts x
  puts y
  puts args.inspect
end

go(1, 2, 3, 4, 5)
