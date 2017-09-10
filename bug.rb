def bug
  puts "This room is full of gold. How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "0" || "1"
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end

  def dead(why)
    puts why, "Good job!"
    exit(0)
  end

  bug
