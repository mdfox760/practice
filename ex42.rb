## Animal is-a object look at the extra credit
class Animal
  attr_reader :name, :alive

  def initialize(name)
    @name = name
    @alive = "true"
  end

  def get_animal_name
    @name
  end
end

## Dog is-a Animal
class Dog < Animal

  def ititialize(name)
    ## Dog has-a name
    @name = name
  end

  def get_dog_name
    @name
  end
end

## Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name
    @name = name
  end

  def get_cat_name
    @name
  end

end

## A new Person class. They have names, too.
class Person

  def initialize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  def get_person_name
    @name
  end

  attr_accessor :pet, :name
end

## An Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    ## calls the Employee name from the Person class
    super(name)
    ## Employee has-a salary
    @salary = salary
  end

  def get_employee_name
    @name
  end

end

## New Fish Class
class Fish
  def initialize(name)
    @name = name
  end

  def get_fish_name
    @name
  end
end

## A Salmon is a Fish
class Salmon < Fish
  def initialize(name)
    @name = name
  end

  def get_salmon_name
    @name
  end
end

## A Halibut is a Fish
class Halibut < Fish
  def initialize(name)
    @name = name
  end

  def get_halibut_name
    @name
  end
end

## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet named satan
mary.pet = "Satan"

## flipper is-a Fish and has-a name of flipper
flipper = Fish.new("Flipper")

## crouse is a Fish and is a Salmon and has-a name of crouse
crouse = Salmon.new("Crouse")

## harry is a Fish and is a Halibut and has-a name of harry
harry = Halibut.new("Harry")
