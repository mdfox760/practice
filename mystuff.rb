
module MyStuff
  def MyStuff.apple()
    puts "I AM APPLES!"
  end

  #this is just a variabe
  TANGERINE = "Living reflection of a dream."
end

=begin
  Access this like this:
  require "./mystuff.rb"

  MyStuff.apple()
  puts MyStuff::TANGERINE
=end
