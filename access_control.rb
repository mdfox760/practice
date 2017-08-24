class ClassAccess
  def m1
    puts "This method is public."
  end
  
  protected
  def m2
    puts "This method is protected."
  end
  
  private
  def m3
    puts "This method is private."
  end
  
  def m4
  end
  
  def m5
  end
  
  # You can set access level of named methods by listing them as arguements to the access control
  # functions
  
  public :m1
  protected :m2, :m3
  private :m4, :m5
end

ca = ClassAccess.new
ca.m1

# If you remove the comments from the following code, you'll get an access violation runtime error.
# but in my case I got a NoMethodError?

# ca.m2
# ca.m3