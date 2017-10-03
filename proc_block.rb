class Array
  def eachEven(&wasABlock_nowAProc)
    # We start with "true" because arrays start with 0,
    # which is even.
    isEven = true

    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven) # Toggle from even to odd, or odd to even.
    end
  end
end

[ 'apple', 'pumpkin', 'cherry', 'durian' ].eachEven do |fruit|
  puts 'Yum! I love '+fruit+' pies!'
end

# Remember, we are getting the even-numbered elements of the array,
# all of which happen to be odd numbers,
# just because I like to cause problems like that.

[1, 2, 3, 4, 5].eachEven do |oddBall|
  puts oddBall.to_s + ' is NOT an even number.'
end
