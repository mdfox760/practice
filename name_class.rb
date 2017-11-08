class Name
  # Define default getter methods, but not setter methods.
  attr_reader :first, :last
  # When someone tries to set a first name, enforce rules about it.
  def first=(first)
    if first == nil or first.size == 0
      raise ArgumentError.new('Everyone must have a first name.')
    end
    first = first.dup
    first[0] = first[0].chr.capitalize
    @first = first
  end

  # When someone tries to set a last name, enforce rules about it.
  def last=(last)
    if last == nil or last.size == 0
      raise ArgumentError.new('Everyone must have a last name.')
    end
    @last = last
  end

  def full_name
    "#{@first} #{@last}"
  end
  # Delgate to the setter methods instead of setting the instance
  # variables directly.
  def initialize(first, last)
    self.first = first
    self.last = last
  end
end

matt = Name.new('Matt', 'Fox')
matt.first = 'Kyle'
matt.full_name
kyle = Name.new('Kyle', 'Fox')
kyle.full_name
kyle.first = 'Kyle'
kyle.first
kyle.first = nil
Name.new('Feelgood Joe, Blues player extraordinaire', nil)

